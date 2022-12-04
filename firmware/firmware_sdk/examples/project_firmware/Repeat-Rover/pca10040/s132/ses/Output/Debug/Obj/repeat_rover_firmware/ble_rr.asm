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
	.file	"ble_rr.c"
	.text
.Ltext0:
	.section	.text.sd_ble_gap_addr_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_addr_set, %function
sd_ble_gap_addr_set:
.LFB136:
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
.LFE136:
	.size	sd_ble_gap_addr_set, .-sd_ble_gap_addr_set
	.section	.text.sd_ble_gap_addr_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_addr_get, %function
sd_ble_gap_addr_get:
.LFB137:
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
.LFE137:
	.size	sd_ble_gap_addr_get, .-sd_ble_gap_addr_get
	.section	.text.sd_ble_gap_whitelist_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_whitelist_set, %function
sd_ble_gap_whitelist_set:
.LFB138:
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
.LFE138:
	.size	sd_ble_gap_whitelist_set, .-sd_ble_gap_whitelist_set
	.section	.text.sd_ble_gap_device_identities_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_device_identities_set, %function
sd_ble_gap_device_identities_set:
.LFB139:
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
.LFE139:
	.size	sd_ble_gap_device_identities_set, .-sd_ble_gap_device_identities_set
	.section	.text.sd_ble_gap_privacy_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_privacy_set, %function
sd_ble_gap_privacy_set:
.LFB140:
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
.LFE140:
	.size	sd_ble_gap_privacy_set, .-sd_ble_gap_privacy_set
	.section	.text.sd_ble_gap_privacy_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_privacy_get, %function
sd_ble_gap_privacy_get:
.LFB141:
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
.LFE141:
	.size	sd_ble_gap_privacy_get, .-sd_ble_gap_privacy_get
	.section	.text.sd_ble_gap_adv_set_configure,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_adv_set_configure, %function
sd_ble_gap_adv_set_configure:
.LFB142:
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
.LFE142:
	.size	sd_ble_gap_adv_set_configure, .-sd_ble_gap_adv_set_configure
	.section	.text.sd_ble_gap_adv_start,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_adv_start, %function
sd_ble_gap_adv_start:
.LFB143:
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
.LFE143:
	.size	sd_ble_gap_adv_start, .-sd_ble_gap_adv_start
	.section	.text.sd_ble_gap_adv_stop,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_adv_stop, %function
sd_ble_gap_adv_stop:
.LFB144:
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
.LFE144:
	.size	sd_ble_gap_adv_stop, .-sd_ble_gap_adv_stop
	.section	.text.sd_ble_gap_conn_param_update,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_conn_param_update, %function
sd_ble_gap_conn_param_update:
.LFB145:
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
.LFE145:
	.size	sd_ble_gap_conn_param_update, .-sd_ble_gap_conn_param_update
	.section	.text.sd_ble_gap_disconnect,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_disconnect, %function
sd_ble_gap_disconnect:
.LFB146:
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
.LFE146:
	.size	sd_ble_gap_disconnect, .-sd_ble_gap_disconnect
	.section	.text.sd_ble_gap_tx_power_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_tx_power_set, %function
sd_ble_gap_tx_power_set:
.LFB147:
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
.LFE147:
	.size	sd_ble_gap_tx_power_set, .-sd_ble_gap_tx_power_set
	.section	.text.sd_ble_gap_appearance_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_appearance_set, %function
sd_ble_gap_appearance_set:
.LFB148:
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
.LFE148:
	.size	sd_ble_gap_appearance_set, .-sd_ble_gap_appearance_set
	.section	.text.sd_ble_gap_appearance_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_appearance_get, %function
sd_ble_gap_appearance_get:
.LFB149:
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
.LFE149:
	.size	sd_ble_gap_appearance_get, .-sd_ble_gap_appearance_get
	.section	.text.sd_ble_gap_ppcp_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_ppcp_set, %function
sd_ble_gap_ppcp_set:
.LFB150:
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
.LFE150:
	.size	sd_ble_gap_ppcp_set, .-sd_ble_gap_ppcp_set
	.section	.text.sd_ble_gap_ppcp_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_ppcp_get, %function
sd_ble_gap_ppcp_get:
.LFB151:
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
.LFE151:
	.size	sd_ble_gap_ppcp_get, .-sd_ble_gap_ppcp_get
	.section	.text.sd_ble_gap_device_name_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_device_name_set, %function
sd_ble_gap_device_name_set:
.LFB152:
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
.LFE152:
	.size	sd_ble_gap_device_name_set, .-sd_ble_gap_device_name_set
	.section	.text.sd_ble_gap_device_name_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_device_name_get, %function
sd_ble_gap_device_name_get:
.LFB153:
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
.LFE153:
	.size	sd_ble_gap_device_name_get, .-sd_ble_gap_device_name_get
	.section	.text.sd_ble_gap_authenticate,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_authenticate, %function
sd_ble_gap_authenticate:
.LFB154:
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
.LFE154:
	.size	sd_ble_gap_authenticate, .-sd_ble_gap_authenticate
	.section	.text.sd_ble_gap_sec_params_reply,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_sec_params_reply, %function
sd_ble_gap_sec_params_reply:
.LFB155:
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
.LFE155:
	.size	sd_ble_gap_sec_params_reply, .-sd_ble_gap_sec_params_reply
	.section	.text.sd_ble_gap_auth_key_reply,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_auth_key_reply, %function
sd_ble_gap_auth_key_reply:
.LFB156:
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
.LFE156:
	.size	sd_ble_gap_auth_key_reply, .-sd_ble_gap_auth_key_reply
	.section	.text.sd_ble_gap_lesc_dhkey_reply,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_lesc_dhkey_reply, %function
sd_ble_gap_lesc_dhkey_reply:
.LFB157:
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
.LFE157:
	.size	sd_ble_gap_lesc_dhkey_reply, .-sd_ble_gap_lesc_dhkey_reply
	.section	.text.sd_ble_gap_keypress_notify,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_keypress_notify, %function
sd_ble_gap_keypress_notify:
.LFB158:
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
.LFE158:
	.size	sd_ble_gap_keypress_notify, .-sd_ble_gap_keypress_notify
	.section	.text.sd_ble_gap_lesc_oob_data_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_lesc_oob_data_get, %function
sd_ble_gap_lesc_oob_data_get:
.LFB159:
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
.LFE159:
	.size	sd_ble_gap_lesc_oob_data_get, .-sd_ble_gap_lesc_oob_data_get
	.section	.text.sd_ble_gap_lesc_oob_data_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_lesc_oob_data_set, %function
sd_ble_gap_lesc_oob_data_set:
.LFB160:
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
.LFE160:
	.size	sd_ble_gap_lesc_oob_data_set, .-sd_ble_gap_lesc_oob_data_set
	.section	.text.sd_ble_gap_encrypt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_encrypt, %function
sd_ble_gap_encrypt:
.LFB161:
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
.LFE161:
	.size	sd_ble_gap_encrypt, .-sd_ble_gap_encrypt
	.section	.text.sd_ble_gap_sec_info_reply,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_sec_info_reply, %function
sd_ble_gap_sec_info_reply:
.LFB162:
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
.LFE162:
	.size	sd_ble_gap_sec_info_reply, .-sd_ble_gap_sec_info_reply
	.section	.text.sd_ble_gap_conn_sec_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_conn_sec_get, %function
sd_ble_gap_conn_sec_get:
.LFB163:
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
.LFE163:
	.size	sd_ble_gap_conn_sec_get, .-sd_ble_gap_conn_sec_get
	.section	.text.sd_ble_gap_rssi_start,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_rssi_start, %function
sd_ble_gap_rssi_start:
.LFB164:
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
.LFE164:
	.size	sd_ble_gap_rssi_start, .-sd_ble_gap_rssi_start
	.section	.text.sd_ble_gap_rssi_stop,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_rssi_stop, %function
sd_ble_gap_rssi_stop:
.LFB165:
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
.LFE165:
	.size	sd_ble_gap_rssi_stop, .-sd_ble_gap_rssi_stop
	.section	.text.sd_ble_gap_rssi_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_rssi_get, %function
sd_ble_gap_rssi_get:
.LFB166:
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
.LFE166:
	.size	sd_ble_gap_rssi_get, .-sd_ble_gap_rssi_get
	.section	.text.sd_ble_gap_scan_start,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_scan_start, %function
sd_ble_gap_scan_start:
.LFB167:
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
.LFE167:
	.size	sd_ble_gap_scan_start, .-sd_ble_gap_scan_start
	.section	.text.sd_ble_gap_scan_stop,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_scan_stop, %function
sd_ble_gap_scan_stop:
.LFB168:
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
.LFE168:
	.size	sd_ble_gap_scan_stop, .-sd_ble_gap_scan_stop
	.section	.text.sd_ble_gap_connect,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_connect, %function
sd_ble_gap_connect:
.LFB169:
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
.LFE169:
	.size	sd_ble_gap_connect, .-sd_ble_gap_connect
	.section	.text.sd_ble_gap_connect_cancel,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_connect_cancel, %function
sd_ble_gap_connect_cancel:
.LFB170:
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
.LFE170:
	.size	sd_ble_gap_connect_cancel, .-sd_ble_gap_connect_cancel
	.section	.text.sd_ble_gap_phy_update,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_phy_update, %function
sd_ble_gap_phy_update:
.LFB171:
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
.LFE171:
	.size	sd_ble_gap_phy_update, .-sd_ble_gap_phy_update
	.section	.text.sd_ble_gap_data_length_update,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_data_length_update, %function
