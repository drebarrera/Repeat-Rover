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
	.file	"ble_advertising.c"
	.text
.Ltext0:
	.section	.text.sd_ble_gap_addr_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_addr_set, %function
sd_ble_gap_addr_set:
.LFB153:
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
.LFE153:
	.size	sd_ble_gap_addr_set, .-sd_ble_gap_addr_set
	.section	.text.sd_ble_gap_addr_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_addr_get, %function
sd_ble_gap_addr_get:
.LFB154:
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
.LFE154:
	.size	sd_ble_gap_addr_get, .-sd_ble_gap_addr_get
	.section	.text.sd_ble_gap_whitelist_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_whitelist_set, %function
sd_ble_gap_whitelist_set:
.LFB155:
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
.LFE155:
	.size	sd_ble_gap_whitelist_set, .-sd_ble_gap_whitelist_set
	.section	.text.sd_ble_gap_device_identities_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_device_identities_set, %function
sd_ble_gap_device_identities_set:
.LFB156:
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
.LFE156:
	.size	sd_ble_gap_device_identities_set, .-sd_ble_gap_device_identities_set
	.section	.text.sd_ble_gap_privacy_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_privacy_set, %function
sd_ble_gap_privacy_set:
.LFB157:
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
.LFE157:
	.size	sd_ble_gap_privacy_set, .-sd_ble_gap_privacy_set
	.section	.text.sd_ble_gap_privacy_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_privacy_get, %function
sd_ble_gap_privacy_get:
.LFB158:
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
.LFE158:
	.size	sd_ble_gap_privacy_get, .-sd_ble_gap_privacy_get
	.section	.text.sd_ble_gap_adv_set_configure,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_adv_set_configure, %function
sd_ble_gap_adv_set_configure:
.LFB159:
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
.LFE159:
	.size	sd_ble_gap_adv_set_configure, .-sd_ble_gap_adv_set_configure
	.section	.text.sd_ble_gap_adv_start,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_adv_start, %function
sd_ble_gap_adv_start:
.LFB160:
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
.LFE160:
	.size	sd_ble_gap_adv_start, .-sd_ble_gap_adv_start
	.section	.text.sd_ble_gap_adv_stop,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_adv_stop, %function
sd_ble_gap_adv_stop:
.LFB161:
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
.LFE161:
	.size	sd_ble_gap_adv_stop, .-sd_ble_gap_adv_stop
	.section	.text.sd_ble_gap_conn_param_update,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_conn_param_update, %function
sd_ble_gap_conn_param_update:
.LFB162:
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
.LFE162:
	.size	sd_ble_gap_conn_param_update, .-sd_ble_gap_conn_param_update
	.section	.text.sd_ble_gap_disconnect,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_disconnect, %function
sd_ble_gap_disconnect:
.LFB163:
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
.LFE163:
	.size	sd_ble_gap_disconnect, .-sd_ble_gap_disconnect
	.section	.text.sd_ble_gap_tx_power_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_tx_power_set, %function
sd_ble_gap_tx_power_set:
.LFB164:
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
.LFE164:
	.size	sd_ble_gap_tx_power_set, .-sd_ble_gap_tx_power_set
	.section	.text.sd_ble_gap_appearance_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_appearance_set, %function
sd_ble_gap_appearance_set:
.LFB165:
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
.LFE165:
	.size	sd_ble_gap_appearance_set, .-sd_ble_gap_appearance_set
	.section	.text.sd_ble_gap_appearance_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_appearance_get, %function
sd_ble_gap_appearance_get:
.LFB166:
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
.LFE166:
	.size	sd_ble_gap_appearance_get, .-sd_ble_gap_appearance_get
	.section	.text.sd_ble_gap_ppcp_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_ppcp_set, %function
sd_ble_gap_ppcp_set:
.LFB167:
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
.LFE167:
	.size	sd_ble_gap_ppcp_set, .-sd_ble_gap_ppcp_set
	.section	.text.sd_ble_gap_ppcp_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_ppcp_get, %function
sd_ble_gap_ppcp_get:
.LFB168:
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
.LFE168:
	.size	sd_ble_gap_ppcp_get, .-sd_ble_gap_ppcp_get
	.section	.text.sd_ble_gap_device_name_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_device_name_set, %function
sd_ble_gap_device_name_set:
.LFB169:
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
.LFE169:
	.size	sd_ble_gap_device_name_set, .-sd_ble_gap_device_name_set
	.section	.text.sd_ble_gap_device_name_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_device_name_get, %function
