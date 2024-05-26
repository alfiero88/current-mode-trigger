v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -250 -620 550 -220 {flags=graph
y1=2.9e-08
y2=3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=out
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -250 -1090 550 -690 {flags=graph
y1=2.9e-10
y2=0.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(vmeas)
color=5
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/SiPM.raw
sim_type=tran}
N -240 -120 -240 -100 {
lab=in}
N -240 -120 -0 -120 {
lab=in}
N -0 -120 0 -30 {
lab=in}
N -130 0 -40 0 {
lab=trg}
N -130 0 -130 10 {
lab=trg}
N -50 20 -40 20 {
lab=GND}
N -50 20 -50 30 {
lab=GND}
N 0 30 -0 60 {
lab=#net1}
N -0 120 0 150 {
lab=out}
C {devices/switch_ngspice.sym} 0 0 0 0 {name=S1 model=SWITCH1}
C {devices/vsource.sym} -130 40 0 1 {name=Vtrg value="DC 0 pulse(0 2 20n 1p 1p 600p 1m)" savecurrent=false}
C {devices/gnd.sym} -130 70 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -240 -70 0 0 {name=V1 value=3 savecurrent=false}
C {devices/gnd.sym} -240 -40 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -50 30 0 0 {name=l3 lab=GND}
C {devices/ammeter.sym} 0 90 0 0 {name=Vmeas savecurrent=true}
C {devices/res.sym} 0 180 0 0 {name=R1
value=res1
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 0 210 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 0 140 0 0 {name=p1 sig_type=std_logic lab=out}
C {devices/lab_wire.sym} -60 -120 0 0 {name=p2 sig_type=std_logic lab=in}
C {devices/lab_wire.sym} -70 0 0 0 {name=p3 sig_type=std_logic lab=trg}
C {devices/simulator_commands_shown.sym} -820 -220 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="
.model switch1 sw vt=1 vh=0.2 ron=0.01 roff=10G
.param abc = 1000 bcd = 100
.param res1 = 'abc / bcd'
.option savecurrents
.control
  save all
  tran 0.004n 200n
  write SiPM.raw
.endc
"}
