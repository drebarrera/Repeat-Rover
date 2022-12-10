const _ = require('underscore@^1.13.6');
const api = require('../pc-ble-driver-js-2.8.2/index');

const adapterFactory = api.AdapterFactory.getInstance(undefined, { enablePolling: false });
const serviceFactory = new api.ServiceFactory();

const BLE_UUID_SERVICE = '180d'; /** < Heart Rate service UUID. */
const BLE_UUID_CHAR = '2a37'; /** < Heart Rate Measurement characteristic UUID. */
const BLE_UUID_CCCD = '2902'; /** < Client characteristic descriptor UUID. */

/* State */
let Service;
let Characteristic;
let cccdDescriptor;
let notificationsDisabled;

/**
 * When notifications are disabled on the hrm characteristic's CCCD, stop generating and sending heart rates.
 * @returns {undefined}
 */
function disableNotifications() {
    console.log('Disabling notifications on heart rate measurement characteristic...');
    notificationsDisabled = true;
}


/**
 * Function for initializing the Advertising functionality and starting advertising.
 *
 * @param {Adapter} adapter Adapter being used.
 * @returns {Promise} Resolves if advertising is started successfully.
 *                    If an error occurs, rejects with the corresponding error.
 */
function advertisingStart(adapter) {
    return new Promise((resolve, reject) => {
        console.log('Starting advertising...');

        const options = {
            interval: 40,
            timeout: 180,
            connectable: true,
            scannable: false,
        };

        adapter.startAdvertising(options, err => {
            if (err) {
                reject(new Error(`Error starting advertising: ${err}.`));
                return;
            }

            resolve();
        });
    });
}

/**
 * Function for sending the heart rate measurement over Bluetooth Low Energy.
 *
 * @param {Adapter} adapter Adapter being used.
 * @param {array} data Data to be sent over Bluetooth Low Energy.
 * @returns {Promise} Resolves if the data is successfully sent.
 *                    If an error occurs, rejects with the corresponding error.
 */
function tx_data(adapter, data) {
    return new Promise((resolve, reject) => {
        console.log('Sending data over Bluetooth Low Energy...');

        adapter.writeCharacteristicValue(Characteristic.instanceId, data, false,
            err => {
                if (err) {
                    reject(Error(`Error writing Characteristic: ${err}.`));
                }
            }, () => {
                resolve();
            });
    });
}

/**
 * 
 *
 * Called whenever a descriptor's value is changed (CCCD of characteristic in our example).
 *
 * @param {Adapter} adapter Adapter being used.
 * @param {any} attribute Object from descriptorValueChanged event emitter.
 * @returns {undefined}
 */
function onDescValueChanged(adapter, attribute) {
    const descriptorHandle = adapter._getCCCDOfCharacteristic(Characteristic.instanceId).handle;

    if (descriptorHandle === cccdDescriptor.handle) {
        const descriptorValue = attribute.value[Object.keys(attribute.value)[0]];

        if (_.isEmpty(descriptorValue)) {
            return;
        }

        const isNotificationEnabled = () => descriptorValue[0] === 1;

        const isIndicationEnabled = () => {
            if (descriptorValue.length <= 1) {
                return false;
            }

            return descriptorValue[1] === 1;
        };

        if (isIndicationEnabled()) {
            console.log('Warning: indications not supported on characteristic.');
        }

        if (isNotificationEnabled()) {

            if (heartRateInterval === null) {
                console.log('Enabling notifications on characteristic...');


                /* vDATA GENERATION HEREv */

                    /**
                     * Function for encoding a heart rate Measurement.
                     *v@
                     * returns {[flag, heartRate]} Array of encoded data.
                     */
                    /*const heartRateMeasurementEncode = () => [0, heartRate];

                    heartRateGenerate();
                    const encodedHeartRate = heartRateMeasurementEncode();
                    heartRateMeasurementSend(adapter, encodedHeartRate).then(() => {
                        console.log('Heart rate measurement successfully sent over Bluetooth Low Energy.');
                    }).catch(err => {
                        console.log(err);
                        process.exit(1);
                    });
                }, 1000);*/
            }
        } else {
            disableNotifications();
        }
    }
}

/**
 * Handling events emitted by adapter.
 *
 * @param {Adapter} adapter Adapter in use.
 * @returns {undefined}
 */
function addAdapterListener(adapter) {
    /**
     * Handling error and log message events from the adapter.
     */
    adapter.on('logMessage', (severity, message) => { if (severity > 3) console.log(`${message}.`); });
    adapter.on('error', error => { console.log(`error: ${JSON.stringify(error, null, 1)}.`); });

    /**
     * Handling the Application's BLE Stack events.
     */
    adapter.on('deviceConnected', device => { console.log(`Device ${device.address}/${device.addressType} connected.`); });

    adapter.on('deviceDisconnected', device => {
        console.log(`Device ${device.address}/${device.addressType} disconnected.`);

        disableNotifications();
        advertisingStart(adapter);
    });

    adapter.on('deviceDiscovered', device => {
        console.log(`Discovered device ${device.address}/${device.addressType}.`);
    });

    adapter.on('descriptorValueChanged', attribute => {
        onDescValueChanged(adapter, attribute);
    });

    adapter.on('advertiseTimedOut', () => {
        console.log('advertiseTimedOut: Advertising timed-out. Exiting.');
        process.exit(1);
    });
}