sd_ble_gap_data_length_update:
.LFB172:
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
.LFE172:
	.size	sd_ble_gap_data_length_update, .-sd_ble_gap_data_length_update
	.section	.text.sd_ble_gap_qos_channel_survey_start,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_qos_channel_survey_start, %function
sd_ble_gap_qos_channel_survey_start:
.LFB173:
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
.LFE173:
	.size	sd_ble_gap_qos_channel_survey_start, .-sd_ble_gap_qos_channel_survey_start
	.section	.text.sd_ble_gap_qos_channel_survey_stop,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gap_qos_channel_survey_stop, %function
sd_ble_gap_qos_channel_survey_stop:
.LFB174:
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
.LFE174:
	.size	sd_ble_gap_qos_channel_survey_stop, .-sd_ble_gap_qos_channel_survey_stop
	.section	.text.sd_ble_l2cap_ch_setup,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_l2cap_ch_setup, %function
sd_ble_l2cap_ch_setup:
.LFB175:
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
.LFE175:
	.size	sd_ble_l2cap_ch_setup, .-sd_ble_l2cap_ch_setup
	.section	.text.sd_ble_l2cap_ch_release,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_l2cap_ch_release, %function
sd_ble_l2cap_ch_release:
.LFB176:
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
.LFE176:
	.size	sd_ble_l2cap_ch_release, .-sd_ble_l2cap_ch_release
	.section	.text.sd_ble_l2cap_ch_rx,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_l2cap_ch_rx, %function
sd_ble_l2cap_ch_rx:
.LFB177:
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
.LFE177:
	.size	sd_ble_l2cap_ch_rx, .-sd_ble_l2cap_ch_rx
	.section	.text.sd_ble_l2cap_ch_tx,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_l2cap_ch_tx, %function
sd_ble_l2cap_ch_tx:
.LFB178:
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
.LFE178:
	.size	sd_ble_l2cap_ch_tx, .-sd_ble_l2cap_ch_tx
	.section	.text.sd_ble_l2cap_ch_flow_control,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_l2cap_ch_flow_control, %function
sd_ble_l2cap_ch_flow_control:
.LFB179:
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
.LFE179:
	.size	sd_ble_l2cap_ch_flow_control, .-sd_ble_l2cap_ch_flow_control
	.section	.text.sd_ble_gattc_primary_services_discover,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gattc_primary_services_discover, %function
sd_ble_gattc_primary_services_discover:
.LFB180:
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
.LFE180:
	.size	sd_ble_gattc_primary_services_discover, .-sd_ble_gattc_primary_services_discover
	.section	.text.sd_ble_gattc_relationships_discover,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gattc_relationships_discover, %function
sd_ble_gattc_relationships_discover:
.LFB181:
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
.LFE181:
	.size	sd_ble_gattc_relationships_discover, .-sd_ble_gattc_relationships_discover
	.section	.text.sd_ble_gattc_characteristics_discover,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gattc_characteristics_discover, %function
sd_ble_gattc_characteristics_discover:
.LFB182:
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
.LFE182:
	.size	sd_ble_gattc_characteristics_discover, .-sd_ble_gattc_characteristics_discover
	.section	.text.sd_ble_gattc_descriptors_discover,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gattc_descriptors_discover, %function
sd_ble_gattc_descriptors_discover:
.LFB183:
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
.LFE183:
	.size	sd_ble_gattc_descriptors_discover, .-sd_ble_gattc_descriptors_discover
	.section	.text.sd_ble_gattc_char_value_by_uuid_read,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gattc_char_value_by_uuid_read, %function
sd_ble_gattc_char_value_by_uuid_read:
.LFB184:
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
.LFE184:
	.size	sd_ble_gattc_char_value_by_uuid_read, .-sd_ble_gattc_char_value_by_uuid_read
	.section	.text.sd_ble_gattc_read,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gattc_read, %function
sd_ble_gattc_read:
.LFB185:
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
.LFE185:
	.size	sd_ble_gattc_read, .-sd_ble_gattc_read
	.section	.text.sd_ble_gattc_char_values_read,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gattc_char_values_read, %function
sd_ble_gattc_char_values_read:
.LFB186:
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
.LFE186:
	.size	sd_ble_gattc_char_values_read, .-sd_ble_gattc_char_values_read
	.section	.text.sd_ble_gattc_write,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gattc_write, %function
sd_ble_gattc_write:
.LFB187:
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
.LFE187:
	.size	sd_ble_gattc_write, .-sd_ble_gattc_write
	.section	.text.sd_ble_gattc_hv_confirm,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gattc_hv_confirm, %function
sd_ble_gattc_hv_confirm:
.LFB188:
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
.LFE188:
	.size	sd_ble_gattc_hv_confirm, .-sd_ble_gattc_hv_confirm
	.section	.text.sd_ble_gattc_attr_info_discover,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gattc_attr_info_discover, %function
sd_ble_gattc_attr_info_discover:
.LFB189:
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
.LFE189:
	.size	sd_ble_gattc_attr_info_discover, .-sd_ble_gattc_attr_info_discover
	.section	.text.sd_ble_gattc_exchange_mtu_request,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gattc_exchange_mtu_request, %function
sd_ble_gattc_exchange_mtu_request:
.LFB190:
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
.LFE190:
	.size	sd_ble_gattc_exchange_mtu_request, .-sd_ble_gattc_exchange_mtu_request
	.section	.text.sd_ble_gatts_service_add,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_service_add, %function
sd_ble_gatts_service_add:
.LFB192:
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
.LFE192:
	.size	sd_ble_gatts_service_add, .-sd_ble_gatts_service_add
	.section	.text.sd_ble_gatts_include_add,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_include_add, %function
sd_ble_gatts_include_add:
.LFB193:
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
.LFE193:
	.size	sd_ble_gatts_include_add, .-sd_ble_gatts_include_add
	.section	.text.sd_ble_gatts_characteristic_add,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_characteristic_add, %function
sd_ble_gatts_characteristic_add:
.LFB194:
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
.LFE194:
	.size	sd_ble_gatts_characteristic_add, .-sd_ble_gatts_characteristic_add
	.section	.text.sd_ble_gatts_descriptor_add,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_descriptor_add, %function
sd_ble_gatts_descriptor_add:
.LFB195:
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
.LFE195:
	.size	sd_ble_gatts_descriptor_add, .-sd_ble_gatts_descriptor_add
	.section	.text.sd_ble_gatts_value_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_value_set, %function
sd_ble_gatts_value_set:
.LFB196:
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
.LFE196:
	.size	sd_ble_gatts_value_set, .-sd_ble_gatts_value_set
	.section	.text.sd_ble_gatts_value_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_value_get, %function
sd_ble_gatts_value_get:
.LFB197:
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
.LFE197:
	.size	sd_ble_gatts_value_get, .-sd_ble_gatts_value_get
	.section	.text.sd_ble_gatts_hvx,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_hvx, %function
sd_ble_gatts_hvx:
.LFB198:
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
.LFE198:
	.size	sd_ble_gatts_hvx, .-sd_ble_gatts_hvx
	.section	.text.sd_ble_gatts_service_changed,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_service_changed, %function
sd_ble_gatts_service_changed:
.LFB199:
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
.LFE199:
	.size	sd_ble_gatts_service_changed, .-sd_ble_gatts_service_changed
	.section	.text.sd_ble_gatts_rw_authorize_reply,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_rw_authorize_reply, %function
sd_ble_gatts_rw_authorize_reply:
.LFB200:
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
.LFE200:
	.size	sd_ble_gatts_rw_authorize_reply, .-sd_ble_gatts_rw_authorize_reply
	.section	.text.sd_ble_gatts_sys_attr_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_sys_attr_set, %function
sd_ble_gatts_sys_attr_set:
.LFB201:
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
.LFE201:
	.size	sd_ble_gatts_sys_attr_set, .-sd_ble_gatts_sys_attr_set
	.section	.text.sd_ble_gatts_sys_attr_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_sys_attr_get, %function
sd_ble_gatts_sys_attr_get:
.LFB202:
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
.LFE202:
	.size	sd_ble_gatts_sys_attr_get, .-sd_ble_gatts_sys_attr_get
	.section	.text.sd_ble_gatts_initial_user_handle_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_initial_user_handle_get, %function
sd_ble_gatts_initial_user_handle_get:
.LFB203:
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
.LFE203:
	.size	sd_ble_gatts_initial_user_handle_get, .-sd_ble_gatts_initial_user_handle_get
	.section	.text.sd_ble_gatts_attr_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_attr_get, %function
sd_ble_gatts_attr_get:
.LFB204:
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
.LFE204:
	.size	sd_ble_gatts_attr_get, .-sd_ble_gatts_attr_get
	.section	.text.sd_ble_gatts_exchange_mtu_reply,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_gatts_exchange_mtu_reply, %function
sd_ble_gatts_exchange_mtu_reply:
.LFB205:
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
.LFE205:
	.size	sd_ble_gatts_exchange_mtu_reply, .-sd_ble_gatts_exchange_mtu_reply
	.section	.text.sd_ble_enable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_enable, %function
sd_ble_enable:
.LFB206:
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
.LFE206:
	.size	sd_ble_enable, .-sd_ble_enable
	.section	.text.sd_ble_cfg_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_cfg_set, %function
sd_ble_cfg_set:
.LFB207:
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
.LFE207:
	.size	sd_ble_cfg_set, .-sd_ble_cfg_set
	.section	.text.sd_ble_evt_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_evt_get, %function
sd_ble_evt_get:
.LFB208:
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
.LFE208:
	.size	sd_ble_evt_get, .-sd_ble_evt_get
	.section	.text.sd_ble_uuid_vs_add,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_uuid_vs_add, %function
