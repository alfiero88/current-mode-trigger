v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 630 -460 1430 -60 {flags=graph,unlocked
y1=1.2e-06
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=out
color=7
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/Testbench.raw
sim_type=dc}
B 2 630 40 1430 440 {flags=graph,unlocked
y1=-1.1e-05
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=8e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out
\\"i(@i0[current]) 900000 *\\"
x1.out1"
color="7 4 6"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/Testbench.raw}
B 2 630 550 1430 950 {flags=graph
y1=-0.00038
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=8e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="7 4"
node="\\"i(vmeas) 100000 *\\"
out_sipm"}
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
N -180 -240 -180 -190 {
lab=vdd}
N -180 -60 -20 -60 {
lab=in}
N -180 -130 -180 -60 {
lab=in}
N 60 420 60 480 {
lab=vdd}
N 60 630 60 680 {
lab=vss}
N 220 550 350 550 {
lab=#net2}
N 440 550 440 570 {
lab=#net2}
N 440 630 440 680 {
lab=vss}
N 410 550 470 550 {
lab=out_SiPM}
N -70 510 -10 510 {
lab=vref}
N -70 530 -10 530 {
lab=vgf}
N -910 330 -860 330 {
lab=#net3}
N -800 330 -590 330 {
lab=K}
N -590 330 -590 370 {
lab=K}
N -680 330 -680 370 {
lab=K}
N -680 430 -680 480 {
lab=#net4}
N -680 480 -590 480 {
lab=#net4}
N -590 430 -590 480 {
lab=#net4}
N -680 520 -680 540 {
lab=#net4}
N -680 520 -590 520 {
lab=#net4}
N -630 480 -630 520 {
lab=#net4}
N -590 520 -590 650 {
lab=#net4}
N -680 600 -680 650 {
lab=#net5}
N -680 710 -680 750 {
lab=#net6}
N -680 810 -680 840 {
lab=A}
N -680 840 -320 840 {
lab=A}
N -320 840 -250 840 {
lab=A}
N -250 550 -250 840 {
lab=A}
N -250 330 -250 490 {
lab=K}
N -590 330 -250 330 {
lab=K}
N -440 330 -440 370 {
lab=K}
N -360 330 -360 370 {
lab=K}
N -440 430 -440 480 {
lab=#net7}
N -440 480 -360 480 {
lab=#net7}
N -360 430 -360 480 {
lab=#net7}
N -400 480 -400 600 {
lab=#net7}
N -400 660 -400 840 {
lab=A}
N -590 710 -590 840 {
lab=A}
N -740 590 -720 590 {
lab=GND}
N -740 590 -740 610 {
lab=GND}
N -790 570 -720 570 {
lab=trg}
N -930 330 -930 350 {
lab=#net3}
N -930 330 -910 330 {
lab=#net3}
N -860 570 -790 570 {
lab=trg}
N -680 840 -680 920 {
lab=A}
N -680 980 -680 1010 {
lab=#net8}
N -140 570 -10 570 {
lab=in_SiPM}
N -140 570 -140 1010 {
lab=in_SiPM}
N -340 1010 -140 1010 {
lab=in_SiPM}
N -680 1010 -400 1010 {
lab=#net8}
N -260 1100 -260 1150 {
lab=vss}
N -260 1010 -260 1040 {
lab=in_SiPM}
C {CurrentTrigger.sym} 0 0 0 0 {name=x1}
C {devices/launcher.sym} -250 -390 0 0 {name=h17 
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
C {devices/vsource.sym} 500 -390 0 0 {name=V5 value=1.5 savecurrent=true}
C {devices/lab_pin.sym} 500 -340 0 0 {name=p13 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 500 -460 0 0 {name=p14 sig_type=std_logic lab=vgf}
C {devices/lab_pin.sym} -70 -100 0 0 {name=p15 sig_type=std_logic lab=vgf}
C {devices/isource.sym} -180 -160 0 0 {name=I0 value="dc 0 pwl 0 0 1m 2u 2m 0"}
C {devices/lab_pin.sym} -180 -240 0 0 {name=p16 sig_type=std_logic lab=vdd}
C {devices/simulator_commands_shown.sym} -1140 -500 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="
.param Nf = 1
.param N = 1100
.param Rq = 750000
.param Rd = 1k
.param Cd = 45f
.param Cq = 4f
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
  save @m.x1.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]
  save @m.x1.xm2.msky130_fd_pr__nfet_01v8_lvt[gm]
  save @m.x1.xm3.msky130_fd_pr__pfet_01v8_lvt[gm]
  save @m.x1.xm4.msky130_fd_pr__pfet_01v8_lvt[gm]
  save @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[gm]
  save @m.x1.xm6.msky130_fd_pr__pfet_01v8_lvt[gm]
  save @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[gm]
  save @m.x1.xm8.msky130_fd_pr__pfet_01v8_lvt[gm]
  save @m.x1.xm9.msky130_fd_pr__pfet_01v8_lvt[gm]
  op
  write Testbench.raw
  set appendwrite
  dc I0 0 2u 0.01u
  write Testbench.raw
  set appendwrite
  tran 0.004n 800n
  write Testbench.raw
  *quit 0
.endc
"}
C {devices/launcher.sym} -250 -340 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {sky130_fd_pr/corner.sym} -560 -410 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_wire.sym} -90 -60 0 0 {name=p10 sig_type=std_logic lab=in}
C {CurrentTrigger.sym} 10 630 0 0 {name=x2}
C {devices/lab_pin.sym} 60 420 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 60 680 0 0 {name=p12 sig_type=std_logic lab=vss}
C {devices/capa.sym} 440 600 0 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 380 550 1 0 {name=R2
value=500
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 440 680 0 0 {name=p17 sig_type=std_logic lab=vss}
C {devices/opin.sym} 470 550 0 0 {name=p18 lab=out_SiPM}
C {devices/lab_pin.sym} -70 510 0 0 {name=p19 sig_type=std_logic lab=vref}
C {devices/lab_pin.sym} -70 530 0 0 {name=p20 sig_type=std_logic lab=vgf}
C {devices/res.sym} -830 330 1 0 {name=R5
value=1m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -680 400 2 0 {name=R3
value=\{RqNf\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -680 680 2 0 {name=R4
value=\{RdNf\}
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -680 780 0 0 {name=VBD value=32 savecurrent=false}
C {devices/capa.sym} -590 400 0 0 {name=C3
m=1
value=\{CqNf\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -590 680 0 0 {name=C4
m=1
value=\{CdNf\}
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} -440 400 2 0 {name=R6
value=\{RqNp\}
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -250 520 0 0 {name=C5
m=1
value=\{CmN\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -360 400 0 0 {name=C6
m=1
value=\{CqNp\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -400 630 0 0 {name=C7
m=1
value=\{CdNp\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -740 610 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -510 330 0 0 {name=p21 sig_type=std_logic lab=K}
C {devices/lab_wire.sym} -480 840 0 0 {name=p22 sig_type=std_logic lab=A}
C {devices/vsource.sym} -930 380 0 0 {name=VBias value=37 savecurrent=false}
C {devices/gnd.sym} -930 410 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -860 600 0 1 {name=Vtrg value="DC 0 pulse(0 1 20n 1p 1p 600p 1m)" savecurrent=false}
C {devices/gnd.sym} -860 630 0 0 {name=l5 lab=GND}
C {devices/switch_ngspice.sym} -680 570 0 0 {name=S1 model=SWITCH1}
C {devices/lab_wire.sym} -780 570 0 0 {name=p23 sig_type=std_logic lab=trg}
C {devices/ammeter.sym} -680 950 0 0 {name=Vmeas savecurrent=true}
C {devices/lab_pin.sym} -140 570 0 0 {name=p24 sig_type=std_logic lab=in_SiPM}
C {devices/res.sym} -370 1010 1 0 {name=R7
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -260 1070 0 0 {name=C8
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -260 1150 0 0 {name=p25 sig_type=std_logic lab=vss}
