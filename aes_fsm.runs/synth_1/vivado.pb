
i
Command: %s
53*	vivadotcl28
6synth_design -top aes_encryption -part xc7a35tcpg236-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349h px� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
M
#Helper process launched with PID %s4824*oasys2
1120Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1056.348 ; gain = 467.277
h px� 
�
@variable '%s' must explicitly be declared as automatic or static6438*oasys2
sbox_lookup2E
AF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/key_expansion.sv2
618@Z8-10180h px� 
�
@variable '%s' must explicitly be declared as automatic or static6438*oasys2
sbox_lookup2A
=F:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/sub_bytes.sv2
228@Z8-10180h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
frame_ready2
wire2F
BF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/aes_encryption.sv2
818@Z8-11241h px� 
�
synthesizing module '%s'%s4497*oasys2
aes_encryption2
 2F
BF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/aes_encryption.sv2
488@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
uart_frame_rx2
 2E
AF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/uart_frame_rx.sv2
338@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
UART_RX_CMOD_A735T2
 2J
FF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/UART_RX_CMOD_A735T.sv2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
UART_RX_CMOD_A735T2
 2
02
12J
FF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/UART_RX_CMOD_A735T.sv2
238@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2E
AF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/uart_frame_rx.sv2
878@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_frame_rx2
 2
02
12E
AF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/uart_frame_rx.sv2
338@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

aes_core2
 2@
<F:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/aes_core.sv2
668@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
key_expansion2
 2E
AF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/key_expansion.sv2
308@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
key_expansion2
 2
02
12E
AF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/key_expansion.sv2
308@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	sub_bytes2
 2A
=F:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/sub_bytes.sv2
178@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	sub_bytes2
 2
02
12A
=F:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/sub_bytes.sv2
178@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

shift_rows2
 2B
>F:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/shift_rows.sv2
168@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

shift_rows2
 2
02
12B
>F:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/shift_rows.sv2
168@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
mix_columns2
 2C
?F:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/mix_columns.sv2
198@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mix_columns2
 2
02
12C
?F:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/mix_columns.sv2
198@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

aes_core2
 2
02
12@
<F:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/aes_core.sv2
668@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
uart_frame_tx2
 2E
AF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/uart_frame_tx.sv2
178@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
UART_TX_CMOD_A735T2
 2J
