??	
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
9
	IdentityN

input2T
output2T"
T
list(type)(0
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-0-g919f693420e8??
?
conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_8/kernel
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
:*
dtype0
r
conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_8/bias
k
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
:*
dtype0
?
conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_9/kernel
{
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*&
_output_shapes
:*
dtype0
r
conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_9/bias
k
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes
:*
dtype0
|
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??x* 
shared_namedense_12/kernel
u
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel* 
_output_shapes
:
??x*
dtype0
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
:x*
dtype0
z
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:xT* 
shared_namedense_13/kernel
s
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel*
_output_shapes

:xT*
dtype0
r
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*
shared_namedense_13/bias
k
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes
:T*
dtype0
z
dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:T* 
shared_namedense_14/kernel
s
#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel*
_output_shapes

:T*
dtype0
r
dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_14/bias
k
!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
_output_shapes
:*
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
RMSprop/conv2d_8/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameRMSprop/conv2d_8/kernel/rms
?
/RMSprop/conv2d_8/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_8/kernel/rms*&
_output_shapes
:*
dtype0
?
RMSprop/conv2d_8/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameRMSprop/conv2d_8/bias/rms
?
-RMSprop/conv2d_8/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_8/bias/rms*
_output_shapes
:*
dtype0
?
RMSprop/conv2d_9/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameRMSprop/conv2d_9/kernel/rms
?
/RMSprop/conv2d_9/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_9/kernel/rms*&
_output_shapes
:*
dtype0
?
RMSprop/conv2d_9/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameRMSprop/conv2d_9/bias/rms
?
-RMSprop/conv2d_9/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_9/bias/rms*
_output_shapes
:*
dtype0
?
RMSprop/dense_12/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??x*,
shared_nameRMSprop/dense_12/kernel/rms
?
/RMSprop/dense_12/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_12/kernel/rms* 
_output_shapes
:
??x*
dtype0
?
RMSprop/dense_12/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:x**
shared_nameRMSprop/dense_12/bias/rms
?
-RMSprop/dense_12/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_12/bias/rms*
_output_shapes
:x*
dtype0
?
RMSprop/dense_13/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:xT*,
shared_nameRMSprop/dense_13/kernel/rms
?
/RMSprop/dense_13/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_13/kernel/rms*
_output_shapes

:xT*
dtype0
?
RMSprop/dense_13/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:T**
shared_nameRMSprop/dense_13/bias/rms
?
-RMSprop/dense_13/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_13/bias/rms*
_output_shapes
:T*
dtype0
?
RMSprop/dense_14/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:T*,
shared_nameRMSprop/dense_14/kernel/rms
?
/RMSprop/dense_14/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_14/kernel/rms*
_output_shapes

:T*
dtype0
?
RMSprop/dense_14/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameRMSprop/dense_14/bias/rms
?
-RMSprop/dense_14/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_14/bias/rms*
_output_shapes
:*
dtype0

NoOpNoOp
?4
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?3
value?3B?3 B?3
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures

_init_input_shape
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
R
!	variables
"trainable_variables
#regularization_losses
$	keras_api
R
%	variables
&trainable_variables
'regularization_losses
(	keras_api
h

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
h

/kernel
0bias
1	variables
2trainable_variables
3regularization_losses
4	keras_api
h

5kernel
6bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
?
;iter
	<decay
=learning_rate
>momentum
?rho	rmsx	rmsy	rmsz	rms{	)rms|	*rms}	/rms~	0rms
5rms?
6rms?
F
0
1
2
3
)4
*5
/6
07
58
69
F
0
1
2
3
)4
*5
/6
07
58
69
 
?
@metrics
	variables
Anon_trainable_variables
trainable_variables
Blayer_metrics

