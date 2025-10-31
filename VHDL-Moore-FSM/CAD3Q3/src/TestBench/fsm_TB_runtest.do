SetActiveLib -work
comp -include "$dsn\src\StateMechine.vhd" 
comp -include "$dsn\src\TestBench\fsm_TB.vhd" 
asim +access +r TESTBENCH_FOR_fsm 
wave 
wave -noreg z
wave -noreg clk
wave -noreg rst
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\fsm_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_fsm 
