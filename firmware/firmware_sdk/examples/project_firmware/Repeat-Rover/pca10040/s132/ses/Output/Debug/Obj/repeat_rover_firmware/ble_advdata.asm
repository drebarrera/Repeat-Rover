	.cpu cortex-m4
	.arch armv7e-m
	.fpu fpv4-sp-d16
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 38, 1
	.eabi_attribute 18, 4
	.file	"ble_advdata.c"
	.text
.Ltext0:
	.section	.text.sd_ble_gap_addr_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_addr_set, %function
sd_ble_gap_addr_set:
.LFB11:
	.file 1 "../../../../../../components/softdevice/s132/headers/ble_gap.h"
	.loc 1 1636 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1636 1
	.syntax unified
@ 1636 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #108
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE11:
	.size	sd_ble_gap_addr_set, .-sd_ble_gap_addr_set
	.section	.text.sd_ble_gap_addr_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_addr_get, %function
sd_ble_gap_addr_get:
.LFB12:
	.loc 1 1649 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1649 1
	.syntax unified
@ 1649 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #109
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE12:
	.size	sd_ble_gap_addr_get, .-sd_ble_gap_addr_get
	.section	.text.sd_ble_gap_whitelist_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_whitelist_set, %function
sd_ble_gap_whitelist_set:
.LFB13:
	.loc 1 1675 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1675 1
	.syntax unified
@ 1675 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #110
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE13:
	.size	sd_ble_gap_whitelist_set, .-sd_ble_gap_whitelist_set
	.section	.text.sd_ble_gap_device_identities_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_device_identities_set, %function
sd_ble_gap_device_identities_set:
.LFB14:
	.loc 1 1706 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1706 1
	.syntax unified
@ 1706 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #111
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE14:
	.size	sd_ble_gap_device_identities_set, .-sd_ble_gap_device_identities_set
	.section	.text.sd_ble_gap_privacy_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_privacy_set, %function
sd_ble_gap_privacy_set:
.LFB15:
	.loc 1 1730 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1730 1
	.syntax unified
@ 1730 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #112
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE15:
	.size	sd_ble_gap_privacy_set, .-sd_ble_gap_privacy_set
	.section	.text.sd_ble_gap_privacy_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_privacy_get, %function
sd_ble_gap_privacy_get:
.LFB16:
	.loc 1 1744 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1744 1
	.syntax unified
@ 1744 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #113
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE16:
	.size	sd_ble_gap_privacy_get, .-sd_ble_gap_privacy_get
	.section	.text.sd_ble_gap_adv_set_configure,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_adv_set_configure, %function
sd_ble_gap_adv_set_configure:
.LFB17:
	.loc 1 1791 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1791 1
	.syntax unified
@ 1791 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #114
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE17:
	.size	sd_ble_gap_adv_set_configure, .-sd_ble_gap_adv_set_configure
	.section	.text.sd_ble_gap_adv_start,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_adv_start, %function
sd_ble_gap_adv_start:
.LFB18:
	.loc 1 1835 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1835 1
	.syntax unified
@ 1835 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #115
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE18:
	.size	sd_ble_gap_adv_start, .-sd_ble_gap_adv_start
	.section	.text.sd_ble_gap_adv_stop,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_adv_stop, %function
sd_ble_gap_adv_stop:
.LFB19:
	.loc 1 1851 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1851 1
	.syntax unified
@ 1851 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #116
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE19:
	.size	sd_ble_gap_adv_stop, .-sd_ble_gap_adv_stop
	.section	.text.sd_ble_gap_conn_param_update,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_conn_param_update, %function
sd_ble_gap_conn_param_update:
.LFB20:
	.loc 1 1889 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1889 1
	.syntax unified
@ 1889 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #117
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE20:
	.size	sd_ble_gap_conn_param_update, .-sd_ble_gap_conn_param_update
	.section	.text.sd_ble_gap_disconnect,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_disconnect, %function
sd_ble_gap_disconnect:
.LFB21:
	.loc 1 1913 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1913 1
	.syntax unified
@ 1913 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #118
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE21:
	.size	sd_ble_gap_disconnect, .-sd_ble_gap_disconnect
	.section	.text.sd_ble_gap_tx_power_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_tx_power_set, %function
sd_ble_gap_tx_power_set:
.LFB22:
	.loc 1 1938 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1938 1
	.syntax unified
@ 1938 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #119
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE22:
	.size	sd_ble_gap_tx_power_set, .-sd_ble_gap_tx_power_set
	.section	.text.sd_ble_gap_appearance_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_appearance_set, %function
sd_ble_gap_appearance_set:
.LFB23:
	.loc 1 1948 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1948 1
	.syntax unified
@ 1948 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #120
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE23:
	.size	sd_ble_gap_appearance_set, .-sd_ble_gap_appearance_set
	.section	.text.sd_ble_gap_appearance_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_appearance_get, %function
sd_ble_gap_appearance_get:
.LFB24:
	.loc 1 1958 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1958 1
	.syntax unified
@ 1958 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #121
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE24:
	.size	sd_ble_gap_appearance_get, .-sd_ble_gap_appearance_get
	.section	.text.sd_ble_gap_ppcp_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_ppcp_set, %function
sd_ble_gap_ppcp_set:
.LFB25:
	.loc 1 1969 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1969 1
	.syntax unified
@ 1969 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #122
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE25:
	.size	sd_ble_gap_ppcp_set, .-sd_ble_gap_ppcp_set
	.section	.text.sd_ble_gap_ppcp_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_ppcp_get, %function
sd_ble_gap_ppcp_get:
.LFB26:
	.loc 1 1979 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1979 1
	.syntax unified
@ 1979 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #123
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE26:
	.size	sd_ble_gap_ppcp_get, .-sd_ble_gap_ppcp_get
	.section	.text.sd_ble_gap_device_name_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_device_name_set, %function
sd_ble_gap_device_name_set:
.LFB27:
	.loc 1 1997 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1997 1
	.syntax unified
@ 1997 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #124
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE27:
	.size	sd_ble_gap_device_name_set, .-sd_ble_gap_device_name_set
	.section	.text.sd_ble_gap_device_name_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_device_name_get, %function
sd_ble_gap_device_name_get:
.LFB28:
	.loc 1 2014 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2014 1
	.syntax unified
@ 2014 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #125
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE28:
	.size	sd_ble_gap_device_name_get, .-sd_ble_gap_device_name_get
	.section	.text.sd_ble_gap_authenticate,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_authenticate, %function
sd_ble_gap_authenticate:
.LFB29:
	.loc 1 2064 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2064 1
	.syntax unified
@ 2064 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #126
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE29:
	.size	sd_ble_gap_authenticate, .-sd_ble_gap_authenticate
	.section	.text.sd_ble_gap_sec_params_reply,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_sec_params_reply, %function
sd_ble_gap_sec_params_reply:
.LFB30:
	.loc 1 2123 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2123 1
	.syntax unified
@ 2123 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #127
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE30:
	.size	sd_ble_gap_sec_params_reply, .-sd_ble_gap_sec_params_reply
	.section	.text.sd_ble_gap_auth_key_reply,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_auth_key_reply, %function
sd_ble_gap_auth_key_reply:
.LFB31:
	.loc 1 2157 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2157 1
	.syntax unified
@ 2157 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #128
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE31:
	.size	sd_ble_gap_auth_key_reply, .-sd_ble_gap_auth_key_reply
	.section	.text.sd_ble_gap_lesc_dhkey_reply,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_lesc_dhkey_reply, %function
sd_ble_gap_lesc_dhkey_reply:
.LFB32:
	.loc 1 2191 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2191 1
	.syntax unified
@ 2191 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #129
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE32:
	.size	sd_ble_gap_lesc_dhkey_reply, .-sd_ble_gap_lesc_dhkey_reply
	.section	.text.sd_ble_gap_keypress_notify,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_keypress_notify, %function
sd_ble_gap_keypress_notify:
.LFB33:
	.loc 1 2210 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2210 1
	.syntax unified
@ 2210 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #130
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE33:
	.size	sd_ble_gap_keypress_notify, .-sd_ble_gap_keypress_notify
	.section	.text.sd_ble_gap_lesc_oob_data_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_lesc_oob_data_get, %function