Clayers
regularization_losses
Dlayer_regularization_losses
 
 
[Y
VARIABLE_VALUEconv2d_8/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_8/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Emetrics
	variables
Fnon_trainable_variables
trainable_variables
Glayer_metrics

Hlayers
regularization_losses
Ilayer_regularization_losses
 
 
 
?
Jmetrics
	variables
Knon_trainable_variables
trainable_variables
Llayer_metrics

Mlayers
regularization_losses
Nlayer_regularization_losses
[Y
VARIABLE_VALUEconv2d_9/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_9/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Ometrics
	variables
Pnon_trainable_variables
trainable_variables
Qlayer_metrics

Rlayers
regularization_losses
Slayer_regularization_losses
 
 
 
?
Tmetrics
!	variables
Unon_trainable_variables
"trainable_variables
Vlayer_metrics

Wlayers
#regularization_losses
Xlayer_regularization_losses
 
 
 
?
Ymetrics
%	variables
Znon_trainable_variables
&trainable_variables
[layer_metrics

\layers
'regularization_losses
]layer_regularization_losses
[Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_12/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

)0
*1

)0
*1
 
?
^metrics
+	variables
_non_trainable_variables
,trainable_variables
`layer_metrics

alayers
-regularization_losses
blayer_regularization_losses
[Y
VARIABLE_VALUEdense_13/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_13/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

/0
01

/0
01
 
?
cmetrics
1	variables
dnon_trainable_variables
2trainable_variables
elayer_metrics

flayers
3regularization_losses
glayer_regularization_losses
[Y
VARIABLE_VALUEdense_14/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_14/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

50
61

50
61
 
?
hmetrics
7	variables
inon_trainable_variables
8trainable_variables
jlayer_metrics

klayers
9regularization_losses
llayer_regularization_losses
KI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE

m0
n1
 
 
?
0
1
2
3
4
5
6
7
	8
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	ototal
	pcount
q	variables
r	keras_api
D
	stotal
	tcount
u
_fn_kwargs
v	variables
w	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

o0
p1

q	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

s0
t1

v	variables
??
VARIABLE_VALUERMSprop/conv2d_8/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUERMSprop/conv2d_8/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_9/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUERMSprop/conv2d_9/bias/rmsRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_12/kernel/rmsTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUERMSprop/dense_12/bias/rmsRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_13/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUERMSprop/dense_13/bias/rmsRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_14/kernel/rmsTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUERMSprop/dense_14/bias/rmsRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_5Placeholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_5conv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/biasdense_14/kerneldense_14/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference_signature_wrapper_4318
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_8/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOp#conv2d_9/kernel/Read/ReadVariableOp!conv2d_9/bias/Read/ReadVariableOp#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOp#dense_13/kernel/Read/ReadVariableOp!dense_13/bias/Read/ReadVariableOp#dense_14/kernel/Read/ReadVariableOp!dense_14/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp/RMSprop/conv2d_8/kernel/rms/Read/ReadVariableOp-RMSprop/conv2d_8/bias/rms/Read/ReadVariableOp/RMSprop/conv2d_9/kernel/rms/Read/ReadVariableOp-RMSprop/conv2d_9/bias/rms/Read/ReadVariableOp/RMSprop/dense_12/kernel/rms/Read/ReadVariableOp-RMSprop/dense_12/bias/rms/Read/ReadVariableOp/RMSprop/dense_13/kernel/rms/Read/ReadVariableOp-RMSprop/dense_13/bias/rms/Read/ReadVariableOp/RMSprop/dense_14/kernel/rms/Read/ReadVariableOp-RMSprop/dense_14/bias/rms/Read/ReadVariableOpConst**
Tin#
!2	*
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
GPU 2J 8? *&
f!R
__inference__traced_save_4775
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/biasdense_14/kerneldense_14/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhototalcounttotal_1count_1RMSprop/conv2d_8/kernel/rmsRMSprop/conv2d_8/bias/rmsRMSprop/conv2d_9/kernel/rmsRMSprop/conv2d_9/bias/rmsRMSprop/dense_12/kernel/rmsRMSprop/dense_12/bias/rmsRMSprop/dense_13/kernel/rmsRMSprop/dense_13/bias/rmsRMSprop/dense_14/kernel/rmsRMSprop/dense_14/bias/rms*)
Tin"
 2*
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
GPU 2J 8? *)
f$R"
 __inference__traced_restore_4872??
?
?
B__inference_dense_12_layer_call_and_return_conditional_losses_3979

inputs2
matmul_readvariableop_resource:
??x-
biasadd_readvariableop_resource:x

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??x*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????x2	
Sigmoidb
mulMulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????x2
mul[
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:?????????x2

Identity?
	IdentityN	IdentityNmul:z:0BiasAdd:output:0*
T
2**
_gradient_op_typeCustomGradient-3972*:
_output_shapes(
&:?????????x:?????????x2
	IdentityNq

Identity_1IdentityIdentityN:output:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identity_1
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
B__inference_dense_13_layer_call_and_return_conditional_losses_4001

inputs0
matmul_readvariableop_resource:xT-
biasadd_readvariableop_resource:T

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:xT*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:T*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????T2	
Sigmoidb
mulMulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????T2
mul[
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:?????????T2

Identity?
	IdentityN	IdentityNmul:z:0BiasAdd:output:0*
T
2**
_gradient_op_typeCustomGradient-3994*:
_output_shapes(
&:?????????T:?????????T2
	IdentityNq

Identity_1IdentityIdentityN:output:0^NoOp*
T0*'
_output_shapes
:?????????T2

Identity_1
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????x: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
?
B__inference_conv2d_9_layer_call_and_return_conditional_losses_4555

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:

identity_1??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????||*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????||2	
BiasAddi
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:?????????||2	
Sigmoidj
mulMulBiasAdd:output:0Sigmoid:y:0*
T0*/
_output_shapes
:?????????||2
mulc
IdentityIdentitymul:z:0*
T0*/
_output_shapes
:?????????||2

Identity?
	IdentityN	IdentityNmul:z:0BiasAdd:output:0*
T
2**
_gradient_op_typeCustomGradient-4548*J
_output_shapes8
6:?????????||:?????????||2
	IdentityNy

Identity_1IdentityIdentityN:output:0^NoOp*
T0*/
_output_shapes
:?????????||2

Identity_1
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
B__inference_dense_13_layer_call_and_return_conditional_losses_4636

inputs0
matmul_readvariableop_resource:xT-
biasadd_readvariableop_resource:T

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:xT*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:T*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????T2	
Sigmoidb
mulMulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????T2
mul[
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:?????????T2

Identity?
	IdentityN	IdentityNmul:z:0BiasAdd:output:0*
T
2**
_gradient_op_typeCustomGradient-4629*:
_output_shapes(
&:?????????T:?????????T2
	IdentityNq

Identity_1IdentityIdentityN:output:0^NoOp*
T0*'
_output_shapes
:?????????T2

Identity_1
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????x: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?&
?
A__inference_model_4_layer_call_and_return_conditional_losses_4173

inputs'
conv2d_8_4144:
conv2d_8_4146:'
conv2d_9_4150:
conv2d_9_4152:!
dense_12_4157:
??x
dense_12_4159:x
dense_13_4162:xT
dense_13_4164:T
dense_14_4167:T
dense_14_4169:
identity?? conv2d_8/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall? dense_12/StatefulPartitionedCall? dense_13/StatefulPartitionedCall? dense_14/StatefulPartitionedCall?
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_8_4144conv2d_8_4146*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_8_layer_call_and_return_conditional_losses_39152"
 conv2d_8/StatefulPartitionedCall?
max_pooling2d_8/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_39252!
max_pooling2d_8/PartitionedCall?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_9_4150conv2d_9_4152*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????||*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_9_layer_call_and_return_conditional_losses_39432"
 conv2d_9/StatefulPartitionedCall?
max_pooling2d_9/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_39532!
max_pooling2d_9/PartitionedCall?
flatten_4/PartitionedCallPartitionedCall(max_pooling2d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_flatten_4_layer_call_and_return_conditional_losses_39612
flatten_4/PartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_12_4157dense_12_4159*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_12_layer_call_and_return_conditional_losses_39792"
 dense_12/StatefulPartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_4162dense_13_4164*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_13_layer_call_and_return_conditional_losses_40012"
 dense_13/StatefulPartitionedCall?
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_4167dense_14_4169*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_14_layer_call_and_return_conditional_losses_40182"
 dense_14/StatefulPartitionedCall?
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
e
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_3953

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????>>*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????>>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????||:W S
/
_output_shapes
:?????????||
 
_user_specified_nameinputs
?H
?
A__inference_model_4_layer_call_and_return_conditional_losses_4444

inputsA
'conv2d_8_conv2d_readvariableop_resource:6
(conv2d_8_biasadd_readvariableop_resource:A
'conv2d_9_conv2d_readvariableop_resource:6
(conv2d_9_biasadd_readvariableop_resource:;
'dense_12_matmul_readvariableop_resource:
??x6
(dense_12_biasadd_readvariableop_resource:x9
'dense_13_matmul_readvariableop_resource:xT6
(dense_13_biasadd_readvariableop_resource:T9
'dense_14_matmul_readvariableop_resource:T6
(dense_14_biasadd_readvariableop_resource:
identity??conv2d_8/BiasAdd/ReadVariableOp?conv2d_8/Conv2D/ReadVariableOp?conv2d_9/BiasAdd/ReadVariableOp?conv2d_9/Conv2D/ReadVariableOp?dense_12/BiasAdd/ReadVariableOp?dense_12/MatMul/ReadVariableOp?dense_13/BiasAdd/ReadVariableOp?dense_13/MatMul/ReadVariableOp?dense_14/BiasAdd/ReadVariableOp?dense_14/MatMul/ReadVariableOp?
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_8/Conv2D/ReadVariableOp?
conv2d_8/Conv2DConv2Dinputs&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
conv2d_8/Conv2D?
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_8/BiasAdd/ReadVariableOp?
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv2d_8/BiasAdd?
conv2d_8/SigmoidSigmoidconv2d_8/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
conv2d_8/Sigmoid?
conv2d_8/mulMulconv2d_8/BiasAdd:output:0conv2d_8/Sigmoid:y:0*
T0*1
_output_shapes
:???????????2
conv2d_8/mul?
conv2d_8/IdentityIdentityconv2d_8/mul:z:0*
T0*1
_output_shapes
:???????????2
conv2d_8/Identity?
conv2d_8/IdentityN	IdentityNconv2d_8/mul:z:0conv2d_8/BiasAdd:output:0*
T
2**
_gradient_op_typeCustomGradient-4390*N
_output_shapes<
::???????????:???????????2
conv2d_8/IdentityN?
max_pooling2d_8/MaxPoolMaxPoolconv2d_8/IdentityN:output:0*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_8/MaxPool?
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_9/Conv2D/ReadVariableOp?
conv2d_9/Conv2DConv2D max_pooling2d_8/MaxPool:output:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????||*
paddingVALID*
strides
2
conv2d_9/Conv2D?
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_9/BiasAdd/ReadVariableOp?
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????||2
conv2d_9/BiasAdd?
conv2d_9/SigmoidSigmoidconv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:?????????||2
conv2d_9/Sigmoid?
conv2d_9/mulMulconv2d_9/BiasAdd:output:0conv2d_9/Sigmoid:y:0*
T0*/
_output_shapes
:?????????||2
conv2d_9/mul~
conv2d_9/IdentityIdentityconv2d_9/mul:z:0*
T0*/
_output_shapes
:?????????||2
conv2d_9/Identity?
conv2d_9/IdentityN	IdentityNconv2d_9/mul:z:0conv2d_9/BiasAdd:output:0*
T
2**
_gradient_op_typeCustomGradient-4403*J
_output_shapes8
6:?????????||:?????????||2
conv2d_9/IdentityN?
max_pooling2d_9/MaxPoolMaxPoolconv2d_9/IdentityN:output:0*/
_output_shapes
:?????????>>*
ksize
*
paddingVALID*
strides
2
max_pooling2d_9/MaxPools
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@?  2
flatten_4/Const?
flatten_4/ReshapeReshape max_pooling2d_9/MaxPool:output:0flatten_4/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten_4/Reshape?
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource* 
_output_shapes
:
??x*
dtype02 
dense_12/MatMul/ReadVariableOp?
dense_12/MatMulMatMulflatten_4/Reshape:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_12/MatMul?
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02!
dense_12/BiasAdd/ReadVariableOp?
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_12/BiasAdd|
dense_12/SigmoidSigmoiddense_12/BiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
dense_12/Sigmoid?
dense_12/mulMuldense_12/BiasAdd:output:0dense_12/Sigmoid:y:0*
T0*'
_output_shapes
:?????????x2
dense_12/mulv
dense_12/IdentityIdentitydense_12/mul:z:0*
T0*'
_output_shapes
:?????????x2
dense_12/Identity?
dense_12/IdentityN	IdentityNdense_12/mul:z:0dense_12/BiasAdd:output:0*
T
2**
_gradient_op_typeCustomGradient-4418*:
_output_shapes(
&:?????????x:?????????x2
dense_12/IdentityN?
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

:xT*
dtype02 
dense_13/MatMul/ReadVariableOp?
dense_13/MatMulMatMuldense_12/IdentityN:output:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
dense_13/MatMul?
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype02!
dense_13/BiasAdd/ReadVariableOp?
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
dense_13/BiasAdd|
dense_13/SigmoidSigmoiddense_13/BiasAdd:output:0*
T0*'
_output_shapes
:?????????T2
dense_13/Sigmoid?
dense_13/mulMuldense_13/BiasAdd:output:0dense_13/Sigmoid:y:0*
T0*'
_output_shapes
:?????????T2
dense_13/mulv
dense_13/IdentityIdentitydense_13/mul:z:0*
T0*'
_output_shapes
:?????????T2
dense_13/Identity?
dense_13/IdentityN	IdentityNdense_13/mul:z:0dense_13/BiasAdd:output:0*
T
2**
_gradient_op_typeCustomGradient-4430*:
_output_shapes(
&:?????????T:?????????T2
dense_13/IdentityN?
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

:T*
dtype02 
dense_14/MatMul/ReadVariableOp?
dense_14/MatMulMatMuldense_13/IdentityN:output:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_14/MatMul?
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_14/BiasAdd/ReadVariableOp?
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_14/BiasAdd|
dense_14/SoftmaxSoftmaxdense_14/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_14/Softmaxu
IdentityIdentitydense_14/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
&__inference_model_4_layer_call_fn_4048
input_5!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
??x
	unknown_4:x
	unknown_5:xT
	unknown_6:T
	unknown_7:T
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_4_layer_call_and_return_conditional_losses_40252
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_5
?T
?
__inference__wrapped_model_3848
input_5I
/model_4_conv2d_8_conv2d_readvariableop_resource:>
0model_4_conv2d_8_biasadd_readvariableop_resource:I
/model_4_conv2d_9_conv2d_readvariableop_resource:>
0model_4_conv2d_9_biasadd_readvariableop_resource:C
/model_4_dense_12_matmul_readvariableop_resource:
??x>
0model_4_dense_12_biasadd_readvariableop_resource:xA
/model_4_dense_13_matmul_readvariableop_resource:xT>
0model_4_dense_13_biasadd_readvariableop_resource:TA
/model_4_dense_14_matmul_readvariableop_resource:T>
0model_4_dense_14_biasadd_readvariableop_resource:
identity??'model_4/conv2d_8/BiasAdd/ReadVariableOp?&model_4/conv2d_8/Conv2D/ReadVariableOp?'model_4/conv2d_9/BiasAdd/ReadVariableOp?&model_4/conv2d_9/Conv2D/ReadVariableOp?'model_4/dense_12/BiasAdd/ReadVariableOp?&model_4/dense_12/MatMul/ReadVariableOp?'model_4/dense_13/BiasAdd/ReadVariableOp?&model_4/dense_13/MatMul/ReadVariableOp?'model_4/dense_14/BiasAdd/ReadVariableOp?&model_4/dense_14/MatMul/ReadVariableOp?
&model_4/conv2d_8/Conv2D/ReadVariableOpReadVariableOp/model_4_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02(
&model_4/conv2d_8/Conv2D/ReadVariableOp?
model_4/conv2d_8/Conv2DConv2Dinput_5.model_4/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
model_4/conv2d_8/Conv2D?
'model_4/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp0model_4_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_4/conv2d_8/BiasAdd/ReadVariableOp?
model_4/conv2d_8/BiasAddBiasAdd model_4/conv2d_8/Conv2D:output:0/model_4/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
model_4/conv2d_8/BiasAdd?
model_4/conv2d_8/SigmoidSigmoid!model_4/conv2d_8/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
model_4/conv2d_8/Sigmoid?
model_4/conv2d_8/mulMul!model_4/conv2d_8/BiasAdd:output:0model_4/conv2d_8/Sigmoid:y:0*
T0*1
_output_shapes
:???????????2
model_4/conv2d_8/mul?
model_4/conv2d_8/IdentityIdentitymodel_4/conv2d_8/mul:z:0*
T0*1
_output_shapes
:???????????2
model_4/conv2d_8/Identity?
model_4/conv2d_8/IdentityN	IdentityNmodel_4/conv2d_8/mul:z:0!model_4/conv2d_8/BiasAdd:output:0*
T
2**
_gradient_op_typeCustomGradient-3794*N
_output_shapes<
::???????????:???????????2
model_4/conv2d_8/IdentityN?
model_4/max_pooling2d_8/MaxPoolMaxPool#model_4/conv2d_8/IdentityN:output:0*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
2!
model_4/max_pooling2d_8/MaxPool?
&model_4/conv2d_9/Conv2D/ReadVariableOpReadVariableOp/model_4_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02(
&model_4/conv2d_9/Conv2D/ReadVariableOp?
model_4/conv2d_9/Conv2DConv2D(model_4/max_pooling2d_8/MaxPool:output:0.model_4/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????||*
paddingVALID*
strides
2
model_4/conv2d_9/Conv2D?
'model_4/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp0model_4_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_4/conv2d_9/BiasAdd/ReadVariableOp?
model_4/conv2d_9/BiasAddBiasAdd model_4/conv2d_9/Conv2D:output:0/model_4/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????||2
model_4/conv2d_9/BiasAdd?
model_4/conv2d_9/SigmoidSigmoid!model_4/conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:?????????||2
model_4/conv2d_9/Sigmoid?
model_4/conv2d_9/mulMul!model_4/conv2d_9/BiasAdd:output:0model_4/conv2d_9/Sigmoid:y:0*
T0*/
_output_shapes
:?????????||2
model_4/conv2d_9/mul?
model_4/conv2d_9/IdentityIdentitymodel_4/conv2d_9/mul:z:0*
T0*/
_output_shapes
:?????????||2
model_4/conv2d_9/Identity?
model_4/conv2d_9/IdentityN	IdentityNmodel_4/conv2d_9/mul:z:0!model_4/conv2d_9/BiasAdd:output:0*
T
2**
_gradient_op_typeCustomGradient-3807*J
_output_shapes8
6:?????????||:?????????||2
model_4/conv2d_9/IdentityN?
model_4/max_pooling2d_9/MaxPoolMaxPool#model_4/conv2d_9/IdentityN:output:0*/
_output_shapes
:?????????>>*
ksize
*
paddingVALID*
strides
2!
model_4/max_pooling2d_9/MaxPool?
model_4/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@?  2
model_4/flatten_4/Const?
model_4/flatten_4/ReshapeReshape(model_4/max_pooling2d_9/MaxPool:output:0 model_4/flatten_4/Const:output:0*
T0*)
_output_shapes
:???????????2
model_4/flatten_4/Reshape?
&model_4/dense_12/MatMul/ReadVariableOpReadVariableOp/model_4_dense_12_matmul_readvariableop_resource* 
_output_shapes
:
??x*
dtype02(
&model_4/dense_12/MatMul/ReadVariableOp?
model_4/dense_12/MatMulMatMul"model_4/flatten_4/Reshape:output:0.model_4/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
model_4/dense_12/MatMul?
'model_4/dense_12/BiasAdd/ReadVariableOpReadVariableOp0model_4_dense_12_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02)
'model_4/dense_12/BiasAdd/ReadVariableOp?
model_4/dense_12/BiasAddBiasAdd!model_4/dense_12/MatMul:product:0/model_4/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
model_4/dense_12/BiasAdd?
model_4/dense_12/SigmoidSigmoid!model_4/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
model_4/dense_12/Sigmoid?
model_4/dense_12/mulMul!model_4/dense_12/BiasAdd:output:0model_4/dense_12/Sigmoid:y:0*
T0*'
_output_shapes
:?????????x2
model_4/dense_12/mul?
model_4/dense_12/IdentityIdentitymodel_4/dense_12/mul:z:0*
T0*'
_output_shapes
:?????????x2
model_4/dense_12/Identity?
model_4/dense_12/IdentityN	IdentityNmodel_4/dense_12/mul:z:0!model_4/dense_12/BiasAdd:output:0*
T
2**
_gradient_op_typeCustomGradient-3822*:
_output_shapes(
&:?????????x:?????????x2
model_4/dense_12/IdentityN?
&model_4/dense_13/MatMul/ReadVariableOpReadVariableOp/model_4_dense_13_matmul_readvariableop_resource*
_output_shapes

:xT*
dtype02(
&model_4/dense_13/MatMul/ReadVariableOp?
model_4/dense_13/MatMulMatMul#model_4/dense_12/IdentityN:output:0.model_4/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
model_4/dense_13/MatMul?
'model_4/dense_13/BiasAdd/ReadVariableOpReadVariableOp0model_4_dense_13_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype02)
'model_4/dense_13/BiasAdd/ReadVariableOp?
model_4/dense_13/BiasAddBiasAdd!model_4/dense_13/MatMul:product:0/model_4/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
model_4/dense_13/BiasAdd?
model_4/dense_13/SigmoidSigmoid!model_4/dense_13/BiasAdd:output:0*
T0*'
_output_shapes
:?????????T2
model_4/dense_13/Sigmoid?
model_4/dense_13/mulMul!model_4/dense_13/BiasAdd:output:0model_4/dense_13/Sigmoid:y:0*
T0*'
_output_shapes
:?????????T2
model_4/dense_13/mul?
model_4/dense_13/IdentityIdentitymodel_4/dense_13/mul:z:0*
T0*'
_output_shapes
:?????????T2
model_4/dense_13/Identity?
model_4/dense_13/IdentityN	IdentityNmodel_4/dense_13/mul:z:0!model_4/dense_13/BiasAdd:output:0*
T
2**
_gradient_op_typeCustomGradient-3834*:
_output_shapes(
&:?????????T:?????????T2
model_4/dense_13/IdentityN?
&model_4/dense_14/MatMul/ReadVariableOpReadVariableOp/model_4_dense_14_matmul_readvariableop_resource*
_output_shapes

:T*
dtype02(
&model_4/dense_14/MatMul/ReadVariableOp?
model_4/dense_14/MatMulMatMul#model_4/dense_13/IdentityN:output:0.model_4/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_4/dense_14/MatMul?
'model_4/dense_14/BiasAdd/ReadVariableOpReadVariableOp0model_4_dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_4/dense_14/BiasAdd/ReadVariableOp?
model_4/dense_14/BiasAddBiasAdd!model_4/dense_14/MatMul:product:0/model_4/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_4/dense_14/BiasAdd?
model_4/dense_14/SoftmaxSoftmax!model_4/dense_14/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_4/dense_14/Softmax}
IdentityIdentity"model_4/dense_14/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp(^model_4/conv2d_8/BiasAdd/ReadVariableOp'^model_4/conv2d_8/Conv2D/ReadVariableOp(^model_4/conv2d_9/BiasAdd/ReadVariableOp'^model_4/conv2d_9/Conv2D/ReadVariableOp(^model_4/dense_12/BiasAdd/ReadVariableOp'^model_4/dense_12/MatMul/ReadVariableOp(^model_4/dense_13/BiasAdd/ReadVariableOp'^model_4/dense_13/MatMul/ReadVariableOp(^model_4/dense_14/BiasAdd/ReadVariableOp'^model_4/dense_14/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2R
'model_4/conv2d_8/BiasAdd/ReadVariableOp'model_4/conv2d_8/BiasAdd/ReadVariableOp2P
&model_4/conv2d_8/Conv2D/ReadVariableOp&model_4/conv2d_8/Conv2D/ReadVariableOp2R
'model_4/conv2d_9/BiasAdd/ReadVariableOp'model_4/conv2d_9/BiasAdd/ReadVariableOp2P
&model_4/conv2d_9/Conv2D/ReadVariableOp&model_4/conv2d_9/Conv2D/ReadVariableOp2R
'model_4/dense_12/BiasAdd/ReadVariableOp'model_4/dense_12/BiasAdd/ReadVariableOp2P
&model_4/dense_12/MatMul/ReadVariableOp&model_4/dense_12/MatMul/ReadVariableOp2R
'model_4/dense_13/BiasAdd/ReadVariableOp'model_4/dense_13/BiasAdd/ReadVariableOp2P
&model_4/dense_13/MatMul/ReadVariableOp&model_4/dense_13/MatMul/ReadVariableOp2R
'model_4/dense_14/BiasAdd/ReadVariableOp'model_4/dense_14/BiasAdd/ReadVariableOp2P
&model_4/dense_14/MatMul/ReadVariableOp&model_4/dense_14/MatMul/ReadVariableOp:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_5
?
?
B__inference_dense_14_layer_call_and_return_conditional_losses_4018

inputs0
matmul_readvariableop_resource:T-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:T*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????T: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
e
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_4569

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?&
?
A__inference_model_4_layer_call_and_return_conditional_losses_4253
input_5'
conv2d_8_4224:
conv2d_8_4226:'
conv2d_9_4230:
conv2d_9_4232:!
dense_12_4237:
??x
dense_12_4239:x
dense_13_4242:xT
dense_13_4244:T
dense_14_4247:T
dense_14_4249:
identity?? conv2d_8/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall? dense_12/StatefulPartitionedCall? dense_13/StatefulPartitionedCall? dense_14/StatefulPartitionedCall?
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallinput_5conv2d_8_4224conv2d_8_4226*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_8_layer_call_and_return_conditional_losses_39152"
 conv2d_8/StatefulPartitionedCall?
max_pooling2d_8/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_39252!
max_pooling2d_8/PartitionedCall?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_9_4230conv2d_9_4232*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????||*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_9_layer_call_and_return_conditional_losses_39432"
 conv2d_9/StatefulPartitionedCall?
max_pooling2d_9/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_39532!
max_pooling2d_9/PartitionedCall?
flatten_4/PartitionedCallPartitionedCall(max_pooling2d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_flatten_4_layer_call_and_return_conditional_losses_39612
flatten_4/PartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_12_4237dense_12_4239*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_12_layer_call_and_return_conditional_losses_39792"
 dense_12/StatefulPartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_4242dense_13_4244*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_13_layer_call_and_return_conditional_losses_40012"
 dense_13/StatefulPartitionedCall?
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_4247dense_14_4249*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_14_layer_call_and_return_conditional_losses_40182"
 dense_14/StatefulPartitionedCall?
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_5
?
e
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_4524

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
'__inference_dense_12_layer_call_fn_4620

inputs
unknown:
??x
	unknown_0:x
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_12_layer_call_and_return_conditional_losses_39792
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
B__inference_dense_12_layer_call_and_return_conditional_losses_4611

inputs2
matmul_readvariableop_resource:
??x-
biasadd_readvariableop_resource:x

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??x*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????x2	
Sigmoidb
mulMulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????x2
mul[
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:?????????x2

Identity?
	IdentityN	IdentityNmul:z:0BiasAdd:output:0*
T
2**
_gradient_op_typeCustomGradient-4604*:
_output_shapes(
&:?????????x:?????????x2
	IdentityNq

Identity_1IdentityIdentityN:output:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identity_1
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
'__inference_conv2d_8_layer_call_fn_4519

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_8_layer_call_and_return_conditional_losses_39152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
_
C__inference_flatten_4_layer_call_and_return_conditional_losses_4590

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????@?  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????>>:W S
/
_output_shapes
:?????????>>
 
_user_specified_nameinputs
?&
?
A__inference_model_4_layer_call_and_return_conditional_losses_4285
input_5'
conv2d_8_4256:
conv2d_8_4258:'
conv2d_9_4262:
conv2d_9_4264:!
dense_12_4269:
??x
dense_12_4271:x
dense_13_4274:xT
dense_13_4276:T
dense_14_4279:T
dense_14_4281:
identity?? conv2d_8/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall? dense_12/StatefulPartitionedCall? dense_13/StatefulPartitionedCall? dense_14/StatefulPartitionedCall?
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallinput_5conv2d_8_4256conv2d_8_4258*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_8_layer_call_and_return_conditional_losses_39152"
 conv2d_8/StatefulPartitionedCall?
max_pooling2d_8/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_39252!
max_pooling2d_8/PartitionedCall?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_9_4262conv2d_9_4264*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????||*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_9_layer_call_and_return_conditional_losses_39432"
 conv2d_9/StatefulPartitionedCall?
max_pooling2d_9/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_39532!
max_pooling2d_9/PartitionedCall?
flatten_4/PartitionedCallPartitionedCall(max_pooling2d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_flatten_4_layer_call_and_return_conditional_losses_39612
flatten_4/PartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_12_4269dense_12_4271*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_12_layer_call_and_return_conditional_losses_39792"
 dense_12/StatefulPartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_4274dense_13_4276*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_13_layer_call_and_return_conditional_losses_40012"
 dense_13/StatefulPartitionedCall?
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_4279dense_14_4281*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_14_layer_call_and_return_conditional_losses_40182"
 dense_14/StatefulPartitionedCall?
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_5
?&
?
A__inference_model_4_layer_call_and_return_conditional_losses_4025

inputs'
conv2d_8_3916:
conv2d_8_3918:'
conv2d_9_3944:
conv2d_9_3946:!
dense_12_3980:
??x
dense_12_3982:x
dense_13_4002:xT
dense_13_4004:T
dense_14_4019:T
dense_14_4021:
identity?? conv2d_8/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall? dense_12/StatefulPartitionedCall? dense_13/StatefulPartitionedCall? dense_14/StatefulPartitionedCall?
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_8_3916conv2d_8_3918*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_8_layer_call_and_return_conditional_losses_39152"
 conv2d_8/StatefulPartitionedCall?
max_pooling2d_8/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_39252!
max_pooling2d_8/PartitionedCall?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_9_3944conv2d_9_3946*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????||*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_9_layer_call_and_return_conditional_losses_39432"
 conv2d_9/StatefulPartitionedCall?
max_pooling2d_9/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_39532!
max_pooling2d_9/PartitionedCall?
flatten_4/PartitionedCallPartitionedCall(max_pooling2d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_flatten_4_layer_call_and_return_conditional_losses_39612
flatten_4/PartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_12_3980dense_12_3982*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_12_layer_call_and_return_conditional_losses_39792"
 dense_12/StatefulPartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_4002dense_13_4004*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_13_layer_call_and_return_conditional_losses_40012"
 dense_13/StatefulPartitionedCall?
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_4019dense_14_4021*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_14_layer_call_and_return_conditional_losses_40182"
 dense_14/StatefulPartitionedCall?
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
J
.__inference_max_pooling2d_8_layer_call_fn_4534

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_38572
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
J
.__inference_max_pooling2d_8_layer_call_fn_4539

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_39252
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
B__inference_conv2d_8_layer_call_and_return_conditional_losses_3915

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:

identity_1??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2	
BiasAddk
SigmoidSigmoidBiasAdd:output:0*
T0*1
_output_shapes
:???????????2	
Sigmoidl
mulMulBiasAdd:output:0Sigmoid:y:0*
T0*1
_output_shapes
:???????????2
mule
IdentityIdentitymul:z:0*
T0*1
_output_shapes
:???????????2

Identity?
	IdentityN	IdentityNmul:z:0BiasAdd:output:0*
T
2**
_gradient_op_typeCustomGradient-3908*N
_output_shapes<
::???????????:???????????2
	IdentityN{

Identity_1IdentityIdentityN:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity_1
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?H
?
A__inference_model_4_layer_call_and_return_conditional_losses_4381

inputsA
'conv2d_8_conv2d_readvariableop_resource:6
(conv2d_8_biasadd_readvariableop_resource:A
'conv2d_9_conv2d_readvariableop_resource:6
(conv2d_9_biasadd_readvariableop_resource:;
'dense_12_matmul_readvariableop_resource:
??x6
(dense_12_biasadd_readvariableop_resource:x9
'dense_13_matmul_readvariableop_resource:xT6
(dense_13_biasadd_readvariableop_resource:T9
'dense_14_matmul_readvariableop_resource:T6
(dense_14_biasadd_readvariableop_resource:
identity??conv2d_8/BiasAdd/ReadVariableOp?conv2d_8/Conv2D/ReadVariableOp?conv2d_9/BiasAdd/ReadVariableOp?conv2d_9/Conv2D/ReadVariableOp?dense_12/BiasAdd/ReadVariableOp?dense_12/MatMul/ReadVariableOp?dense_13/BiasAdd/ReadVariableOp?dense_13/MatMul/ReadVariableOp?dense_14/BiasAdd/ReadVariableOp?dense_14/MatMul/ReadVariableOp?
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_8/Conv2D/ReadVariableOp?
conv2d_8/Conv2DConv2Dinputs&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
conv2d_8/Conv2D?
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_8/BiasAdd/ReadVariableOp?
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv2d_8/BiasAdd?
conv2d_8/SigmoidSigmoidconv2d_8/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
conv2d_8/Sigmoid?
conv2d_8/mulMulconv2d_8/BiasAdd:output:0conv2d_8/Sigmoid:y:0*
T0*1
_output_shapes
:???????????2
conv2d_8/mul?
conv2d_8/IdentityIdentityconv2d_8/mul:z:0*
T0*1
_output_shapes
:???????????2
conv2d_8/Identity?
conv2d_8/IdentityN	IdentityNconv2d_8/mul:z:0conv2d_8/BiasAdd:output:0*
T
2**
_gradient_op_typeCustomGradient-4327*N
_output_shapes<
::???????????:???????????2
conv2d_8/IdentityN?
max_pooling2d_8/MaxPoolMaxPoolconv2d_8/IdentityN:output:0*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_8/MaxPool?
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_9/Conv2D/ReadVariableOp?
conv2d_9/Conv2DConv2D max_pooling2d_8/MaxPool:output:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????||*
paddingVALID*
strides
2
conv2d_9/Conv2D?
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_9/BiasAdd/ReadVariableOp?
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????||2
conv2d_9/BiasAdd?
conv2d_9/SigmoidSigmoidconv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:?????????||2
conv2d_9/Sigmoid?
conv2d_9/mulMulconv2d_9/BiasAdd:output:0conv2d_9/Sigmoid:y:0*
T0*/
_output_shapes
:?????????||2
conv2d_9/mul~
conv2d_9/IdentityIdentityconv2d_9/mul:z:0*
T0*/
_output_shapes
:?????????||2
conv2d_9/Identity?
conv2d_9/IdentityN	IdentityNconv2d_9/mul:z:0conv2d_9/BiasAdd:output:0*
T
2**
_gradient_op_typeCustomGradient-4340*J
_output_shapes8
6:?????????||:?????????||2
conv2d_9/IdentityN?
max_pooling2d_9/MaxPoolMaxPoolconv2d_9/IdentityN:output:0*/
_output_shapes
:?????????>>*
ksize
*
paddingVALID*
strides
2
max_pooling2d_9/MaxPools
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@?  2
flatten_4/Const?
flatten_4/ReshapeReshape max_pooling2d_9/MaxPool:output:0flatten_4/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten_4/Reshape?
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource* 
_output_shapes
:
??x*
dtype02 
dense_12/MatMul/ReadVariableOp?
dense_12/MatMulMatMulflatten_4/Reshape:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_12/MatMul?
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02!
dense_12/BiasAdd/ReadVariableOp?
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_12/BiasAdd|
dense_12/SigmoidSigmoiddense_12/BiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
dense_12/Sigmoid?
dense_12/mulMuldense_12/BiasAdd:output:0dense_12/Sigmoid:y:0*
T0*'
_output_shapes
:?????????x2
dense_12/mulv
dense_12/IdentityIdentitydense_12/mul:z:0*
T0*'
_output_shapes
:?????????x2
dense_12/Identity?
dense_12/IdentityN	IdentityNdense_12/mul:z:0dense_12/BiasAdd:output:0*
T
2**
_gradient_op_typeCustomGradient-4355*:
_output_shapes(
&:?????????x:?????????x2
dense_12/IdentityN?
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

:xT*
dtype02 
dense_13/MatMul/ReadVariableOp?
dense_13/MatMulMatMuldense_12/IdentityN:output:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
dense_13/MatMul?
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype02!
dense_13/BiasAdd/ReadVariableOp?
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
dense_13/BiasAdd|
dense_13/SigmoidSigmoiddense_13/BiasAdd:output:0*
T0*'
_output_shapes
:?????????T2
dense_13/Sigmoid?
dense_13/mulMuldense_13/BiasAdd:output:0dense_13/Sigmoid:y:0*
T0*'
_output_shapes
:?????????T2
dense_13/mulv
dense_13/IdentityIdentitydense_13/mul:z:0*
T0*'
_output_shapes
:?????????T2
dense_13/Identity?
dense_13/IdentityN	IdentityNdense_13/mul:z:0dense_13/BiasAdd:output:0*
T
2**
_gradient_op_typeCustomGradient-4367*:
_output_shapes(
&:?????????T:?????????T2
dense_13/IdentityN?
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

:T*
dtype02 
dense_14/MatMul/ReadVariableOp?
dense_14/MatMulMatMuldense_13/IdentityN:output:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_14/MatMul?
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_14/BiasAdd/ReadVariableOp?
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_14/BiasAdd|
dense_14/SoftmaxSoftmaxdense_14/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_14/Softmaxu
IdentityIdentitydense_14/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
B__inference_conv2d_9_layer_call_and_return_conditional_losses_3943

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:

identity_1??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????||*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????||2	
BiasAddi
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:?????????||2	
Sigmoidj
mulMulBiasAdd:output:0Sigmoid:y:0*
T0*/
_output_shapes
:?????????||2
mulc
IdentityIdentitymul:z:0*
T0*/
_output_shapes
:?????????||2

Identity?
	IdentityN	IdentityNmul:z:0BiasAdd:output:0*
T
2**
_gradient_op_typeCustomGradient-3936*J
_output_shapes8
6:?????????||:?????????||2
	IdentityNy

Identity_1IdentityIdentityN:output:0^NoOp*
T0*/
_output_shapes
:?????????||2

Identity_1
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
e
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_3857

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
J
.__inference_max_pooling2d_9_layer_call_fn_4584

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_39532
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????>>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????||:W S
/
_output_shapes
:?????????||
 
_user_specified_nameinputs
?
?
B__inference_conv2d_8_layer_call_and_return_conditional_losses_4510

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:

identity_1??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2	
BiasAddk
SigmoidSigmoidBiasAdd:output:0*
T0*1
_output_shapes
:???????????2	
Sigmoidl
mulMulBiasAdd:output:0Sigmoid:y:0*
T0*1
_output_shapes
:???????????2
mule
IdentityIdentitymul:z:0*
T0*1
_output_shapes
:???????????2

Identity?
	IdentityN	IdentityNmul:z:0BiasAdd:output:0*
T
2**
_gradient_op_typeCustomGradient-4503*N
_output_shapes<
::???????????:???????????2
	IdentityN{

Identity_1IdentityIdentityN:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity_1
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
"__inference_signature_wrapper_4318
input_5!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
??x
	unknown_4:x
	unknown_5:xT
	unknown_6:T
	unknown_7:T
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__wrapped_model_38482
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_5
?
D
(__inference_flatten_4_layer_call_fn_4595

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_flatten_4_layer_call_and_return_conditional_losses_39612
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????>>:W S
/
_output_shapes
:?????????>>
 
_user_specified_nameinputs
?
?
'__inference_conv2d_9_layer_call_fn_4564

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????||*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_9_layer_call_and_return_conditional_losses_39432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????||2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
&__inference_model_4_layer_call_fn_4494

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
??x
	unknown_4:x
	unknown_5:xT
	unknown_6:T
	unknown_7:T
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_4_layer_call_and_return_conditional_losses_41732
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
e
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_4574

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????>>*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????>>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????||:W S
/
_output_shapes
:?????????||
 
_user_specified_nameinputs
?
J
.__inference_max_pooling2d_9_layer_call_fn_4579

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_38792
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
&__inference_model_4_layer_call_fn_4221
input_5!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
??x
	unknown_4:x
	unknown_5:xT
	unknown_6:T
	unknown_7:T
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_4_layer_call_and_return_conditional_losses_41732
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_5
?
e
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_3879

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
e
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_4529

inputs
identity?
MaxPoolMaxPoolinputs*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
2	
MaxPooln
IdentityIdentityMaxPool:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
'__inference_dense_13_layer_call_fn_4645

inputs
unknown:xT
	unknown_0:T
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_13_layer_call_and_return_conditional_losses_40012
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????T2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????x: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
?
B__inference_dense_14_layer_call_and_return_conditional_losses_4656

inputs0
matmul_readvariableop_resource:T-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:T*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????T: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?A
?
__inference__traced_save_4775
file_prefix.
*savev2_conv2d_8_kernel_read_readvariableop,
(savev2_conv2d_8_bias_read_readvariableop.
*savev2_conv2d_9_kernel_read_readvariableop,
(savev2_conv2d_9_bias_read_readvariableop.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop.
*savev2_dense_13_kernel_read_readvariableop,
(savev2_dense_13_bias_read_readvariableop.
*savev2_dense_14_kernel_read_readvariableop,
(savev2_dense_14_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop:
6savev2_rmsprop_conv2d_8_kernel_rms_read_readvariableop8
4savev2_rmsprop_conv2d_8_bias_rms_read_readvariableop:
6savev2_rmsprop_conv2d_9_kernel_rms_read_readvariableop8
4savev2_rmsprop_conv2d_9_bias_rms_read_readvariableop:
6savev2_rmsprop_dense_12_kernel_rms_read_readvariableop8
4savev2_rmsprop_dense_12_bias_rms_read_readvariableop:
6savev2_rmsprop_dense_13_kernel_rms_read_readvariableop8
4savev2_rmsprop_dense_13_bias_rms_read_readvariableop:
6savev2_rmsprop_dense_14_kernel_rms_read_readvariableop8
4savev2_rmsprop_dense_14_bias_rms_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_8_kernel_read_readvariableop(savev2_conv2d_8_bias_read_readvariableop*savev2_conv2d_9_kernel_read_readvariableop(savev2_conv2d_9_bias_read_readvariableop*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop*savev2_dense_13_kernel_read_readvariableop(savev2_dense_13_bias_read_readvariableop*savev2_dense_14_kernel_read_readvariableop(savev2_dense_14_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop6savev2_rmsprop_conv2d_8_kernel_rms_read_readvariableop4savev2_rmsprop_conv2d_8_bias_rms_read_readvariableop6savev2_rmsprop_conv2d_9_kernel_rms_read_readvariableop4savev2_rmsprop_conv2d_9_bias_rms_read_readvariableop6savev2_rmsprop_dense_12_kernel_rms_read_readvariableop4savev2_rmsprop_dense_12_bias_rms_read_readvariableop6savev2_rmsprop_dense_13_kernel_rms_read_readvariableop4savev2_rmsprop_dense_13_bias_rms_read_readvariableop6savev2_rmsprop_dense_14_kernel_rms_read_readvariableop4savev2_rmsprop_dense_14_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *,
dtypes"
 2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :::::
??x:x:xT:T:T:: : : : : : : : : :::::
??x:x:xT:T:T:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
??x: 

_output_shapes
:x:$ 

_output_shapes

:xT: 

_output_shapes
:T:$	 

_output_shapes

:T: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
??x: 

_output_shapes
:x:$ 

_output_shapes

:xT: 

_output_shapes
:T:$ 

_output_shapes

:T: 

_output_shapes
::

_output_shapes
: 
?
_
C__inference_flatten_4_layer_call_and_return_conditional_losses_3961

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????@?  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????>>:W S
/
_output_shapes
:?????????>>
 
_user_specified_nameinputs
?

?
&__inference_model_4_layer_call_fn_4469

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
??x
	unknown_4:x
	unknown_5:xT
	unknown_6:T
	unknown_7:T
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_4_layer_call_and_return_conditional_losses_40252
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?~
?
 __inference__traced_restore_4872
file_prefix:
 assignvariableop_conv2d_8_kernel:.
 assignvariableop_1_conv2d_8_bias:<
"assignvariableop_2_conv2d_9_kernel:.
 assignvariableop_3_conv2d_9_bias:6
"assignvariableop_4_dense_12_kernel:
??x.
 assignvariableop_5_dense_12_bias:x4
"assignvariableop_6_dense_13_kernel:xT.
 assignvariableop_7_dense_13_bias:T4
"assignvariableop_8_dense_14_kernel:T.
 assignvariableop_9_dense_14_bias:*
 assignvariableop_10_rmsprop_iter:	 +
!assignvariableop_11_rmsprop_decay: 3
)assignvariableop_12_rmsprop_learning_rate: .
$assignvariableop_13_rmsprop_momentum: )
assignvariableop_14_rmsprop_rho: #
assignvariableop_15_total: #
assignvariableop_16_count: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: I
/assignvariableop_19_rmsprop_conv2d_8_kernel_rms:;
-assignvariableop_20_rmsprop_conv2d_8_bias_rms:I
/assignvariableop_21_rmsprop_conv2d_9_kernel_rms:;
-assignvariableop_22_rmsprop_conv2d_9_bias_rms:C
/assignvariableop_23_rmsprop_dense_12_kernel_rms:
??x;
-assignvariableop_24_rmsprop_dense_12_bias_rms:xA
/assignvariableop_25_rmsprop_dense_13_kernel_rms:xT;
-assignvariableop_26_rmsprop_dense_13_bias_rms:TA
/assignvariableop_27_rmsprop_dense_14_kernel_rms:T;
-assignvariableop_28_rmsprop_dense_14_bias_rms:
identity_30??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesz
x::::::::::::::::::::::::::::::*,
dtypes"
 2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_conv2d_8_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_8_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_9_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_9_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_12_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_12_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_13_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_13_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_14_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_14_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp assignvariableop_10_rmsprop_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp!assignvariableop_11_rmsprop_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp)assignvariableop_12_rmsprop_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp$assignvariableop_13_rmsprop_momentumIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_rmsprop_rhoIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp/assignvariableop_19_rmsprop_conv2d_8_kernel_rmsIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp-assignvariableop_20_rmsprop_conv2d_8_bias_rmsIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp/assignvariableop_21_rmsprop_conv2d_9_kernel_rmsIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp-assignvariableop_22_rmsprop_conv2d_9_bias_rmsIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp/assignvariableop_23_rmsprop_dense_12_kernel_rmsIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp-assignvariableop_24_rmsprop_dense_12_bias_rmsIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp/assignvariableop_25_rmsprop_dense_13_kernel_rmsIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp-assignvariableop_26_rmsprop_dense_13_bias_rmsIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp/assignvariableop_27_rmsprop_dense_14_kernel_rmsIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp-assignvariableop_28_rmsprop_dense_14_bias_rmsIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_289
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_29Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_29f
Identity_30IdentityIdentity_29:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_30?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_30Identity_30:output:0*O
_input_shapes>
<: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
e
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_3925

inputs
identity?
MaxPoolMaxPoolinputs*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
2	
MaxPooln
IdentityIdentityMaxPool:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
'__inference_dense_14_layer_call_fn_4665

inputs
unknown:T
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_14_layer_call_and_return_conditional_losses_40182
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????T: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
E
input_5:
serving_default_input_5:0???????????<
dense_140
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
?_default_save_signature
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_network
6
_init_input_shape"
_tf_keras_input_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
!	variables
"trainable_variables
#regularization_losses
$	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
%	variables
&trainable_variables
'regularization_losses
(	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

/kernel
0bias
1	variables
2trainable_variables
3regularization_losses
4	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

5kernel
6bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
;iter
	<decay
=learning_rate
>momentum
?rho	rmsx	rmsy	rmsz	rms{	)rms|	*rms}	/rms~	0rms
5rms?
6rms?"
	optimizer
f
0
1
2
3
)4
*5
/6
07
58
69"
trackable_list_wrapper
f
0
1
2
3
)4
*5
/6
07
58
69"
trackable_list_wrapper
 "
trackable_list_wrapper
?
@metrics
	variables
Anon_trainable_variables
trainable_variables
Blayer_metrics

Clayers
regularization_losses
Dlayer_regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
):'2conv2d_8/kernel
:2conv2d_8/bias
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
?
Emetrics
	variables
Fnon_trainable_variables
trainable_variables
Glayer_metrics

Hlayers
regularization_losses
Ilayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Jmetrics
	variables
Knon_trainable_variables
trainable_variables
Llayer_metrics

Mlayers
regularization_losses
Nlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):'2conv2d_9/kernel
:2conv2d_9/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Ometrics
	variables
Pnon_trainable_variables
trainable_variables
Qlayer_metrics

Rlayers
regularization_losses
Slayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Tmetrics
!	variables
Unon_trainable_variables
"trainable_variables
Vlayer_metrics

Wlayers
#regularization_losses
Xlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Ymetrics
%	variables
Znon_trainable_variables
&trainable_variables
[layer_metrics

\layers
'regularization_losses
]layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??x2dense_12/kernel
:x2dense_12/bias
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
^metrics
+	variables
_non_trainable_variables
,trainable_variables
`layer_metrics

alayers
-regularization_losses
blayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:xT2dense_13/kernel
:T2dense_13/bias
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
?
cmetrics
1	variables
dnon_trainable_variables
2trainable_variables
elayer_metrics

flayers
3regularization_losses
glayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:T2dense_14/kernel
:2dense_14/bias
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
?
hmetrics
7	variables
inon_trainable_variables
8trainable_variables
jlayer_metrics

klayers
9regularization_losses
llayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
.
m0
n1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
N
	ototal
	pcount
q	variables
r	keras_api"
_tf_keras_metric
^
	stotal
	tcount
u
_fn_kwargs
v	variables
w	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
o0
p1"
trackable_list_wrapper
-
q	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
s0
t1"
trackable_list_wrapper
-
v	variables"
_generic_user_object
3:12RMSprop/conv2d_8/kernel/rms
%:#2RMSprop/conv2d_8/bias/rms
3:12RMSprop/conv2d_9/kernel/rms
%:#2RMSprop/conv2d_9/bias/rms
-:+
??x2RMSprop/dense_12/kernel/rms
%:#x2RMSprop/dense_12/bias/rms
+:)xT2RMSprop/dense_13/kernel/rms
%:#T2RMSprop/dense_13/bias/rms
+:)T2RMSprop/dense_14/kernel/rms
%:#2RMSprop/dense_14/bias/rms
?B?
__inference__wrapped_model_3848input_5"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_model_4_layer_call_and_return_conditional_losses_4381
A__inference_model_4_layer_call_and_return_conditional_losses_4444
A__inference_model_4_layer_call_and_return_conditional_losses_4253
A__inference_model_4_layer_call_and_return_conditional_losses_4285?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_model_4_layer_call_fn_4048
&__inference_model_4_layer_call_fn_4469
&__inference_model_4_layer_call_fn_4494
&__inference_model_4_layer_call_fn_4221?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_conv2d_8_layer_call_and_return_conditional_losses_4510?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_conv2d_8_layer_call_fn_4519?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_4524
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_4529?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_max_pooling2d_8_layer_call_fn_4534
.__inference_max_pooling2d_8_layer_call_fn_4539?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_conv2d_9_layer_call_and_return_conditional_losses_4555?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_conv2d_9_layer_call_fn_4564?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_4569
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_4574?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_max_pooling2d_9_layer_call_fn_4579
.__inference_max_pooling2d_9_layer_call_fn_4584?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_flatten_4_layer_call_and_return_conditional_losses_4590?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_flatten_4_layer_call_fn_4595?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_12_layer_call_and_return_conditional_losses_4611?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_12_layer_call_fn_4620?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_13_layer_call_and_return_conditional_losses_4636?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_13_layer_call_fn_4645?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_14_layer_call_and_return_conditional_losses_4656?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_14_layer_call_fn_4665?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
"__inference_signature_wrapper_4318input_5"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
__inference__wrapped_model_3848}
)*/056:?7
0?-
+?(
input_5???????????
? "3?0
.
dense_14"?
dense_14??????????
B__inference_conv2d_8_layer_call_and_return_conditional_losses_4510p9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????
? ?
'__inference_conv2d_8_layer_call_fn_4519c9?6
/?,
*?'
inputs???????????
? ""?????????????
B__inference_conv2d_9_layer_call_and_return_conditional_losses_4555n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????||
? ?
'__inference_conv2d_9_layer_call_fn_4564a9?6
/?,
*?'
inputs???????????
? " ??????????||?
B__inference_dense_12_layer_call_and_return_conditional_losses_4611^)*1?.
'?$
"?
inputs???????????
? "%?"
?
0?????????x
? |
'__inference_dense_12_layer_call_fn_4620Q)*1?.
'?$
"?
inputs???????????
? "??????????x?
B__inference_dense_13_layer_call_and_return_conditional_losses_4636\/0/?,
%?"
 ?