sd_ble_uuid_vs_add:
.LFB209:
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
.LFE209:
	.size	sd_ble_uuid_vs_add, .-sd_ble_uuid_vs_add
	.section	.text.sd_ble_uuid_decode,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_uuid_decode, %function
sd_ble_uuid_decode:
.LFB210:
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
.LFE210:
	.size	sd_ble_uuid_decode, .-sd_ble_uuid_decode
	.section	.text.sd_ble_uuid_encode,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_uuid_encode, %function
sd_ble_uuid_encode:
.LFB211:
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
.LFE211:
	.size	sd_ble_uuid_encode, .-sd_ble_uuid_encode
	.section	.text.sd_ble_version_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_version_get, %function
sd_ble_version_get:
.LFB212:
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
.LFE212:
	.size	sd_ble_version_get, .-sd_ble_version_get
	.section	.text.sd_ble_user_mem_reply,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_user_mem_reply, %function
sd_ble_user_mem_reply:
.LFB213:
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
.LFE213:
	.size	sd_ble_user_mem_reply, .-sd_ble_user_mem_reply
	.section	.text.sd_ble_opt_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_opt_set, %function
sd_ble_opt_set:
.LFB214:
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
.LFE214:
	.size	sd_ble_opt_set, .-sd_ble_opt_set
	.section	.text.sd_ble_opt_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ble_opt_get, %function
sd_ble_opt_get:
.LFB215:
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
.LFE215:
	.size	sd_ble_opt_get, .-sd_ble_opt_get
	.section	.text.sd_mutex_new,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_mutex_new, %function
sd_mutex_new:
.LFB235:
	.file 6 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
	.loc 6 393 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 393 1
	.syntax unified
@ 393 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #44
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE235:
	.size	sd_mutex_new, .-sd_mutex_new
	.section	.text.sd_mutex_acquire,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_mutex_acquire, %function
sd_mutex_acquire:
.LFB236:
	.loc 6 402 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 402 1
	.syntax unified
@ 402 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #45
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE236:
	.size	sd_mutex_acquire, .-sd_mutex_acquire
	.section	.text.sd_mutex_release,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_mutex_release, %function
sd_mutex_release:
.LFB237:
	.loc 6 410 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 410 1
	.syntax unified
@ 410 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #46
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE237:
	.size	sd_mutex_release, .-sd_mutex_release
	.section	.text.sd_rand_application_pool_capacity_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_rand_application_pool_capacity_get, %function
sd_rand_application_pool_capacity_get:
.LFB238:
	.loc 6 418 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 418 1
	.syntax unified
@ 418 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #47
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE238:
	.size	sd_rand_application_pool_capacity_get, .-sd_rand_application_pool_capacity_get
	.section	.text.sd_rand_application_bytes_available_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_rand_application_bytes_available_get, %function
sd_rand_application_bytes_available_get:
.LFB239:
	.loc 6 426 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 426 1
	.syntax unified
@ 426 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #48
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE239:
	.size	sd_rand_application_bytes_available_get, .-sd_rand_application_bytes_available_get
	.section	.text.sd_rand_application_vector_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_rand_application_vector_get, %function
sd_rand_application_vector_get:
.LFB240:
	.loc 6 436 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 436 1
	.syntax unified
@ 436 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #49
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE240:
	.size	sd_rand_application_vector_get, .-sd_rand_application_vector_get
	.section	.text.sd_power_reset_reason_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_reset_reason_get, %function
sd_power_reset_reason_get:
.LFB241:
	.loc 6 444 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 444 1
	.syntax unified
@ 444 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #52
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE241:
	.size	sd_power_reset_reason_get, .-sd_power_reset_reason_get
	.section	.text.sd_power_reset_reason_clr,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_reset_reason_clr, %function
sd_power_reset_reason_clr:
.LFB242:
	.loc 6 452 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 452 1
	.syntax unified
@ 452 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #53
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE242:
	.size	sd_power_reset_reason_clr, .-sd_power_reset_reason_clr
	.section	.text.sd_power_mode_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_mode_set, %function
sd_power_mode_set:
.LFB243:
	.loc 6 461 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 461 1
	.syntax unified
@ 461 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #50
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE243:
	.size	sd_power_mode_set, .-sd_power_mode_set
	.section	.text.sd_power_system_off,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_system_off, %function
sd_power_system_off:
.LFB244:
	.loc 6 467 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 467 1
	.syntax unified
@ 467 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #51
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE244:
	.size	sd_power_system_off, .-sd_power_system_off
	.section	.text.sd_power_pof_enable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_pof_enable, %function
sd_power_pof_enable:
.LFB245:
	.loc 6 478 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 478 1
	.syntax unified
@ 478 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #54
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE245:
	.size	sd_power_pof_enable, .-sd_power_pof_enable
	.section	.text.sd_power_pof_threshold_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_pof_threshold_set, %function
sd_power_pof_threshold_set:
.LFB246:
	.loc 6 489 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 489 1
	.syntax unified
@ 489 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #55
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE246:
	.size	sd_power_pof_threshold_set, .-sd_power_pof_threshold_set
	.section	.text.sd_power_ram_power_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_ram_power_set, %function
sd_power_ram_power_set:
.LFB247:
	.loc 6 499 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 499 1
	.syntax unified
@ 499 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #57
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE247:
	.size	sd_power_ram_power_set, .-sd_power_ram_power_set
	.section	.text.sd_power_ram_power_clr,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_ram_power_clr, %function
sd_power_ram_power_clr:
.LFB248:
	.loc 6 508 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 508 1
	.syntax unified
@ 508 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #58
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE248:
	.size	sd_power_ram_power_clr, .-sd_power_ram_power_clr
	.section	.text.sd_power_ram_power_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_ram_power_get, %function
sd_power_ram_power_get:
.LFB249:
	.loc 6 517 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 517 1
	.syntax unified
@ 517 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #59
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE249:
	.size	sd_power_ram_power_get, .-sd_power_ram_power_get
	.section	.text.sd_power_gpregret_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_gpregret_set, %function
sd_power_gpregret_set:
.LFB250:
	.loc 6 526 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 526 1
	.syntax unified
@ 526 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #60
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE250:
	.size	sd_power_gpregret_set, .-sd_power_gpregret_set
	.section	.text.sd_power_gpregret_clr,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_gpregret_clr, %function
sd_power_gpregret_clr:
.LFB251:
	.loc 6 535 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 535 1
	.syntax unified
@ 535 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #61
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE251:
	.size	sd_power_gpregret_clr, .-sd_power_gpregret_clr
	.section	.text.sd_power_gpregret_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_gpregret_get, %function
sd_power_gpregret_get:
.LFB252:
	.loc 6 544 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 544 1
	.syntax unified
@ 544 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #62
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE252:
	.size	sd_power_gpregret_get, .-sd_power_gpregret_get
	.section	.text.sd_power_dcdc_mode_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_power_dcdc_mode_set, %function
sd_power_dcdc_mode_set:
.LFB253:
	.loc 6 553 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 553 1
	.syntax unified
@ 553 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #63
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE253:
	.size	sd_power_dcdc_mode_set, .-sd_power_dcdc_mode_set
	.section	.text.sd_clock_hfclk_request,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_clock_hfclk_request, %function
sd_clock_hfclk_request:
.LFB254:
	.loc 6 566 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 566 1
	.syntax unified
@ 566 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #66
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE254:
	.size	sd_clock_hfclk_request, .-sd_clock_hfclk_request
	.section	.text.sd_clock_hfclk_release,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_clock_hfclk_release, %function
sd_clock_hfclk_release:
.LFB255:
	.loc 6 577 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 577 1
	.syntax unified
@ 577 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #67
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE255:
	.size	sd_clock_hfclk_release, .-sd_clock_hfclk_release
	.section	.text.sd_clock_hfclk_is_running,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_clock_hfclk_is_running, %function
sd_clock_hfclk_is_running:
.LFB256:
	.loc 6 588 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 588 1
	.syntax unified
@ 588 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #68
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE256:
	.size	sd_clock_hfclk_is_running, .-sd_clock_hfclk_is_running
	.section	.text.sd_app_evt_wait,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_app_evt_wait, %function
sd_app_evt_wait:
.LFB257:
	.loc 6 616 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 616 1
	.syntax unified
@ 616 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #65
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE257:
	.size	sd_app_evt_wait, .-sd_app_evt_wait
	.section	.text.sd_ppi_channel_enable_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ppi_channel_enable_get, %function
sd_ppi_channel_enable_get:
.LFB258:
	.loc 6 624 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 624 1
	.syntax unified
@ 624 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #32
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE258:
	.size	sd_ppi_channel_enable_get, .-sd_ppi_channel_enable_get
	.section	.text.sd_ppi_channel_enable_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ppi_channel_enable_set, %function
sd_ppi_channel_enable_set:
.LFB259:
	.loc 6 632 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 632 1
	.syntax unified
@ 632 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #33
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE259:
	.size	sd_ppi_channel_enable_set, .-sd_ppi_channel_enable_set
	.section	.text.sd_ppi_channel_enable_clr,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ppi_channel_enable_clr, %function
sd_ppi_channel_enable_clr:
.LFB260:
	.loc 6 640 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 640 1
	.syntax unified
@ 640 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #34
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE260:
	.size	sd_ppi_channel_enable_clr, .-sd_ppi_channel_enable_clr
	.section	.text.sd_ppi_channel_assign,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ppi_channel_assign, %function
sd_ppi_channel_assign:
.LFB261:
	.loc 6 651 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 651 1
	.syntax unified
@ 651 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #35
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE261:
	.size	sd_ppi_channel_assign, .-sd_ppi_channel_assign
	.section	.text.sd_ppi_group_task_enable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ppi_group_task_enable, %function