sd_ble_gap_lesc_oob_data_get:
.LFB34:
	.loc 1 2231 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2231 1
	.syntax unified
@ 2231 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #131
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE34:
	.size	sd_ble_gap_lesc_oob_data_get, .-sd_ble_gap_lesc_oob_data_get
	.section	.text.sd_ble_gap_lesc_oob_data_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_lesc_oob_data_set, %function
sd_ble_gap_lesc_oob_data_set:
.LFB35:
	.loc 1 2259 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2259 1
	.syntax unified
@ 2259 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #132
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE35:
	.size	sd_ble_gap_lesc_oob_data_set, .-sd_ble_gap_lesc_oob_data_set
	.section	.text.sd_ble_gap_encrypt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_encrypt, %function
sd_ble_gap_encrypt:
.LFB36:
	.loc 1 2288 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2288 1
	.syntax unified
@ 2288 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #133
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE36:
	.size	sd_ble_gap_encrypt, .-sd_ble_gap_encrypt
	.section	.text.sd_ble_gap_sec_info_reply,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_sec_info_reply, %function
sd_ble_gap_sec_info_reply:
.LFB37:
	.loc 1 2311 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2311 1
	.syntax unified
@ 2311 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #134
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE37:
	.size	sd_ble_gap_sec_info_reply, .-sd_ble_gap_sec_info_reply
	.section	.text.sd_ble_gap_conn_sec_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_conn_sec_get, %function
sd_ble_gap_conn_sec_get:
.LFB38:
	.loc 1 2323 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2323 1
	.syntax unified
@ 2323 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #135
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE38:
	.size	sd_ble_gap_conn_sec_get, .-sd_ble_gap_conn_sec_get
	.section	.text.sd_ble_gap_rssi_start,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_rssi_start, %function
sd_ble_gap_rssi_start:
.LFB39:
	.loc 1 2349 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2349 1
	.syntax unified
@ 2349 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #136
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE39:
	.size	sd_ble_gap_rssi_start, .-sd_ble_gap_rssi_start
	.section	.text.sd_ble_gap_rssi_stop,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_rssi_stop, %function
sd_ble_gap_rssi_stop:
.LFB40:
	.loc 1 2368 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2368 1
	.syntax unified
@ 2368 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #137
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE40:
	.size	sd_ble_gap_rssi_stop, .-sd_ble_gap_rssi_stop
	.section	.text.sd_ble_gap_rssi_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_rssi_get, %function
sd_ble_gap_rssi_get:
.LFB41:
	.loc 1 2389 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2389 1
	.syntax unified
@ 2389 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #142
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE41:
	.size	sd_ble_gap_rssi_get, .-sd_ble_gap_rssi_get
	.section	.text.sd_ble_gap_scan_start,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_scan_start, %function
sd_ble_gap_scan_start:
.LFB42:
	.loc 1 2446 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2446 1
	.syntax unified
@ 2446 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #138
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE42:
	.size	sd_ble_gap_scan_start, .-sd_ble_gap_scan_start
	.section	.text.sd_ble_gap_scan_stop,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_scan_stop, %function
sd_ble_gap_scan_stop:
.LFB43:
	.loc 1 2461 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2461 1
	.syntax unified
@ 2461 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #139
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE43:
	.size	sd_ble_gap_scan_stop, .-sd_ble_gap_scan_stop
	.section	.text.sd_ble_gap_connect,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_connect, %function
sd_ble_gap_connect:
.LFB44:
	.loc 1 2501 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2501 1
	.syntax unified
@ 2501 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #140
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE44:
	.size	sd_ble_gap_connect, .-sd_ble_gap_connect
	.section	.text.sd_ble_gap_connect_cancel,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_connect_cancel, %function
sd_ble_gap_connect_cancel:
.LFB45:
	.loc 1 2513 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2513 1
	.syntax unified
@ 2513 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #141
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE45:
	.size	sd_ble_gap_connect_cancel, .-sd_ble_gap_connect_cancel
	.section	.text.sd_ble_gap_phy_update,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_phy_update, %function
sd_ble_gap_phy_update:
.LFB46:
	.loc 1 2567 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2567 1
	.syntax unified
@ 2567 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #143
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE46:
	.size	sd_ble_gap_phy_update, .-sd_ble_gap_phy_update
	.section	.text.sd_ble_gap_data_length_update,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_data_length_update, %function
sd_ble_gap_data_length_update:
.LFB47:
	.loc 1 2602 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2602 1
	.syntax unified
@ 2602 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #144
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE47:
	.size	sd_ble_gap_data_length_update, .-sd_ble_gap_data_length_update
	.section	.text.sd_ble_gap_qos_channel_survey_start,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_qos_channel_survey_start, %function
sd_ble_gap_qos_channel_survey_start:
.LFB48:
	.loc 1 2634 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2634 1
	.syntax unified
@ 2634 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #145
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE48:
	.size	sd_ble_gap_qos_channel_survey_start, .-sd_ble_gap_qos_channel_survey_start
	.section	.text.sd_ble_gap_qos_channel_survey_stop,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_qos_channel_survey_stop, %function
sd_ble_gap_qos_channel_survey_stop:
.LFB49:
	.loc 1 2641 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2641 1
	.syntax unified
@ 2641 "../../../../../../components/softdevice/s132/headers/ble_gap.h" 1
	svc #146
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE49:
	.size	sd_ble_gap_qos_channel_survey_stop, .-sd_ble_gap_qos_channel_survey_stop
	.section	.text.sd_ble_l2cap_ch_setup,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_l2cap_ch_setup, %function
sd_ble_l2cap_ch_setup:
.LFB50:
	.file 2 "../../../../../../components/softdevice/s132/headers/ble_l2cap.h"
	.loc 2 349 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 349 1
	.syntax unified
@ 349 "../../../../../../components/softdevice/s132/headers/ble_l2cap.h" 1
	svc #184
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE50:
	.size	sd_ble_l2cap_ch_setup, .-sd_ble_l2cap_ch_setup
	.section	.text.sd_ble_l2cap_ch_release,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_l2cap_ch_release, %function
sd_ble_l2cap_ch_release:
.LFB51:
	.loc 2 372 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 372 1
	.syntax unified
@ 372 "../../../../../../components/softdevice/s132/headers/ble_l2cap.h" 1
	svc #185
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE51:
	.size	sd_ble_l2cap_ch_release, .-sd_ble_l2cap_ch_release
	.section	.text.sd_ble_l2cap_ch_rx,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_l2cap_ch_rx, %function
sd_ble_l2cap_ch_rx:
.LFB52:
	.loc 2 406 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 406 1
	.syntax unified
@ 406 "../../../../../../components/softdevice/s132/headers/ble_l2cap.h" 1
	svc #186
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE52:
	.size	sd_ble_l2cap_ch_rx, .-sd_ble_l2cap_ch_rx
	.section	.text.sd_ble_l2cap_ch_tx,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_l2cap_ch_tx, %function
sd_ble_l2cap_ch_tx:
.LFB53:
	.loc 2 451 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 451 1
	.syntax unified
@ 451 "../../../../../../components/softdevice/s132/headers/ble_l2cap.h" 1
	svc #187
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE53:
	.size	sd_ble_l2cap_ch_tx, .-sd_ble_l2cap_ch_tx
	.section	.text.sd_ble_l2cap_ch_flow_control,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_l2cap_ch_flow_control, %function
sd_ble_l2cap_ch_flow_control:
.LFB54:
	.loc 2 495 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 495 1
	.syntax unified
@ 495 "../../../../../../components/softdevice/s132/headers/ble_l2cap.h" 1
	svc #188
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE54:
	.size	sd_ble_l2cap_ch_flow_control, .-sd_ble_l2cap_ch_flow_control
	.section	.text.sd_ble_gattc_primary_services_discover,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gattc_primary_services_discover, %function
sd_ble_gattc_primary_services_discover:
.LFB179:
	.file 3 "../../../../../../components/softdevice/s132/headers/ble_gattc.h"
	.loc 3 379 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 3 379 1
	.syntax unified
@ 379 "../../../../../../components/softdevice/s132/headers/ble_gattc.h" 1
	svc #155
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE179:
	.size	sd_ble_gattc_primary_services_discover, .-sd_ble_gattc_primary_services_discover
	.section	.text.sd_ble_gattc_relationships_discover,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gattc_relationships_discover, %function
