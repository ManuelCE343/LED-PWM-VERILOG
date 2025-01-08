transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+U:/Manue/Documents/VERILOG_LED_PWM {U:/Manue/Documents/VERILOG_LED_PWM/pwm_led.v}