sd_ppi_group_task_enable:
.LFB262:
	.loc 6 660 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 660 1
	.syntax unified
@ 660 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #36
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE262:
	.size	sd_ppi_group_task_enable, .-sd_ppi_group_task_enable
	.section	.text.sd_ppi_group_task_disable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ppi_group_task_disable, %function
sd_ppi_group_task_disable:
.LFB263:
	.loc 6 669 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 669 1
	.syntax unified
@ 669 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #37
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE263:
	.size	sd_ppi_group_task_disable, .-sd_ppi_group_task_disable
	.section	.text.sd_ppi_group_assign,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ppi_group_assign, %function
sd_ppi_group_assign:
.LFB264:
	.loc 6 679 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 679 1
	.syntax unified
@ 679 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #38
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE264:
	.size	sd_ppi_group_assign, .-sd_ppi_group_assign
	.section	.text.sd_ppi_group_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ppi_group_get, %function
sd_ppi_group_get:
.LFB265:
	.loc 6 689 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 689 1
	.syntax unified
@ 689 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #39
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE265:
	.size	sd_ppi_group_get, .-sd_ppi_group_get
	.section	.text.sd_radio_notification_cfg_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_radio_notification_cfg_set, %function
sd_radio_notification_cfg_set:
.LFB266:
	.loc 6 720 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 720 1
	.syntax unified
@ 720 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #69
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE266:
	.size	sd_radio_notification_cfg_set, .-sd_radio_notification_cfg_set
	.section	.text.sd_ecb_block_encrypt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ecb_block_encrypt, %function
sd_ecb_block_encrypt:
.LFB267:
	.loc 6 736 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 736 1
	.syntax unified
@ 736 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #70
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE267:
	.size	sd_ecb_block_encrypt, .-sd_ecb_block_encrypt
	.section	.text.sd_ecb_blocks_encrypt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_ecb_blocks_encrypt, %function
sd_ecb_blocks_encrypt:
.LFB268:
	.loc 6 753 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 753 1
	.syntax unified
@ 753 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #71
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE268:
	.size	sd_ecb_blocks_encrypt, .-sd_ecb_blocks_encrypt
	.section	.text.sd_evt_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_evt_get, %function
sd_evt_get:
.LFB269:
	.loc 6 764 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 764 1
	.syntax unified
@ 764 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #75
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE269:
	.size	sd_evt_get, .-sd_evt_get
	.section	.text.sd_temp_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_temp_get, %function
sd_temp_get:
.LFB270:
	.loc 6 775 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 775 1
	.syntax unified
@ 775 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #76
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE270:
	.size	sd_temp_get, .-sd_temp_get
	.section	.text.sd_flash_write,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_flash_write, %function
sd_flash_write:
.LFB271:
	.loc 6 812 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 812 1
	.syntax unified
@ 812 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #41
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE271:
	.size	sd_flash_write, .-sd_flash_write
	.section	.text.sd_flash_page_erase,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_flash_page_erase, %function
sd_flash_page_erase:
.LFB272:
	.loc 6 844 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 844 1
	.syntax unified
@ 844 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #40
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE272:
	.size	sd_flash_page_erase, .-sd_flash_page_erase
	.section	.text.sd_flash_protect,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_flash_protect, %function
sd_flash_protect:
.LFB273:
	.loc 6 867 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 867 1
	.syntax unified
@ 867 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #42
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE273:
	.size	sd_flash_protect, .-sd_flash_protect
	.section	.text.sd_radio_session_open,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_radio_session_open, %function
sd_radio_session_open:
.LFB274:
	.loc 6 889 2
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 889 2
	.syntax unified
@ 889 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #72
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE274:
	.size	sd_radio_session_open, .-sd_radio_session_open
	.section	.text.sd_radio_session_close,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_radio_session_close, %function
sd_radio_session_close:
.LFB275:
	.loc 6 902 2
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 902 2
	.syntax unified
@ 902 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #73
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE275:
	.size	sd_radio_session_close, .-sd_radio_session_close
	.section	.text.sd_radio_request,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_radio_request, %function
sd_radio_request:
.LFB276:
	.loc 6 934 2
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 934 2
	.syntax unified
@ 934 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #74
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE276:
	.size	sd_radio_request, .-sd_radio_request
	.section	.text.sd_protected_register_write,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sd_protected_register_write, %function
sd_protected_register_write:
.LFB277:
	.loc 6 955 1
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 6 955 1
	.syntax unified
@ 955 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #43
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE277:
	.size	sd_protected_register_write, .-sd_protected_register_write
	.section	.bss.m_gatt,"aw",%nobits
	.align	2
	.type	m_gatt, %object
	.size	m_gatt, 20
m_gatt:
	.space	20
	.section	.sdh_ble_observers1,"a"
	.align	2
	.type	m_gatt_obs, %object
	.size	m_gatt_obs, 8
m_gatt_obs:
	.word	nrf_ble_gatt_on_ble_evt
	.word	m_gatt
	.section	.bss.m_qwr,"aw",%nobits
	.align	2
	.type	m_qwr, %object
	.size	m_qwr, 12
m_qwr:
	.space	12
	.section	.sdh_ble_observers2,"a"
	.align	2
	.type	m_qwr_obs, %object
	.size	m_qwr_obs, 8
m_qwr_obs:
	.word	nrf_ble_qwr_on_ble_evt
	.word	m_qwr
	.section	.bss.m_cus,"aw",%nobits
	.align	2
	.type	m_cus, %object
	.size	m_cus, 20
m_cus:
	.space	20
	.section	.sdh_ble_observers2
	.align	2
	.type	m_cus_obs, %object
	.size	m_cus_obs, 8
m_cus_obs:
	.word	ble_cus_on_ble_evt
	.word	m_cus
	.section	.bss.m_advertising,"aw",%nobits
	.align	2
	.type	m_advertising, %object
	.size	m_advertising, 184
m_advertising:
	.space	184
	.section	.sdh_ble_observers1
	.align	2
	.type	m_advertising_ble_obs, %object
	.size	m_advertising_ble_obs, 8
m_advertising_ble_obs:
	.word	ble_advertising_on_ble_evt
	.word	m_advertising
	.section	.sdh_soc_observers1,"a"
	.align	2
	.type	m_advertising_soc_obs, %object
	.size	m_advertising_soc_obs, 8
m_advertising_soc_obs:
	.word	ble_advertising_on_sys_evt
	.word	m_advertising
	.section	.bss.m_notification_timer_id_data,"aw",%nobits
	.align	2
	.type	m_notification_timer_id_data, %object
	.size	m_notification_timer_id_data, 32
m_notification_timer_id_data:
	.space	32
	.section	.rodata.m_notification_timer_id,"a"
	.align	2
	.type	m_notification_timer_id, %object
	.size	m_notification_timer_id, 4
m_notification_timer_id:
	.word	m_notification_timer_id_data
	.section	.bss.m_custom_value,"aw",%nobits
	.type	m_custom_value, %object
	.size	m_custom_value, 1
m_custom_value:
	.space	1
	.section	.data.m_conn_handle,"aw"
	.align	1
	.type	m_conn_handle, %object
	.size	m_conn_handle, 2
m_conn_handle:
	.short	-1
	.section	.data.m_adv_uuids,"aw"
	.align	2
	.type	m_adv_uuids, %object
	.size	m_adv_uuids, 4
m_adv_uuids:
	.short	5120
	.byte	2
	.space	1
	.section	.text.assert_nrf_callback,"ax",%progbits
	.align	1
	.global	assert_nrf_callback
	.syntax unified
	.thumb
	.thumb_func
	.type	assert_nrf_callback, %function
assert_nrf_callback:
.LFB364:
	.file 7 "C:\\Users\\dreba\\Documents\\GitHub\\Repeat-Rover\\firmware\\firmware_sdk\\examples\\project_firmware\\Repeat-Rover\\pca10040\\s132\\ses\\ble_rr.c"
	.loc 7 116 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI0:
	sub	sp, sp, #12
