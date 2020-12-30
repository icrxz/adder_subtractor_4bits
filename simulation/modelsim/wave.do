view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0010 -range 3 0 -starttime 0ps -endtime 1000ps sim:/adder_subtractor_4bits/num1 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0010 -range 3 0 -starttime 0ps -endtime 1000ps sim:/adder_subtractor_4bits/num2 
WaveExpandAll -1
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/adder_subtractor_4bits/clock 
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 100ps sim:/adder_subtractor_4bits/en1 
wave create -driver freeze -pattern constant -value 1 -starttime 100ps -endtime 200ps sim:/adder_subtractor_4bits/en2 
wave modify -driver freeze -pattern constant -value 0100 -range 3 0 -starttime 0ps -endtime 1000ps Edit:/adder_subtractor_4bits/num1 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 100ps Edit:/adder_subtractor_4bits/en1 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 100ps Edit:/adder_subtractor_4bits/en2 
WaveCollapseAll -1
wave clipboard restore