FF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/UART_TX_CMOD_A735T.sv2
248@Z8-6157h px� 
`
%s
*synth2H
F	Parameter BAUD_RATE bound to: 32'sb00000000000000000010010110000000 
h p
x
� 
_
%s
*synth2G
E	Parameter CLK_FREQ bound to: 32'sb00000000101101110001101100000000 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
UART_TX_CMOD_A735T2
 2
02
12J
FF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/UART_TX_CMOD_A735T.sv2
248@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2E
AF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/uart_frame_tx.sv2
808@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_frame_tx2
 2
02
12E
AF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/uart_frame_tx.sv2
178@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
aes_encryption2
 2
02
12F
BF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/aes_encryption.sv2
488@Z8-6155h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
shift_reg_reg2
UART_RX_CMOD_A735T2J
FF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/UART_RX_CMOD_A735T.sv2
708@Z8-7137h px� 
�
9always_comb on '%s' did not result in combinational logic87*oasys2
frame_ready_reg2E
AF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/uart_frame_rx.sv2
898@Z8-87h px� 
�
9always_comb on '%s' did not result in combinational logic87*oasys2
shift_reg_reg2E
AF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/uart_frame_rx.sv2
978@Z8-87h px� 
�
9always_comb on '%s' did not result in combinational logic87*oasys2
	frame_reg2E
AF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/uart_frame_rx.sv2
1058@Z8-87h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
shift_reg_reg2
UART_TX_CMOD_A735T2J
FF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/UART_TX_CMOD_A735T.sv2
698@Z8-7137h px� 
�
9always_comb on '%s' did not result in combinational logic87*oasys2
tx_data_reg2E
AF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/uart_frame_tx.sv2
538@Z8-87h px� 
�
9always_comb on '%s' did not result in combinational logic87*oasys2
wait_state_reg2E
AF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/uart_frame_tx.sv2
948@Z8-87h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
rx_frame_ready2
aes_encryption2F
BF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/aes_encryption.sv2
588@Z8-3848h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2
clk2
key_expansionZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
reset2
key_expansionZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 1202.434 ; gain = 613.363
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 1202.434 ; gain = 613.363
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 1202.434 ; gain = 613.363
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0532

1202.4342
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2D
@F:/FPGA_Repos/aes_fsm/aes_fsm.srcs/constrs_1/new/constraints.xdc8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2	
leds[0]2D
@F:/FPGA_Repos/aes_fsm/aes_fsm.srcs/constrs_1/new/constraints.xdc2
78@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@F:/FPGA_Repos/aes_fsm/aes_fsm.srcs/constrs_1/new/constraints.xdc2
78@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
leds[1]2D
@F:/FPGA_Repos/aes_fsm/aes_fsm.srcs/constrs_1/new/constraints.xdc2
88@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@F:/FPGA_Repos/aes_fsm/aes_fsm.srcs/constrs_1/new/constraints.xdc2
88@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2D
@F:/FPGA_Repos/aes_fsm/aes_fsm.srcs/constrs_1/new/constraints.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2B
@F:/FPGA_Repos/aes_fsm/aes_fsm.srcs/constrs_1/new/constraints.xdc2"
 .Xil/aes_encryption_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1289.2152
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0062

1289.2152
0.000Z17-268h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1289.215 ; gain = 700.145
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7a35tcpg236-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1289.215 ; gain = 700.145
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1289.215 ; gain = 700.145
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
v
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2
UART_RX_CMOD_A735TZ8-802h px� 
q
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2
uart_frame_rxZ8-802h px� 
v
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2
UART_TX_CMOD_A735TZ8-802h px� 
q
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2
uart_frame_txZ8-802h px� 
r
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2
aes_encryptionZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    IDLE |                               00 |                               00
h p
x
� 
y
%s
*synth2a
_                   START |                               01 |                               01
h p
x
� 
y
%s
*synth2a
_                    DATA |                               10 |                               10
h p
x
� 
y
%s
*synth2a
_                    STOP |                               11 |                               11
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2

sequential2
UART_RX_CMOD_A735TZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys2
	frame_reg2E
AF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/uart_frame_rx.sv2
1058@Z8-327h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    IDLE |                              001 |                               00
h p
x
� 
y
%s
*synth2a
_              PROCESSING |                              010 |                               01
h p
x
� 
y
%s
*synth2a
_                  FINISH |                              100 |                               10
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2	
one-hot2
uart_frame_rxZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys2
frame_ready_reg2E
AF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/uart_frame_rx.sv2
898@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
shift_reg_reg2E
AF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/uart_frame_rx.sv2
978@Z8-327h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    IDLE |                               00 |                               00
h p
x
� 
y
%s
*synth2a
_                   START |                               01 |                               01
h p
x
� 
y
%s
*synth2a
_                    DATA |                               10 |                               10
h p
x
� 
y
%s
*synth2a
_                    STOP |                               11 |                               11
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2

sequential2
UART_TX_CMOD_A735TZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    IDLE |                              000 |                              000
h p
x
� 
y
%s
*synth2a
_              START_BYTE |                              001 |                              001
h p
x
� 
y
%s
*synth2a
_               WAIT_UART |                              010 |                              101
h p
x
� 
y
%s
*synth2a
_              PROCESSING |                              011 |                              010
h p
x
� 
y
%s
*synth2a
_                END_BYTE |                              100 |                              011
h p
x
� 
y
%s
*synth2a
_                  FINISH |                              101 |                              100
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2

sequential2
uart_frame_txZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys2
wait_state_reg2E
AF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/uart_frame_tx.sv2
948@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
tx_data_reg2E
AF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/uart_frame_tx.sv2
538@Z8-327h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    IDLE |                             0001 |                               00
h p
x
� 
y
%s
*synth2a
_                 RECEIVE |                             0010 |                               01
h p
x
� 
y
%s
*synth2a
_                 ENCRYPT |                             0100 |                               10
h p
x
� 
y
%s
*synth2a
_                TRANSMIT |                             1000 |                               11
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2	
one-hot2
aes_encryptionZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1289.215 ; gain = 700.145
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 4     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input    128 Bit         XORs := 3     
h p
x
� 
H
%s
*synth20
.	   3 Input     32 Bit         XORs := 10    
h p
x
� 
H
%s
*synth20
.	   2 Input     32 Bit         XORs := 30    
h p
x
� 
H
%s
*synth20
.	   2 Input      8 Bit         XORs := 21    
h p
x
� 
H
%s
*synth20
.	   4 Input      8 Bit         XORs := 13    
h p
x
� 
H
%s
*synth20
.	   3 Input      8 Bit         XORs := 2     
h p
x
� 
H
%s
*synth20
.	   5 Input      8 Bit         XORs := 2     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	              128 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               16 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 4     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 3     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input  128 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input   16 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   6 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   6 Input    3 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    2 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 13    
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 13    
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	   6 Input    1 Bit        Muxes := 5     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2
clk2
key_expansionZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
reset2
key_expansionZ8-7129h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
frame_ready_reg2
uart_frame_rxZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
wait_state_reg[2]2
uart_frame_txZ8-3332h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:01:13 ; elapsed = 00:01:16 . Memory (MB): peak = 1639.816 ; gain = 1050.746
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
;
%s*synth2#
!
ROM: Preliminary Mapping Report
h px� 
n
%s*synth2V
T+--------------+---------------------------------+---------------+----------------+
h px� 
o
%s*synth2W
U|Module Name   | RTL Object                      | Depth x Width | Implemented As | 
h px� 
n
%s*synth2V
T+--------------+---------------------------------+---------------+----------------+
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|key_expansion | (null)[1].(null)[0].sbox_lookup | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U|sub_bytes     | (null)[0].sbox_lookup           | 256x8         | LUT            | 
h px� 
o
%s*synth2W
U+--------------+---------------------------------+---------------+----------------+

h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:01:19 ; elapsed = 00:01:22 . Memory (MB): peak = 1639.816 ; gain = 1050.746
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
.
%s
*synth2
      : i_0/tx_busy
h p
x
� 
4
%s
*synth2
      : uart_tx_inst/busy
h p
x
� 
8
%s
*synth2 
      : uart_tx_inst/i_0/busy
h p
x
� 
9
%s
*synth2!
      : uart_tx_inst/i_0/start
h p
x
� 
5
%s
*synth2
      : uart_tx_inst/start
h p
x
� 
/
%s
*synth2
      : i_0/tx_start
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
~Finished Timing Optimization : Time (s): cpu = 00:01:32 ; elapsed = 00:01:35 . Memory (MB): peak = 1716.988 ; gain = 1127.918
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
-inferred exception to break timing loop: '%s'326*oasys2"
 set_false_path -through i_6277/OZ8-326h px� 
q
-inferred exception to break timing loop: '%s'326*oasys2"
 set_false_path -through i_6283/ZZ8-326h px� 
�
-inferred exception to break timing loop: '%s'326*oasys25
3set_false_path -through next_state_inferredi_6473/OZ8-326h px� 
-
%s
*synth2
Found timing loop:
h p
x
� 
2
%s
*synth2
     0: i_3733/O (LUT4)
h p
x
� 
h
%s
*synth2P
N      [F:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/aes_encryption.sv:48]
h p
x
� 
3
%s
*synth2
     1: i_3733/I1 (LUT4)
h p
x
� 
2
%s
*synth2
     2: i_3349/O (LUT2)
h p
x
� 
l
%s
*synth2T
R      [F:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/UART_TX_CMOD_A735T.sv:46]
h p
x
� 
3
%s
*synth2
     3: i_3349/I0 (LUT2)
h p
x
� 
2
%s
*synth2
     4: i_3733/O (LUT4)
h p
x
� 
h
%s
*synth2P
N      [F:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/aes_encryption.sv:48]
h p
x
� 
�
found timing loop.295*oasys2F
BF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/aes_encryption.sv2
488@Z8-295h px� 
Q
%s
*synth29
7Inferred a: "set_disable_timing -from I1 -to O i_3733"
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Technology Mapping : Time (s): cpu = 00:01:33 ; elapsed = 00:01:37 . Memory (MB): peak = 1718.016 ; gain = 1128.945
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2y
wFinished IO Insertion : Time (s): cpu = 00:01:37 ; elapsed = 00:01:41 . Memory (MB): peak = 1718.016 ; gain = 1128.945
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:01:38 ; elapsed = 00:01:41 . Memory (MB): peak = 1718.016 ; gain = 1128.945
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Found timing loop:
h p
x
� 
L
%s
*synth24
2     0: \FSM_sequential_state[1]_i_2__1 /O (LUT5)
h p
x
� 
h
%s
*synth2P
N      [F:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/aes_encryption.sv:48]
h p
x
� 
M
%s
*synth25
3     1: \FSM_sequential_state[1]_i_2__1 /I0 (LUT5)
h p
x
� 
L
%s
*synth24
2     2: \FSM_sequential_state[1]_i_2__1 /O (LUT5)
h p
x
� 
�
found timing loop.295*oasys2F
BF:/FPGA_Repos/aes_fsm/aes_fsm.srcs/sources_1/new/aes_encryption.sv2
488@Z8-295h px� 
k
%s
*synth2S
QInferred a: "set_disable_timing -from I0 -to O \FSM_sequential_state[1]_i_2__1 "
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:38 ; elapsed = 00:01:41 . Memory (MB): peak = 1718.016 ; gain = 1128.945
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:01:38 ; elapsed = 00:01:41 . Memory (MB): peak = 1718.016 ; gain = 1128.945
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:01:38 ; elapsed = 00:01:41 . Memory (MB): peak = 1718.016 ; gain = 1128.945
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:01:38 ; elapsed = 00:01:41 . Memory (MB): peak = 1718.016 ; gain = 1128.945
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |BUFG   |     3|
h px� 
2
%s*synth2
|2     |CARRY4 |    20|
h px� 
2
%s*synth2
|3     |LUT1   |     3|
h px� 
2
%s*synth2
|4     |LUT2   |   319|
h px� 
2
%s*synth2
|5     |LUT3   |   342|
h px� 
2
%s*synth2
|6     |LUT4   |   156|
h px� 
2
%s*synth2
|7     |LUT5   |   432|
h px� 
2
%s*synth2
|8     |LUT6   |  2825|
h px� 
2
%s*synth2
|9     |MUXF7  |   929|
h px� 
2
%s*synth2
|10    |MUXF8  |   390|
h px� 
2
%s*synth2
|11    |FDCE   |   360|
h px� 
2
%s*synth2
|12    |FDPE   |     3|
h px� 
2
%s*synth2
|13    |FDRE   |    16|
h px� 
2
%s*synth2
|14    |LD     |   266|
h px� 
2
%s*synth2
|15    |IBUF   |   131|
h px� 
2
%s*synth2
|16    |OBUF   |     1|
h px� 
2
%s*synth2
+------+-------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:01:38 ; elapsed = 00:01:41 . Memory (MB): peak = 1718.016 ; gain = 1128.945
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 2 critical warnings and 13 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:01:27 ; elapsed = 00:01:39 . Memory (MB): peak = 1718.016 ; gain = 1042.164
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:01:38 ; elapsed = 00:01:42 . Memory (MB): peak = 1718.016 ; gain = 1128.945
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:012
00:00:00.0832

1727.0512
0.000Z17-268h px� 
V
-Analyzing %s Unisim elements for replacement
17*netlist2
1605Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1730.7232
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2K
I  A total of 266 instances were transformed.
  LD => LDCE: 266 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

8da7d5cbZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
482
272
42
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:01:422

00:01:542

1730.7232

1327.836Z17-268h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0162

1730.7232
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2?
=F:/FPGA_Repos/aes_fsm/aes_fsm.runs/synth_1/aes_encryption.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2g
ereport_utilization -file aes_encryption_utilization_synth.rpt -pb aes_encryption_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Tue Mar 11 12:48:51 2025Z17-206h px� 


End Record