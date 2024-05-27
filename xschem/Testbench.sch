v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -460 110 -420 {
lab=vss}
N 240 -460 240 -420 {
lab=vdd}
N 50 -190 50 -150 {
lab=vdd}
N 50 0 50 50 {
lab=vss}
N 210 -80 290 -80 {
lab=#net1}
N 290 -80 360 -80 {
lab=#net1}
N 290 -20 290 20 {
lab=vss}
N 420 -80 490 -80 {
lab=out}
N 380 -360 380 -340 {
lab=vss}
N 380 -460 380 -420 {
lab=vref}
N -70 -120 -20 -120 {
lab=vref}
N 500 -360 500 -340 {
lab=vss}
N 500 -460 500 -420 {
lab=vgf}
N -70 -100 -20 -100 {
lab=vgf}
N -210 -80 -210 -60 {
lab=in}
N -210 -60 -20 -60 {
lab=in}
N -210 -190 -210 -140 {
lab=vdd}
C {CurrentTrigger.sym} 0 0 0 0 {name=x1}
C {devices/launcher.sym} -250 -380 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/vsource.sym} 110 -390 0 0 {name=V1 value=0 savecurrent=true}
C {devices/vsource.sym} 240 -390 0 0 {name=V2 value=1.8 savecurrent=true}
C {devices/gnd.sym} 110 -360 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 240 -360 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 110 -460 0 0 {name=p1 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 240 -460 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 50 -190 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 50 50 0 0 {name=p4 sig_type=std_logic lab=vss}
C {devices/capa.sym} 290 -50 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 390 -80 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 290 20 0 0 {name=p5 sig_type=std_logic lab=vss}
C {devices/opin.sym} 490 -80 0 0 {name=p6 lab=out}
C {devices/vsource.sym} 380 -390 0 0 {name=V3 value=0.9 savecurrent=true}
C {devices/lab_pin.sym} 380 -340 0 0 {name=p7 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 380 -460 0 0 {name=p8 sig_type=std_logic lab=vref}
C {devices/lab_pin.sym} -70 -120 0 0 {name=p9 sig_type=std_logic lab=vref}
C {devices/vsource.sym} 500 -390 0 0 {name=V5 value=1.7 savecurrent=true}
C {devices/lab_pin.sym} 500 -340 0 0 {name=p13 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 500 -460 0 0 {name=p14 sig_type=std_logic lab=vgf}
C {devices/lab_pin.sym} -70 -100 0 0 {name=p15 sig_type=std_logic lab=vgf}
C {devices/isource.sym} -210 -110 0 0 {name=I0 value=0}
C {devices/lab_pin.sym} -210 -190 0 0 {name=p16 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} -130 -60 0 0 {name=p17 sig_type=std_logic lab=in}
C {devices/simulator_commands_shown.sym} -550 -190 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="
 
.option savecurrents
.control
  save all
  op
  write Testbench.raw
  quit 0
.endc
"}
C {devices/launcher.sym} -250 -340 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {sky130_fd_pr/corner.sym} -560 -410 0 0 {name=CORNER only_toplevel=true corner=tt}