sd_ble_gattc_relationships_discover:
.LFB180:
	.loc 3 406 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 3 406 1
	.syntax unified
@ 406 "../../../../../../components/softdevice/s132/headers/ble_gattc.h" 1
	svc #156
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE180:
	.size	sd_ble_gattc_relationships_discover, .-sd_ble_gattc_relationships_discover
	.section	.text.sd_ble_gattc_characteristics_discover,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gattc_characteristics_discover, %function
sd_ble_gattc_characteristics_discover:
.LFB181:
	.loc 3 435 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 3 435 1
	.syntax unified
@ 435 "../../../../../../components/softdevice/s132/headers/ble_gattc.h" 1
	svc #157
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE181:
	.size	sd_ble_gattc_characteristics_discover, .-sd_ble_gattc_characteristics_discover
	.section	.text.sd_ble_gattc_descriptors_discover,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gattc_descriptors_discover, %function
sd_ble_gattc_descriptors_discover:
.LFB182:
	.loc 3 461 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 3 461 1
	.syntax unified
@ 461 "../../../../../../components/softdevice/s132/headers/ble_gattc.h" 1
	svc #158
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE182:
	.size	sd_ble_gattc_descriptors_discover, .-sd_ble_gattc_descriptors_discover
	.section	.text.sd_ble_gattc_char_value_by_uuid_read,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gattc_char_value_by_uuid_read, %function
sd_ble_gattc_char_value_by_uuid_read:
.LFB183:
	.loc 3 488 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 3 488 1
	.syntax unified
@ 488 "../../../../../../components/softdevice/s132/headers/ble_gattc.h" 1
	svc #160
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE183:
	.size	sd_ble_gattc_char_value_by_uuid_read, .-sd_ble_gattc_char_value_by_uuid_read
	.section	.text.sd_ble_gattc_read,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gattc_read, %function
sd_ble_gattc_read:
.LFB184:
	.loc 3 515 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 3 515 1
	.syntax unified
@ 515 "../../../../../../components/softdevice/s132/headers/ble_gattc.h" 1
	svc #161
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE184:
	.size	sd_ble_gattc_read, .-sd_ble_gattc_read
	.section	.text.sd_ble_gattc_char_values_read,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gattc_char_values_read, %function
sd_ble_gattc_char_values_read:
.LFB185:
	.loc 3 541 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 3 541 1
	.syntax unified
@ 541 "../../../../../../components/softdevice/s132/headers/ble_gattc.h" 1
	svc #162
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE185:
	.size	sd_ble_gattc_char_values_read, .-sd_ble_gattc_char_values_read
	.section	.text.sd_ble_gattc_write,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gattc_write, %function
sd_ble_gattc_write:
.LFB186:
	.loc 3 588 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 3 588 1
	.syntax unified
@ 588 "../../../../../../components/softdevice/s132/headers/ble_gattc.h" 1
	svc #163
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE186:
	.size	sd_ble_gattc_write, .-sd_ble_gattc_write
	.section	.text.sd_ble_gattc_hv_confirm,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gattc_hv_confirm, %function
sd_ble_gattc_hv_confirm:
.LFB187:
	.loc 3 606 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 3 606 1
	.syntax unified
@ 606 "../../../../../../components/softdevice/s132/headers/ble_gattc.h" 1
	svc #164
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE187:
	.size	sd_ble_gattc_hv_confirm, .-sd_ble_gattc_hv_confirm
	.section	.text.sd_ble_gattc_attr_info_discover,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gattc_attr_info_discover, %function
sd_ble_gattc_attr_info_discover:
.LFB188:
	.loc 3 624 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 3 624 1
	.syntax unified
@ 624 "../../../../../../components/softdevice/s132/headers/ble_gattc.h" 1
	svc #159
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE188:
	.size	sd_ble_gattc_attr_info_discover, .-sd_ble_gattc_attr_info_discover
	.section	.text.sd_ble_gattc_exchange_mtu_request,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gattc_exchange_mtu_request, %function
sd_ble_gattc_exchange_mtu_request:
.LFB189:
	.loc 3 657 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 3 657 1
	.syntax unified
@ 657 "../../../../../../components/softdevice/s132/headers/ble_gattc.h" 1
	svc #165
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE189:
	.size	sd_ble_gattc_exchange_mtu_request, .-sd_ble_gattc_exchange_mtu_request
	.section	.text.sd_ble_gatts_service_add,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_service_add, %function
sd_ble_gatts_service_add:
.LFB191:
	.file 4 "../../../../../../components/softdevice/s132/headers/ble_gatts.h"
	.loc 4 446 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 446 1
	.syntax unified
@ 446 "../../../../../../components/softdevice/s132/headers/ble_gatts.h" 1
	svc #168
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE191:
	.size	sd_ble_gatts_service_add, .-sd_ble_gatts_service_add
	.section	.text.sd_ble_gatts_include_add,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_include_add, %function
sd_ble_gatts_include_add:
.LFB192:
	.loc 4 472 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 472 1
	.syntax unified
@ 472 "../../../../../../components/softdevice/s132/headers/ble_gatts.h" 1
	svc #169
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE192:
	.size	sd_ble_gatts_include_add, .-sd_ble_gatts_include_add
	.section	.text.sd_ble_gatts_characteristic_add,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_characteristic_add, %function
sd_ble_gatts_characteristic_add:
.LFB193:
	.loc 4 501 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 501 1
	.syntax unified
@ 501 "../../../../../../components/softdevice/s132/headers/ble_gatts.h" 1
	svc #170
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE193:
	.size	sd_ble_gatts_characteristic_add, .-sd_ble_gatts_characteristic_add
	.section	.text.sd_ble_gatts_descriptor_add,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_descriptor_add, %function
sd_ble_gatts_descriptor_add:
.LFB194:
	.loc 4 524 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 524 1
	.syntax unified
@ 524 "../../../../../../components/softdevice/s132/headers/ble_gatts.h" 1
	svc #171
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE194:
	.size	sd_ble_gatts_descriptor_add, .-sd_ble_gatts_descriptor_add
	.section	.text.sd_ble_gatts_value_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_value_set, %function
sd_ble_gatts_value_set:
.LFB195:
	.loc 4 547 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 547 1
	.syntax unified
@ 547 "../../../../../../components/softdevice/s132/headers/ble_gatts.h" 1
	svc #172
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE195:
	.size	sd_ble_gatts_value_set, .-sd_ble_gatts_value_set
	.section	.text.sd_ble_gatts_value_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_value_get, %function
sd_ble_gatts_value_get:
.LFB196:
	.loc 4 571 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 571 1
	.syntax unified
@ 571 "../../../../../../components/softdevice/s132/headers/ble_gatts.h" 1
	svc #173
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE196:
	.size	sd_ble_gatts_value_get, .-sd_ble_gatts_value_get
	.section	.text.sd_ble_gatts_hvx,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_hvx, %function
sd_ble_gatts_hvx:
.LFB197:
	.loc 4 636 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 636 1
	.syntax unified
@ 636 "../../../../../../components/softdevice/s132/headers/ble_gatts.h" 1
	svc #174
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE197:
	.size	sd_ble_gatts_hvx, .-sd_ble_gatts_hvx
	.section	.text.sd_ble_gatts_service_changed,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_service_changed, %function
sd_ble_gatts_service_changed:
.LFB198:
	.loc 4 672 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 672 1
	.syntax unified
@ 672 "../../../../../../components/softdevice/s132/headers/ble_gatts.h" 1
	svc #175
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE198:
	.size	sd_ble_gatts_service_changed, .-sd_ble_gatts_service_changed
	.section	.text.sd_ble_gatts_rw_authorize_reply,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_rw_authorize_reply, %function
sd_ble_gatts_rw_authorize_reply:
.LFB199:
	.loc 4 705 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 705 1
	.syntax unified
@ 705 "../../../../../../components/softdevice/s132/headers/ble_gatts.h" 1
	svc #176
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE199:
	.size	sd_ble_gatts_rw_authorize_reply, .-sd_ble_gatts_rw_authorize_reply
	.section	.text.sd_ble_gatts_sys_attr_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_sys_attr_set, %function