inputs?????????x
? "%?"
?
0?????????T
? z
'__inference_dense_13_layer_call_fn_4645O/0/?,
%?"
 ?
inputs?????????x
? "??????????T?
B__inference_dense_14_layer_call_and_return_conditional_losses_4656\56/?,
%?"
 ?
inputs?????????T
? "%?"
?
0?????????
? z
'__inference_dense_14_layer_call_fn_4665O56/?,
%?"
 ?
inputs?????????T
? "???????????
C__inference_flatten_4_layer_call_and_return_conditional_losses_4590b7?4
-?*
(?%
inputs?????????>>
? "'?$
?
0???????????
? ?
(__inference_flatten_4_layer_call_fn_4595U7?4
-?*
(?%
inputs?????????>>
? "?????????????
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_4524?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_4529l9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????
? ?
.__inference_max_pooling2d_8_layer_call_fn_4534?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
.__inference_max_pooling2d_8_layer_call_fn_4539_9?6
/?,
*?'
inputs???????????
? ""?????????????
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_4569?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_4574h7?4
-?*
(?%
inputs?????????||
? "-?*
#? 
0?????????>>
? ?
.__inference_max_pooling2d_9_layer_call_fn_4579?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
.__inference_max_pooling2d_9_layer_call_fn_4584[7?4
-?*
(?%
inputs?????????||
? " ??????????>>?
A__inference_model_4_layer_call_and_return_conditional_losses_4253w
)*/056B??
8?5
+?(
input_5???????????
p 

 
? "%?"
?
0?????????
? ?
A__inference_model_4_layer_call_and_return_conditional_losses_4285w
)*/056B??
8?5
+?(
input_5???????????
p

 
? "%?"
?
0?????????
? ?
A__inference_model_4_layer_call_and_return_conditional_losses_4381v
)*/056A?>
7?4
*?'
inputs???????????
p 

 
? "%?"
?
0?????????
? ?
A__inference_model_4_layer_call_and_return_conditional_losses_4444v
)*/056A?>
7?4
*?'
inputs???????????
p

 
? "%?"
?
0?????????
? ?
&__inference_model_4_layer_call_fn_4048j
)*/056B??
8?5
+?(
input_5???????????
p 

 
? "???????????
&__inference_model_4_layer_call_fn_4221j
)*/056B??
8?5
+?(
input_5???????????
p

 
? "???????????
&__inference_model_4_layer_call_fn_4469i
)*/056A?>
7?4
*?'
inputs???????????
p 

 
? "???????????
&__inference_model_4_layer_call_fn_4494i
)*/056A?>
7?4
*?'
inputs???????????
p

 
? "???????????
"__inference_signature_wrapper_4318?
)*/056E?B
? 
;?8
6
input_5+?(
input_5???????????"3?0
.
dense_14"?
dense_14?????????