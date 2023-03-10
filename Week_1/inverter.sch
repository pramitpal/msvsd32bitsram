v {xschem version=3.1.0 file_version=1.2
* Copyright 2021 Stefan Frederik Schippers
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {
y <= not a after 0.1 ns ;}
K {}
V {assign #150 y=~a ;}
S {}
E {}
N 420 -260 420 -230 {lab=Vout}
N 420 -260 460 -260 {lab=Vout}
N 380 -260 380 -200 {lab=Vin}
N 340 -260 380 -260 {lab=Vin}
N 420 -400 420 -360 {lab=VCCPIN}
N 420 -160 420 -140 {lab=GND}
N 420 -200 500 -200 { lab=GND}
N 500 -200 500 -160 { lab=GND}
N 420 -160 500 -160 { lab=GND}
N 420 -360 500 -360 { lab=VCCPIN}
N 500 -360 500 -320 { lab=VCCPIN}
N 420 -320 500 -320 { lab=VCCPIN}
N 380 -320 380 -260 { lab=Vin}
N 420 -290 420 -260 {lab=Vout}
N 420 -170 420 -160 { lab=GND}
N 420 -360 420 -350 { lab=VCCPIN}
N 190 -200 200 -200 {
lab=Vin}
N 200 -200 200 -170 {
lab=Vin}
N 200 -390 200 -370 {
lab=VCCPIN}
N 190 -390 200 -390 {
lab=VCCPIN}
C {devices/opin.sym} 460 -260 0 0 {name=p1 lab=Vout verilog_type=wire}
C {devices/ipin.sym} 340 -260 0 0 {name=p2 lab=Vin
}
C {devices/lab_pin.sym} 420 -400 0 0 {name=p149 lab=VCCPIN}
C {sky130_fd_pr/nfet_01v8.sym} 400 -200 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 400 -320 0 0 {name=M2
L=0.15
W=1
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} 200 -140 0 0 {name=Vin value="pulse(0 1.8 1n 1n 1n 4n 10n)"}
C {devices/vsource.sym} 200 -340 0 0 {name=V2 value=1.8}
C {devices/lab_pin.sym} 190 -390 0 0 {name=p4 lab=VCCPIN}
C {devices/ipin.sym} 190 -200 0 0 {name=p5 lab=Vin
}
C {devices/gnd.sym} 420 -140 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 200 -110 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 200 -310 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} 600 -190 0 0 {name=s2 only_toplevel=false value=
"
.tran 0.01n 60n
.save all
"}
C {devices/code_shown.sym} 600 -340 0 0 {name= TT_MODELS1
only_toplevel=true
value=
"
** opencircuitdesign pdks install
.lib /home/pramit/work/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
"
spice_ignore=false}
