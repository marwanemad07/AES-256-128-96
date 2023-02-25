transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Handsa/1st\ Year/2nd\ Semester/Projects/Logic\ Project/AES_Project {D:/Handsa/1st Year/2nd Semester/Projects/Logic Project/AES_Project/Key_Expansion.v}
vlog -vlog01compat -work work +incdir+D:/Handsa/1st\ Year/2nd\ Semester/Projects/Logic\ Project/AES_Project {D:/Handsa/1st Year/2nd Semester/Projects/Logic Project/AES_Project/sbox.v}
vlog -vlog01compat -work work +incdir+D:/Handsa/1st\ Year/2nd\ Semester/Projects/Logic\ Project/AES_Project {D:/Handsa/1st Year/2nd Semester/Projects/Logic Project/AES_Project/shift_row.v}
vlog -vlog01compat -work work +incdir+D:/Handsa/1st\ Year/2nd\ Semester/Projects/Logic\ Project/AES_Project {D:/Handsa/1st Year/2nd Semester/Projects/Logic Project/AES_Project/mix_col.v}
vlog -vlog01compat -work work +incdir+D:/Handsa/1st\ Year/2nd\ Semester/Projects/Logic\ Project/AES_Project {D:/Handsa/1st Year/2nd Semester/Projects/Logic Project/AES_Project/main.v}
vlog -vlog01compat -work work +incdir+D:/Handsa/1st\ Year/2nd\ Semester/Projects/Logic\ Project/AES_Project {D:/Handsa/1st Year/2nd Semester/Projects/Logic Project/AES_Project/sub_byte.v}
vlog -vlog01compat -work work +incdir+D:/Handsa/1st\ Year/2nd\ Semester/Projects/Logic\ Project/AES_Project {D:/Handsa/1st Year/2nd Semester/Projects/Logic Project/AES_Project/round.v}
vlog -vlog01compat -work work +incdir+D:/Handsa/1st\ Year/2nd\ Semester/Projects/Logic\ Project/AES_Project {D:/Handsa/1st Year/2nd Semester/Projects/Logic Project/AES_Project/lastround.v}
vlog -vlog01compat -work work +incdir+D:/Handsa/1st\ Year/2nd\ Semester/Projects/Logic\ Project/AES_Project {D:/Handsa/1st Year/2nd Semester/Projects/Logic Project/AES_Project/Key_Expansion192.v}
vlog -vlog01compat -work work +incdir+D:/Handsa/1st\ Year/2nd\ Semester/Projects/Logic\ Project/AES_Project {D:/Handsa/1st Year/2nd Semester/Projects/Logic Project/AES_Project/Key_Expansion256.v}
vlog -vlog01compat -work work +incdir+D:/Handsa/1st\ Year/2nd\ Semester/Projects/Logic\ Project/AES_Project {D:/Handsa/1st Year/2nd Semester/Projects/Logic Project/AES_Project/main128.v}
vlog -vlog01compat -work work +incdir+D:/Handsa/1st\ Year/2nd\ Semester/Projects/Logic\ Project/AES_Project {D:/Handsa/1st Year/2nd Semester/Projects/Logic Project/AES_Project/main192.v}
vlog -vlog01compat -work work +incdir+D:/Handsa/1st\ Year/2nd\ Semester/Projects/Logic\ Project/AES_Project {D:/Handsa/1st Year/2nd Semester/Projects/Logic Project/AES_Project/main256.v}
vlog -vlog01compat -work work +incdir+D:/Handsa/1st\ Year/2nd\ Semester/Projects/Logic\ Project/AES_Project {D:/Handsa/1st Year/2nd Semester/Projects/Logic Project/AES_Project/insub_byte.v}
vlog -vlog01compat -work work +incdir+D:/Handsa/1st\ Year/2nd\ Semester/Projects/Logic\ Project/AES_Project {D:/Handsa/1st Year/2nd Semester/Projects/Logic Project/AES_Project/insbox.v}
vlog -vlog01compat -work work +incdir+D:/Handsa/1st\ Year/2nd\ Semester/Projects/Logic\ Project/AES_Project {D:/Handsa/1st Year/2nd Semester/Projects/Logic Project/AES_Project/inv_mix_col.v}
vlog -vlog01compat -work work +incdir+D:/Handsa/1st\ Year/2nd\ Semester/Projects/Logic\ Project/AES_Project {D:/Handsa/1st Year/2nd Semester/Projects/Logic Project/AES_Project/inshift_row.v}
vlog -vlog01compat -work work +incdir+D:/Handsa/1st\ Year/2nd\ Semester/Projects/Logic\ Project/AES_Project {D:/Handsa/1st Year/2nd Semester/Projects/Logic Project/AES_Project/invround.v}
vlog -vlog01compat -work work +incdir+D:/Handsa/1st\ Year/2nd\ Semester/Projects/Logic\ Project/AES_Project {D:/Handsa/1st Year/2nd Semester/Projects/Logic Project/AES_Project/invlastround.v}
vlog -vlog01compat -work work +incdir+D:/Handsa/1st\ Year/2nd\ Semester/Projects/Logic\ Project/AES_Project {D:/Handsa/1st Year/2nd Semester/Projects/Logic Project/AES_Project/wrapper.v}
vlog -vlog01compat -work work +incdir+D:/Handsa/1st\ Year/2nd\ Semester/Projects/Logic\ Project/AES_Project {D:/Handsa/1st Year/2nd Semester/Projects/Logic Project/AES_Project/decryption128.v}
vlog -vlog01compat -work work +incdir+D:/Handsa/1st\ Year/2nd\ Semester/Projects/Logic\ Project/AES_Project {D:/Handsa/1st Year/2nd Semester/Projects/Logic Project/AES_Project/decryption192.v}
vlog -vlog01compat -work work +incdir+D:/Handsa/1st\ Year/2nd\ Semester/Projects/Logic\ Project/AES_Project {D:/Handsa/1st Year/2nd Semester/Projects/Logic Project/AES_Project/decryption256.v}

vlog -vlog01compat -work work +incdir+D:/Handsa/1st\ Year/2nd\ Semester/Projects/Logic\ Project/AES_Project {D:/Handsa/1st Year/2nd Semester/Projects/Logic Project/AES_Project/testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