sd_ble_gatts_sys_attr_set:
.LFB200:
	.loc 4 749 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 749 1
	.syntax unified
@ 749 "../../../../../../components/softdevice/s132/headers/ble_gatts.h" 1
	svc #177
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE200:
	.size	sd_ble_gatts_sys_attr_set, .-sd_ble_gatts_sys_attr_set
	.section	.text.sd_ble_gatts_sys_attr_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_sys_attr_get, %function
sd_ble_gatts_sys_attr_get:
.LFB201:
	.loc 4 782 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 782 1
	.syntax unified
@ 782 "../../../../../../components/softdevice/s132/headers/ble_gatts.h" 1
	svc #178
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE201:
	.size	sd_ble_gatts_sys_attr_get, .-sd_ble_gatts_sys_attr_get
	.section	.text.sd_ble_gatts_initial_user_handle_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_initial_user_handle_get, %function
sd_ble_gatts_initial_user_handle_get:
.LFB202:
	.loc 4 792 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 792 1
	.syntax unified
@ 792 "../../../../../../components/softdevice/s132/headers/ble_gatts.h" 1
	svc #179
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE202:
	.size	sd_ble_gatts_initial_user_handle_get, .-sd_ble_gatts_initial_user_handle_get
	.section	.text.sd_ble_gatts_attr_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_attr_get, %function
sd_ble_gatts_attr_get:
.LFB203:
	.loc 4 805 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 805 1
	.syntax unified
@ 805 "../../../../../../components/softdevice/s132/headers/ble_gatts.h" 1
	svc #180
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE203:
	.size	sd_ble_gatts_attr_get, .-sd_ble_gatts_attr_get
	.section	.text.sd_ble_gatts_exchange_mtu_reply,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_exchange_mtu_reply, %function
sd_ble_gatts_exchange_mtu_reply:
.LFB204:
	.loc 4 835 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 835 1
	.syntax unified
@ 835 "../../../../../../components/softdevice/s132/headers/ble_gatts.h" 1
	svc #181
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE204:
	.size	sd_ble_gatts_exchange_mtu_reply, .-sd_ble_gatts_exchange_mtu_reply
	.section	.text.sd_ble_enable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_enable, %function
sd_ble_enable:
.LFB205:
	.file 5 "../../../../../../components/softdevice/s132/headers/ble.h"
	.loc 5 394 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 5 394 1
	.syntax unified
@ 394 "../../../../../../components/softdevice/s132/headers/ble.h" 1
	svc #96
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE205:
	.size	sd_ble_enable, .-sd_ble_enable
	.section	.text.sd_ble_cfg_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_cfg_set, %function
sd_ble_cfg_set:
.LFB206:
	.loc 5 430 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 5 430 1
	.syntax unified
@ 430 "../../../../../../components/softdevice/s132/headers/ble.h" 1
	svc #105
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE206:
	.size	sd_ble_cfg_set, .-sd_ble_cfg_set
	.section	.text.sd_ble_evt_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_evt_get, %function
sd_ble_evt_get:
.LFB207:
	.loc 5 468 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 5 468 1
	.syntax unified
@ 468 "../../../../../../components/softdevice/s132/headers/ble.h" 1
	svc #97
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE207:
	.size	sd_ble_evt_get, .-sd_ble_evt_get
	.section	.text.sd_ble_uuid_vs_add,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_uuid_vs_add, %function
sd_ble_uuid_vs_add:
.LFB208:
	.loc 5 497 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 5 497 1
	.syntax unified
@ 497 "../../../../../../components/softdevice/s132/headers/ble.h" 1
	svc #98
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE208:
	.size	sd_ble_uuid_vs_add, .-sd_ble_uuid_vs_add
	.section	.text.sd_ble_uuid_decode,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_uuid_decode, %function
sd_ble_uuid_decode:
.LFB209:
	.loc 5 518 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 5 518 1
	.syntax unified
@ 518 "../../../../../../components/softdevice/s132/headers/ble.h" 1
	svc #99
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE209:
	.size	sd_ble_uuid_decode, .-sd_ble_uuid_decode
	.section	.text.sd_ble_uuid_encode,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_uuid_encode, %function
sd_ble_uuid_encode:
.LFB210:
	.loc 5 533 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 5 533 1
	.syntax unified
@ 533 "../../../../../../components/softdevice/s132/headers/ble.h" 1
	svc #100
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE210:
	.size	sd_ble_uuid_encode, .-sd_ble_uuid_encode
	.section	.text.sd_ble_version_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_version_get, %function
sd_ble_version_get:
.LFB211:
	.loc 5 546 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 5 546 1
	.syntax unified
@ 546 "../../../../../../components/softdevice/s132/headers/ble.h" 1
	svc #101
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE211:
	.size	sd_ble_version_get, .-sd_ble_version_get
	.section	.text.sd_ble_user_mem_reply,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_user_mem_reply, %function
sd_ble_user_mem_reply:
.LFB212:
	.loc 5 572 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 5 572 1
	.syntax unified
@ 572 "../../../../../../components/softdevice/s132/headers/ble.h" 1
	svc #102
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE212:
	.size	sd_ble_user_mem_reply, .-sd_ble_user_mem_reply
	.section	.text.sd_ble_opt_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_opt_set, %function
sd_ble_opt_set:
.LFB213:
	.loc 5 592 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 5 592 1
	.syntax unified
@ 592 "../../../../../../components/softdevice/s132/headers/ble.h" 1
	svc #103
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE213:
	.size	sd_ble_opt_set, .-sd_ble_opt_set
	.section	.text.sd_ble_opt_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_opt_get, %function
sd_ble_opt_get:
.LFB214:
	.loc 5 611 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 5 611 1
	.syntax unified
@ 611 "../../../../../../components/softdevice/s132/headers/ble.h" 1
	svc #104
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE214:
	.size	sd_ble_opt_get, .-sd_ble_opt_get
	.section	.text.uint16_encode,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	uint16_encode, %function