.LCFI1:
	mov	r3, r0
	str	r1, [sp]
	strh	r3, [sp, #6]	@ movhi
	.loc 7 117 5
	ldrh	r3, [sp, #6]
	ldr	r2, [sp]
	mov	r1, r3
	ldr	r0, .L124
	bl	app_error_handler
	.loc 7 118 1
	nop
	add	sp, sp, #12
.LCFI2:
	@ sp needed
	ldr	pc, [sp], #4
.L125:
	.align	2
.L124:
	.word	-559038737
.LFE364:
	.size	assert_nrf_callback, .-assert_nrf_callback
	.section .rodata
	.align	2
.LC0:
	.ascii	"Connected to a previously bonded device.\000"
	.align	2
.LC1:
	.ascii	"Connection secured: role: %d, conn_handle: 0x%x, pr"
	.ascii	"ocedure: %d.\000"
	.align	2
.LC2:
	.ascii	"C:\\Users\\dreba\\Documents\\GitHub\\Repeat-Rover\\"
	.ascii	"firmware\\firmware_sdk\\examples\\project_firmware\\"
	.ascii	"Repeat-Rover\\pca10040\\s132\\ses\\ble_rr.c\000"
	.section	.text.pm_evt_handler,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	pm_evt_handler, %function
pm_evt_handler:
.LFB365:
	.loc 7 126 1
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI3:
	sub	sp, sp, #48
.LCFI4:
	str	r0, [sp, #12]
	.loc 7 129 18
	ldr	r3, [sp, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 7 129 5
	cmp	r3, #13
	bhi	.L147
	adr	r2, .L129
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L129:
	.word	.L145+1
	.word	.L147+1
	.word	.L146+1
	.word	.L147+1
	.word	.L135+1
	.word	.L147+1
	.word	.L134+1
	.word	.L133+1
	.word	.L147+1
	.word	.L132+1
	.word	.L147+1
	.word	.L131+1
	.word	.L130+1
	.word	.L128+1
	.p2align 1
.L145:
	.loc 7 133 13 discriminator 2
	ldr	r3, .L154
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	orr	r3, r3, #3
	ldr	r1, .L154+4
	mov	r0, r3
	bl	nrf_log_frontend_std_0
	.loc 7 134 11 discriminator 2
	b	.L139
.L146:
	.loc 7 138 13 discriminator 2
	ldr	r3, .L154
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	orr	r3, r3, #3
	mov	r4, r3
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #2]
	mov	r0, r3
	bl	ble_conn_state_role
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #2]
	mov	r1, r3
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	str	r3, [sp]
	mov	r3, r1
	ldr	r1, .L154+8
	mov	r0, r4
	bl	nrf_log_frontend_std_3
	.loc 7 142 11 discriminator 2
	b	.L139
.L135:
.LBB2:
	.loc 7 157 34
	movs	r3, #0
	strb	r3, [sp, #20]
	.loc 7 158 43
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #2]
	.loc 7 158 13
	add	r2, sp, #20
	mov	r1, r2
	mov	r0, r3
	bl	pm_conn_sec_config_reply
.LBE2:
	.loc 7 159 11
	b	.L139
.L134:
	.loc 7 164 24
	bl	fds_gc
	str	r0, [sp, #28]
	.loc 7 165 16
	ldr	r3, [sp, #28]
	cmp	r3, #8
	beq	.L148
.LBB3:
	.loc 7 171 17
	ldr	r3, [sp, #28]
	str	r3, [sp, #24]
	ldr	r3, [sp, #24]
	cmp	r3, #0
	beq	.L148
	.loc 7 171 17 is_stmt 0 discriminator 1
	ldr	r2, .L154+12
	movs	r1, #171
	ldr	r0, [sp, #24]
	bl	app_error_handler
.LBE3:
	.loc 7 173 11 is_stmt 1 discriminator 1
	b	.L148
.L130:
	.loc 7 177 13
	movs	r0, #0
	bl	advertising_start
	.loc 7 178 11
	b	.L139
.L132:
.LBB4:
	.loc 7 183 13
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #16]
	str	r3, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	beq	.L149
	.loc 7 183 13 is_stmt 0 discriminator 1
	ldr	r2, .L154+12
	movs	r1, #183
	ldr	r0, [sp, #36]
	bl	app_error_handler
.LBE4:
	.loc 7 184 11 is_stmt 1 discriminator 1
	b	.L149
.L131:
.LBB5:
	.loc 7 189 13
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	str	r3, [sp, #40]
	ldr	r3, [sp, #40]
	cmp	r3, #0
	beq	.L150
	.loc 7 189 13 is_stmt 0 discriminator 1
	ldr	r2, .L154+12
	movs	r1, #189
	ldr	r0, [sp, #40]
	bl	app_error_handler
.LBE5:
	.loc 7 190 11 is_stmt 1 discriminator 1
	b	.L150
.L128:
.LBB6:
	.loc 7 195 13
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	str	r3, [sp, #44]
	ldr	r3, [sp, #44]
	cmp	r3, #0
	beq	.L151
	.loc 7 195 13 is_stmt 0 discriminator 1
	ldr	r2, .L154+12
	movs	r1, #195
	ldr	r0, [sp, #44]
	bl	app_error_handler
.LBE6:
	.loc 7 196 11 is_stmt 1 discriminator 1
	b	.L151
.L133:
.LBB7:
	.loc 7 201 13
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	str	r3, [sp, #32]
	ldr	r3, [sp, #32]
	cmp	r3, #0
	beq	.L152
	.loc 7 201 13 is_stmt 0 discriminator 1
	ldr	r2, .L154+12
	movs	r1, #201
	ldr	r0, [sp, #32]
	bl	app_error_handler
.LBE7:
	.loc 7 202 11 is_stmt 1 discriminator 1
	b	.L152
.L147:
	.loc 7 213 13
	nop
	b	.L153
.L148:
	.loc 7 173 11
	nop
	b	.L153
.L149:
	.loc 7 184 11
	nop
	b	.L153
.L150:
	.loc 7 190 11
	nop
	b	.L153
.L151:
	.loc 7 196 11
	nop
	b	.L153
.L152:
	.loc 7 202 11
	nop
.L139:
.L153:
	.loc 7 215 1
	nop
	add	sp, sp, #48
.LCFI5:
	@ sp needed
	pop	{r4, pc}
.L155:
	.align	2
.L154:
	.word	m_nrf_log_app_logs_data_dynamic
	.word	.LC0
	.word	.LC1
	.word	.LC2
.LFE365:
	.size	pm_evt_handler, .-pm_evt_handler
	.section	.text.notification_timeout_handler,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	notification_timeout_handler, %function
notification_timeout_handler:
.LFB366:
	.loc 7 226 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI6:
	sub	sp, sp, #20
.LCFI7:
	str	r0, [sp, #4]
	.loc 7 231 19
	ldr	r3, .L159
	ldrb	r3, [r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, .L159
	strb	r2, [r3]
	.loc 7 233 16
	ldr	r3, .L159
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, .L159+4
	bl	ble_cus_custom_value_update
	str	r0, [sp, #12]
.LBB8:
	.loc 7 234 5
	ldr	r3, [sp, #12]
	str	r3, [sp, #8]
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L158
	.loc 7 234 5 is_stmt 0 discriminator 1
	ldr	r2, .L159+8
	movs	r1, #234
	ldr	r0, [sp, #8]
	bl	app_error_handler
.L158:
.LBE8:
	.loc 7 235 1 is_stmt 1
	nop
	add	sp, sp, #20
.LCFI8:
	@ sp needed
	ldr	pc, [sp], #4
.L160:
	.align	2
.L159:
	.word	m_custom_value
	.word	m_cus
	.word	.LC2
.LFE366:
	.size	notification_timeout_handler, .-notification_timeout_handler
	.section	.text.timers_init,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	timers_init, %function
timers_init:
.LFB367:
	.loc 7 242 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI9:
	sub	sp, sp, #20
.LCFI10:
	.loc 7 244 27
	bl	app_timer_init
	str	r0, [sp, #12]
.LBB9:
	.loc 7 245 5
	ldr	r3, [sp, #12]
	str	r3, [sp, #8]
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L162
	.loc 7 245 5 is_stmt 0 discriminator 1
	ldr	r2, .L165
	movs	r1, #245
	ldr	r0, [sp, #8]
	bl	app_error_handler
.L162:
.LBE9:
	.loc 7 248 16 is_stmt 1
	ldr	r2, .L165+4
	movs	r1, #1
	ldr	r0, .L165+8
	bl	app_timer_create
	str	r0, [sp, #12]
.LBB10:
	.loc 7 249 5
	ldr	r3, [sp, #12]
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L164
	.loc 7 249 5 is_stmt 0 discriminator 1
	ldr	r2, .L165
	movs	r1, #249
	ldr	r0, [sp, #4]
	bl	app_error_handler
.L164:
.LBE10:
	.loc 7 258 1 is_stmt 1
	nop
	add	sp, sp, #20
.LCFI11:
	@ sp needed
	ldr	pc, [sp], #4
.L166:
	.align	2
.L165:
	.word	.LC2
	.word	notification_timeout_handler
	.word	m_notification_timer_id
.LFE367:
	.size	timers_init, .-timers_init
	.section .rodata
	.align	2
.LC3:
	.ascii	"Nordic_Template\000"
	.section	.text.gap_params_init,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	gap_params_init, %function
gap_params_init:
.LFB368:
	.loc 7 267 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI12:
	sub	sp, sp, #28
.LCFI13:
	.loc 7 272 5
	ldrb	r3, [sp]
	movs	r2, #1
	bfi	r3, r2, #0, #4
	strb	r3, [sp]
	ldrb	r3, [sp]
	movs	r2, #1
	bfi	r3, r2, #4, #4
	strb	r3, [sp]
	.loc 7 274 16
	mov	r3, sp
	movs	r2, #15
	ldr	r1, .L171
	mov	r0, r3
	bl	sd_ble_gap_device_name_set
	str	r0, [sp, #20]
.LBB11:
	.loc 7 277 5
	ldr	r3, [sp, #20]
	str	r3, [sp, #16]
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L168
	.loc 7 277 5 is_stmt 0 discriminator 1
	ldr	r2, .L171+4
	movw	r1, #277
	ldr	r0, [sp, #16]
	bl	app_error_handler
.L168:
.LBE11:
	.loc 7 283 5 is_stmt 1
	add	r3, sp, #4
	movs	r2, #8
	movs	r1, #0
	mov	r0, r3
	bl	memset
	.loc 7 285 39
	movs	r3, #80
	strh	r3, [sp, #4]	@ movhi
	.loc 7 286 39
	movs	r3, #160
	strh	r3, [sp, #6]	@ movhi
	.loc 7 287 39
	movs	r3, #0
	strh	r3, [sp, #8]	@ movhi
	.loc 7 288 39
	mov	r3, #400
	strh	r3, [sp, #10]	@ movhi
	.loc 7 290 16
	add	r3, sp, #4
	mov	r0, r3
	bl	sd_ble_gap_ppcp_set
	str	r0, [sp, #20]
.LBB12:
	.loc 7 291 5
	ldr	r3, [sp, #20]
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L170
	.loc 7 291 5 is_stmt 0 discriminator 1
	ldr	r2, .L171+4
	movw	r1, #291
	ldr	r0, [sp, #12]
	bl	app_error_handler
.L170:
.LBE12:
	.loc 7 292 1 is_stmt 1
	nop
	add	sp, sp, #28
.LCFI14:
	@ sp needed
	ldr	pc, [sp], #4
.L172:
	.align	2
.L171:
	.word	.LC3
	.word	.LC2
.LFE368:
	.size	gap_params_init, .-gap_params_init
	.section	.text.gatt_init,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	gatt_init, %function
gatt_init:
.LFB369:
	.loc 7 298 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI15:
	sub	sp, sp, #12
.LCFI16:
	.loc 7 299 27
	movs	r1, #0
	ldr	r0, .L176
	bl	nrf_ble_gatt_init
	str	r0, [sp, #4]
.LBB13:
	.loc 7 300 5
	ldr	r3, [sp, #4]
	str	r3, [sp]
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L175
	.loc 7 300 5 is_stmt 0 discriminator 1
	ldr	r2, .L176+4
	mov	r1, #300
	ldr	r0, [sp]
	bl	app_error_handler
.L175:
.LBE13:
	.loc 7 301 1 is_stmt 1
	nop
	add	sp, sp, #12
.LCFI17:
	@ sp needed
	ldr	pc, [sp], #4
.L177:
	.align	2
.L176:
	.word	m_gatt
	.word	.LC2
.LFE369:
	.size	gatt_init, .-gatt_init
	.section	.text.nrf_qwr_error_handler,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_qwr_error_handler, %function
nrf_qwr_error_handler:
.LFB370:
	.loc 7 312 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI18:
	sub	sp, sp, #12
.LCFI19:
	str	r0, [sp, #4]
	.loc 7 313 5
	ldr	r2, .L179
	movw	r1, #313
	ldr	r0, [sp, #4]
	bl	app_error_handler
	.loc 7 314 1
	nop
	add	sp, sp, #12
.LCFI20:
	@ sp needed
	ldr	pc, [sp], #4
.L180:
	.align	2
.L179:
	.word	.LC2
.LFE370:
	.size	nrf_qwr_error_handler, .-nrf_qwr_error_handler
	.section	.text.on_cus_evt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	on_cus_evt, %function
on_cus_evt:
.LFB371:
	.loc 7 353 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI21:
	sub	sp, sp, #28
.LCFI22:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 7 356 17
	ldr	r3, [sp]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 7 356 5
	cmp	r3, #3
	bhi	.L191
	adr	r2, .L184
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L184:
	.word	.L187+1
	.word	.L186+1
	.word	.L191+1
	.word	.L191+1
	.p2align 1
.L187:
	.loc 7 360 25
	ldr	r3, .L195
	movs	r2, #0
	mov	r1, #32768
	mov	r0, r3
	bl	app_timer_start
	str	r0, [sp, #20]
.LBB14:
	.loc 7 361 14
	ldr	r3, [sp, #20]
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L192
	.loc 7 361 14 is_stmt 0 discriminator 1
	ldr	r2, .L195+4
	movw	r1, #361
	ldr	r0, [sp, #12]
	bl	app_error_handler
.LBE14:
	.loc 7 362 14 is_stmt 1 discriminator 1
	b	.L192
.L186:
	.loc 7 366 24
	ldr	r3, .L195
	mov	r0, r3
	bl	app_timer_stop
	str	r0, [sp, #20]
.LBB15:
	.loc 7 367 13
	ldr	r3, [sp, #20]
	str	r3, [sp, #16]
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L193
	.loc 7 367 13 is_stmt 0 discriminator 1
	ldr	r2, .L195+4
	movw	r1, #367
	ldr	r0, [sp, #16]
	bl	app_error_handler
.LBE15:
	.loc 7 368 13 is_stmt 1 discriminator 1
	b	.L193
.L191:
	.loc 7 378 15
	nop
	b	.L194
.L192:
	.loc 7 362 14
	nop
	b	.L194
.L193:
	.loc 7 368 13
	nop
.L194:
	.loc 7 380 1
	nop
	add	sp, sp, #28
.LCFI23:
	@ sp needed
	ldr	pc, [sp], #4
.L196:
	.align	2
.L195:
	.word	m_notification_timer_id_data
	.word	.LC2
.LFE371:
	.size	on_cus_evt, .-on_cus_evt
	.section	.text.services_init,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	services_init, %function
services_init:
.LFB372:
	.loc 7 385 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI24:
	sub	sp, sp, #28
.LCFI25:
	.loc 7 387 29
	movs	r3, #0
	str	r3, [sp, #8]
	.loc 7 388 29
	mov	r3, sp
	movs	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	.loc 7 391 32
	ldr	r3, .L201
	str	r3, [sp, #8]
	.loc 7 393 20
	add	r3, sp, #8
	mov	r1, r3
	ldr	r0, .L201+4
	bl	nrf_ble_qwr_init
	str	r0, [sp, #20]
.LBB16:
	.loc 7 394 9
	ldr	r3, [sp, #20]
	str	r3, [sp, #16]
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L198
	.loc 7 394 9 is_stmt 0 discriminator 1
	ldr	r2, .L201+8
	mov	r1, #394
	ldr	r0, [sp, #16]
	bl	app_error_handler
.L198:
.LBE16:
	.loc 7 397 45 is_stmt 1
	ldr	r3, .L201+12
	str	r3, [sp]
	.loc 7 399 9
	ldrb	r3, [sp, #5]
	movs	r2, #1
	bfi	r3, r2, #0, #4
	strb	r3, [sp, #5]
	ldrb	r3, [sp, #5]
	movs	r2, #1
	bfi	r3, r2, #4, #4
	strb	r3, [sp, #5]
	.loc 7 400 9
	ldrb	r3, [sp, #6]
	movs	r2, #1
	bfi	r3, r2, #0, #4
	strb	r3, [sp, #6]
	ldrb	r3, [sp, #6]
	movs	r2, #1
	bfi	r3, r2, #4, #4
	strb	r3, [sp, #6]
	.loc 7 401 9
	ldrb	r3, [sp, #7]
	movs	r2, #1
	bfi	r3, r2, #0, #4
	strb	r3, [sp, #7]
	ldrb	r3, [sp, #7]
	movs	r2, #1
	bfi	r3, r2, #4, #4
	strb	r3, [sp, #7]
	.loc 7 403 20
	mov	r3, sp
	mov	r1, r3
	ldr	r0, .L201+16
	bl	ble_cus_init
	str	r0, [sp, #20]
.LBB17:
	.loc 7 404 9
	ldr	r3, [sp, #20]
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L200
	.loc 7 404 9 is_stmt 0 discriminator 1
	ldr	r2, .L201+8
	mov	r1, #404
	ldr	r0, [sp, #12]
	bl	app_error_handler
.L200:
.LBE17:
	.loc 7 428 1 is_stmt 1
	nop
	add	sp, sp, #28
.LCFI26:
	@ sp needed
	ldr	pc, [sp], #4
.L202:
	.align	2
.L201:
	.word	nrf_qwr_error_handler
	.word	m_qwr
	.word	.LC2
	.word	on_cus_evt
	.word	m_cus
.LFE372:
	.size	services_init, .-services_init
	.section	.text.on_conn_params_evt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	on_conn_params_evt, %function
on_conn_params_evt:
.LFB373:
	.loc 7 442 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI27:
	sub	sp, sp, #20
.LCFI28:
	str	r0, [sp, #4]
	.loc 7 445 14
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 7 445 8
	cmp	r3, #0
	bne	.L205
	.loc 7 447 20
	ldr	r3, .L206
	ldrh	r3, [r3]
	movs	r1, #59
	mov	r0, r3
	bl	sd_ble_gap_disconnect
	str	r0, [sp, #12]
.LBB18:
	.loc 7 448 9
	ldr	r3, [sp, #12]
	str	r3, [sp, #8]
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L205
	.loc 7 448 9 is_stmt 0 discriminator 1
	ldr	r2, .L206+4
	mov	r1, #448
	ldr	r0, [sp, #8]
	bl	app_error_handler
.L205:
.LBE18:
	.loc 7 450 1 is_stmt 1
	nop
	add	sp, sp, #20
.LCFI29:
	@ sp needed
	ldr	pc, [sp], #4
.L207:
	.align	2
.L206:
	.word	m_conn_handle
	.word	.LC2
.LFE373:
	.size	on_conn_params_evt, .-on_conn_params_evt
	.section	.text.conn_params_error_handler,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	conn_params_error_handler, %function
conn_params_error_handler:
.LFB374:
	.loc 7 458 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI30:
	sub	sp, sp, #12
.LCFI31:
	str	r0, [sp, #4]
	.loc 7 459 5
	ldr	r2, .L209
	movw	r1, #459
	ldr	r0, [sp, #4]
	bl	app_error_handler
	.loc 7 460 1
	nop
	add	sp, sp, #12
.LCFI32:
	@ sp needed
	ldr	pc, [sp], #4
.L210:
	.align	2
.L209:
	.word	.LC2
.LFE374:
	.size	conn_params_error_handler, .-conn_params_error_handler
	.section	.text.conn_params_init,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	conn_params_init, %function
conn_params_init:
.LFB375:
	.loc 7 466 1
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI33:
	sub	sp, sp, #44
.LCFI34:
	.loc 7 470 5
	add	r3, sp, #4
	movs	r2, #28
	movs	r1, #0
	mov	r0, r3
	bl	memset
	.loc 7 472 44
	movs	r3, #0
	str	r3, [sp, #4]
	.loc 7 473 44
	mov	r3, #163840
	str	r3, [sp, #8]
	.loc 7 474 44
	mov	r3, #983040
	str	r3, [sp, #12]
	.loc 7 475 44
	movs	r3, #3
	strb	r3, [sp, #16]
	.loc 7 476 44
	movs	r3, #0
	strh	r3, [sp, #18]	@ movhi
	.loc 7 477 44
	movs	r3, #0
	strb	r3, [sp, #20]
	.loc 7 478 44
	ldr	r3, .L214
	str	r3, [sp, #24]
	.loc 7 479 44
	ldr	r3, .L214+4
	str	r3, [sp, #28]
	.loc 7 481 16
	add	r3, sp, #4
	mov	r0, r3
	bl	ble_conn_params_init
	str	r0, [sp, #36]
.LBB19:
	.loc 7 482 5
	ldr	r3, [sp, #36]
	str	r3, [sp, #32]
	ldr	r3, [sp, #32]
	cmp	r3, #0
	beq	.L213
	.loc 7 482 5 is_stmt 0 discriminator 1
	ldr	r2, .L214+8
	mov	r1, #482
	ldr	r0, [sp, #32]
	bl	app_error_handler
.L213:
.LBE19:
	.loc 7 483 1 is_stmt 1
	nop
	add	sp, sp, #44
.LCFI35:
	@ sp needed
	ldr	pc, [sp], #4
.L215:
	.align	2
.L214:
	.word	on_conn_params_evt
	.word	conn_params_error_handler
	.word	.LC2
.LFE375:
	.size	conn_params_init, .-conn_params_init
	.section	.text.application_timers_start,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	application_timers_start, %function
application_timers_start:
.LFB376:
	.loc 7 489 1
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 7 495 1
	nop
	bx	lr
.LFE376:
	.size	application_timers_start, .-application_timers_start
	.section	.text.sleep_mode_enter,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sleep_mode_enter, %function
sleep_mode_enter:
.LFB377:
	.loc 7 503 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI36:
	sub	sp, sp, #20
.LCFI37:
	.loc 7 506 16
	movs	r0, #0
	bl	bsp_indication_set
	str	r0, [sp, #12]
.LBB20:
	.loc 7 507 5
	ldr	r3, [sp, #12]
	str	r3, [sp, #8]
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L218
	.loc 7 507 5 is_stmt 0 discriminator 1
	ldr	r2, .L222
	movw	r1, #507
	ldr	r0, [sp, #8]
	bl	app_error_handler
.L218:
.LBE20:
	.loc 7 510 16 is_stmt 1
	bl	bsp_btn_ble_sleep_mode_prepare
	str	r0, [sp, #12]
.LBB21:
	.loc 7 511 5
	ldr	r3, [sp, #12]
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L219
	.loc 7 511 5 is_stmt 0 discriminator 1
	ldr	r2, .L222
	movw	r1, #511
	ldr	r0, [sp, #4]
	bl	app_error_handler
.L219:
.LBE21:
	.loc 7 514 16 is_stmt 1
	bl	sd_power_system_off
	str	r0, [sp, #12]
.LBB22:
	.loc 7 515 5
	ldr	r3, [sp, #12]
	str	r3, [sp]
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L221
	.loc 7 515 5 is_stmt 0 discriminator 1
	ldr	r2, .L222
	movw	r1, #515
	ldr	r0, [sp]
	bl	app_error_handler
.L221:
.LBE22:
	.loc 7 516 1 is_stmt 1
	nop
	add	sp, sp, #20
.LCFI38:
	@ sp needed
	ldr	pc, [sp], #4
.L223:
	.align	2
.L222:
	.word	.LC2
.LFE377:
	.size	sleep_mode_enter, .-sleep_mode_enter
	.section .rodata
	.align	2
.LC4:
	.ascii	"Fast advertising.\000"
	.section	.text.on_adv_evt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	on_adv_evt, %function
on_adv_evt:
.LFB378:
	.loc 7 526 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI39:
	sub	sp, sp, #20
.LCFI40:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 7 529 5
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L225
	cmp	r3, #3
	bne	.L229
	.loc 7 532 13
	ldr	r3, .L232
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	orr	r3, r3, #3
	ldr	r1, .L232+4
	mov	r0, r3
	bl	nrf_log_frontend_std_0
	.loc 7 533 24
	movs	r0, #2
	bl	bsp_indication_set
	str	r0, [sp, #12]
.LBB23:
	.loc 7 534 13
	ldr	r3, [sp, #12]
	str	r3, [sp, #8]
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L230
	.loc 7 534 13 is_stmt 0 discriminator 1
	ldr	r2, .L232+8
	movw	r1, #534
	ldr	r0, [sp, #8]
	bl	app_error_handler
.LBE23:
	.loc 7 535 13 is_stmt 1 discriminator 1
	b	.L230
.L225:
	.loc 7 538 13
	bl	sleep_mode_enter
	.loc 7 539 13
	b	.L228
.L229:
	.loc 7 542 13
	nop
	b	.L231
.L230:
	.loc 7 535 13
	nop
.L228:
.L231:
	.loc 7 544 1
	nop
	add	sp, sp, #20
.LCFI41:
	@ sp needed
	ldr	pc, [sp], #4
.L233:
	.align	2
.L232:
	.word	m_nrf_log_app_logs_data_dynamic
	.word	.LC4
	.word	.LC2
.LFE378:
	.size	on_adv_evt, .-on_adv_evt
	.section .rodata
	.align	2
.LC5:
	.ascii	"Disconnected.\000"
	.align	2
.LC6:
	.ascii	"Connected.\000"
	.section	.text.ble_evt_handler,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	ble_evt_handler, %function
ble_evt_handler:
.LFB379:
	.loc 7 553 1
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI42:
	sub	sp, sp, #44
.LCFI43:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 7 554 16
	movs	r3, #0
	str	r3, [sp, #36]
	.loc 7 556 30
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	.loc 7 556 5
	cmp	r3, #86
	beq	.L246
	cmp	r3, #86
	bgt	.L250
	cmp	r3, #59
	beq	.L247
	cmp	r3, #59
	bgt	.L250
	cmp	r3, #33
	beq	.L248
	cmp	r3, #33
	bgt	.L250
	cmp	r3, #16
	beq	.L249
	cmp	r3, #17
	bne	.L250
	.loc 7 559 13
	ldr	r3, .L256
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	orr	r3, r3, #3
	ldr	r1, .L256+4
	mov	r0, r3
	bl	nrf_log_frontend_std_0
	.loc 7 561 13
	b	.L240
.L249:
	.loc 7 564 13 discriminator 2
	ldr	r3, .L256
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	orr	r3, r3, #3
	ldr	r1, .L256+8
	mov	r0, r3
	bl	nrf_log_frontend_std_0
	.loc 7 565 24 discriminator 2
	movs	r0, #7
	bl	bsp_indication_set
	str	r0, [sp, #36]
.LBB24:
	.loc 7 566 13 discriminator 2
	ldr	r3, [sp, #36]
	str	r3, [sp, #20]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L241
	.loc 7 566 13 is_stmt 0 discriminator 1
	ldr	r2, .L256+12
	movw	r1, #566
	ldr	r0, [sp, #20]
	bl	app_error_handler
.L241:
.LBE24:
	.loc 7 567 51 is_stmt 1
	ldr	r3, [sp, #4]
	ldrh	r2, [r3, #4]
	.loc 7 567 27
	ldr	r3, .L256+16
	strh	r2, [r3]	@ movhi
	.loc 7 568 24
	ldr	r3, .L256+16
	ldrh	r3, [r3]
	mov	r1, r3
	ldr	r0, .L256+20
	bl	nrf_ble_qwr_conn_handle_assign
	str	r0, [sp, #36]
.LBB25:
	.loc 7 569 13
	ldr	r3, [sp, #36]
	str	r3, [sp, #16]
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L251
	.loc 7 569 13 is_stmt 0 discriminator 1
	ldr	r2, .L256+12
	movw	r1, #569
	ldr	r0, [sp, #16]
	bl	app_error_handler
.LBE25:
	.loc 7 570 13 is_stmt 1 discriminator 1
	b	.L251
.L248:
.LBB26:
	.loc 7 575 34
	movs	r3, #0
	strb	r3, [sp, #12]
	movs	r3, #0
	strb	r3, [sp, #13]
	.loc 7 580 68
	ldr	r3, [sp, #4]
	ldrh	r3, [r3, #4]
	.loc 7 580 24
	add	r2, sp, #12
	mov	r1, r2
	mov	r0, r3
	bl	sd_ble_gap_phy_update
	str	r0, [sp, #36]
.LBB27:
	.loc 7 581 13
	ldr	r3, [sp, #36]
	str	r3, [sp, #24]
	ldr	r3, [sp, #24]
	cmp	r3, #0
	beq	.L252
	.loc 7 581 13 is_stmt 0 discriminator 1
	ldr	r2, .L256+12
	movw	r1, #581
	ldr	r0, [sp, #24]
	bl	app_error_handler
.LBE27:
.LBE26:
	.loc 7 582 11 is_stmt 1 discriminator 1
	b	.L252
.L247:
	.loc 7 587 70
	ldr	r3, [sp, #4]
	ldrh	r3, [r3, #4]
	.loc 7 587 24
	movs	r1, #19
	mov	r0, r3
	bl	sd_ble_gap_disconnect
	str	r0, [sp, #36]
.LBB28:
	.loc 7 589 13
	ldr	r3, [sp, #36]
	str	r3, [sp, #28]
	ldr	r3, [sp, #28]
	cmp	r3, #0
	beq	.L253
	.loc 7 589 13 is_stmt 0 discriminator 1
	ldr	r2, .L256+12
	movw	r1, #589
	ldr	r0, [sp, #28]
	bl	app_error_handler
.LBE28:
	.loc 7 590 13 is_stmt 1 discriminator 1
	b	.L253
.L246:
	.loc 7 595 70
	ldr	r3, [sp, #4]
	ldrh	r3, [r3, #4]
	.loc 7 595 24
	movs	r1, #19
	mov	r0, r3
	bl	sd_ble_gap_disconnect
	str	r0, [sp, #36]
.LBB29:
	.loc 7 597 13
	ldr	r3, [sp, #36]
	str	r3, [sp, #32]
	ldr	r3, [sp, #32]
	cmp	r3, #0
	beq	.L254
	.loc 7 597 13 is_stmt 0 discriminator 1
	ldr	r2, .L256+12
	movw	r1, #597
	ldr	r0, [sp, #32]
	bl	app_error_handler
.LBE29:
	.loc 7 598 13 is_stmt 1 discriminator 1
	b	.L254
.L250:
	.loc 7 602 13
	nop
	b	.L255
.L251:
	.loc 7 570 13
	nop
	b	.L255
.L252:
	.loc 7 582 11
	nop
	b	.L255
.L253:
	.loc 7 590 13
	nop
	b	.L255
.L254:
	.loc 7 598 13
	nop
.L240:
.L255:
	.loc 7 604 1
	nop
	add	sp, sp, #44
.LCFI44:
	@ sp needed
	ldr	pc, [sp], #4
.L257:
	.align	2
.L256:
	.word	m_nrf_log_app_logs_data_dynamic
	.word	.LC5
	.word	.LC6
	.word	.LC2
	.word	m_conn_handle
	.word	m_qwr
.LFE379:
	.size	ble_evt_handler, .-ble_evt_handler
	.section	.sdh_ble_observers3,"a"
	.align	2
	.type	m_ble_observer.0, %object
	.size	m_ble_observer.0, 8
m_ble_observer.0:
	.word	ble_evt_handler
	.word	0
	.section	.text.ble_stack_init,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	ble_stack_init, %function
ble_stack_init:
.LFB380:
	.loc 7 612 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI45:
	sub	sp, sp, #28
.LCFI46:
	.loc 7 615 16
	bl	nrf_sdh_enable_request
	str	r0, [sp, #20]
.LBB30:
	.loc 7 616 5
	ldr	r3, [sp, #20]
	str	r3, [sp, #16]
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L259
	.loc 7 616 5 is_stmt 0 discriminator 1
	ldr	r2, .L263
	mov	r1, #616
	ldr	r0, [sp, #16]
	bl	app_error_handler
.L259:
.LBE30:
	.loc 7 620 14 is_stmt 1
	movs	r3, #0
	str	r3, [sp, #4]
	.loc 7 621 16
	add	r3, sp, #4
	mov	r1, r3
	movs	r0, #1
	bl	nrf_sdh_ble_default_cfg_set
	str	r0, [sp, #20]
.LBB31:
	.loc 7 622 5
	ldr	r3, [sp, #20]
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L260
	.loc 7 622 5 is_stmt 0 discriminator 1
	ldr	r2, .L263
	movw	r1, #622
	ldr	r0, [sp, #12]
	bl	app_error_handler
.L260:
.LBE31:
	.loc 7 625 16 is_stmt 1
	add	r3, sp, #4
	mov	r0, r3
	bl	nrf_sdh_ble_enable
	str	r0, [sp, #20]
.LBB32:
	.loc 7 626 5
	ldr	r3, [sp, #20]
	str	r3, [sp, #8]
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L262
	.loc 7 626 5 is_stmt 0 discriminator 1
	ldr	r2, .L263
	movw	r1, #626
	ldr	r0, [sp, #8]
	bl	app_error_handler
.L262:
.LBE32:
	.loc 7 630 1 is_stmt 1
	nop
	add	sp, sp, #28
.LCFI47:
	@ sp needed
	ldr	pc, [sp], #4
.L264:
	.align	2
.L263:
	.word	.LC2
.LFE380:
	.size	ble_stack_init, .-ble_stack_init
	.section	.text.peer_manager_init,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	peer_manager_init, %function
peer_manager_init:
.LFB381:
	.loc 7 636 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI48:
	sub	sp, sp, #28
.LCFI49:
	.loc 7 640 16
	bl	pm_init
	str	r0, [sp, #20]
.LBB33:
	.loc 7 641 5
	ldr	r3, [sp, #20]
	str	r3, [sp, #16]
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L266
	.loc 7 641 5 is_stmt 0 discriminator 1
	ldr	r2, .L270
	movw	r1, #641
	ldr	r0, [sp, #16]
	bl	app_error_handler
.L266:
.LBE33:
	.loc 7 643 5 is_stmt 1
	mov	r3, sp
	movs	r2, #5
	movs	r1, #0
	mov	r0, r3
	bl	memset
	.loc 7 646 30
	ldrb	r3, [sp]
	orr	r3, r3, #1
	strb	r3, [sp]
	.loc 7 647 30
	ldrb	r3, [sp]
	bfc	r3, #1, #1
	strb	r3, [sp]
	.loc 7 648 30
	ldrb	r3, [sp]
	bfc	r3, #2, #1
	strb	r3, [sp]
	.loc 7 649 30
	ldrb	r3, [sp]
	bfc	r3, #3, #1
	strb	r3, [sp]
	.loc 7 650 30
	ldrb	r3, [sp]
	movs	r2, #3
	bfi	r3, r2, #4, #3
	strb	r3, [sp]
	.loc 7 651 30
	ldrb	r3, [sp]
	bfc	r3, #7, #1
	strb	r3, [sp]
	.loc 7 652 30
	movs	r3, #7
	strb	r3, [sp, #1]
	.loc 7 653 30
	movs	r3, #16
	strb	r3, [sp, #2]
	.loc 7 654 30
	ldrb	r3, [sp, #3]
	orr	r3, r3, #1
	strb	r3, [sp, #3]
	.loc 7 655 30
	ldrb	r3, [sp, #3]
	orr	r3, r3, #2
	strb	r3, [sp, #3]
	.loc 7 656 30
	ldrb	r3, [sp, #4]
	orr	r3, r3, #1
	strb	r3, [sp, #4]
	.loc 7 657 30
	ldrb	r3, [sp, #4]
	orr	r3, r3, #2
	strb	r3, [sp, #4]
	.loc 7 659 16
	mov	r3, sp
	mov	r0, r3
	bl	pm_sec_params_set
	str	r0, [sp, #20]
.LBB34:
	.loc 7 660 5
	ldr	r3, [sp, #20]
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L267
	.loc 7 660 5 is_stmt 0 discriminator 1
	ldr	r2, .L270
	mov	r1, #660
	ldr	r0, [sp, #12]
	bl	app_error_handler
.L267:
.LBE34:
	.loc 7 662 16 is_stmt 1
	ldr	r0, .L270+4
	bl	pm_register
	str	r0, [sp, #20]
.LBB35:
	.loc 7 663 5
	ldr	r3, [sp, #20]
	str	r3, [sp, #8]
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L269
	.loc 7 663 5 is_stmt 0 discriminator 1
	ldr	r2, .L270
	movw	r1, #663
	ldr	r0, [sp, #8]
	bl	app_error_handler
.L269:
.LBE35:
	.loc 7 664 1 is_stmt 1
	nop
	add	sp, sp, #28
.LCFI50:
	@ sp needed
	ldr	pc, [sp], #4
.L271:
	.align	2
.L270:
	.word	.LC2
	.word	pm_evt_handler
.LFE381:
	.size	peer_manager_init, .-peer_manager_init
	.section .rodata
	.align	2
.LC7:
	.ascii	"Erase bonds!\000"
	.section	.text.delete_bonds,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	delete_bonds, %function
delete_bonds:
.LFB382:
	.loc 7 670 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI51:
	sub	sp, sp, #12
.LCFI52:
	.loc 7 673 5
	ldr	r3, .L275
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	orr	r3, r3, #3
	ldr	r1, .L275+4
	mov	r0, r3
	bl	nrf_log_frontend_std_0
	.loc 7 675 16
	bl	pm_peers_delete
	str	r0, [sp, #4]
.LBB36:
	.loc 7 676 5
	ldr	r3, [sp, #4]
	str	r3, [sp]
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L274
	.loc 7 676 5 is_stmt 0 discriminator 1
	ldr	r2, .L275+8
	mov	r1, #676
	ldr	r0, [sp]
	bl	app_error_handler
.L274:
.LBE36:
	.loc 7 677 1 is_stmt 1
	nop
	add	sp, sp, #12
.LCFI53:
	@ sp needed
	ldr	pc, [sp], #4
.L276:
	.align	2
.L275:
	.word	m_nrf_log_app_logs_data_dynamic
	.word	.LC7
	.word	.LC2
.LFE382:
	.size	delete_bonds, .-delete_bonds
	.section	.text.bsp_event_handler,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	bsp_event_handler, %function
bsp_event_handler:
.LFB383:
	.loc 7 685 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI54:
	sub	sp, sp, #28
.LCFI55:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 7 688 5
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L278
	cmp	r3, #10
	bgt	.L285
	cmp	r3, #4
	beq	.L280
	cmp	r3, #7
	beq	.L281
	.loc 7 715 13
	b	.L285
.L278:
	.loc 7 691 13
	bl	sleep_mode_enter
	.loc 7 692 13
	b	.L282
.L280:
	.loc 7 695 24
	ldr	r3, .L289
	ldrh	r3, [r3]
	movs	r1, #19
	mov	r0, r3
	bl	sd_ble_gap_disconnect
	str	r0, [sp, #20]
	.loc 7 697 16
	ldr	r3, [sp, #20]
	cmp	r3, #8
	beq	.L286
.LBB37:
	.loc 7 699 17
	ldr	r3, [sp, #20]
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0