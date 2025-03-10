#getPinAssignMode -pinEditInBatch -quiet
#setPinAssignMode -pinEditInBatch true
#editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 1 -spreadType center -spacing 4 -pin {clk x[7] x[6] x[5] x[4] x[3] x[2] x[1] x[0] y[7] y[6] y[5] y[4] y[3] y[2] y[1] y[0] z[7] z[6] z[5] z[4] z[3] z[2] z[1] z[0]} -fixedPin true
#editPin -fixOverlap 1 -unit MICRON -spreadDirection counterClockwise -side Right -layer 1 -spreadType center -spacing 8 -pin {out[6] out[5] out[4] out[3] out[2] out[1] out[0] } -fixedPin true

getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixedPin true -pinWidth 0.1 -pinDepth 0.6 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 3 -spreadType center -spacing 1.6 -pin {clk {x[0]} {x[1]} {x[2]} {x[3]} {x[4]} {x[5]} {x[6]} {x[7]} {y[0]} {y[1]} {y[2]} {y[3]} {y[4]} {y[5]} {y[6]} {y[7]} {z[0]} {z[1]} {z[2]} {z[3]} {z[4]} {z[5]} {z[6]} {z[7]}}
setPinAssignMode -pinEditInBatch true
editPin -fixedPin true -pinWidth 0.1 -pinDepth 0.6 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 3 -spreadType center -spacing 1.6 -pin {clk {x[0]} {x[1]} {x[2]} {x[3]} {x[4]} {x[5]} {x[6]} {x[7]} {y[0]} {y[1]} {y[2]} {y[3]} {y[4]} {y[5]} {y[6]} {y[7]} {z[0]} {z[1]} {z[2]} {z[3]} {z[4]} {z[5]} {z[6]} {z[7]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixedPin true -pinWidth 0.1 -pinDepth 0.6 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 3 -spreadType center -spacing 1.6 -pin {clk {x[0]} {x[1]} {x[2]} {x[3]} {x[4]} {x[5]} {x[6]} {x[7]} {y[0]} {y[1]} {y[2]} {y[3]} {y[4]} {y[5]} {y[6]} {y[7]} {z[0]} {z[1]} {z[2]} {z[3]} {z[4]} {z[5]} {z[6]} {z[7]}}
setPinAssignMode -pinEditInBatch true
editPin -fixedPin true -pinWidth 0.1 -pinDepth 0.6 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 3 -spreadType center -spacing 1.6 -pin {clk {x[0]} {x[1]} {x[2]} {x[3]} {x[4]} {x[5]} {x[6]} {x[7]} {y[0]} {y[1]} {y[2]} {y[3]} {y[4]} {y[5]} {y[6]} {y[7]} {z[0]} {z[1]} {z[2]} {z[3]} {z[4]} {z[5]} {z[6]} {z[7]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixedPin true -pinWidth 0.1 -pinDepth 0.6 -fixOverlap 1 -unit MICRON -spreadDirection counterclockwise -side Right -layer 3 -spreadType center -spacing 1.6 -pin {{out[0]} {out[1]} {out[2]} {out[3]} {out[4]} {out[5]} {out[6]}}
setPinAssignMode -pinEditInBatch true
editPin -fixedPin true -pinWidth 0.1 -pinDepth 0.6 -fixOverlap 1 -unit MICRON -spreadDirection counterclockwise -side Right -layer 3 -spreadType center -spacing 1.6 -pin {{out[0]} {out[1]} {out[2]} {out[3]} {out[4]} {out[5]} {out[6]}}
setPinAssignMode -pinEditInBatch false
checkPinAssignment
