



cd {C:/FPGA/FPGA 2014/vhdl_workspace/RAM_fabric}

vcom -reportprogress 300 -work work {C:/FPGA/FPGA 2014/vhdl_workspace/RAM_fabric/Single_port_RAM_VHDL.vhd}
vcom -reportprogress 300 -work work {C:/FPGA/FPGA 2014/vhdl_workspace/RAM_fabric/tb_RAM_VHDL.vhd}

vsim work.tb_RAM_VHDL -t ns \
	-novopt 

#add wave -r *

add wave -noupdate -divider TOP_RAM_INPUT
add wave -noupdate  /tb_RAM_VHDL/RAM_CLOCK
add wave -noupdate  /tb_RAM_VHDL/RAM_ENABLE
add wave -noupdate  /tb_RAM_VHDL/RAM_WR
add wave -noupdate -format Literal -radix hexadecimal /tb_RAM_VHDL/RAM_ADDR

add wave -noupdate -divider TOP_RAM_OUTPUT
add wave -noupdate -format Literal -radix hexadecimal /tb_RAM_VHDL/RAM_DATA_OUT




WaveRestoreZoom {0 ns} {10 us}


run 20 us