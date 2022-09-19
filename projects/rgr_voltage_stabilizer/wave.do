onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /voltage_stabilizer_testbench/clk
add wave -noupdate /voltage_stabilizer_testbench/reset
add wave -noupdate /voltage_stabilizer_testbench/bypass
add wave -noupdate /voltage_stabilizer_testbench/is_low
add wave -noupdate /voltage_stabilizer_testbench/is_high
add wave -noupdate /voltage_stabilizer_testbench/y
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {127 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 228
configure wave -valuecolwidth 58
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {967 ns}
