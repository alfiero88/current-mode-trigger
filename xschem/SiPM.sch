v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 0 -710 800 -310 {flags=graph
y1=0
y2=1
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
node="a
trg"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 0 -1160 800 -760 {flags=graph
y1=3.2e-10
y2=3.3e-10
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
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
N -190 -130 -140 -130 {
lab=#net1}
N -80 -130 130 -130 {
lab=K}
N 130 -130 130 -90 {
lab=K}
N 40 -130 40 -90 {
lab=K}
N 40 -30 40 20 {
lab=#net2}
N 40 20 130 20 {
lab=#net2}
N 130 -30 130 20 {
lab=#net2}
N 40 60 40 80 {
lab=#net2}
N 40 60 130 60 {
lab=#net2}
N 90 20 90 60 {
lab=#net2}
N 130 60 130 190 {
lab=#net2}
N 40 140 40 190 {
lab=#net3}
N 40 250 40 290 {
lab=#net4}
N 40 350 40 380 {
lab=A}
N 40 380 400 380 {
lab=A}
N 400 380 470 380 {
lab=A}
N 470 90 470 380 {
lab=A}
N 470 -130 470 30 {
lab=K}
N 130 -130 470 -130 {
lab=K}
N 280 -130 280 -90 {
lab=K}
N 360 -130 360 -90 {
lab=K}
N 280 -30 280 20 {
lab=#net5}
N 280 20 360 20 {
lab=#net5}
N 360 -30 360 20 {
lab=#net5}
N 320 20 320 140 {
lab=#net5}
N 320 200 320 380 {
lab=A}
N 130 250 130 380 {
lab=A}
N -20 130 0 130 {
lab=GND}
N -20 130 -20 150 {
lab=GND}
N -70 110 -0 110 {
lab=trg}
N -210 -130 -210 -110 {
lab=#net1}
N -210 -130 -190 -130 {
lab=#net1}
N -140 110 -70 110 {
lab=trg}
N 40 620 40 640 {
lab=GND}
N 40 610 40 620 {
lab=GND}
N 40 380 40 460 {
lab=A}
N 40 520 40 550 {
lab=#net6}
C {devices/res.sym} -110 -130 1 0 {name=R5
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 40 -60 2 0 {name=R1
value=RqNf
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 40 220 2 0 {name=R2
value=RdNf
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 40 320 0 0 {name=VBD value=70.5 savecurrent=false}
C {devices/capa.sym} 130 -60 0 0 {name=C1
m=1
value=CqNf
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 130 220 0 0 {name=C2
m=1
value=CdNf
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 280 -60 2 0 {name=R3
value=RqNp
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 470 60 0 0 {name=C3
m=1
value=CmN
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 360 -60 0 0 {name=C4
m=1
value=CqNp
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 320 170 0 0 {name=C5
m=1
value=CdNp
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -20 150 0 0 {name=l2 lab=GND}
C {devices/simulator_commands_shown.sym} -810 -370 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="
.param Nf = 1
.param N = 3600
.param Rq = 290000
.param Rd = 1k
.param Cd = 78f
.param Cq = 8f
.param Cm = 1f
.param Np = 'N-Nf'
.param RqNf = 'Rq / Nf'
.param RqNp = 'Rq / Np'
.param CqNf = 'Cq * Nf'
.param CqNp = 'Cq * Np'
.param CdNf = 'Cd * Nf'
.param CdNp = 'Cd * Np'
.param CmN = 'Cm * N'
.param RdNf = 'Rd / Nf'
.model switch1 sw vt=0.5 vh=0 ron=0.01 roff=10G
.option savecurrents
.control
  save all
  tran 0.004n 200n
  write SiPM.raw
.endc
"}
C {devices/lab_wire.sym} 210 -130 0 0 {name=p1 sig_type=std_logic lab=K}
C {devices/lab_wire.sym} 240 380 0 0 {name=p2 sig_type=std_logic lab=A}
C {devices/vsource.sym} -210 -80 0 0 {name=VBias value=73.8 savecurrent=false}
C {devices/gnd.sym} -210 -50 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -140 140 0 1 {name=Vtrg value="DC 0 pulse(0 1 20n 1p 1p 600p 1m)" savecurrent=false}
C {devices/gnd.sym} -140 170 0 0 {name=l3 lab=GND}
C {devices/res.sym} 40 580 2 0 {name=R4
value=50
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 40 640 0 0 {name=l4 lab=GND}
C {devices/switch_ngspice.sym} 40 110 0 0 {name=S1 model=SWITCH1}
C {devices/lab_wire.sym} -60 110 0 0 {name=p3 sig_type=std_logic lab=trg}
C {devices/ammeter.sym} 40 490 0 0 {name=Vmeas savecurrent=true}