sd_ble_gap_device_name_get:
.LFB170:
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
.LFE170:
	.size	sd_ble_gap_device_name_get, .-sd_ble_gap_device_name_get
	.section	.text.sd_ble_gap_authenticate,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_authenticate, %function
sd_ble_gap_authenticate:
.LFB171:
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
.LFE171:
	.size	sd_ble_gap_authenticate, .-sd_ble_gap_authenticate
	.section	.text.sd_ble_gap_sec_params_reply,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_sec_params_reply, %function
sd_ble_gap_sec_params_reply:
.LFB172:
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
.LFE172:
	.size	sd_ble_gap_sec_params_reply, .-sd_ble_gap_sec_params_reply
	.section	.text.sd_ble_gap_auth_key_reply,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_auth_key_reply, %function
sd_ble_gap_auth_key_reply:
.LFB173:
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
.LFE173:
	.size	sd_ble_gap_auth_key_reply, .-sd_ble_gap_auth_key_reply
	.section	.text.sd_ble_gap_lesc_dhkey_reply,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_lesc_dhkey_reply, %function
sd_ble_gap_lesc_dhkey_reply:
.LFB174:
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
.LFE174:
	.size	sd_ble_gap_lesc_dhkey_reply, .-sd_ble_gap_lesc_dhkey_reply
	.section	.text.sd_ble_gap_keypress_notify,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_keypress_notify, %function
sd_ble_gap_keypress_notify:
.LFB175:
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
.LFE175:
	.size	sd_ble_gap_keypress_notify, .-sd_ble_gap_keypress_notify
	.section	.text.sd_ble_gap_lesc_oob_data_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_lesc_oob_data_get, %function
sd_ble_gap_lesc_oob_data_get:
.LFB176:
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
.LFE176:
	.size	sd_ble_gap_lesc_oob_data_get, .-sd_ble_gap_lesc_oob_data_get
	.section	.text.sd_ble_gap_lesc_oob_data_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_lesc_oob_data_set, %function
sd_ble_gap_lesc_oob_data_set:
.LFB177:
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
.LFE177:
	.size	sd_ble_gap_lesc_oob_data_set, .-sd_ble_gap_lesc_oob_data_set
	.section	.text.sd_ble_gap_encrypt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_encrypt, %function
sd_ble_gap_encrypt:
.LFB178:
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
.LFE178:
	.size	sd_ble_gap_encrypt, .-sd_ble_gap_encrypt
	.section	.text.sd_ble_gap_sec_info_reply,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_sec_info_reply, %function
sd_ble_gap_sec_info_reply:
.LFB179:
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
.LFE179:
	.size	sd_ble_gap_sec_info_reply, .-sd_ble_gap_sec_info_reply
	.section	.text.sd_ble_gap_conn_sec_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_conn_sec_get, %function
sd_ble_gap_conn_sec_get:
.LFB180:
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
.LFE180:
	.size	sd_ble_gap_conn_sec_get, .-sd_ble_gap_conn_sec_get
	.section	.text.sd_ble_gap_rssi_start,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_rssi_start, %function
sd_ble_gap_rssi_start:
.LFB181:
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
.LFE181:
	.size	sd_ble_gap_rssi_start, .-sd_ble_gap_rssi_start
	.section	.text.sd_ble_gap_rssi_stop,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_rssi_stop, %function
sd_ble_gap_rssi_stop:
.LFB182:
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
.LFE182:
	.size	sd_ble_gap_rssi_stop, .-sd_ble_gap_rssi_stop
	.section	.text.sd_ble_gap_rssi_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_rssi_get, %function
sd_ble_gap_rssi_get:
.LFB183:
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
.LFE183:
	.size	sd_ble_gap_rssi_get, .-sd_ble_gap_rssi_get
	.section	.text.sd_ble_gap_scan_start,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_scan_start, %function
sd_ble_gap_scan_start:
.LFB184:
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
.LFE184:
	.size	sd_ble_gap_scan_start, .-sd_ble_gap_scan_start
	.section	.text.sd_ble_gap_scan_stop,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_scan_stop, %function
sd_ble_gap_scan_stop:
.LFB185:
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
.LFE185:
	.size	sd_ble_gap_scan_stop, .-sd_ble_gap_scan_stop
	.section	.text.sd_ble_gap_connect,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_connect, %function
sd_ble_gap_connect:
.LFB186:
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
.LFE186:
	.size	sd_ble_gap_connect, .-sd_ble_gap_connect
	.section	.text.sd_ble_gap_connect_cancel,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_connect_cancel, %function
sd_ble_gap_connect_cancel:
.LFB187:
	.loc 1 2513 1
	@ Naked Function: prologue and epilogue provided by programmer