/**
 * Opens adapter for use with the default options.
 *
 * @param {Adapter} adapter Adapter to be opened.
 * @returns {Promise} Resolves if the adapter is opened successfully.
 *                    If an error occurs, rejects with the corresponding error.
 */
function openAdapter(adapter) {
    return new Promise((resolve, reject) => {
        const baudRate = 1000000;
        console.log(`Opening adapter with ID: ${adapter.instanceId} and baud rate: ${baudRate}...`);

        adapter.open({ baudRate, logLevel: 'error' }, err => {
            if (err) {
                reject(Error(`Error opening adapter: ${err}.`));
                return;
            }

            resolve();
        });
    });
}

/**
 * Function for setting the advertisement data.
 *
 * Sets the full device name and its available BLE services in the advertisement data.
 *
 * @param {Adapter} adapter Adapter being used.
 * @returns {Promise} Resolves if advertisement data is set successfully.
 *                    If an error occurs, rejects with the corresponding error.
 */
function advertisementDataSet(adapter) {
    return new Promise((resolve, reject) => {
        console.log('Setting advertisement data...');

        const advertisingData = {
            completeLocalName: 'Nordic_HRM',
            flags: ['leGeneralDiscMode', 'brEdrNotSupported'],
            txPowerLevel: -10,
        };

        const scanResponseData = {
            completeListOf16BitServiceUuids: [BLE_UUID_SERVICE],
        };

        adapter.setAdvertisingData(advertisingData, scanResponseData, err => {
            if (err) {
                reject(new Error(`Error initializing the advertising functionality: ${err}.`));
                return;
            }

            resolve();
        });
    });
}

/**
 * Function for adding the Heart Rate Measurement characteristic and CCCD descriptor to global state `hearRateService`.
 * @returns {undefined}
 */
function characteristicsInit() {
    Characteristic = serviceFactory.createCharacteristic(
        Service,
        BLE_UUID_CHAR,
        [0, 0],
        {
            broadcast: false,
            read: false,
            write: false,
            writeWoResp: false,
            reliableWrite: false,
            notify: true,
            indicate: false,
        },
        {
            maxLength: 2,
            readPerm: ['open'],
            writePerm: ['open'],
        });

    cccdDescriptor = serviceFactory.createDescriptor(
        Characteristic,
        BLE_UUID_CCCD,
        [0, 0],
        {
            maxLength: 2,
            readPerm: ['open'],
            writePerm: ['open'],
            variableLength: false,
        });
}

/**
 * Function for initializing services that will be used by the application.
 *
 * Initialize the Heart Rate service and it's characteristics and add to GATT.
 *
 * @param {Adapter} adapter Adapter being used.
 * @returns {Promise} Resolves if the service is started initialized successfully.
 *                    If an error occurs, rejects with the corresponding error.
 */
function servicesInit(adapter) {
    return new Promise((resolve, reject) => {
        console.log('Initializing the heart rate service and its characteristics/descriptors...');

        hService = serviceFactory.createService(BLE_UUID_SERVICE);
        characteristicsInit();

        adapter.setServices([Service], err => {
            if (err) {
                reject(Error(`Error initializing services: ${JSON.stringify(err, null, 1)}'.`));
                return;
            }

            resolve();
        });
    });
}

function help() {
    console.log(`Usage: ${path.basename(__filename)} <PORT> <SD_API_VERSION>`);
    console.log();
    console.log('PORT is the UART for the adapter. For example /dev/ttyS0 on Unix based systems or COM1 on Windows based systems.');
    console.log('SD_API_VERSION can be v2 or v5. nRF51 series uses v2.');
    console.log();
    console.log('It is assumed that the nRF device has been programmed with the correct connectivity firmware.');
}

/**
 * Application main entry.
 */
if (process.argv.length !== 4) {
    help();
    process.exit(-1);
} else {
    const [,, port, apiVersion] = process.argv;

    if (port == null) {
        console.error('PORT must be specified');
        process.exit(-1);
    }

    if (apiVersion == null) {
        console.error('SD_API_VERSION must be provided');
        process.exit(-1);
    } else if (!['v2', 'v5'].includes(apiVersion)) {
        console.error(`SD_API_VERSION must be v2 or v5, argument provided is ${apiVersion}`);
        process.exit(-1);
    }

    const adapter = adapterFactory.createAdapter(apiVersion, port, '');
    addAdapterListener(adapter);

    openAdapter(adapter).then(() => {
        console.log('Opened adapter.');
        return servicesInit(adapter);
    }).then(() => {
        console.log('Initialized the heart rate service and its characteristics/descriptors.');
        return advertisementDataSet(adapter);
    }).then(() => {
        console.log('Set advertisement data.');
        return advertisingStart(adapter);
    })
        .then(() => {
            console.log('Started advertising.');
        })
        .catch(error => {
            console.log(error);
            process.exit(-1);
        });
}
