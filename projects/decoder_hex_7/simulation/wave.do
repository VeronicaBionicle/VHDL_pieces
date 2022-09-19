onerror {resume}
quietly virtual signal -install /decoder_hex_7 { (context /decoder_hex_7 )(X0 & X1 & X2 & X3 )} input
quietly virtual signal -install /decoder_hex_7 { (context /decoder_hex_7 )(X3 & X2 & X1 & X0 )} inputs
quietly virtual signal -install /decoder_hex_7 { (context /decoder_hex_7 )(a & b & c & d & e & f & g )} output
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix binary -childformat {{/decoder_hex_7/inputs(3) -radix binary} {/decoder_hex_7/inputs(2) -radix binary} {/decoder_hex_7/inputs(1) -radix binary} {/decoder_hex_7/inputs(0) -radix binary}} -expand -subitemconfig {/decoder_hex_7/X3 {-radix binary} /decoder_hex_7/X2 {-radix binary} /decoder_hex_7/X1 {-radix binary} /decoder_hex_7/X0 {-radix binary}} /decoder_hex_7/inputs
add wave -noupdate -expand -group outputs /decoder_hex_7/output
add wave -noupdate -expand -group outputs /decoder_hex_7/a
add wave -noupdate -expand -group outputs /decoder_hex_7/b
add wave -noupdate -expand -group outputs /decoder_hex_7/c
add wave -noupdate -expand -group outputs /decoder_hex_7/d
add wave -noupdate -expand -group outputs /decoder_hex_7/e
add wave -noupdate -expand -group outputs /decoder_hex_7/f
add wave -noupdate -expand -group outputs /decoder_hex_7/g
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 230
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1000
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ms
update
WaveRestoreZoom {0 ns} {635 ns}
