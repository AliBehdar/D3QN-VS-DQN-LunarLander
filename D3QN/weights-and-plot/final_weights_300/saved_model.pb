��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48�
�
network/dense_3/biasVarHandleOp*
_output_shapes
: *%

debug_namenetwork/dense_3/bias/*
dtype0*
shape:*%
shared_namenetwork/dense_3/bias
y
(network/dense_3/bias/Read/ReadVariableOpReadVariableOpnetwork/dense_3/bias*
_output_shapes
:*
dtype0
�
network/dense_3/kernelVarHandleOp*
_output_shapes
: *'

debug_namenetwork/dense_3/kernel/*
dtype0*
shape
:V*'
shared_namenetwork/dense_3/kernel
�
*network/dense_3/kernel/Read/ReadVariableOpReadVariableOpnetwork/dense_3/kernel*
_output_shapes

:V*
dtype0
�
network/dense_2/biasVarHandleOp*
_output_shapes
: *%

debug_namenetwork/dense_2/bias/*
dtype0*
shape:*%
shared_namenetwork/dense_2/bias
y
(network/dense_2/bias/Read/ReadVariableOpReadVariableOpnetwork/dense_2/bias*
_output_shapes
:*
dtype0
�
network/dense_2/kernelVarHandleOp*
_output_shapes
: *'

debug_namenetwork/dense_2/kernel/*
dtype0*
shape
:V*'
shared_namenetwork/dense_2/kernel
�
*network/dense_2/kernel/Read/ReadVariableOpReadVariableOpnetwork/dense_2/kernel*
_output_shapes

:V*
dtype0
�
network/dense_1/biasVarHandleOp*
_output_shapes
: *%

debug_namenetwork/dense_1/bias/*
dtype0*
shape:V*%
shared_namenetwork/dense_1/bias
y
(network/dense_1/bias/Read/ReadVariableOpReadVariableOpnetwork/dense_1/bias*
_output_shapes
:V*
dtype0
�
network/dense_1/kernelVarHandleOp*
_output_shapes
: *'

debug_namenetwork/dense_1/kernel/*
dtype0*
shape
:VV*'
shared_namenetwork/dense_1/kernel
�
*network/dense_1/kernel/Read/ReadVariableOpReadVariableOpnetwork/dense_1/kernel*
_output_shapes

:VV*
dtype0
�
network/dense/biasVarHandleOp*
_output_shapes
: *#

debug_namenetwork/dense/bias/*
dtype0*
shape:V*#
shared_namenetwork/dense/bias
u
&network/dense/bias/Read/ReadVariableOpReadVariableOpnetwork/dense/bias*
_output_shapes
:V*
dtype0
�
network/dense/kernelVarHandleOp*
_output_shapes
: *%

debug_namenetwork/dense/kernel/*
dtype0*
shape
:V*%
shared_namenetwork/dense/kernel
}
(network/dense/kernel/Read/ReadVariableOpReadVariableOpnetwork/dense/kernel*
_output_shapes

:V*
dtype0
z
serving_default_input_1Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1network/dense/kernelnetwork/dense/biasnetwork/dense_1/kernelnetwork/dense_1/biasnetwork/dense_2/kernelnetwork/dense_2/biasnetwork/dense_3/kernelnetwork/dense_3/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_signature_wrapper_82300440

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

layer1

	layer2
	
state

action

signatures*
<
0
1
2
3
4
5
6
7*
<
0
1
2
3
4
5
6
7*
* 
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

kernel
bias*
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

kernel
bias*
�
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

kernel
bias*
�
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses

kernel
bias*

4serving_default* 
TN
VARIABLE_VALUEnetwork/dense/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEnetwork/dense/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEnetwork/dense_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEnetwork/dense_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEnetwork/dense_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEnetwork/dense_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEnetwork/dense_3/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEnetwork/dense_3/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
	1

2
3*
* 
* 
* 
* 
* 

0
1*

0
1*
* 
�
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*

:trace_0* 

;trace_0* 

0
1*

0
1*
* 
�
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*

Atrace_0* 

Btrace_0* 

0
1*

0
1*
* 
�
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*

Htrace_0* 

Itrace_0* 

0
1*

0
1*
* 
�
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses*

Otrace_0* 

Ptrace_0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamenetwork/dense/kernelnetwork/dense/biasnetwork/dense_1/kernelnetwork/dense_1/biasnetwork/dense_2/kernelnetwork/dense_2/biasnetwork/dense_3/kernelnetwork/dense_3/biasConst*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_save_82300588
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamenetwork/dense/kernelnetwork/dense/biasnetwork/dense_1/kernelnetwork/dense_1/biasnetwork/dense_2/kernelnetwork/dense_2/biasnetwork/dense_3/kernelnetwork/dense_3/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference__traced_restore_82300621��
�*
�
$__inference__traced_restore_82300621
file_prefix7
%assignvariableop_network_dense_kernel:V3
%assignvariableop_1_network_dense_bias:V;
)assignvariableop_2_network_dense_1_kernel:VV5
'assignvariableop_3_network_dense_1_bias:V;
)assignvariableop_4_network_dense_2_kernel:V5
'assignvariableop_5_network_dense_2_bias:;
)assignvariableop_6_network_dense_3_kernel:V5
'assignvariableop_7_network_dense_3_bias:

identity_9��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*�
value�B�	B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp%assignvariableop_network_dense_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp%assignvariableop_1_network_dense_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp)assignvariableop_2_network_dense_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp'assignvariableop_3_network_dense_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp)assignvariableop_4_network_dense_2_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp'assignvariableop_5_network_dense_2_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp)assignvariableop_6_network_dense_3_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp'assignvariableop_7_network_dense_3_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �

Identity_8Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_9IdentityIdentity_8:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7*
_output_shapes
 "!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_7:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:40
.
_user_specified_namenetwork/dense/kernel:2.
,
_user_specified_namenetwork/dense/bias:62
0
_user_specified_namenetwork/dense_1/kernel:40
.
_user_specified_namenetwork/dense_1/bias:62
0
_user_specified_namenetwork/dense_2/kernel:40
.
_user_specified_namenetwork/dense_2/bias:62
0
_user_specified_namenetwork/dense_3/kernel:40
.
_user_specified_namenetwork/dense_3/bias
�	
�
E__inference_dense_3_layer_call_and_return_conditional_losses_82300350

inputs0
matmul_readvariableop_resource:V-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:V*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������V: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������V
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
E__inference_dense_2_layer_call_and_return_conditional_losses_82300335

inputs0
matmul_readvariableop_resource:V-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:V*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������V: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������V
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
*__inference_dense_2_layer_call_fn_82300489

inputs
unknown:V
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_2_layer_call_and_return_conditional_losses_82300335o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������V: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������V
 
_user_specified_nameinputs:($
"
_user_specified_name
82300483:($
"
_user_specified_name
82300485
�
�
E__inference_network_layer_call_and_return_conditional_losses_82300361
input_1 
dense_82300305:V
dense_82300307:V"
dense_1_82300321:VV
dense_1_82300323:V"
dense_2_82300336:V
dense_2_82300338:"
dense_3_82300351:V
dense_3_82300353:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_82300305dense_82300307*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������V*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_82300304�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_82300321dense_1_82300323*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������V*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_82300320�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_82300336dense_2_82300338*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_2_layer_call_and_return_conditional_losses_82300335�
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_3_82300351dense_3_82300353*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_3_layer_call_and_return_conditional_losses_82300350V
ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
MeanMean(dense_3/StatefulPartitionedCall:output:0Const:output:0*
T0*
_output_shapes

:*
	keep_dims(u
subSub(dense_3/StatefulPartitionedCall:output:0Mean:output:0*
T0*'
_output_shapes
:���������q
addAddV2(dense_2/StatefulPartitionedCall:output:0sub:z:0*
T0*'
_output_shapes
:���������V
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:($
"
_user_specified_name
82300305:($
"
_user_specified_name
82300307:($
"
_user_specified_name
82300321:($
"
_user_specified_name
82300323:($
"
_user_specified_name
82300336:($
"
_user_specified_name
82300338:($
"
_user_specified_name
82300351:($
"
_user_specified_name
82300353
�

�
E__inference_dense_1_layer_call_and_return_conditional_losses_82300480

inputs0
matmul_readvariableop_resource:VV-
biasadd_readvariableop_resource:V
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:VV*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Vr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:V*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������VP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������Va
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������VS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������V: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������V
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
E__inference_dense_1_layer_call_and_return_conditional_losses_82300320

inputs0
matmul_readvariableop_resource:VV-
biasadd_readvariableop_resource:V
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:VV*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Vr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:V*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������VP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������Va
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������VS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������V: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������V
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
*__inference_network_layer_call_fn_82300382
input_1
unknown:V
	unknown_0:V
	unknown_1:VV
	unknown_2:V
	unknown_3:V
	unknown_4:
	unknown_5:V
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_network_layer_call_and_return_conditional_losses_82300361o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:($
"
_user_specified_name
82300364:($
"
_user_specified_name
82300366:($
"
_user_specified_name
82300368:($
"
_user_specified_name
82300370:($
"
_user_specified_name
82300372:($
"
_user_specified_name
82300374:($
"
_user_specified_name
82300376:($
"
_user_specified_name
82300378
�

�
C__inference_dense_layer_call_and_return_conditional_losses_82300460

inputs0
matmul_readvariableop_resource:V-
biasadd_readvariableop_resource:V
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:V*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Vr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:V*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������VP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������Va
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������VS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
*__inference_dense_3_layer_call_fn_82300508

inputs
unknown:V
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_3_layer_call_and_return_conditional_losses_82300350o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������V: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������V
 
_user_specified_nameinputs:($
"
_user_specified_name
82300502:($
"
_user_specified_name
82300504
�,
�
#__inference__wrapped_model_82300291
input_1>
,network_dense_matmul_readvariableop_resource:V;
-network_dense_biasadd_readvariableop_resource:V@
.network_dense_1_matmul_readvariableop_resource:VV=
/network_dense_1_biasadd_readvariableop_resource:V@
.network_dense_2_matmul_readvariableop_resource:V=
/network_dense_2_biasadd_readvariableop_resource:@
.network_dense_3_matmul_readvariableop_resource:V=
/network_dense_3_biasadd_readvariableop_resource:
identity��$network/dense/BiasAdd/ReadVariableOp�#network/dense/MatMul/ReadVariableOp�&network/dense_1/BiasAdd/ReadVariableOp�%network/dense_1/MatMul/ReadVariableOp�&network/dense_2/BiasAdd/ReadVariableOp�%network/dense_2/MatMul/ReadVariableOp�&network/dense_3/BiasAdd/ReadVariableOp�%network/dense_3/MatMul/ReadVariableOp�
#network/dense/MatMul/ReadVariableOpReadVariableOp,network_dense_matmul_readvariableop_resource*
_output_shapes

:V*
dtype0�
network/dense/MatMulMatMulinput_1+network/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V�
$network/dense/BiasAdd/ReadVariableOpReadVariableOp-network_dense_biasadd_readvariableop_resource*
_output_shapes
:V*
dtype0�
network/dense/BiasAddBiasAddnetwork/dense/MatMul:product:0,network/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Vl
network/dense/ReluRelunetwork/dense/BiasAdd:output:0*
T0*'
_output_shapes
:���������V�
%network/dense_1/MatMul/ReadVariableOpReadVariableOp.network_dense_1_matmul_readvariableop_resource*
_output_shapes

:VV*
dtype0�
network/dense_1/MatMulMatMul network/dense/Relu:activations:0-network/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V�
&network/dense_1/BiasAdd/ReadVariableOpReadVariableOp/network_dense_1_biasadd_readvariableop_resource*
_output_shapes
:V*
dtype0�
network/dense_1/BiasAddBiasAdd network/dense_1/MatMul:product:0.network/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Vp
network/dense_1/ReluRelu network/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������V�
%network/dense_2/MatMul/ReadVariableOpReadVariableOp.network_dense_2_matmul_readvariableop_resource*
_output_shapes

:V*
dtype0�
network/dense_2/MatMulMatMul"network/dense_1/Relu:activations:0-network/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
&network/dense_2/BiasAdd/ReadVariableOpReadVariableOp/network_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
network/dense_2/BiasAddBiasAdd network/dense_2/MatMul:product:0.network/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
%network/dense_3/MatMul/ReadVariableOpReadVariableOp.network_dense_3_matmul_readvariableop_resource*
_output_shapes

:V*
dtype0�
network/dense_3/MatMulMatMul"network/dense_1/Relu:activations:0-network/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
&network/dense_3/BiasAdd/ReadVariableOpReadVariableOp/network_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
network/dense_3/BiasAddBiasAdd network/dense_3/MatMul:product:0.network/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������^
network/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
network/MeanMean network/dense_3/BiasAdd:output:0network/Const:output:0*
T0*
_output_shapes

:*
	keep_dims(}
network/subSub network/dense_3/BiasAdd:output:0network/Mean:output:0*
T0*'
_output_shapes
:���������y
network/addAddV2 network/dense_2/BiasAdd:output:0network/sub:z:0*
T0*'
_output_shapes
:���������^
IdentityIdentitynetwork/add:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp%^network/dense/BiasAdd/ReadVariableOp$^network/dense/MatMul/ReadVariableOp'^network/dense_1/BiasAdd/ReadVariableOp&^network/dense_1/MatMul/ReadVariableOp'^network/dense_2/BiasAdd/ReadVariableOp&^network/dense_2/MatMul/ReadVariableOp'^network/dense_3/BiasAdd/ReadVariableOp&^network/dense_3/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 2L
$network/dense/BiasAdd/ReadVariableOp$network/dense/BiasAdd/ReadVariableOp2J
#network/dense/MatMul/ReadVariableOp#network/dense/MatMul/ReadVariableOp2P
&network/dense_1/BiasAdd/ReadVariableOp&network/dense_1/BiasAdd/ReadVariableOp2N
%network/dense_1/MatMul/ReadVariableOp%network/dense_1/MatMul/ReadVariableOp2P
&network/dense_2/BiasAdd/ReadVariableOp&network/dense_2/BiasAdd/ReadVariableOp2N
%network/dense_2/MatMul/ReadVariableOp%network/dense_2/MatMul/ReadVariableOp2P
&network/dense_3/BiasAdd/ReadVariableOp&network/dense_3/BiasAdd/ReadVariableOp2N
%network/dense_3/MatMul/ReadVariableOp%network/dense_3/MatMul/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
*__inference_dense_1_layer_call_fn_82300469

inputs
unknown:VV
	unknown_0:V
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������V*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_82300320o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������V<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������V: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������V
 
_user_specified_nameinputs:($
"
_user_specified_name
82300463:($
"
_user_specified_name
82300465
�

�
C__inference_dense_layer_call_and_return_conditional_losses_82300304

inputs0
matmul_readvariableop_resource:V-
biasadd_readvariableop_resource:V
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:V*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Vr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:V*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������VP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������Va
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������VS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
&__inference_signature_wrapper_82300440
input_1
unknown:V
	unknown_0:V
	unknown_1:VV
	unknown_2:V
	unknown_3:V
	unknown_4:
	unknown_5:V
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference__wrapped_model_82300291o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:($
"
_user_specified_name
82300422:($
"
_user_specified_name
82300424:($
"
_user_specified_name
82300426:($
"
_user_specified_name
82300428:($
"
_user_specified_name
82300430:($
"
_user_specified_name
82300432:($
"
_user_specified_name
82300434:($
"
_user_specified_name
82300436
�	
�
E__inference_dense_3_layer_call_and_return_conditional_losses_82300518

inputs0
matmul_readvariableop_resource:V-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:V*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������V: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������V
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
(__inference_dense_layer_call_fn_82300449

inputs
unknown:V
	unknown_0:V
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������V*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_82300304o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������V<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
82300443:($
"
_user_specified_name
82300445
�	
�
E__inference_dense_2_layer_call_and_return_conditional_losses_82300499

inputs0
matmul_readvariableop_resource:V-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:V*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������V: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������V
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�J
�
!__inference__traced_save_82300588
file_prefix=
+read_disablecopyonread_network_dense_kernel:V9
+read_1_disablecopyonread_network_dense_bias:VA
/read_2_disablecopyonread_network_dense_1_kernel:VV;
-read_3_disablecopyonread_network_dense_1_bias:VA
/read_4_disablecopyonread_network_dense_2_kernel:V;
-read_5_disablecopyonread_network_dense_2_bias:A
/read_6_disablecopyonread_network_dense_3_kernel:V;
-read_7_disablecopyonread_network_dense_3_bias:
savev2_const
identity_17��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: }
Read/DisableCopyOnReadDisableCopyOnRead+read_disablecopyonread_network_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp+read_disablecopyonread_network_dense_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:V*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:Va

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:V
Read_1/DisableCopyOnReadDisableCopyOnRead+read_1_disablecopyonread_network_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp+read_1_disablecopyonread_network_dense_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:V*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:V_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:V�
Read_2/DisableCopyOnReadDisableCopyOnRead/read_2_disablecopyonread_network_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp/read_2_disablecopyonread_network_dense_1_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:VV*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:VVc

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:VV�
Read_3/DisableCopyOnReadDisableCopyOnRead-read_3_disablecopyonread_network_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp-read_3_disablecopyonread_network_dense_1_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:V*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:V_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:V�
Read_4/DisableCopyOnReadDisableCopyOnRead/read_4_disablecopyonread_network_dense_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp/read_4_disablecopyonread_network_dense_2_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:V*
dtype0m

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:Vc

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:V�
Read_5/DisableCopyOnReadDisableCopyOnRead-read_5_disablecopyonread_network_dense_2_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp-read_5_disablecopyonread_network_dense_2_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_6/DisableCopyOnReadDisableCopyOnRead/read_6_disablecopyonread_network_dense_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp/read_6_disablecopyonread_network_dense_3_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:V*
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:Ve
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:V�
Read_7/DisableCopyOnReadDisableCopyOnRead-read_7_disablecopyonread_network_dense_3_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp-read_7_disablecopyonread_network_dense_3_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*�
value�B�	B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_16Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_17IdentityIdentity_16:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp*
_output_shapes
 "#
identity_17Identity_17:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
: : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:40
.
_user_specified_namenetwork/dense/kernel:2.
,
_user_specified_namenetwork/dense/bias:62
0
_user_specified_namenetwork/dense_1/kernel:40
.
_user_specified_namenetwork/dense_1/bias:62
0
_user_specified_namenetwork/dense_2/kernel:40
.
_user_specified_namenetwork/dense_2/bias:62
0
_user_specified_namenetwork/dense_3/kernel:40
.
_user_specified_namenetwork/dense_3/bias:=	9

_output_shapes
: 

_user_specified_nameConst"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
;
input_10
serving_default_input_1:0���������<
output_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:�Z
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

layer1

	layer2
	
state

action

signatures"
_tf_keras_model
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
trace_02�
*__inference_network_layer_call_fn_82300382�
���
FullArgSpec
args�	
jstate
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0
�
trace_02�
E__inference_network_layer_call_and_return_conditional_losses_82300361�
���
FullArgSpec
args�	
jstate
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0
�B�
#__inference__wrapped_model_82300291input_1"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
,
4serving_default"
signature_map
&:$V2network/dense/kernel
 :V2network/dense/bias
(:&VV2network/dense_1/kernel
": V2network/dense_1/bias
(:&V2network/dense_2/kernel
": 2network/dense_2/bias
(:&V2network/dense_3/kernel
": 2network/dense_3/bias
 "
trackable_list_wrapper
<
0
	1

2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_network_layer_call_fn_82300382input_1"�
���
FullArgSpec
args�	
jstate
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_network_layer_call_and_return_conditional_losses_82300361input_1"�
���
FullArgSpec
args�	
jstate
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
�
:trace_02�
(__inference_dense_layer_call_fn_82300449�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z:trace_0
�
;trace_02�
C__inference_dense_layer_call_and_return_conditional_losses_82300460�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z;trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
�
Atrace_02�
*__inference_dense_1_layer_call_fn_82300469�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zAtrace_0
�
Btrace_02�
E__inference_dense_1_layer_call_and_return_conditional_losses_82300480�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zBtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
�
Htrace_02�
*__inference_dense_2_layer_call_fn_82300489�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zHtrace_0
�
Itrace_02�
E__inference_dense_2_layer_call_and_return_conditional_losses_82300499�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zItrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
�
Otrace_02�
*__inference_dense_3_layer_call_fn_82300508�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zOtrace_0
�
Ptrace_02�
E__inference_dense_3_layer_call_and_return_conditional_losses_82300518�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zPtrace_0
�B�
&__inference_signature_wrapper_82300440input_1"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs�
	jinput_1
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_dense_layer_call_fn_82300449inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_layer_call_and_return_conditional_losses_82300460inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_1_layer_call_fn_82300469inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_1_layer_call_and_return_conditional_losses_82300480inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_2_layer_call_fn_82300489inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_2_layer_call_and_return_conditional_losses_82300499inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_3_layer_call_fn_82300508inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_3_layer_call_and_return_conditional_losses_82300518inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
#__inference__wrapped_model_82300291q0�-
&�#
!�
input_1���������
� "3�0
.
output_1"�
output_1����������
E__inference_dense_1_layer_call_and_return_conditional_losses_82300480c/�,
%�"
 �
inputs���������V
� ",�)
"�
tensor_0���������V
� �
*__inference_dense_1_layer_call_fn_82300469X/�,
%�"
 �
inputs���������V
� "!�
unknown���������V�
E__inference_dense_2_layer_call_and_return_conditional_losses_82300499c/�,
%�"
 �
inputs���������V
� ",�)
"�
tensor_0���������
� �
*__inference_dense_2_layer_call_fn_82300489X/�,
%�"
 �
inputs���������V
� "!�
unknown����������
E__inference_dense_3_layer_call_and_return_conditional_losses_82300518c/�,
%�"
 �
inputs���������V
� ",�)
"�
tensor_0���������
� �
*__inference_dense_3_layer_call_fn_82300508X/�,
%�"
 �
inputs���������V
� "!�
unknown����������
C__inference_dense_layer_call_and_return_conditional_losses_82300460c/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������V
� �
(__inference_dense_layer_call_fn_82300449X/�,
%�"
 �
inputs���������
� "!�
unknown���������V�
E__inference_network_layer_call_and_return_conditional_losses_82300361j0�-
&�#
!�
input_1���������
� ",�)
"�
tensor_0���������
� �
*__inference_network_layer_call_fn_82300382_0�-
&�#
!�
input_1���������
� "!�
unknown����������
&__inference_signature_wrapper_82300440|;�8
� 
1�.
,
input_1!�
input_1���������"3�0
.
output_1"�
output_1���������