uint16_encode:
.LFB216:
	.file 6 "../../../../../../components/libraries/util/app_util.h"
	.loc 6 915 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI0:
	mov	r3, r0
	str	r1, [sp]
	strh	r3, [sp, #6]	@ movhi
	.loc 6 916 25
	ldrh	r3, [sp, #6]	@ movhi
	uxtb	r2, r3
	.loc 6 916 23
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 6 917 53
	ldrh	r3, [sp, #6]
	lsrs	r3, r3, #8
	uxth	r2, r3
	.loc 6 917 19
	ldr	r3, [sp]
	adds	r3, r3, #1
	.loc 6 917 25
	uxtb	r2, r2
	.loc 6 917 23
	strb	r2, [r3]
	.loc 6 918 12
	movs	r3, #2
	.loc 6 919 1
	mov	r0, r3
	add	sp, sp, #8
.LCFI1:
	@ sp needed
	bx	lr
.LFE216:
	.size	uint16_encode, .-uint16_encode
	.section	.text.uint16_decode,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	uint16_decode, %function
uint16_decode:
.LFB221:
	.loc 6 994 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI2:
	str	r0, [sp, #4]
	.loc 6 995 57
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxth	r2, r3
	.loc 6 996 57
	ldr	r3, [sp, #4]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 6 996 62
	lsls	r3, r3, #8
	.loc 6 995 63
	sxth	r3, r3
	orrs	r3, r3, r2
	sxth	r3, r3
	uxth	r3, r3
	.loc 6 997 1
	mov	r0, r3
	add	sp, sp, #8
.LCFI3:
	@ sp needed
	bx	lr
.LFE221:
	.size	uint16_decode, .-uint16_decode
	.section	.text.ble_device_addr_encode,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	ble_device_addr_encode, %function
ble_device_addr_encode:
.LFB233:
	.file 7 "/Users/waewtasaw/Desktop/ECE_477/Repeat-Rover/firmware/firmware_sdk/components/ble/common/ble_advdata.c"
	.loc 7 62 1
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI4:
	sub	sp, sp, #36
.LCFI5:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	mov	r3, r2
	strh	r3, [sp, #6]	@ movhi
	.loc 7 67 11
	ldr	r3, [sp, #8]
	ldrh	r3, [r3]
	.loc 7 67 22
	add	r2, r3, #9
	.loc 7 67 54
	ldrh	r3, [sp, #6]
	.loc 7 67 8
	cmp	r2, r3
	bls	.L85
	.loc 7 69 16
	movs	r3, #12
	b	.L90
.L85:
	.loc 7 73 16
	add	r3, sp, #16
	mov	r0, r3
	bl	sd_ble_gap_addr_get
	str	r0, [sp, #28]
.LBB2:
	.loc 7 74 5
	ldr	r3, [sp, #28]
	str	r3, [sp, #24]
	ldr	r3, [sp, #24]
	cmp	r3, #0
	beq	.L87
	.loc 7 74 5 is_stmt 0 discriminator 1
	ldr	r3, [sp, #24]
	b	.L90
.L87:
.LBE2:
	.loc 7 77 20 is_stmt 1
	ldr	r3, [sp, #8]
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 7 77 19
	ldr	r3, [sp, #12]
	add	r3, r3, r2
	.loc 7 77 32
	movs	r2, #8
	strb	r2, [r3]
	.loc 7 79 31
	ldr	r3, [sp, #8]
	ldrh	r3, [r3]
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [sp, #8]
	strh	r2, [r3]	@ movhi
	.loc 7 80 20
	ldr	r3, [sp, #8]
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 7 80 19
	ldr	r3, [sp, #12]
	add	r3, r3, r2
	.loc 7 80 32
	movs	r2, #27
	strb	r2, [r3]
	.loc 7 81 31
	ldr	r3, [sp, #8]
	ldrh	r3, [r3]
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [sp, #8]
	strh	r2, [r3]	@ movhi
	.loc 7 82 28
	ldr	r3, [sp, #8]
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 7 82 12
	ldr	r3, [sp, #12]
	adds	r0, r3, r2
	.loc 7 82 5
	add	r3, sp, #16
	adds	r3, r3, #1
	movs	r2, #6
	mov	r1, r3
	bl	memcpy
	.loc 7 83 31
	ldr	r3, [sp, #8]
	ldrh	r3, [r3]
	adds	r3, r3, #6
	uxth	r2, r3
	ldr	r3, [sp, #8]
	strh	r2, [r3]	@ movhi
	.loc 7 84 34
	ldrb	r3, [sp, #16]	@ zero_extendqisi2
	bic	r3, r3, #1
	uxtb	r3, r3
	.loc 7 84 8
	cmp	r3, #0
	bne	.L88
	.loc 7 86 24
	ldr	r3, [sp, #8]
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 7 86 23
	ldr	r3, [sp, #12]
	add	r3, r3, r2
	.loc 7 86 35
	movs	r2, #0
	strb	r2, [r3]
	b	.L89
.L88:
	.loc 7 90 24
	ldr	r3, [sp, #8]
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 7 90 23
	ldr	r3, [sp, #12]
	add	r3, r3, r2
	.loc 7 90 35
	movs	r2, #1
	strb	r2, [r3]
.L89:
	.loc 7 92 15
	ldr	r3, [sp, #8]
	ldrh	r3, [r3]
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [sp, #8]
	strh	r2, [r3]	@ movhi
	.loc 7 94 12
	movs	r3, #0
.L90:
	.loc 7 95 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #36
.LCFI6:
	@ sp needed
	ldr	pc, [sp], #4
.LFE233:
	.size	ble_device_addr_encode, .-ble_device_addr_encode
	.section	.text.name_encode,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	name_encode, %function
name_encode:
.LFB234:
	.loc 7 101 1
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI7:
	sub	sp, sp, #36
.LCFI8:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	strh	r3, [sp, #2]	@ movhi
	.loc 7 109 45
	ldr	r3, [sp, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 7 109 8
	cmp	r3, #1
	bne	.L92
	.loc 7 109 76 discriminator 1
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 7 109 58 discriminator 1
	cmp	r3, #0
	bne	.L92
	.loc 7 111 16
	movs	r3, #7
	b	.L101
.L92:
	.loc 7 115 13
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	.loc 7 115 24
	adds	r2, r3, #2
	.loc 7 115 42
	ldrh	r3, [sp, #2]
	.loc 7 115 8
	cmp	r2, r3
	bhi	.L94
	.loc 7 116 48 discriminator 1
	ldr	r3, [sp, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 7 115 54 discriminator 1
	cmp	r3, #1
	bne	.L95
	.loc 7 117 15
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 7 117 54
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 7 117 43
	add	r3, r3, r2
	adds	r2, r3, #2
	.loc 7 117 72
	ldrh	r3, [sp, #2]
	.loc 7 116 61
	cmp	r2, r3
	bls	.L95
.L94:
	.loc 7 119 16
	movs	r3, #12
	b	.L101
.L95:
	.loc 7 122 36
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	.loc 7 122 33
	ldrh	r2, [sp, #2]	@ movhi
	subs	r3, r2, r3
	uxth	r3, r3
	.loc 7 122 22
	subs	r3, r3, #2
	strh	r3, [sp, #28]	@ movhi
	.loc 7 123 22
	ldrh	r3, [sp, #28]	@ movhi
	strh	r3, [sp, #18]	@ movhi
	.loc 7 126 60
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	.loc 7 126 58
	adds	r3, r3, #2
	.loc 7 126 16
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	add	r2, sp, #18
	mov	r1, r2
	mov	r0, r3
	bl	sd_ble_gap_device_name_get
	str	r0, [sp, #24]
.LBB3:
	.loc 7 128 5
	ldr	r3, [sp, #24]
	str	r3, [sp, #20]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L96
	.loc 7 128 5 is_stmt 0 discriminator 1
	ldr	r3, [sp, #20]
	b	.L101
.L96:
.LBE3:
	.loc 7 131 19 is_stmt 1
	ldr	r3, [sp, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 7 131 8
	cmp	r3, #2
	bne	.L97
	.loc 7 131 75 discriminator 1
	ldrh	r3, [sp, #18]
	.loc 7 131 57 discriminator 1
	ldrh	r2, [sp, #28]
	cmp	r2, r3
	bcc	.L97
	.loc 7 134 25
	movs	r3, #9
	strb	r3, [sp, #31]
	b	.L98
.L97:
	.loc 7 139 25
	movs	r3, #8
	strb	r3, [sp, #31]
	.loc 7 143 49
	ldr	r3, [sp, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 7 143 12
	cmp	r3, #1
	bne	.L99
	.loc 7 144 27 discriminator 1
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	uxth	r3, r3
	.loc 7 143 62 discriminator 1
	ldrh	r2, [sp, #28]
	cmp	r2, r3
	bcc	.L99
	.loc 7 147 38
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	uxth	r3, r3
	.loc 7 147 27
	strh	r3, [sp, #18]	@ movhi
	b	.L98
.L99:
	.loc 7 152 27
	ldrh	r3, [sp, #28]	@ movhi
	strh	r3, [sp, #18]	@ movhi
.L98:
	.loc 7 157 23
	ldrh	r3, [sp, #18]
	.loc 7 157 8
	cmp	r3, #254
	bls	.L100
	.loc 7 159 16
	movs	r3, #12
	b	.L101
.L100:
	.loc 7 163 34
	ldrh	r3, [sp, #18]
	uxtb	r2, r3
	.loc 7 163 20
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	mov	r1, r3
	.loc 7 163 19
	ldr	r3, [sp, #8]
	add	r3, r3, r1
	.loc 7 163 34
	adds	r2, r2, #1
	uxtb	r2, r2
	.loc 7 163 32
	strb	r2, [r3]
	.loc 7 164 31
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 7 165 20
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 7 165 19
	ldr	r3, [sp, #8]
	add	r3, r3, r2
	.loc 7 165 32
	ldrb	r2, [sp, #31]
	strb	r2, [r3]
	.loc 7 166 31
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 7 167 31
	ldr	r3, [sp, #4]
	ldrh	r2, [r3]
	ldrh	r3, [sp, #18]
	add	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 7 169 12
	movs	r3, #0
.L101:
	.loc 7 170 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #36
.LCFI9:
	@ sp needed
	ldr	pc, [sp], #4
.LFE234:
	.size	name_encode, .-name_encode
	.section	.text.appearance_encode,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	appearance_encode, %function
appearance_encode:
.LFB235:
	.loc 7 176 1
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI10:
	sub	sp, sp, #36
.LCFI11:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	mov	r3, r2
	strh	r3, [sp, #6]	@ movhi
	.loc 7 181 11
	ldr	r3, [sp, #8]
	ldrh	r3, [r3]
	.loc 7 181 22
	adds	r2, r3, #4
	.loc 7 181 49
	ldrh	r3, [sp, #6]
	.loc 7 181 8
	cmp	r2, r3
	bls	.L103
	.loc 7 183 16
	movs	r3, #12
	b	.L106
.L103:
	.loc 7 187 16
	add	r3, sp, #22
	mov	r0, r3
	bl	sd_ble_gap_appearance_get
	str	r0, [sp, #28]
.LBB4:
	.loc 7 188 5
	ldr	r3, [sp, #28]
	str	r3, [sp, #24]
	ldr	r3, [sp, #24]
	cmp	r3, #0
	beq	.L105
	.loc 7 188 5 is_stmt 0 discriminator 1
	ldr	r3, [sp, #24]
	b	.L106
.L105:
.LBE4:
	.loc 7 191 20 is_stmt 1
	ldr	r3, [sp, #8]
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 7 191 19
	ldr	r3, [sp, #12]
	add	r3, r3, r2
	.loc 7 191 32
	movs	r2, #3
	strb	r2, [r3]
	.loc 7 192 31
	ldr	r3, [sp, #8]
	ldrh	r3, [r3]
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [sp, #8]
	strh	r2, [r3]	@ movhi
	.loc 7 193 20
	ldr	r3, [sp, #8]
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 7 193 19
	ldr	r3, [sp, #12]
	add	r3, r3, r2
	.loc 7 193 32
	movs	r2, #25
	strb	r2, [r3]
	.loc 7 194 31
	ldr	r3, [sp, #8]
	ldrh	r3, [r3]
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [sp, #8]
	strh	r2, [r3]	@ movhi
	.loc 7 195 34
	ldrh	r2, [sp, #22]
	.loc 7 195 76
	ldr	r3, [sp, #8]
	ldrh	r3, [r3]
	mov	r1, r3
	.loc 7 195 34
	ldr	r3, [sp, #12]
	add	r3, r3, r1
	mov	r1, r3
	mov	r0, r2
	bl	uint16_encode
	mov	r3, r0
	mov	r1, r3
	.loc 7 195 31
	ldr	r3, [sp, #8]
	ldrh	r2, [r3]
	.loc 7 195 34
	uxth	r3, r1
	.loc 7 195 31
	add	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [sp, #8]
	strh	r2, [r3]	@ movhi
	.loc 7 197 12
	movs	r3, #0
.L106:
	.loc 7 198 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #36
.LCFI12:
	@ sp needed
	ldr	pc, [sp], #4
.LFE235:
	.size	appearance_encode, .-appearance_encode
	.section	.text.flags_encode,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	flags_encode, %function
flags_encode:
.LFB236:
	.loc 7 204 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI13:
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	mov	r2, r3
	mov	r3, r0
	strb	r3, [sp, #15]
	mov	r3, r2	@ movhi
	strh	r3, [sp, #12]	@ movhi
	.loc 7 206 11
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	.loc 7 206 22
	adds	r2, r3, #3
	.loc 7 206 44
	ldrh	r3, [sp, #12]
	.loc 7 206 8
	cmp	r2, r3
	bls	.L108
	.loc 7 208 16
	movs	r3, #12
	b	.L109
.L108:
	.loc 7 212 20
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 7 212 19
	ldr	r3, [sp, #8]
	add	r3, r3, r2
	.loc 7 212 32
	movs	r2, #2
	strb	r2, [r3]
	.loc 7 213 31
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 7 214 20
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 7 214 19
	ldr	r3, [sp, #8]
	add	r3, r3, r2
	.loc 7 214 32
	movs	r2, #1
	strb	r2, [r3]
	.loc 7 215 31
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 7 216 20
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 7 216 19
	ldr	r3, [sp, #8]
	add	r3, r3, r2
	.loc 7 216 32
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	strb	r2, [r3]
	.loc 7 217 31
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 7 219 12
	movs	r3, #0
.L109:
	.loc 7 220 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI14:
	@ sp needed
	bx	lr
.LFE236:
	.size	flags_encode, .-flags_encode
	.section	.text.tx_power_level_encode,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	tx_power_level_encode, %function
tx_power_level_encode:
.LFB237:
	.loc 7 226 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI15:
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	mov	r2, r3
	mov	r3, r0
	strb	r3, [sp, #15]
	mov	r3, r2	@ movhi
	strh	r3, [sp, #12]	@ movhi
	.loc 7 228 11
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	.loc 7 228 22
	adds	r2, r3, #3
	.loc 7 228 53
	ldrh	r3, [sp, #12]
	.loc 7 228 8
	cmp	r2, r3
	bls	.L111
	.loc 7 230 16
	movs	r3, #12
	b	.L112
.L111:
	.loc 7 234 20
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 7 234 19
	ldr	r3, [sp, #8]
	add	r3, r3, r2
	.loc 7 234 32
	movs	r2, #2
	strb	r2, [r3]
	.loc 7 236 31
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 7 237 20
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 7 237 19
	ldr	r3, [sp, #8]
	add	r3, r3, r2
	.loc 7 237 32
	movs	r2, #10
	strb	r2, [r3]
	.loc 7 238 31
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 7 239 20
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 7 239 19
	ldr	r3, [sp, #8]
	add	r3, r3, r2
	.loc 7 239 32
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	strb	r2, [r3]
	.loc 7 240 31
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 7 242 12
	movs	r3, #0
.L112:
	.loc 7 243 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI16:
	@ sp needed
	bx	lr
.LFE237:
	.size	tx_power_level_encode, .-tx_power_level_encode
	.section	.text.uuid_list_sized_encode,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	uuid_list_sized_encode, %function
uuid_list_sized_encode:
.LFB238:
	.loc 7 252 1
	@ args = 8, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI17:
	sub	sp, sp, #60
.LCFI18:
	str	r0, [sp, #12]
	str	r3, [sp, #4]
	mov	r3, r1
	strb	r3, [sp, #11]
	mov	r3, r2
	strb	r3, [sp, #10]
	.loc 7 254 14
	movs	r3, #0
	strb	r3, [sp, #51]
	.loc 7 255 14
	ldr	r3, [sp, #64]
	ldrh	r3, [r3]	@ movhi
	strh	r3, [sp, #48]	@ movhi
	.loc 7 258 12
	movs	r3, #0
	str	r3, [sp, #52]
	.loc 7 258 5
	b	.L114
.L124:
.LBB5:
	.loc 7 262 38
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #4]
	.loc 7 262 47
	ldr	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r2, r2, r3
	.loc 7 262 20
	add	r3, sp, #20
	ldr	r0, [r2]	@ unaligned
	str	r0, [r3]
	.loc 7 265 20
	add	r1, sp, #27
	add	r3, sp, #20
	movs	r2, #0
	mov	r0, r3
	bl	sd_ble_uuid_encode
	str	r0, [sp, #40]
.LBB6:
	.loc 7 266 9
	ldr	r3, [sp, #40]
	str	r3, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	beq	.L115
	.loc 7 266 9 is_stmt 0 discriminator 1
	ldr	r3, [sp, #36]
	b	.L123
.L115:
.LBE6:
	.loc 7 269 26 is_stmt 1
	ldrb	r3, [sp, #27]	@ zero_extendqisi2
	.loc 7 269 12
	ldrb	r2, [sp, #10]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L117
.LBB7:
	.loc 7 271 21
	ldrb	r3, [sp, #51]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L118
	.loc 7 271 21 is_stmt 0 discriminator 1
	movs	r3, #0
	b	.L119
.L118:
	.loc 7 271 21 discriminator 2
	movs	r3, #2
.L119:
	.loc 7 271 21 discriminator 4
	strb	r3, [sp, #35]
	.loc 7 274 19 is_stmt 1 discriminator 4
	ldr	r3, [sp, #64]
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 7 274 30 discriminator 4
	ldrb	r3, [sp, #27]	@ zero_extendqisi2
	add	r2, r2, r3
	.loc 7 274 45 discriminator 4
	ldrb	r3, [sp, #35]	@ zero_extendqisi2
	add	r2, r2, r3
	.loc 7 274 62 discriminator 4
	ldrh	r3, [sp, #68]
	.loc 7 274 16 discriminator 4
	cmp	r2, r3
	ble	.L120
	.loc 7 276 24
	movs	r3, #12
	b	.L123
.L120:
	.loc 7 279 17
	ldrb	r3, [sp, #51]
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 7 279 16
	cmp	r3, #0
	beq	.L121
	.loc 7 282 43
	ldr	r3, [sp, #64]
	ldrh	r3, [r3]
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [sp, #64]
	strh	r2, [r3]	@ movhi
	.loc 7 283 32
	ldr	r3, [sp, #64]
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 7 283 31
	ldr	r3, [sp, #4]
	add	r3, r3, r2
	.loc 7 283 44
	ldrb	r2, [sp, #11]
	strb	r2, [r3]
	.loc 7 284 43
	ldr	r3, [sp, #64]
	ldrh	r3, [r3]
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [sp, #64]
	strh	r2, [r3]	@ movhi
	.loc 7 285 44
	movs	r3, #1
	strb	r3, [sp, #51]
.L121:
	.loc 7 289 81
	ldr	r3, [sp, #64]
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 7 289 24
	ldr	r3, [sp, #4]
	add	r2, r2, r3
	add	r1, sp, #27
	add	r3, sp, #20
	mov	r0, r3
	bl	sd_ble_uuid_encode
	str	r0, [sp, #40]
.LBB8:
	.loc 7 290 13
	ldr	r3, [sp, #40]
	str	r3, [sp, #28]
	ldr	r3, [sp, #28]
	cmp	r3, #0
	beq	.L122
	.loc 7 290 13 is_stmt 0 discriminator 1
	ldr	r3, [sp, #28]
	b	.L123
.L122:
.LBE8:
	.loc 7 291 23 is_stmt 1
	ldr	r3, [sp, #64]
	ldrh	r2, [r3]
	ldrb	r3, [sp, #27]	@ zero_extendqisi2
	uxth	r3, r3
	add	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [sp, #64]
	strh	r2, [r3]	@ movhi
.L117:
.LBE7:
.LBE5:
	.loc 7 258 45
	ldr	r3, [sp, #52]
	adds	r3, r3, #1
	str	r3, [sp, #52]
.L114:
	.loc 7 258 32 discriminator 1
	ldr	r3, [sp, #12]
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 7 258 19 discriminator 1
	ldr	r3, [sp, #52]
	cmp	r3, r2
	blt	.L124
	.loc 7 295 8
	ldrb	r3, [sp, #51]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L125
	.loc 7 298 19
	ldr	r3, [sp, #64]
	ldrh	r2, [r3]
	.loc 7 298 30
	ldrh	r3, [sp, #48]	@ movhi
	subs	r3, r2, r3
	uxth	r3, r3
	.loc 7 298 16
	subs	r3, r3, #1
	strh	r3, [sp, #46]	@ movhi
	.loc 7 300 12
	ldrh	r3, [sp, #46]
	cmp	r3, #255
	bls	.L126
	.loc 7 302 20
	movs	r3, #12
	b	.L123
.L126:
	.loc 7 304 23
	ldrh	r3, [sp, #48]
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	.loc 7 304 37
	ldrh	r2, [sp, #46]	@ movhi
	uxtb	r2, r2
	.loc 7 304 35
	strb	r2, [r3]
.L125:
	.loc 7 307 12
	movs	r3, #0
.L123:
	.loc 7 308 1
	mov	r0, r3
	add	sp, sp, #60
.LCFI19:
	@ sp needed
	ldr	pc, [sp], #4
.LFE238:
	.size	uuid_list_sized_encode, .-uuid_list_sized_encode
	.section	.text.uuid_list_encode,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	uuid_list_encode, %function
uuid_list_encode:
.LFB239:
	.loc 7 317 1
	@ args = 8, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI20:
	sub	sp, sp, #44
.LCFI21:
	str	r0, [sp, #20]
	str	r3, [sp, #12]
	mov	r3, r1
	strb	r3, [sp, #19]
	mov	r3, r2
	strb	r3, [sp, #18]
	.loc 7 321 16
	ldrb	r1, [sp, #19]	@ zero_extendqisi2
	ldrh	r3, [sp, #52]
	str	r3, [sp, #4]
	ldr	r3, [sp, #48]
	str	r3, [sp]
	ldr	r3, [sp, #12]
	movs	r2, #2
	ldr	r0, [sp, #20]
	bl	uuid_list_sized_encode
	str	r0, [sp, #36]
.LBB9:
	.loc 7 327 5
	ldr	r3, [sp, #36]
	str	r3, [sp, #32]
	ldr	r3, [sp, #32]
	cmp	r3, #0
	beq	.L128
	.loc 7 327 5 is_stmt 0 discriminator 1
	ldr	r3, [sp, #32]
	b	.L129
.L128:
.LBE9:
	.loc 7 330 16 is_stmt 1
	ldrb	r1, [sp, #18]	@ zero_extendqisi2
	ldrh	r3, [sp, #52]
	str	r3, [sp, #4]
	ldr	r3, [sp, #48]
	str	r3, [sp]
	ldr	r3, [sp, #12]
	movs	r2, #16
	ldr	r0, [sp, #20]
	bl	uuid_list_sized_encode
	str	r0, [sp, #36]
.LBB10:
	.loc 7 336 5
	ldr	r3, [sp, #36]
	str	r3, [sp, #28]
	ldr	r3, [sp, #28]
	cmp	r3, #0
	beq	.L130
	.loc 7 336 5 is_stmt 0 discriminator 1
	ldr	r3, [sp, #28]
	b	.L129
.L130:
.LBE10:
	.loc 7 338 12 is_stmt 1
	movs	r3, #0
.L129:
	.loc 7 339 1
	mov	r0, r3
	add	sp, sp, #44
.LCFI22:
	@ sp needed
	ldr	pc, [sp], #4
.LFE239:
	.size	uuid_list_encode, .-uuid_list_encode
	.section	.text.conn_int_check,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	conn_int_check, %function
conn_int_check:
.LFB240:
	.loc 7 343 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI23:
	str	r0, [sp, #4]
	.loc 7 345 20
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	.loc 7 345 8
	cmp	r3, #5
	bls	.L132
	.loc 7 347 24 discriminator 1
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	.loc 7 345 50 discriminator 1
	cmp	r3, #3200
	bls	.L133
	.loc 7 348 24
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	.loc 7 347 54
	movw	r2, #65535
	cmp	r3, r2
	beq	.L133
.L132:
	.loc 7 352 16
	movs	r3, #7
	b	.L134
.L133:
	.loc 7 356 20
	ldr	r3, [sp, #4]
	ldrh	r3, [r3, #2]
	.loc 7 356 8
	cmp	r3, #5
	bls	.L135
	.loc 7 358 24 discriminator 1
	ldr	r3, [sp, #4]
	ldrh	r3, [r3, #2]
	.loc 7 356 50 discriminator 1
	cmp	r3, #3200
	bls	.L136
	.loc 7 359 24
	ldr	r3, [sp, #4]
	ldrh	r3, [r3, #2]
	.loc 7 358 54
	movw	r2, #65535
	cmp	r3, r2
	beq	.L136
.L135:
	.loc 7 363 16
	movs	r3, #7
	b	.L134
.L136:
	.loc 7 367 20
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	.loc 7 367 8
	movw	r2, #65535
	cmp	r3, r2
	beq	.L137
	.loc 7 368 20 discriminator 1
	ldr	r3, [sp, #4]
	ldrh	r3, [r3, #2]
	.loc 7 367 51 discriminator 1
	movw	r2, #65535
	cmp	r3, r2
	beq	.L137
	.loc 7 369 20
	ldr	r3, [sp, #4]
	ldrh	r2, [r3]
	.loc 7 369 52
	ldr	r3, [sp, #4]
	ldrh	r3, [r3, #2]
	.loc 7 368 51
	cmp	r2, r3
	bls	.L137
	.loc 7 372 16
	movs	r3, #7
	b	.L134
.L137:
	.loc 7 375 12
	movs	r3, #0
.L134:
	.loc 7 376 1
	mov	r0, r3
	add	sp, sp, #8
.LCFI24:
	@ sp needed
	bx	lr
.LFE240:
	.size	conn_int_check, .-conn_int_check
	.section	.text.conn_int_encode,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	conn_int_encode, %function
conn_int_encode:
.LFB241:
	.loc 7 383 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI25:
	sub	sp, sp, #28
.LCFI26:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	strh	r3, [sp, #2]	@ movhi
	.loc 7 387 11
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	.loc 7 387 22
	adds	r2, r3, #6
	.loc 7 387 47
	ldrh	r3, [sp, #2]
	.loc 7 387 8
	cmp	r2, r3
	bls	.L139
	.loc 7 389 16
	movs	r3, #12
	b	.L140
.L139:
	.loc 7 393 16
	ldr	r0, [sp, #12]
	bl	conn_int_check
	str	r0, [sp, #20]
.LBB11:
	.loc 7 394 5
	ldr	r3, [sp, #20]
	str	r3, [sp, #16]
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L141
	.loc 7 394 5 is_stmt 0 discriminator 1
	ldr	r3, [sp, #16]
	b	.L140
.L141:
.LBE11:
	.loc 7 397 20 is_stmt 1
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 7 397 19
	ldr	r3, [sp, #8]
	add	r3, r3, r2
	.loc 7 397 32
	movs	r2, #5
	strb	r2, [r3]
	.loc 7 398 31
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 7 399 20
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 7 399 19
	ldr	r3, [sp, #8]
	add	r3, r3, r2
	.loc 7 399 32
	movs	r2, #18
	strb	r2, [r3]
	.loc 7 400 31
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 7 403 42
	ldr	r3, [sp, #12]
	ldrh	r2, [r3]
	.loc 7 403 79
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	mov	r1, r3
	.loc 7 403 18
	ldr	r3, [sp, #8]
	add	r3, r3, r1
	mov	r1, r3
	mov	r0, r2
	bl	uint16_encode
	mov	r3, r0
	mov	r1, r3
	.loc 7 403 15
	ldr	r3, [sp, #4]
	ldrh	r2, [r3]
	.loc 7 403 18
	uxth	r3, r1
	.loc 7 403 15
	add	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 7 404 42
	ldr	r3, [sp, #12]
	ldrh	r2, [r3, #2]
	.loc 7 404 79
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	mov	r1, r3
	.loc 7 404 18
	ldr	r3, [sp, #8]
	add	r3, r3, r1
	mov	r1, r3
	mov	r0, r2
	bl	uint16_encode
	mov	r3, r0
	mov	r1, r3
	.loc 7 404 15
	ldr	r3, [sp, #4]
	ldrh	r2, [r3]
	.loc 7 404 18
	uxth	r3, r1
	.loc 7 404 15
	add	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 7 406 12
	movs	r3, #0
.L140:
	.loc 7 407 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI27:
	@ sp needed
	ldr	pc, [sp], #4
.LFE241:
	.size	conn_int_encode, .-conn_int_encode
	.section	.text.manuf_specific_data_encode,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	manuf_specific_data_encode, %function
manuf_specific_data_encode:
.LFB242:
	.loc 7 414 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI28:
	sub	sp, sp, #28
.LCFI29:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	strh	r3, [sp, #2]	@ movhi
	.loc 7 415 81
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #4]
	.loc 7 415 14
	adds	r3, r3, #2
	str	r3, [sp, #20]
	.loc 7 418 11
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 7 418 39
	ldr	r3, [sp, #20]
	add	r3, r3, r2
	adds	r2, r3, #2
	.loc 7 418 52
	ldrh	r3, [sp, #2]
	.loc 7 418 8
	cmp	r2, r3
	bls	.L143
	.loc 7 420 16
	movs	r3, #12
	b	.L144
.L143:
	.loc 7 424 8
	ldr	r3, [sp, #20]
	cmp	r3, #254
	bls	.L145
	.loc 7 426 16
	movs	r3, #12
	b	.L144
.L145:
	.loc 7 430 34
	ldr	r3, [sp, #20]
	uxtb	r2, r3
	.loc 7 430 20
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	mov	r1, r3
	.loc 7 430 19
	ldr	r3, [sp, #8]
	add	r3, r3, r1
	.loc 7 430 34
	adds	r2, r2, #1
	uxtb	r2, r2
	.loc 7 430 32
	strb	r2, [r3]
	.loc 7 431 31
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 7 432 20
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 7 432 19
	ldr	r3, [sp, #8]
	add	r3, r3, r2
	.loc 7 432 32
	movs	r2, #255
	strb	r2, [r3]
	.loc 7 433 31
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 7 436 47
	ldr	r3, [sp, #12]
	ldrh	r2, [r3]
	.loc 7 436 85
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	mov	r1, r3
	.loc 7 436 18
	ldr	r3, [sp, #8]
	add	r3, r3, r1
	mov	r1, r3
	mov	r0, r2
	bl	uint16_encode
	mov	r3, r0
	mov	r1, r3
	.loc 7 436 15
	ldr	r3, [sp, #4]
	ldrh	r2, [r3]
	.loc 7 436 18
	uxth	r3, r1
	.loc 7 436 15
	add	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 7 439 30
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #4]
	.loc 7 439 8
	cmp	r3, #0
	beq	.L146
	.loc 7 441 34
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	.loc 7 441 12
	cmp	r3, #0
	bne	.L147
	.loc 7 443 20
	movs	r3, #7
	b	.L144
.L147:
	.loc 7 445 32
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 7 445 16
	ldr	r3, [sp, #8]
	adds	r0, r3, r2
	.loc 7 445 65
	ldr	r3, [sp, #12]
	ldr	r1, [r3, #8]
	.loc 7 445 95
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #4]
	.loc 7 445 9
	mov	r2, r3
	bl	memcpy
	.loc 7 446 19
	ldr	r3, [sp, #4]
	ldrh	r2, [r3]
	.loc 7 446 43
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #4]
	.loc 7 446 19
	add	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
.L146:
	.loc 7 449 12
	movs	r3, #0
.L144:
	.loc 7 450 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI30:
	@ sp needed
	ldr	pc, [sp], #4
.LFE242:
	.size	manuf_specific_data_encode, .-manuf_specific_data_encode
	.section	.text.service_data_encode,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	service_data_encode, %function
service_data_encode:
.LFB243:
	.loc 7 457 1
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI31:
	sub	sp, sp, #36
.LCFI32:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	strh	r3, [sp, #2]	@ movhi
	.loc 7 461 18
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #40]
	.loc 7 461 8
	cmp	r3, #0
	bne	.L149
	.loc 7 463 16
	movs	r3, #7
	b	.L150
.L149:
	.loc 7 466 12
	movs	r3, #0
	strb	r3, [sp, #31]
	.loc 7 466 5
	b	.L151
.L155:
.LBB12:
	.loc 7 471 36
	ldr	r3, [sp, #12]
	ldr	r1, [r3, #40]
	.loc 7 471 58
	ldrb	r2, [sp, #31]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	.loc 7 471 24
	add	r3, r3, r1
	str	r3, [sp, #24]
	.loc 7 473 82
	ldr	r3, [sp, #24]
	ldrh	r3, [r3, #4]
	.loc 7 473 24
	adds	r3, r3, #2
	str	r3, [sp, #20]
	.loc 7 476 12
	ldr	r3, [sp, #20]
	cmp	r3, #254
	bls	.L152
	.loc 7 478 20
	movs	r3, #12
	b	.L150
.L152:
	.loc 7 482 38
	ldr	r3, [sp, #20]
	uxtb	r2, r3
	.loc 7 482 24
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	mov	r1, r3
	.loc 7 482 23
	ldr	r3, [sp, #8]
	add	r3, r3, r1
	.loc 7 482 38
	adds	r2, r2, #1
	uxtb	r2, r2
	.loc 7 482 36
	strb	r2, [r3]
	.loc 7 483 35
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 7 484 24
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 7 484 23
	ldr	r3, [sp, #8]
	add	r3, r3, r2
	.loc 7 484 36
	movs	r2, #22
	strb	r2, [r3]
	.loc 7 485 35
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [sp, #4]
	strh	