ћ≤
фƒ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resourceИ
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
:
OnesLike
x"T
y"T"
Ttype:
2	

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
dtypetypeИ
•
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeКнout_type"	
Ttype"
out_typetype0:
2	
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Ѕ
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
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
ч
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
∞
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleКйиelement_dtype"
element_dtypetype"

shape_typetype:
2	
Я
TensorListReserve
element_shape"
shape_type
num_elements(
handleКйиelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint€€€€€€€€€
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
∞
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
И"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48еч
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
§
Adam/v/dense_1/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/v/dense_1/bias/*
dtype0*
shape:*$
shared_nameAdam/v/dense_1/bias
w
'Adam/v/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/bias*
_output_shapes
:*
dtype0
§
Adam/m/dense_1/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/m/dense_1/bias/*
dtype0*
shape:*$
shared_nameAdam/m/dense_1/bias
w
'Adam/m/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/bias*
_output_shapes
:*
dtype0
Ѓ
Adam/v/dense_1/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/dense_1/kernel/*
dtype0*
shape
:d*&
shared_nameAdam/v/dense_1/kernel

)Adam/v/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/kernel*
_output_shapes

:d*
dtype0
Ѓ
Adam/m/dense_1/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/dense_1/kernel/*
dtype0*
shape
:d*&
shared_nameAdam/m/dense_1/kernel

)Adam/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/kernel*
_output_shapes

:d*
dtype0
ј
Adam/v/lstm_1/lstm_cell/biasVarHandleOp*
_output_shapes
: *-

debug_nameAdam/v/lstm_1/lstm_cell/bias/*
dtype0*
shape:Р*-
shared_nameAdam/v/lstm_1/lstm_cell/bias
К
0Adam/v/lstm_1/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/v/lstm_1/lstm_cell/bias*
_output_shapes	
:Р*
dtype0
ј
Adam/m/lstm_1/lstm_cell/biasVarHandleOp*
_output_shapes
: *-

debug_nameAdam/m/lstm_1/lstm_cell/bias/*
dtype0*
shape:Р*-
shared_nameAdam/m/lstm_1/lstm_cell/bias
К
0Adam/m/lstm_1/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/m/lstm_1/lstm_cell/bias*
_output_shapes	
:Р*
dtype0
и
(Adam/v/lstm_1/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *9

debug_name+)Adam/v/lstm_1/lstm_cell/recurrent_kernel/*
dtype0*
shape:	dР*9
shared_name*(Adam/v/lstm_1/lstm_cell/recurrent_kernel
¶
<Adam/v/lstm_1/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp(Adam/v/lstm_1/lstm_cell/recurrent_kernel*
_output_shapes
:	dР*
dtype0
и
(Adam/m/lstm_1/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *9

debug_name+)Adam/m/lstm_1/lstm_cell/recurrent_kernel/*
dtype0*
shape:	dР*9
shared_name*(Adam/m/lstm_1/lstm_cell/recurrent_kernel
¶
<Adam/m/lstm_1/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp(Adam/m/lstm_1/lstm_cell/recurrent_kernel*
_output_shapes
:	dР*
dtype0
 
Adam/v/lstm_1/lstm_cell/kernelVarHandleOp*
_output_shapes
: */

debug_name!Adam/v/lstm_1/lstm_cell/kernel/*
dtype0*
shape:	@Р*/
shared_name Adam/v/lstm_1/lstm_cell/kernel
Т
2Adam/v/lstm_1/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/v/lstm_1/lstm_cell/kernel*
_output_shapes
:	@Р*
dtype0
 
Adam/m/lstm_1/lstm_cell/kernelVarHandleOp*
_output_shapes
: */

debug_name!Adam/m/lstm_1/lstm_cell/kernel/*
dtype0*
shape:	@Р*/
shared_name Adam/m/lstm_1/lstm_cell/kernel
Т
2Adam/m/lstm_1/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/m/lstm_1/lstm_cell/kernel*
_output_shapes
:	@Р*
dtype0
О
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
В
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
Ђ
lstm_1/lstm_cell/biasVarHandleOp*
_output_shapes
: *&

debug_namelstm_1/lstm_cell/bias/*
dtype0*
shape:Р*&
shared_namelstm_1/lstm_cell/bias
|
)lstm_1/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell/bias*
_output_shapes	
:Р*
dtype0
”
!lstm_1/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *2

debug_name$"lstm_1/lstm_cell/recurrent_kernel/*
dtype0*
shape:	dР*2
shared_name#!lstm_1/lstm_cell/recurrent_kernel
Ш
5lstm_1/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp!lstm_1/lstm_cell/recurrent_kernel*
_output_shapes
:	dР*
dtype0
µ
lstm_1/lstm_cell/kernelVarHandleOp*
_output_shapes
: *(

debug_namelstm_1/lstm_cell/kernel/*
dtype0*
shape:	@Р*(
shared_namelstm_1/lstm_cell/kernel
Д
+lstm_1/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell/kernel*
_output_shapes
:	@Р*
dtype0
П
dense_1/biasVarHandleOp*
_output_shapes
: *

debug_namedense_1/bias/*
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
Щ
dense_1/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_1/kernel/*
dtype0*
shape
:d*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:d*
dtype0
≥
embedding_4/embeddingsVarHandleOp*
_output_shapes
: *'

debug_nameembedding_4/embeddings/*
dtype0*
shape:
Рњ@*'
shared_nameembedding_4/embeddings
Г
*embedding_4/embeddings/Read/ReadVariableOpReadVariableOpembedding_4/embeddings* 
_output_shapes
:
Рњ@*
dtype0
Ж
!serving_default_embedding_4_inputPlaceholder*(
_output_shapes
:€€€€€€€€€М*
dtype0*
shape:€€€€€€€€€М
—
StatefulPartitionedCallStatefulPartitionedCall!serving_default_embedding_4_inputembedding_4/embeddingslstm_1/lstm_cell/kernellstm_1/lstm_cell/bias!lstm_1/lstm_cell/recurrent_kerneldense_1/kerneldense_1/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_164004

NoOpNoOp
ъ/
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*µ/
valueЂ/B®/ B°/
Ѕ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
†
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
Ѕ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
¶
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias*
.
0
%1
&2
'3
#4
$5*
'
%0
&1
'2
#3
$4*
* 
∞
(non_trainable_variables

)layers
*metrics
+layer_regularization_losses
,layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*

-trace_0
.trace_1* 

/trace_0
0trace_1* 
* 
Б
1
_variables
2_iterations
3_learning_rate
4_index_dict
5
_momentums
6_velocities
7_update_step_xla*

8serving_default* 

0*
* 
* 
У
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

>trace_0* 

?trace_0* 
jd
VARIABLE_VALUEembedding_4/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

%0
&1
'2*

%0
&1
'2*
* 
Я

@states
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ftrace_0
Gtrace_1
Htrace_2
Itrace_3* 
6
Jtrace_0
Ktrace_1
Ltrace_2
Mtrace_3* 
* 
г
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses
T_random_generator
U
state_size

%kernel
&recurrent_kernel
'bias*
* 

#0
$1*

#0
$1*
* 
У
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

[trace_0* 

\trace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUElstm_1/lstm_cell/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!lstm_1/lstm_cell/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUElstm_1/lstm_cell/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*

0*

0
1
2*

]0
^1*
* 
* 
* 
* 
* 
* 
R
20
_1
`2
a3
b4
c5
d6
e7
f8
g9
h10*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
_0
a1
c2
e3
g4*
'
`0
b1
d2
f3
h4*
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 

0*
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

%0
&1
'2*

%0
&1
'2*
* 
У
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses*

ntrace_0
otrace_1* 

ptrace_0
qtrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
r	variables
s	keras_api
	ttotal
	ucount*
H
v	variables
w	keras_api
	xtotal
	ycount
z
_fn_kwargs*
ic
VARIABLE_VALUEAdam/m/lstm_1/lstm_cell/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/lstm_1/lstm_cell/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE(Adam/m/lstm_1/lstm_cell/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE(Adam/v/lstm_1/lstm_cell/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/lstm_1/lstm_cell/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/lstm_1/lstm_cell/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_1/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_1/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/dense_1/bias1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_1/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 

t0
u1*

r	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

x0
y1*

v	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ь
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameembedding_4/embeddingsdense_1/kerneldense_1/biaslstm_1/lstm_cell/kernel!lstm_1/lstm_cell/recurrent_kernellstm_1/lstm_cell/bias	iterationlearning_rateAdam/m/lstm_1/lstm_cell/kernelAdam/v/lstm_1/lstm_cell/kernel(Adam/m/lstm_1/lstm_cell/recurrent_kernel(Adam/v/lstm_1/lstm_cell/recurrent_kernelAdam/m/lstm_1/lstm_cell/biasAdam/v/lstm_1/lstm_cell/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biastotal_1count_1totalcountConst*#
Tin
2*
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
GPU 2J 8В *(
f#R!
__inference__traced_save_165696
Ч
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_4/embeddingsdense_1/kerneldense_1/biaslstm_1/lstm_cell/kernel!lstm_1/lstm_cell/recurrent_kernellstm_1/lstm_cell/bias	iterationlearning_rateAdam/m/lstm_1/lstm_cell/kernelAdam/v/lstm_1/lstm_cell/kernel(Adam/m/lstm_1/lstm_cell/recurrent_kernel(Adam/v/lstm_1/lstm_cell/recurrent_kernelAdam/m/lstm_1/lstm_cell/biasAdam/v/lstm_1/lstm_cell/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biastotal_1count_1totalcount*"
Tin
2*
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
GPU 2J 8В *+
f&R$
"__inference__traced_restore_165771№В
≤
В
,__inference_embedding_4_layer_call_fn_164011

inputs
unknown:
Рњ@
identityИҐStatefulPartitionedCall‘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€М@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_embedding_4_layer_call_and_return_conditional_losses_163263t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:€€€€€€€€€М@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:€€€€€€€€€М: 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name164007:P L
(
_output_shapes
:€€€€€€€€€М
 
_user_specified_nameinputs
≠A
¶
E__inference_lstm_cell_layer_call_and_return_conditional_losses_163111

inputs

states
states_10
split_readvariableop_resource:	@Р.
split_1_readvariableop_resource:	Р*
readvariableop_resource:	dР
identity

identity_1

identity_2ИҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2ҐReadVariableOp_3Ґsplit/ReadVariableOpҐsplit_1/ReadVariableOpO
	ones_likeOnesLikeinputs*
T0*'
_output_shapes
:€€€€€€€€€@Q
ones_like_1OnesLikestates*
T0*'
_output_shapes
:€€€€€€€€€dS
mulMulinputsones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@U
mul_1Mulinputsones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@U
mul_2Mulinputsones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@U
mul_3Mulinputsones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	@Р*
dtype0Ю
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@d:@d:@d:@d*
	num_split[
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d_
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:€€€€€€€€€d_
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:€€€€€€€€€d_
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:Р*
dtype0Ф
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dl
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€dl
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€dl
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€dW
mul_4Mulstatesones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dW
mul_5Mulstatesones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dW
mul_6Mulstatesones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dW
mul_7Mulstatesones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	dР*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      л
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskg
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€dd
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€dM
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€di
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	dР*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    »   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      х
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maski
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€dQ
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dW
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€di
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	dР*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    »   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      х
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maski
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€dI
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€dU
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€dV
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€di
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	dР*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      х
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maski
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€dQ
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€dK
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€dZ
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dY
IdentityIdentity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€d[

Identity_1Identity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dЬ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€@:€€€€€€€€€d:€€€€€€€€€d: : : 2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32 
ReadVariableOpReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:OK
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_namestates:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ь
¶
G__inference_embedding_4_layer_call_and_return_conditional_losses_163263

inputs+
embedding_lookup_163258:
Рњ@
identityИҐembedding_lookupV
CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:€€€€€€€€€МЉ
embedding_lookupResourceGatherembedding_lookup_163258Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/163258*,
_output_shapes
:€€€€€€€€€М@*
dtype0w
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*,
_output_shapes
:€€€€€€€€€М@v
IdentityIdentity"embedding_lookup/Identity:output:0^NoOp*
T0*,
_output_shapes
:€€€€€€€€€М@5
NoOpNoOp^embedding_lookup*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:€€€€€€€€€М: 2$
embedding_lookupembedding_lookup:&"
 
_user_specified_name163258:P L
(
_output_shapes
:€€€€€€€€€М
 
_user_specified_nameinputs
ё%
ќ
while_body_163126
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_163150_0:	@Р'
while_lstm_cell_163152_0:	Р+
while_lstm_cell_163154_0:	dР
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_163150:	@Р%
while_lstm_cell_163152:	Р)
while_lstm_cell_163154:	dРИҐ'while/lstm_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype0§
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_163150_0while_lstm_cell_163152_0while_lstm_cell_163154_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_163111r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Н
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dН
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dR

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"2
while_lstm_cell_163150while_lstm_cell_163150_0"2
while_lstm_cell_163152while_lstm_cell_163152_0"2
while_lstm_cell_163154while_lstm_cell_163154_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:&
"
 
_user_specified_name163154:&	"
 
_user_specified_name163152:&"
 
_user_specified_name163150:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
зЄ
’
!__inference__wrapped_model_162746
embedding_4_inputD
0sequential_4_embedding_4_embedding_lookup_162501:
Рњ@N
;sequential_4_lstm_1_lstm_cell_split_readvariableop_resource:	@РL
=sequential_4_lstm_1_lstm_cell_split_1_readvariableop_resource:	РH
5sequential_4_lstm_1_lstm_cell_readvariableop_resource:	dРE
3sequential_4_dense_1_matmul_readvariableop_resource:dB
4sequential_4_dense_1_biasadd_readvariableop_resource:
identityИҐ+sequential_4/dense_1/BiasAdd/ReadVariableOpҐ*sequential_4/dense_1/MatMul/ReadVariableOpҐ)sequential_4/embedding_4/embedding_lookupҐ,sequential_4/lstm_1/lstm_cell/ReadVariableOpҐ.sequential_4/lstm_1/lstm_cell/ReadVariableOp_1Ґ.sequential_4/lstm_1/lstm_cell/ReadVariableOp_2Ґ.sequential_4/lstm_1/lstm_cell/ReadVariableOp_3Ґ2sequential_4/lstm_1/lstm_cell/split/ReadVariableOpҐ4sequential_4/lstm_1/lstm_cell/split_1/ReadVariableOpҐsequential_4/lstm_1/whilez
sequential_4/embedding_4/CastCastembedding_4_input*

DstT0*

SrcT0*(
_output_shapes
:€€€€€€€€€М†
)sequential_4/embedding_4/embedding_lookupResourceGather0sequential_4_embedding_4_embedding_lookup_162501!sequential_4/embedding_4/Cast:y:0*
Tindices0*C
_class9
75loc:@sequential_4/embedding_4/embedding_lookup/162501*,
_output_shapes
:€€€€€€€€€М@*
dtype0©
2sequential_4/embedding_4/embedding_lookup/IdentityIdentity2sequential_4/embedding_4/embedding_lookup:output:0*
T0*,
_output_shapes
:€€€€€€€€€М@Т
sequential_4/lstm_1/ShapeShape;sequential_4/embedding_4/embedding_lookup/Identity:output:0*
T0*
_output_shapes
::нѕq
'sequential_4/lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential_4/lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential_4/lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!sequential_4/lstm_1/strided_sliceStridedSlice"sequential_4/lstm_1/Shape:output:00sequential_4/lstm_1/strided_slice/stack:output:02sequential_4/lstm_1/strided_slice/stack_1:output:02sequential_4/lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"sequential_4/lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dѓ
 sequential_4/lstm_1/zeros/packedPack*sequential_4/lstm_1/strided_slice:output:0+sequential_4/lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential_4/lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_4/lstm_1/zerosFill)sequential_4/lstm_1/zeros/packed:output:0(sequential_4/lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€df
$sequential_4/lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d≥
"sequential_4/lstm_1/zeros_1/packedPack*sequential_4/lstm_1/strided_slice:output:0-sequential_4/lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_4/lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ѓ
sequential_4/lstm_1/zeros_1Fill+sequential_4/lstm_1/zeros_1/packed:output:0*sequential_4/lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dw
"sequential_4/lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ћ
sequential_4/lstm_1/transpose	Transpose;sequential_4/embedding_4/embedding_lookup/Identity:output:0+sequential_4/lstm_1/transpose/perm:output:0*
T0*,
_output_shapes
:М€€€€€€€€€@z
sequential_4/lstm_1/Shape_1Shape!sequential_4/lstm_1/transpose:y:0*
T0*
_output_shapes
::нѕs
)sequential_4/lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_4/lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_4/lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:њ
#sequential_4/lstm_1/strided_slice_1StridedSlice$sequential_4/lstm_1/Shape_1:output:02sequential_4/lstm_1/strided_slice_1/stack:output:04sequential_4/lstm_1/strided_slice_1/stack_1:output:04sequential_4/lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
/sequential_4/lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€р
!sequential_4/lstm_1/TensorArrayV2TensorListReserve8sequential_4/lstm_1/TensorArrayV2/element_shape:output:0,sequential_4/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ъ
Isequential_4/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   Ь
;sequential_4/lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_4/lstm_1/transpose:y:0Rsequential_4/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“s
)sequential_4/lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_4/lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_4/lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ќ
#sequential_4/lstm_1/strided_slice_2StridedSlice!sequential_4/lstm_1/transpose:y:02sequential_4/lstm_1/strided_slice_2/stack:output:04sequential_4/lstm_1/strided_slice_2/stack_1:output:04sequential_4/lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_maskУ
'sequential_4/lstm_1/lstm_cell/ones_likeOnesLike,sequential_4/lstm_1/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Л
)sequential_4/lstm_1/lstm_cell/ones_like_1OnesLike"sequential_4/lstm_1/zeros:output:0*
T0*'
_output_shapes
:€€€€€€€€€dµ
!sequential_4/lstm_1/lstm_cell/mulMul,sequential_4/lstm_1/strided_slice_2:output:0+sequential_4/lstm_1/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@Ј
#sequential_4/lstm_1/lstm_cell/mul_1Mul,sequential_4/lstm_1/strided_slice_2:output:0+sequential_4/lstm_1/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@Ј
#sequential_4/lstm_1/lstm_cell/mul_2Mul,sequential_4/lstm_1/strided_slice_2:output:0+sequential_4/lstm_1/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@Ј
#sequential_4/lstm_1/lstm_cell/mul_3Mul,sequential_4/lstm_1/strided_slice_2:output:0+sequential_4/lstm_1/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@o
-sequential_4/lstm_1/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѓ
2sequential_4/lstm_1/lstm_cell/split/ReadVariableOpReadVariableOp;sequential_4_lstm_1_lstm_cell_split_readvariableop_resource*
_output_shapes
:	@Р*
dtype0ш
#sequential_4/lstm_1/lstm_cell/splitSplit6sequential_4/lstm_1/lstm_cell/split/split_dim:output:0:sequential_4/lstm_1/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@d:@d:@d:@d*
	num_splitµ
$sequential_4/lstm_1/lstm_cell/MatMulMatMul%sequential_4/lstm_1/lstm_cell/mul:z:0,sequential_4/lstm_1/lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dє
&sequential_4/lstm_1/lstm_cell/MatMul_1MatMul'sequential_4/lstm_1/lstm_cell/mul_1:z:0,sequential_4/lstm_1/lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dє
&sequential_4/lstm_1/lstm_cell/MatMul_2MatMul'sequential_4/lstm_1/lstm_cell/mul_2:z:0,sequential_4/lstm_1/lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dє
&sequential_4/lstm_1/lstm_cell/MatMul_3MatMul'sequential_4/lstm_1/lstm_cell/mul_3:z:0,sequential_4/lstm_1/lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dq
/sequential_4/lstm_1/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ѓ
4sequential_4/lstm_1/lstm_cell/split_1/ReadVariableOpReadVariableOp=sequential_4_lstm_1_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:Р*
dtype0о
%sequential_4/lstm_1/lstm_cell/split_1Split8sequential_4/lstm_1/lstm_cell/split_1/split_dim:output:0<sequential_4/lstm_1/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split¬
%sequential_4/lstm_1/lstm_cell/BiasAddBiasAdd.sequential_4/lstm_1/lstm_cell/MatMul:product:0.sequential_4/lstm_1/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€d∆
'sequential_4/lstm_1/lstm_cell/BiasAdd_1BiasAdd0sequential_4/lstm_1/lstm_cell/MatMul_1:product:0.sequential_4/lstm_1/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€d∆
'sequential_4/lstm_1/lstm_cell/BiasAdd_2BiasAdd0sequential_4/lstm_1/lstm_cell/MatMul_2:product:0.sequential_4/lstm_1/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€d∆
'sequential_4/lstm_1/lstm_cell/BiasAdd_3BiasAdd0sequential_4/lstm_1/lstm_cell/MatMul_3:product:0.sequential_4/lstm_1/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€dѓ
#sequential_4/lstm_1/lstm_cell/mul_4Mul"sequential_4/lstm_1/zeros:output:0-sequential_4/lstm_1/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dѓ
#sequential_4/lstm_1/lstm_cell/mul_5Mul"sequential_4/lstm_1/zeros:output:0-sequential_4/lstm_1/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dѓ
#sequential_4/lstm_1/lstm_cell/mul_6Mul"sequential_4/lstm_1/zeros:output:0-sequential_4/lstm_1/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dѓ
#sequential_4/lstm_1/lstm_cell/mul_7Mul"sequential_4/lstm_1/zeros:output:0-sequential_4/lstm_1/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€d£
,sequential_4/lstm_1/lstm_cell/ReadVariableOpReadVariableOp5sequential_4_lstm_1_lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0В
1sequential_4/lstm_1/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Д
3sequential_4/lstm_1/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   Д
3sequential_4/lstm_1/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
+sequential_4/lstm_1/lstm_cell/strided_sliceStridedSlice4sequential_4/lstm_1/lstm_cell/ReadVariableOp:value:0:sequential_4/lstm_1/lstm_cell/strided_slice/stack:output:0<sequential_4/lstm_1/lstm_cell/strided_slice/stack_1:output:0<sequential_4/lstm_1/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЅ
&sequential_4/lstm_1/lstm_cell/MatMul_4MatMul'sequential_4/lstm_1/lstm_cell/mul_4:z:04sequential_4/lstm_1/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЊ
!sequential_4/lstm_1/lstm_cell/addAddV2.sequential_4/lstm_1/lstm_cell/BiasAdd:output:00sequential_4/lstm_1/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€dЙ
%sequential_4/lstm_1/lstm_cell/SigmoidSigmoid%sequential_4/lstm_1/lstm_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€d•
.sequential_4/lstm_1/lstm_cell/ReadVariableOp_1ReadVariableOp5sequential_4_lstm_1_lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0Д
3sequential_4/lstm_1/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   Ж
5sequential_4/lstm_1/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    »   Ж
5sequential_4/lstm_1/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Л
-sequential_4/lstm_1/lstm_cell/strided_slice_1StridedSlice6sequential_4/lstm_1/lstm_cell/ReadVariableOp_1:value:0<sequential_4/lstm_1/lstm_cell/strided_slice_1/stack:output:0>sequential_4/lstm_1/lstm_cell/strided_slice_1/stack_1:output:0>sequential_4/lstm_1/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask√
&sequential_4/lstm_1/lstm_cell/MatMul_5MatMul'sequential_4/lstm_1/lstm_cell/mul_5:z:06sequential_4/lstm_1/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€d¬
#sequential_4/lstm_1/lstm_cell/add_1AddV20sequential_4/lstm_1/lstm_cell/BiasAdd_1:output:00sequential_4/lstm_1/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€dН
'sequential_4/lstm_1/lstm_cell/Sigmoid_1Sigmoid'sequential_4/lstm_1/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dѓ
#sequential_4/lstm_1/lstm_cell/mul_8Mul+sequential_4/lstm_1/lstm_cell/Sigmoid_1:y:0$sequential_4/lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€d•
.sequential_4/lstm_1/lstm_cell/ReadVariableOp_2ReadVariableOp5sequential_4_lstm_1_lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0Д
3sequential_4/lstm_1/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    »   Ж
5sequential_4/lstm_1/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  Ж
5sequential_4/lstm_1/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Л
-sequential_4/lstm_1/lstm_cell/strided_slice_2StridedSlice6sequential_4/lstm_1/lstm_cell/ReadVariableOp_2:value:0<sequential_4/lstm_1/lstm_cell/strided_slice_2/stack:output:0>sequential_4/lstm_1/lstm_cell/strided_slice_2/stack_1:output:0>sequential_4/lstm_1/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask√
&sequential_4/lstm_1/lstm_cell/MatMul_6MatMul'sequential_4/lstm_1/lstm_cell/mul_6:z:06sequential_4/lstm_1/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€d¬
#sequential_4/lstm_1/lstm_cell/add_2AddV20sequential_4/lstm_1/lstm_cell/BiasAdd_2:output:00sequential_4/lstm_1/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€dЕ
"sequential_4/lstm_1/lstm_cell/TanhTanh'sequential_4/lstm_1/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€dѓ
#sequential_4/lstm_1/lstm_cell/mul_9Mul)sequential_4/lstm_1/lstm_cell/Sigmoid:y:0&sequential_4/lstm_1/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€d∞
#sequential_4/lstm_1/lstm_cell/add_3AddV2'sequential_4/lstm_1/lstm_cell/mul_8:z:0'sequential_4/lstm_1/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€d•
.sequential_4/lstm_1/lstm_cell/ReadVariableOp_3ReadVariableOp5sequential_4_lstm_1_lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0Д
3sequential_4/lstm_1/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  Ж
5sequential_4/lstm_1/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ж
5sequential_4/lstm_1/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Л
-sequential_4/lstm_1/lstm_cell/strided_slice_3StridedSlice6sequential_4/lstm_1/lstm_cell/ReadVariableOp_3:value:0<sequential_4/lstm_1/lstm_cell/strided_slice_3/stack:output:0>sequential_4/lstm_1/lstm_cell/strided_slice_3/stack_1:output:0>sequential_4/lstm_1/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask√
&sequential_4/lstm_1/lstm_cell/MatMul_7MatMul'sequential_4/lstm_1/lstm_cell/mul_7:z:06sequential_4/lstm_1/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€d¬
#sequential_4/lstm_1/lstm_cell/add_4AddV20sequential_4/lstm_1/lstm_cell/BiasAdd_3:output:00sequential_4/lstm_1/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€dН
'sequential_4/lstm_1/lstm_cell/Sigmoid_2Sigmoid'sequential_4/lstm_1/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЗ
$sequential_4/lstm_1/lstm_cell/Tanh_1Tanh'sequential_4/lstm_1/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€dі
$sequential_4/lstm_1/lstm_cell/mul_10Mul+sequential_4/lstm_1/lstm_cell/Sigmoid_2:y:0(sequential_4/lstm_1/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dВ
1sequential_4/lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   r
0sequential_4/lstm_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Б
#sequential_4/lstm_1/TensorArrayV2_1TensorListReserve:sequential_4/lstm_1/TensorArrayV2_1/element_shape:output:09sequential_4/lstm_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Z
sequential_4/lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,sequential_4/lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€h
&sequential_4/lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : к
sequential_4/lstm_1/whileWhile/sequential_4/lstm_1/while/loop_counter:output:05sequential_4/lstm_1/while/maximum_iterations:output:0!sequential_4/lstm_1/time:output:0,sequential_4/lstm_1/TensorArrayV2_1:handle:0"sequential_4/lstm_1/zeros:output:0$sequential_4/lstm_1/zeros_1:output:0,sequential_4/lstm_1/strided_slice_1:output:0Ksequential_4/lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0;sequential_4_lstm_1_lstm_cell_split_readvariableop_resource=sequential_4_lstm_1_lstm_cell_split_1_readvariableop_resource5sequential_4_lstm_1_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*1
body)R'
%sequential_4_lstm_1_while_body_162608*1
cond)R'
%sequential_4_lstm_1_while_cond_162607*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Х
Dsequential_4/lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Т
6sequential_4/lstm_1/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_4/lstm_1/while:output:3Msequential_4/lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0*
num_elements|
)sequential_4/lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€u
+sequential_4/lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+sequential_4/lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
#sequential_4/lstm_1/strided_slice_3StridedSlice?sequential_4/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:02sequential_4/lstm_1/strided_slice_3/stack:output:04sequential_4/lstm_1/strided_slice_3/stack_1:output:04sequential_4/lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_masky
$sequential_4/lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          “
sequential_4/lstm_1/transpose_1	Transpose?sequential_4/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_4/lstm_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€do
sequential_4/lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ю
*sequential_4/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_1_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0є
sequential_4/dense_1/MatMulMatMul,sequential_4/lstm_1/strided_slice_3:output:02sequential_4/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
+sequential_4/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
sequential_4/dense_1/BiasAddBiasAdd%sequential_4/dense_1/MatMul:product:03sequential_4/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€А
sequential_4/dense_1/SigmoidSigmoid%sequential_4/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€o
IdentityIdentity sequential_4/dense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€у
NoOpNoOp,^sequential_4/dense_1/BiasAdd/ReadVariableOp+^sequential_4/dense_1/MatMul/ReadVariableOp*^sequential_4/embedding_4/embedding_lookup-^sequential_4/lstm_1/lstm_cell/ReadVariableOp/^sequential_4/lstm_1/lstm_cell/ReadVariableOp_1/^sequential_4/lstm_1/lstm_cell/ReadVariableOp_2/^sequential_4/lstm_1/lstm_cell/ReadVariableOp_33^sequential_4/lstm_1/lstm_cell/split/ReadVariableOp5^sequential_4/lstm_1/lstm_cell/split_1/ReadVariableOp^sequential_4/lstm_1/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€М: : : : : : 2Z
+sequential_4/dense_1/BiasAdd/ReadVariableOp+sequential_4/dense_1/BiasAdd/ReadVariableOp2X
*sequential_4/dense_1/MatMul/ReadVariableOp*sequential_4/dense_1/MatMul/ReadVariableOp2V
)sequential_4/embedding_4/embedding_lookup)sequential_4/embedding_4/embedding_lookup2`
.sequential_4/lstm_1/lstm_cell/ReadVariableOp_1.sequential_4/lstm_1/lstm_cell/ReadVariableOp_12`
.sequential_4/lstm_1/lstm_cell/ReadVariableOp_2.sequential_4/lstm_1/lstm_cell/ReadVariableOp_22`
.sequential_4/lstm_1/lstm_cell/ReadVariableOp_3.sequential_4/lstm_1/lstm_cell/ReadVariableOp_32\
,sequential_4/lstm_1/lstm_cell/ReadVariableOp,sequential_4/lstm_1/lstm_cell/ReadVariableOp2h
2sequential_4/lstm_1/lstm_cell/split/ReadVariableOp2sequential_4/lstm_1/lstm_cell/split/ReadVariableOp2l
4sequential_4/lstm_1/lstm_cell/split_1/ReadVariableOp4sequential_4/lstm_1/lstm_cell/split_1/ReadVariableOp26
sequential_4/lstm_1/whilesequential_4/lstm_1/while:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:&"
 
_user_specified_name162501:[ W
(
_output_shapes
:€€€€€€€€€М
+
_user_specified_nameembedding_4_input
…

ф
C__inference_dense_1_layer_call_and_return_conditional_losses_163649

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
¬	
√
while_cond_163766
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_163766___redundant_placeholder04
0while_while_cond_163766___redundant_placeholder14
0while_while_cond_163766___redundant_placeholder24
0while_while_cond_163766___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ш∞
Ќ
__inference__traced_save_165696
file_prefixA
-read_disablecopyonread_embedding_4_embeddings:
Рњ@9
'read_1_disablecopyonread_dense_1_kernel:d3
%read_2_disablecopyonread_dense_1_bias:C
0read_3_disablecopyonread_lstm_1_lstm_cell_kernel:	@РM
:read_4_disablecopyonread_lstm_1_lstm_cell_recurrent_kernel:	dР=
.read_5_disablecopyonread_lstm_1_lstm_cell_bias:	Р,
"read_6_disablecopyonread_iteration:	 0
&read_7_disablecopyonread_learning_rate: J
7read_8_disablecopyonread_adam_m_lstm_1_lstm_cell_kernel:	@РJ
7read_9_disablecopyonread_adam_v_lstm_1_lstm_cell_kernel:	@РU
Bread_10_disablecopyonread_adam_m_lstm_1_lstm_cell_recurrent_kernel:	dРU
Bread_11_disablecopyonread_adam_v_lstm_1_lstm_cell_recurrent_kernel:	dРE
6read_12_disablecopyonread_adam_m_lstm_1_lstm_cell_bias:	РE
6read_13_disablecopyonread_adam_v_lstm_1_lstm_cell_bias:	РA
/read_14_disablecopyonread_adam_m_dense_1_kernel:dA
/read_15_disablecopyonread_adam_v_dense_1_kernel:d;
-read_16_disablecopyonread_adam_m_dense_1_bias:;
-read_17_disablecopyonread_adam_v_dense_1_bias:+
!read_18_disablecopyonread_total_1: +
!read_19_disablecopyonread_count_1: )
read_20_disablecopyonread_total: )
read_21_disablecopyonread_count: 
savev2_const
identity_45ИҐMergeV2CheckpointsҐRead/DisableCopyOnReadҐRead/ReadVariableOpҐRead_1/DisableCopyOnReadҐRead_1/ReadVariableOpҐRead_10/DisableCopyOnReadҐRead_10/ReadVariableOpҐRead_11/DisableCopyOnReadҐRead_11/ReadVariableOpҐRead_12/DisableCopyOnReadҐRead_12/ReadVariableOpҐRead_13/DisableCopyOnReadҐRead_13/ReadVariableOpҐRead_14/DisableCopyOnReadҐRead_14/ReadVariableOpҐRead_15/DisableCopyOnReadҐRead_15/ReadVariableOpҐRead_16/DisableCopyOnReadҐRead_16/ReadVariableOpҐRead_17/DisableCopyOnReadҐRead_17/ReadVariableOpҐRead_18/DisableCopyOnReadҐRead_18/ReadVariableOpҐRead_19/DisableCopyOnReadҐRead_19/ReadVariableOpҐRead_2/DisableCopyOnReadҐRead_2/ReadVariableOpҐRead_20/DisableCopyOnReadҐRead_20/ReadVariableOpҐRead_21/DisableCopyOnReadҐRead_21/ReadVariableOpҐRead_3/DisableCopyOnReadҐRead_3/ReadVariableOpҐRead_4/DisableCopyOnReadҐRead_4/ReadVariableOpҐRead_5/DisableCopyOnReadҐRead_5/ReadVariableOpҐRead_6/DisableCopyOnReadҐRead_6/ReadVariableOpҐRead_7/DisableCopyOnReadҐRead_7/ReadVariableOpҐRead_8/DisableCopyOnReadҐRead_8/ReadVariableOpҐRead_9/DisableCopyOnReadҐRead_9/ReadVariableOpw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
Read/DisableCopyOnReadDisableCopyOnRead-read_disablecopyonread_embedding_4_embeddings"/device:CPU:0*
_output_shapes
 Ђ
Read/ReadVariableOpReadVariableOp-read_disablecopyonread_embedding_4_embeddings^Read/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
Рњ@*
dtype0k
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
Рњ@c

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0* 
_output_shapes
:
Рњ@{
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 І
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_dense_1_kernel^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:d*
dtype0m

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:dc

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes

:dy
Read_2/DisableCopyOnReadDisableCopyOnRead%read_2_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 °
Read_2/ReadVariableOpReadVariableOp%read_2_disablecopyonread_dense_1_bias^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:Д
Read_3/DisableCopyOnReadDisableCopyOnRead0read_3_disablecopyonread_lstm_1_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ±
Read_3/ReadVariableOpReadVariableOp0read_3_disablecopyonread_lstm_1_lstm_cell_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	@Р*
dtype0n

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	@Рd

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:	@РО
Read_4/DisableCopyOnReadDisableCopyOnRead:read_4_disablecopyonread_lstm_1_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ї
Read_4/ReadVariableOpReadVariableOp:read_4_disablecopyonread_lstm_1_lstm_cell_recurrent_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dР*
dtype0n

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dРd

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:	dРВ
Read_5/DisableCopyOnReadDisableCopyOnRead.read_5_disablecopyonread_lstm_1_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_5/ReadVariableOpReadVariableOp.read_5_disablecopyonread_lstm_1_lstm_cell_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0k
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рb
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:Рv
Read_6/DisableCopyOnReadDisableCopyOnRead"read_6_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Ъ
Read_6/ReadVariableOpReadVariableOp"read_6_disablecopyonread_iteration^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 Ю
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_learning_rate^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: Л
Read_8/DisableCopyOnReadDisableCopyOnRead7read_8_disablecopyonread_adam_m_lstm_1_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 Є
Read_8/ReadVariableOpReadVariableOp7read_8_disablecopyonread_adam_m_lstm_1_lstm_cell_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	@Р*
dtype0o
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	@Рf
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:	@РЛ
Read_9/DisableCopyOnReadDisableCopyOnRead7read_9_disablecopyonread_adam_v_lstm_1_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 Є
Read_9/ReadVariableOpReadVariableOp7read_9_disablecopyonread_adam_v_lstm_1_lstm_cell_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	@Р*
dtype0o
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	@Рf
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:	@РЧ
Read_10/DisableCopyOnReadDisableCopyOnReadBread_10_disablecopyonread_adam_m_lstm_1_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ≈
Read_10/ReadVariableOpReadVariableOpBread_10_disablecopyonread_adam_m_lstm_1_lstm_cell_recurrent_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dР*
dtype0p
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dРf
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	dРЧ
Read_11/DisableCopyOnReadDisableCopyOnReadBread_11_disablecopyonread_adam_v_lstm_1_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ≈
Read_11/ReadVariableOpReadVariableOpBread_11_disablecopyonread_adam_v_lstm_1_lstm_cell_recurrent_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dР*
dtype0p
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dРf
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:	dРЛ
Read_12/DisableCopyOnReadDisableCopyOnRead6read_12_disablecopyonread_adam_m_lstm_1_lstm_cell_bias"/device:CPU:0*
_output_shapes
 µ
Read_12/ReadVariableOpReadVariableOp6read_12_disablecopyonread_adam_m_lstm_1_lstm_cell_bias^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0l
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рb
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes	
:РЛ
Read_13/DisableCopyOnReadDisableCopyOnRead6read_13_disablecopyonread_adam_v_lstm_1_lstm_cell_bias"/device:CPU:0*
_output_shapes
 µ
Read_13/ReadVariableOpReadVariableOp6read_13_disablecopyonread_adam_v_lstm_1_lstm_cell_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0l
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рb
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes	
:РД
Read_14/DisableCopyOnReadDisableCopyOnRead/read_14_disablecopyonread_adam_m_dense_1_kernel"/device:CPU:0*
_output_shapes
 ±
Read_14/ReadVariableOpReadVariableOp/read_14_disablecopyonread_adam_m_dense_1_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:d*
dtype0o
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:de
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:dД
Read_15/DisableCopyOnReadDisableCopyOnRead/read_15_disablecopyonread_adam_v_dense_1_kernel"/device:CPU:0*
_output_shapes
 ±
Read_15/ReadVariableOpReadVariableOp/read_15_disablecopyonread_adam_v_dense_1_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:d*
dtype0o
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:de
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes

:dВ
Read_16/DisableCopyOnReadDisableCopyOnRead-read_16_disablecopyonread_adam_m_dense_1_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_16/ReadVariableOpReadVariableOp-read_16_disablecopyonread_adam_m_dense_1_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:В
Read_17/DisableCopyOnReadDisableCopyOnRead-read_17_disablecopyonread_adam_v_dense_1_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_17/ReadVariableOpReadVariableOp-read_17_disablecopyonread_adam_v_dense_1_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_18/DisableCopyOnReadDisableCopyOnRead!read_18_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_18/ReadVariableOpReadVariableOp!read_18_disablecopyonread_total_1^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_19/DisableCopyOnReadDisableCopyOnRead!read_19_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_19/ReadVariableOpReadVariableOp!read_19_disablecopyonread_count_1^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_20/DisableCopyOnReadDisableCopyOnReadread_20_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_20/ReadVariableOpReadVariableOpread_20_disablecopyonread_total^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_21/DisableCopyOnReadDisableCopyOnReadread_21_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_21/ReadVariableOpReadVariableOpread_21_disablecopyonread_count^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
: к	
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*У	
valueЙ	BЖ	B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЫ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B Ќ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *%
dtypes
2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_44Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_45IdentityIdentity_44:output:0^NoOp*
T0*
_output_shapes
: ≠	
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_45Identity_45:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0: : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:%!

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'#
!
_user_specified_name	total_1:3/
-
_user_specified_nameAdam/v/dense_1/bias:3/
-
_user_specified_nameAdam/m/dense_1/bias:51
/
_user_specified_nameAdam/v/dense_1/kernel:51
/
_user_specified_nameAdam/m/dense_1/kernel:<8
6
_user_specified_nameAdam/v/lstm_1/lstm_cell/bias:<8
6
_user_specified_nameAdam/m/lstm_1/lstm_cell/bias:HD
B
_user_specified_name*(Adam/v/lstm_1/lstm_cell/recurrent_kernel:HD
B
_user_specified_name*(Adam/m/lstm_1/lstm_cell/recurrent_kernel:>
:
8
_user_specified_name Adam/v/lstm_1/lstm_cell/kernel:>	:
8
_user_specified_name Adam/m/lstm_1/lstm_cell/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:51
/
_user_specified_namelstm_1/lstm_cell/bias:A=
;
_user_specified_name#!lstm_1/lstm_cell/recurrent_kernel:73
1
_user_specified_namelstm_1/lstm_cell/kernel:,(
&
_user_specified_namedense_1/bias:.*
(
_user_specified_namedense_1/kernel:62
0
_user_specified_nameembedding_4/embeddings:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
м
Х
(__inference_dense_1_layer_call_fn_165277

inputs
unknown:d
	unknown_0:
identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_163649o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€d: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name165273:&"
 
_user_specified_name165271:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
Ћ
і
'__inference_lstm_1_layer_call_fn_164064

inputs
unknown:	@Р
	unknown_0:	Р
	unknown_1:	dР
identityИҐStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_163898o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€d<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€М@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name164060:&"
 
_user_specified_name164058:&"
 
_user_specified_name164056:T P
,
_output_shapes
:€€€€€€€€€М@
 
_user_specified_nameinputs
к

Ъ
-__inference_sequential_4_layer_call_fn_163946
embedding_4_input
unknown:
Рњ@
	unknown_0:	@Р
	unknown_1:	Р
	unknown_2:	dР
	unknown_3:d
	unknown_4:
identityИҐStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallembedding_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_163912o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€М: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name163942:&"
 
_user_specified_name163940:&"
 
_user_specified_name163938:&"
 
_user_specified_name163936:&"
 
_user_specified_name163934:&"
 
_user_specified_name163932:[ W
(
_output_shapes
:€€€€€€€€€М
+
_user_specified_nameembedding_4_input
Ћ
і
'__inference_lstm_1_layer_call_fn_164053

inputs
unknown:	@Р
	unknown_0:	Р
	unknown_1:	dР
identityИҐStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_163631o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€d<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€М@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name164049:&"
 
_user_specified_name164047:&"
 
_user_specified_name164045:T P
,
_output_shapes
:€€€€€€€€€М@
 
_user_specified_nameinputs
¬	
√
while_cond_163435
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_163435___redundant_placeholder04
0while_while_cond_163435___redundant_placeholder14
0while_while_cond_163435___redundant_placeholder24
0while_while_cond_163435___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
¬	
√
while_cond_165136
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_165136___redundant_placeholder04
0while_while_cond_165136___redundant_placeholder14
0while_while_cond_165136___redundant_placeholder24
0while_while_cond_165136___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
уљ
А	
while_body_164234
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	@Р@
1while_lstm_cell_split_1_readvariableop_resource_0:	Р<
)while_lstm_cell_readvariableop_resource_0:	dР
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	@Р>
/while_lstm_cell_split_1_readvariableop_resource:	Р:
'while_lstm_cell_readvariableop_resource:	dРИҐwhile/lstm_cell/ReadVariableOpҐ while/lstm_cell/ReadVariableOp_1Ґ while/lstm_cell/ReadVariableOp_2Ґ while/lstm_cell/ReadVariableOp_3Ґ$while/lstm_cell/split/ReadVariableOpҐ&while/lstm_cell/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype0Й
while/lstm_cell/ones_likeOnesLike0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*'
_output_shapes
:€€€€€€€€€@b
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Ы
while/lstm_cell/dropout/MulMulwhile/lstm_cell/ones_like:y:0&while/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@x
while/lstm_cell/dropout/ShapeShapewhile/lstm_cell/ones_like:y:0*
T0*
_output_shapes
::нѕђ
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>÷
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@d
while/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ”
 while/lstm_cell/dropout/SelectV2SelectV2(while/lstm_cell/dropout/GreaterEqual:z:0while/lstm_cell/dropout/Mul:z:0(while/lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@d
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Я
while/lstm_cell/dropout_1/MulMulwhile/lstm_cell/ones_like:y:0(while/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@z
while/lstm_cell/dropout_1/ShapeShapewhile/lstm_cell/ones_like:y:0*
T0*
_output_shapes
::нѕ∞
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>№
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@f
!while/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    џ
"while/lstm_cell/dropout_1/SelectV2SelectV2*while/lstm_cell/dropout_1/GreaterEqual:z:0!while/lstm_cell/dropout_1/Mul:z:0*while/lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@d
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Я
while/lstm_cell/dropout_2/MulMulwhile/lstm_cell/ones_like:y:0(while/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@z
while/lstm_cell/dropout_2/ShapeShapewhile/lstm_cell/ones_like:y:0*
T0*
_output_shapes
::нѕ∞
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>№
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@f
!while/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    џ
"while/lstm_cell/dropout_2/SelectV2SelectV2*while/lstm_cell/dropout_2/GreaterEqual:z:0!while/lstm_cell/dropout_2/Mul:z:0*while/lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@d
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Я
while/lstm_cell/dropout_3/MulMulwhile/lstm_cell/ones_like:y:0(while/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@z
while/lstm_cell/dropout_3/ShapeShapewhile/lstm_cell/ones_like:y:0*
T0*
_output_shapes
::нѕ∞
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>№
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@f
!while/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    џ
"while/lstm_cell/dropout_3/SelectV2SelectV2*while/lstm_cell/dropout_3/GreaterEqual:z:0!while/lstm_cell/dropout_3/Mul:z:0*while/lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@n
while/lstm_cell/ones_like_1OnesLikewhile_placeholder_2*
T0*'
_output_shapes
:€€€€€€€€€dd
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?°
while/lstm_cell/dropout_4/MulMulwhile/lstm_cell/ones_like_1:y:0(while/lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell/dropout_4/ShapeShapewhile/lstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::нѕ∞
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0m
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>№
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€df
!while/lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    џ
"while/lstm_cell/dropout_4/SelectV2SelectV2*while/lstm_cell/dropout_4/GreaterEqual:z:0!while/lstm_cell/dropout_4/Mul:z:0*while/lstm_cell/dropout_4/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dd
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?°
while/lstm_cell/dropout_5/MulMulwhile/lstm_cell/ones_like_1:y:0(while/lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell/dropout_5/ShapeShapewhile/lstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::нѕ∞
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0m
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>№
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€df
!while/lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    џ
"while/lstm_cell/dropout_5/SelectV2SelectV2*while/lstm_cell/dropout_5/GreaterEqual:z:0!while/lstm_cell/dropout_5/Mul:z:0*while/lstm_cell/dropout_5/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dd
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?°
while/lstm_cell/dropout_6/MulMulwhile/lstm_cell/ones_like_1:y:0(while/lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell/dropout_6/ShapeShapewhile/lstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::нѕ∞
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0m
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>№
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€df
!while/lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    џ
"while/lstm_cell/dropout_6/SelectV2SelectV2*while/lstm_cell/dropout_6/GreaterEqual:z:0!while/lstm_cell/dropout_6/Mul:z:0*while/lstm_cell/dropout_6/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dd
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?°
while/lstm_cell/dropout_7/MulMulwhile/lstm_cell/ones_like_1:y:0(while/lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell/dropout_7/ShapeShapewhile/lstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::нѕ∞
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0m
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>№
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€df
!while/lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    џ
"while/lstm_cell/dropout_7/SelectV2SelectV2*while/lstm_cell/dropout_7/GreaterEqual:z:0!while/lstm_cell/dropout_7/Mul:z:0*while/lstm_cell/dropout_7/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€d©
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@≠
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@≠
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@≠
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	@Р*
dtype0ќ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@d:@d:@d:@d*
	num_splitЛ
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dП
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dП
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dП
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dc
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Х
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0ƒ
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_splitШ
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€dР
while/lstm_cell/mul_4Mulwhile_placeholder_2+while/lstm_cell/dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dР
while/lstm_cell/mul_5Mulwhile_placeholder_2+while/lstm_cell/dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dР
while/lstm_cell/mul_6Mulwhile_placeholder_2+while/lstm_cell/dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dР
while/lstm_cell/mul_7Mulwhile_placeholder_2+while/lstm_cell/dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЙ
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЧ
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€dФ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€dm
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЛ
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    »   x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ≈
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dВ
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dЛ
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    »   x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ≈
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€di
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЕ
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЛ
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ≈
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€dk
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€dК
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : л
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dv
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dВ

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
к

Ъ
-__inference_sequential_4_layer_call_fn_163929
embedding_4_input
unknown:
Рњ@
	unknown_0:	@Р
	unknown_1:	Р
	unknown_2:	dР
	unknown_3:d
	unknown_4:
identityИҐStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallembedding_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_163656o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€М: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name163925:&"
 
_user_specified_name163923:&"
 
_user_specified_name163921:&"
 
_user_specified_name163919:&"
 
_user_specified_name163917:&"
 
_user_specified_name163915:[ W
(
_output_shapes
:€€€€€€€€€М
+
_user_specified_nameembedding_4_input
б
ґ
'__inference_lstm_1_layer_call_fn_164042
inputs_0
unknown:	@Р
	unknown_0:	Р
	unknown_1:	dР
identityИҐStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_163196o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€d<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name164038:&"
 
_user_specified_name164036:&"
 
_user_specified_name164034:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
"
_user_specified_name
inputs_0
ч
•
H__inference_sequential_4_layer_call_and_return_conditional_losses_163656
embedding_4_input&
embedding_4_163264:
Рњ@ 
lstm_1_163632:	@Р
lstm_1_163634:	Р 
lstm_1_163636:	dР 
dense_1_163650:d
dense_1_163652:
identityИҐdense_1/StatefulPartitionedCallҐ#embedding_4/StatefulPartitionedCallҐlstm_1/StatefulPartitionedCallц
#embedding_4/StatefulPartitionedCallStatefulPartitionedCallembedding_4_inputembedding_4_163264*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€М@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_embedding_4_layer_call_and_return_conditional_losses_163263Я
lstm_1/StatefulPartitionedCallStatefulPartitionedCall,embedding_4/StatefulPartitionedCall:output:0lstm_1_163632lstm_1_163634lstm_1_163636*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_163631Н
dense_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_1_163650dense_1_163652*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_163649w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Л
NoOpNoOp ^dense_1/StatefulPartitionedCall$^embedding_4/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€М: : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2J
#embedding_4/StatefulPartitionedCall#embedding_4/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:&"
 
_user_specified_name163652:&"
 
_user_specified_name163650:&"
 
_user_specified_name163636:&"
 
_user_specified_name163634:&"
 
_user_specified_name163632:&"
 
_user_specified_name163264:[ W
(
_output_shapes
:€€€€€€€€€М
+
_user_specified_nameembedding_4_input
іЫ
Љ
%sequential_4_lstm_1_while_body_162608D
@sequential_4_lstm_1_while_sequential_4_lstm_1_while_loop_counterJ
Fsequential_4_lstm_1_while_sequential_4_lstm_1_while_maximum_iterations)
%sequential_4_lstm_1_while_placeholder+
'sequential_4_lstm_1_while_placeholder_1+
'sequential_4_lstm_1_while_placeholder_2+
'sequential_4_lstm_1_while_placeholder_3C
?sequential_4_lstm_1_while_sequential_4_lstm_1_strided_slice_1_0
{sequential_4_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_1_tensorarrayunstack_tensorlistfromtensor_0V
Csequential_4_lstm_1_while_lstm_cell_split_readvariableop_resource_0:	@РT
Esequential_4_lstm_1_while_lstm_cell_split_1_readvariableop_resource_0:	РP
=sequential_4_lstm_1_while_lstm_cell_readvariableop_resource_0:	dР&
"sequential_4_lstm_1_while_identity(
$sequential_4_lstm_1_while_identity_1(
$sequential_4_lstm_1_while_identity_2(
$sequential_4_lstm_1_while_identity_3(
$sequential_4_lstm_1_while_identity_4(
$sequential_4_lstm_1_while_identity_5A
=sequential_4_lstm_1_while_sequential_4_lstm_1_strided_slice_1}
ysequential_4_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_1_tensorarrayunstack_tensorlistfromtensorT
Asequential_4_lstm_1_while_lstm_cell_split_readvariableop_resource:	@РR
Csequential_4_lstm_1_while_lstm_cell_split_1_readvariableop_resource:	РN
;sequential_4_lstm_1_while_lstm_cell_readvariableop_resource:	dРИҐ2sequential_4/lstm_1/while/lstm_cell/ReadVariableOpҐ4sequential_4/lstm_1/while/lstm_cell/ReadVariableOp_1Ґ4sequential_4/lstm_1/while/lstm_cell/ReadVariableOp_2Ґ4sequential_4/lstm_1/while/lstm_cell/ReadVariableOp_3Ґ8sequential_4/lstm_1/while/lstm_cell/split/ReadVariableOpҐ:sequential_4/lstm_1/while/lstm_cell/split_1/ReadVariableOpЬ
Ksequential_4/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   К
=sequential_4/lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_4_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_1_tensorarrayunstack_tensorlistfromtensor_0%sequential_4_lstm_1_while_placeholderTsequential_4/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype0±
-sequential_4/lstm_1/while/lstm_cell/ones_likeOnesLikeDsequential_4/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*'
_output_shapes
:€€€€€€€€€@Ц
/sequential_4/lstm_1/while/lstm_cell/ones_like_1OnesLike'sequential_4_lstm_1_while_placeholder_2*
T0*'
_output_shapes
:€€€€€€€€€dў
'sequential_4/lstm_1/while/lstm_cell/mulMulDsequential_4/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:01sequential_4/lstm_1/while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@џ
)sequential_4/lstm_1/while/lstm_cell/mul_1MulDsequential_4/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:01sequential_4/lstm_1/while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@џ
)sequential_4/lstm_1/while/lstm_cell/mul_2MulDsequential_4/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:01sequential_4/lstm_1/while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@џ
)sequential_4/lstm_1/while/lstm_cell/mul_3MulDsequential_4/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:01sequential_4/lstm_1/while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@u
3sequential_4/lstm_1/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :љ
8sequential_4/lstm_1/while/lstm_cell/split/ReadVariableOpReadVariableOpCsequential_4_lstm_1_while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	@Р*
dtype0К
)sequential_4/lstm_1/while/lstm_cell/splitSplit<sequential_4/lstm_1/while/lstm_cell/split/split_dim:output:0@sequential_4/lstm_1/while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@d:@d:@d:@d*
	num_split«
*sequential_4/lstm_1/while/lstm_cell/MatMulMatMul+sequential_4/lstm_1/while/lstm_cell/mul:z:02sequential_4/lstm_1/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЋ
,sequential_4/lstm_1/while/lstm_cell/MatMul_1MatMul-sequential_4/lstm_1/while/lstm_cell/mul_1:z:02sequential_4/lstm_1/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЋ
,sequential_4/lstm_1/while/lstm_cell/MatMul_2MatMul-sequential_4/lstm_1/while/lstm_cell/mul_2:z:02sequential_4/lstm_1/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЋ
,sequential_4/lstm_1/while/lstm_cell/MatMul_3MatMul-sequential_4/lstm_1/while/lstm_cell/mul_3:z:02sequential_4/lstm_1/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dw
5sequential_4/lstm_1/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : љ
:sequential_4/lstm_1/while/lstm_cell/split_1/ReadVariableOpReadVariableOpEsequential_4_lstm_1_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0А
+sequential_4/lstm_1/while/lstm_cell/split_1Split>sequential_4/lstm_1/while/lstm_cell/split_1/split_dim:output:0Bsequential_4/lstm_1/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split‘
+sequential_4/lstm_1/while/lstm_cell/BiasAddBiasAdd4sequential_4/lstm_1/while/lstm_cell/MatMul:product:04sequential_4/lstm_1/while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЎ
-sequential_4/lstm_1/while/lstm_cell/BiasAdd_1BiasAdd6sequential_4/lstm_1/while/lstm_cell/MatMul_1:product:04sequential_4/lstm_1/while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЎ
-sequential_4/lstm_1/while/lstm_cell/BiasAdd_2BiasAdd6sequential_4/lstm_1/while/lstm_cell/MatMul_2:product:04sequential_4/lstm_1/while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЎ
-sequential_4/lstm_1/while/lstm_cell/BiasAdd_3BiasAdd6sequential_4/lstm_1/while/lstm_cell/MatMul_3:product:04sequential_4/lstm_1/while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€dј
)sequential_4/lstm_1/while/lstm_cell/mul_4Mul'sequential_4_lstm_1_while_placeholder_23sequential_4/lstm_1/while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dј
)sequential_4/lstm_1/while/lstm_cell/mul_5Mul'sequential_4_lstm_1_while_placeholder_23sequential_4/lstm_1/while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dј
)sequential_4/lstm_1/while/lstm_cell/mul_6Mul'sequential_4_lstm_1_while_placeholder_23sequential_4/lstm_1/while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dј
)sequential_4/lstm_1/while/lstm_cell/mul_7Mul'sequential_4_lstm_1_while_placeholder_23sequential_4/lstm_1/while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€d±
2sequential_4/lstm_1/while/lstm_cell/ReadVariableOpReadVariableOp=sequential_4_lstm_1_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0И
7sequential_4/lstm_1/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        К
9sequential_4/lstm_1/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   К
9sequential_4/lstm_1/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Я
1sequential_4/lstm_1/while/lstm_cell/strided_sliceStridedSlice:sequential_4/lstm_1/while/lstm_cell/ReadVariableOp:value:0@sequential_4/lstm_1/while/lstm_cell/strided_slice/stack:output:0Bsequential_4/lstm_1/while/lstm_cell/strided_slice/stack_1:output:0Bsequential_4/lstm_1/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask”
,sequential_4/lstm_1/while/lstm_cell/MatMul_4MatMul-sequential_4/lstm_1/while/lstm_cell/mul_4:z:0:sequential_4/lstm_1/while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€d–
'sequential_4/lstm_1/while/lstm_cell/addAddV24sequential_4/lstm_1/while/lstm_cell/BiasAdd:output:06sequential_4/lstm_1/while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€dХ
+sequential_4/lstm_1/while/lstm_cell/SigmoidSigmoid+sequential_4/lstm_1/while/lstm_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€d≥
4sequential_4/lstm_1/while/lstm_cell/ReadVariableOp_1ReadVariableOp=sequential_4_lstm_1_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0К
9sequential_4/lstm_1/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   М
;sequential_4/lstm_1/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    »   М
;sequential_4/lstm_1/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ©
3sequential_4/lstm_1/while/lstm_cell/strided_slice_1StridedSlice<sequential_4/lstm_1/while/lstm_cell/ReadVariableOp_1:value:0Bsequential_4/lstm_1/while/lstm_cell/strided_slice_1/stack:output:0Dsequential_4/lstm_1/while/lstm_cell/strided_slice_1/stack_1:output:0Dsequential_4/lstm_1/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask’
,sequential_4/lstm_1/while/lstm_cell/MatMul_5MatMul-sequential_4/lstm_1/while/lstm_cell/mul_5:z:0<sequential_4/lstm_1/while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€d‘
)sequential_4/lstm_1/while/lstm_cell/add_1AddV26sequential_4/lstm_1/while/lstm_cell/BiasAdd_1:output:06sequential_4/lstm_1/while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€dЩ
-sequential_4/lstm_1/while/lstm_cell/Sigmoid_1Sigmoid-sequential_4/lstm_1/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЊ
)sequential_4/lstm_1/while/lstm_cell/mul_8Mul1sequential_4/lstm_1/while/lstm_cell/Sigmoid_1:y:0'sequential_4_lstm_1_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€d≥
4sequential_4/lstm_1/while/lstm_cell/ReadVariableOp_2ReadVariableOp=sequential_4_lstm_1_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0К
9sequential_4/lstm_1/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    »   М
;sequential_4/lstm_1/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  М
;sequential_4/lstm_1/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ©
3sequential_4/lstm_1/while/lstm_cell/strided_slice_2StridedSlice<sequential_4/lstm_1/while/lstm_cell/ReadVariableOp_2:value:0Bsequential_4/lstm_1/while/lstm_cell/strided_slice_2/stack:output:0Dsequential_4/lstm_1/while/lstm_cell/strided_slice_2/stack_1:output:0Dsequential_4/lstm_1/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask’
,sequential_4/lstm_1/while/lstm_cell/MatMul_6MatMul-sequential_4/lstm_1/while/lstm_cell/mul_6:z:0<sequential_4/lstm_1/while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€d‘
)sequential_4/lstm_1/while/lstm_cell/add_2AddV26sequential_4/lstm_1/while/lstm_cell/BiasAdd_2:output:06sequential_4/lstm_1/while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€dС
(sequential_4/lstm_1/while/lstm_cell/TanhTanh-sequential_4/lstm_1/while/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЅ
)sequential_4/lstm_1/while/lstm_cell/mul_9Mul/sequential_4/lstm_1/while/lstm_cell/Sigmoid:y:0,sequential_4/lstm_1/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€d¬
)sequential_4/lstm_1/while/lstm_cell/add_3AddV2-sequential_4/lstm_1/while/lstm_cell/mul_8:z:0-sequential_4/lstm_1/while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€d≥
4sequential_4/lstm_1/while/lstm_cell/ReadVariableOp_3ReadVariableOp=sequential_4_lstm_1_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0К
9sequential_4/lstm_1/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  М
;sequential_4/lstm_1/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        М
;sequential_4/lstm_1/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ©
3sequential_4/lstm_1/while/lstm_cell/strided_slice_3StridedSlice<sequential_4/lstm_1/while/lstm_cell/ReadVariableOp_3:value:0Bsequential_4/lstm_1/while/lstm_cell/strided_slice_3/stack:output:0Dsequential_4/lstm_1/while/lstm_cell/strided_slice_3/stack_1:output:0Dsequential_4/lstm_1/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask’
,sequential_4/lstm_1/while/lstm_cell/MatMul_7MatMul-sequential_4/lstm_1/while/lstm_cell/mul_7:z:0<sequential_4/lstm_1/while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€d‘
)sequential_4/lstm_1/while/lstm_cell/add_4AddV26sequential_4/lstm_1/while/lstm_cell/BiasAdd_3:output:06sequential_4/lstm_1/while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€dЩ
-sequential_4/lstm_1/while/lstm_cell/Sigmoid_2Sigmoid-sequential_4/lstm_1/while/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€dУ
*sequential_4/lstm_1/while/lstm_cell/Tanh_1Tanh-sequential_4/lstm_1/while/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€d∆
*sequential_4/lstm_1/while/lstm_cell/mul_10Mul1sequential_4/lstm_1/while/lstm_cell/Sigmoid_2:y:0.sequential_4/lstm_1/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
Dsequential_4/lstm_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ї
>sequential_4/lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_4_lstm_1_while_placeholder_1Msequential_4/lstm_1/while/TensorArrayV2Write/TensorListSetItem/index:output:0.sequential_4/lstm_1/while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:йи“a
sequential_4/lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ш
sequential_4/lstm_1/while/addAddV2%sequential_4_lstm_1_while_placeholder(sequential_4/lstm_1/while/add/y:output:0*
T0*
_output_shapes
: c
!sequential_4/lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ј
sequential_4/lstm_1/while/add_1AddV2@sequential_4_lstm_1_while_sequential_4_lstm_1_while_loop_counter*sequential_4/lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: Х
"sequential_4/lstm_1/while/IdentityIdentity#sequential_4/lstm_1/while/add_1:z:0^sequential_4/lstm_1/while/NoOp*
T0*
_output_shapes
: Ї
$sequential_4/lstm_1/while/Identity_1IdentityFsequential_4_lstm_1_while_sequential_4_lstm_1_while_maximum_iterations^sequential_4/lstm_1/while/NoOp*
T0*
_output_shapes
: Х
$sequential_4/lstm_1/while/Identity_2Identity!sequential_4/lstm_1/while/add:z:0^sequential_4/lstm_1/while/NoOp*
T0*
_output_shapes
: ¬
$sequential_4/lstm_1/while/Identity_3IdentityNsequential_4/lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_4/lstm_1/while/NoOp*
T0*
_output_shapes
: ≥
$sequential_4/lstm_1/while/Identity_4Identity.sequential_4/lstm_1/while/lstm_cell/mul_10:z:0^sequential_4/lstm_1/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€d≤
$sequential_4/lstm_1/while/Identity_5Identity-sequential_4/lstm_1/while/lstm_cell/add_3:z:0^sequential_4/lstm_1/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dО
sequential_4/lstm_1/while/NoOpNoOp3^sequential_4/lstm_1/while/lstm_cell/ReadVariableOp5^sequential_4/lstm_1/while/lstm_cell/ReadVariableOp_15^sequential_4/lstm_1/while/lstm_cell/ReadVariableOp_25^sequential_4/lstm_1/while/lstm_cell/ReadVariableOp_39^sequential_4/lstm_1/while/lstm_cell/split/ReadVariableOp;^sequential_4/lstm_1/while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 "U
$sequential_4_lstm_1_while_identity_1-sequential_4/lstm_1/while/Identity_1:output:0"U
$sequential_4_lstm_1_while_identity_2-sequential_4/lstm_1/while/Identity_2:output:0"U
$sequential_4_lstm_1_while_identity_3-sequential_4/lstm_1/while/Identity_3:output:0"U
$sequential_4_lstm_1_while_identity_4-sequential_4/lstm_1/while/Identity_4:output:0"U
$sequential_4_lstm_1_while_identity_5-sequential_4/lstm_1/while/Identity_5:output:0"Q
"sequential_4_lstm_1_while_identity+sequential_4/lstm_1/while/Identity:output:0"|
;sequential_4_lstm_1_while_lstm_cell_readvariableop_resource=sequential_4_lstm_1_while_lstm_cell_readvariableop_resource_0"М
Csequential_4_lstm_1_while_lstm_cell_split_1_readvariableop_resourceEsequential_4_lstm_1_while_lstm_cell_split_1_readvariableop_resource_0"И
Asequential_4_lstm_1_while_lstm_cell_split_readvariableop_resourceCsequential_4_lstm_1_while_lstm_cell_split_readvariableop_resource_0"А
=sequential_4_lstm_1_while_sequential_4_lstm_1_strided_slice_1?sequential_4_lstm_1_while_sequential_4_lstm_1_strided_slice_1_0"ш
ysequential_4_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_1_tensorarrayunstack_tensorlistfromtensor{sequential_4_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2l
4sequential_4/lstm_1/while/lstm_cell/ReadVariableOp_14sequential_4/lstm_1/while/lstm_cell/ReadVariableOp_12l
4sequential_4/lstm_1/while/lstm_cell/ReadVariableOp_24sequential_4/lstm_1/while/lstm_cell/ReadVariableOp_22l
4sequential_4/lstm_1/while/lstm_cell/ReadVariableOp_34sequential_4/lstm_1/while/lstm_cell/ReadVariableOp_32h
2sequential_4/lstm_1/while/lstm_cell/ReadVariableOp2sequential_4/lstm_1/while/lstm_cell/ReadVariableOp2t
8sequential_4/lstm_1/while/lstm_cell/split/ReadVariableOp8sequential_4/lstm_1/while/lstm_cell/split/ReadVariableOp2x
:sequential_4/lstm_1/while/lstm_cell/split_1/ReadVariableOp:sequential_4/lstm_1/while/lstm_cell/split_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:so

_output_shapes
: 
U
_user_specified_name=;sequential_4/lstm_1/TensorArrayUnstack/TensorListFromTensor:[W

_output_shapes
: 
=
_user_specified_name%#sequential_4/lstm_1/strided_slice_1:-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: :d`

_output_shapes
: 
F
_user_specified_name.,sequential_4/lstm_1/while/maximum_iterations:^ Z

_output_shapes
: 
@
_user_specified_name(&sequential_4/lstm_1/while/loop_counter
•¬
Ќ
B__inference_lstm_1_layer_call_and_return_conditional_losses_164429
inputs_0:
'lstm_cell_split_readvariableop_resource:	@Р8
)lstm_cell_split_1_readvariableop_resource:	Р4
!lstm_cell_readvariableop_resource:	dР
identityИҐlstm_cell/ReadVariableOpҐlstm_cell/ReadVariableOp_1Ґlstm_cell/ReadVariableOp_2Ґlstm_cell/ReadVariableOp_3Ґlstm_cell/split/ReadVariableOpҐ lstm_cell/split_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_maskk
lstm_cell/ones_likeOnesLikestrided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@\
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Й
lstm_cell/dropout/MulMullstm_cell/ones_like:y:0 lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@l
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::нѕ†
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>ƒ
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ї
lstm_cell/dropout/SelectV2SelectV2"lstm_cell/dropout/GreaterEqual:z:0lstm_cell/dropout/Mul:z:0"lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Н
lstm_cell/dropout_1/MulMullstm_cell/ones_like:y:0"lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@n
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::нѕ§
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ> 
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@`
lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
lstm_cell/dropout_1/SelectV2SelectV2$lstm_cell/dropout_1/GreaterEqual:z:0lstm_cell/dropout_1/Mul:z:0$lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Н
lstm_cell/dropout_2/MulMullstm_cell/ones_like:y:0"lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@n
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::нѕ§
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ> 
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@`
lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
lstm_cell/dropout_2/SelectV2SelectV2$lstm_cell/dropout_2/GreaterEqual:z:0lstm_cell/dropout_2/Mul:z:0$lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Н
lstm_cell/dropout_3/MulMullstm_cell/ones_like:y:0"lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@n
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::нѕ§
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ> 
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@`
lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
lstm_cell/dropout_3/SelectV2SelectV2$lstm_cell/dropout_3/GreaterEqual:z:0lstm_cell/dropout_3/Mul:z:0$lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@c
lstm_cell/ones_like_1OnesLikezeros:output:0*
T0*'
_output_shapes
:€€€€€€€€€d^
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?П
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:y:0"lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::нѕ§
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0g
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ> 
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€d`
lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
lstm_cell/dropout_4/SelectV2SelectV2$lstm_cell/dropout_4/GreaterEqual:z:0lstm_cell/dropout_4/Mul:z:0$lstm_cell/dropout_4/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€d^
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?П
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:y:0"lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::нѕ§
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0g
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ> 
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€d`
lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
lstm_cell/dropout_5/SelectV2SelectV2$lstm_cell/dropout_5/GreaterEqual:z:0lstm_cell/dropout_5/Mul:z:0$lstm_cell/dropout_5/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€d^
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?П
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:y:0"lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::нѕ§
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0g
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ> 
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€d`
lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
lstm_cell/dropout_6/SelectV2SelectV2$lstm_cell/dropout_6/GreaterEqual:z:0lstm_cell/dropout_6/Mul:z:0$lstm_cell/dropout_6/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€d^
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?П
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:y:0"lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::нѕ§
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0g
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ> 
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€d`
lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
lstm_cell/dropout_7/SelectV2SelectV2$lstm_cell/dropout_7/GreaterEqual:z:0lstm_cell/dropout_7/Mul:z:0$lstm_cell/dropout_7/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЕ
lstm_cell/mulMulstrided_slice_2:output:0#lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Й
lstm_cell/mul_1Mulstrided_slice_2:output:0%lstm_cell/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Й
lstm_cell/mul_2Mulstrided_slice_2:output:0%lstm_cell/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Й
lstm_cell/mul_3Mulstrided_slice_2:output:0%lstm_cell/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	@Р*
dtype0Љ
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@d:@d:@d:@d*
	num_splity
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€d]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : З
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:Р*
dtype0≤
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_splitЖ
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€d
lstm_cell/mul_4Mulzeros:output:0%lstm_cell/dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€d
lstm_cell/mul_5Mulzeros:output:0%lstm_cell/dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€d
lstm_cell/mul_6Mulzeros:output:0%lstm_cell/dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€d
lstm_cell/mul_7Mulzeros:output:0%lstm_cell/dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€d{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Э
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЕ
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€dВ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€da
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    »   r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      І
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЗ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ds
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    »   r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      І
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЗ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€d]
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ds
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€dt
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      І
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЗ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€d_
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€dx
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : “
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_164234*
condR
while_cond_164233*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dа
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€@: : : 28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_324
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp2@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
"
_user_specified_name
inputs_0
є
у
*__inference_lstm_cell_layer_call_fn_165305

inputs
states_0
states_1
unknown:	@Р
	unknown_0:	Р
	unknown_1:	dР
identity

identity_1

identity_2ИҐStatefulPartitionedCall•
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_162918o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€d<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€@:€€€€€€€€€d:€€€€€€€€€d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name165297:&"
 
_user_specified_name165295:&"
 
_user_specified_name165293:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_1:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_0:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
…

ф
C__inference_dense_1_layer_call_and_return_conditional_losses_165288

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
ь
¶
G__inference_embedding_4_layer_call_and_return_conditional_losses_164020

inputs+
embedding_lookup_164015:
Рњ@
identityИҐembedding_lookupV
CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:€€€€€€€€€МЉ
embedding_lookupResourceGatherembedding_lookup_164015Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/164015*,
_output_shapes
:€€€€€€€€€М@*
dtype0w
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*,
_output_shapes
:€€€€€€€€€М@v
IdentityIdentity"embedding_lookup/Identity:output:0^NoOp*
T0*,
_output_shapes
:€€€€€€€€€М@5
NoOpNoOp^embedding_lookup*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:€€€€€€€€€М: 2$
embedding_lookupembedding_lookup:&"
 
_user_specified_name164015:P L
(
_output_shapes
:€€€€€€€€€М
 
_user_specified_nameinputs
б
ґ
'__inference_lstm_1_layer_call_fn_164031
inputs_0
unknown:	@Р
	unknown_0:	Р
	unknown_1:	dР
identityИҐStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_163003o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€d<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name164027:&"
 
_user_specified_name164025:&"
 
_user_specified_name164023:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
"
_user_specified_name
inputs_0
ѓ
”
%sequential_4_lstm_1_while_cond_162607D
@sequential_4_lstm_1_while_sequential_4_lstm_1_while_loop_counterJ
Fsequential_4_lstm_1_while_sequential_4_lstm_1_while_maximum_iterations)
%sequential_4_lstm_1_while_placeholder+
'sequential_4_lstm_1_while_placeholder_1+
'sequential_4_lstm_1_while_placeholder_2+
'sequential_4_lstm_1_while_placeholder_3F
Bsequential_4_lstm_1_while_less_sequential_4_lstm_1_strided_slice_1\
Xsequential_4_lstm_1_while_sequential_4_lstm_1_while_cond_162607___redundant_placeholder0\
Xsequential_4_lstm_1_while_sequential_4_lstm_1_while_cond_162607___redundant_placeholder1\
Xsequential_4_lstm_1_while_sequential_4_lstm_1_while_cond_162607___redundant_placeholder2\
Xsequential_4_lstm_1_while_sequential_4_lstm_1_while_cond_162607___redundant_placeholder3&
"sequential_4_lstm_1_while_identity
≤
sequential_4/lstm_1/while/LessLess%sequential_4_lstm_1_while_placeholderBsequential_4_lstm_1_while_less_sequential_4_lstm_1_strided_slice_1*
T0*
_output_shapes
: s
"sequential_4/lstm_1/while/IdentityIdentity"sequential_4/lstm_1/while/Less:z:0*
T0
*
_output_shapes
: "Q
"sequential_4_lstm_1_while_identity+sequential_4/lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::[W

_output_shapes
: 
=
_user_specified_name%#sequential_4/lstm_1/strided_slice_1:-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: :d`

_output_shapes
: 
F
_user_specified_name.,sequential_4/lstm_1/while/maximum_iterations:^ Z

_output_shapes
: 
@
_user_specified_name(&sequential_4/lstm_1/while/loop_counter
¬	
√
while_cond_164835
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_164835___redundant_placeholder04
0while_while_cond_164835___redundant_placeholder14
0while_while_cond_164835___redundant_placeholder24
0while_while_cond_164835___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
°{
Ќ
B__inference_lstm_1_layer_call_and_return_conditional_losses_164666
inputs_0:
'lstm_cell_split_readvariableop_resource:	@Р8
)lstm_cell_split_1_readvariableop_resource:	Р4
!lstm_cell_readvariableop_resource:	dР
identityИҐlstm_cell/ReadVariableOpҐlstm_cell/ReadVariableOp_1Ґlstm_cell/ReadVariableOp_2Ґlstm_cell/ReadVariableOp_3Ґlstm_cell/split/ReadVariableOpҐ lstm_cell/split_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_maskk
lstm_cell/ones_likeOnesLikestrided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@c
lstm_cell/ones_like_1OnesLikezeros:output:0*
T0*'
_output_shapes
:€€€€€€€€€dy
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@{
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@{
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@{
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	@Р*
dtype0Љ
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@d:@d:@d:@d*
	num_splity
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€d]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : З
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:Р*
dtype0≤
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_splitЖ
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€ds
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ds
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ds
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ds
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€d{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Э
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЕ
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€dВ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€da
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    »   r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      І
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЗ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ds
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    »   r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      І
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЗ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€d]
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ds
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€dt
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      І
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЗ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€d_
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€dx
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : “
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_164535*
condR
while_cond_164534*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dа
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€@: : : 28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_324
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp2@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
"
_user_specified_name
inputs_0
Б{
Ћ
B__inference_lstm_1_layer_call_and_return_conditional_losses_163898

inputs:
'lstm_cell_split_readvariableop_resource:	@Р8
)lstm_cell_split_1_readvariableop_resource:	Р4
!lstm_cell_readvariableop_resource:	dР
identityИҐlstm_cell/ReadVariableOpҐlstm_cell/ReadVariableOp_1Ґlstm_cell/ReadVariableOp_2Ґlstm_cell/ReadVariableOp_3Ґlstm_cell/split/ReadVariableOpҐ lstm_cell/split_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:М€€€€€€€€€@R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_maskk
lstm_cell/ones_likeOnesLikestrided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@c
lstm_cell/ones_like_1OnesLikezeros:output:0*
T0*'
_output_shapes
:€€€€€€€€€dy
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@{
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@{
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@{
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	@Р*
dtype0Љ
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@d:@d:@d:@d*
	num_splity
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€d]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : З
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:Р*
dtype0≤
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_splitЖ
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€ds
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ds
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ds
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ds
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€d{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Э
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЕ
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€dВ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€da
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    »   r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      І
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЗ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ds
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    »   r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      І
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЗ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€d]
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ds
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€dt
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      І
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЗ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€d_
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€dx
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : “
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_163767*
condR
while_cond_163766*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dа
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€М@: : : 28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_324
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp2@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:T P
,
_output_shapes
:€€€€€€€€€М@
 
_user_specified_nameinputs
ч
•
H__inference_sequential_4_layer_call_and_return_conditional_losses_163912
embedding_4_input&
embedding_4_163659:
Рњ@ 
lstm_1_163899:	@Р
lstm_1_163901:	Р 
lstm_1_163903:	dР 
dense_1_163906:d
dense_1_163908:
identityИҐdense_1/StatefulPartitionedCallҐ#embedding_4/StatefulPartitionedCallҐlstm_1/StatefulPartitionedCallц
#embedding_4/StatefulPartitionedCallStatefulPartitionedCallembedding_4_inputembedding_4_163659*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€М@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_embedding_4_layer_call_and_return_conditional_losses_163263Я
lstm_1/StatefulPartitionedCallStatefulPartitionedCall,embedding_4/StatefulPartitionedCall:output:0lstm_1_163899lstm_1_163901lstm_1_163903*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_163898Н
dense_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_1_163906dense_1_163908*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_163649w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Л
NoOpNoOp ^dense_1/StatefulPartitionedCall$^embedding_4/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€М: : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2J
#embedding_4/StatefulPartitionedCall#embedding_4/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:&"
 
_user_specified_name163908:&"
 
_user_specified_name163906:&"
 
_user_specified_name163903:&"
 
_user_specified_name163901:&"
 
_user_specified_name163899:&"
 
_user_specified_name163659:[ W
(
_output_shapes
:€€€€€€€€€М
+
_user_specified_nameembedding_4_input
уљ
А	
while_body_163436
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	@Р@
1while_lstm_cell_split_1_readvariableop_resource_0:	Р<
)while_lstm_cell_readvariableop_resource_0:	dР
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	@Р>
/while_lstm_cell_split_1_readvariableop_resource:	Р:
'while_lstm_cell_readvariableop_resource:	dРИҐwhile/lstm_cell/ReadVariableOpҐ while/lstm_cell/ReadVariableOp_1Ґ while/lstm_cell/ReadVariableOp_2Ґ while/lstm_cell/ReadVariableOp_3Ґ$while/lstm_cell/split/ReadVariableOpҐ&while/lstm_cell/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype0Й
while/lstm_cell/ones_likeOnesLike0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*'
_output_shapes
:€€€€€€€€€@b
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Ы
while/lstm_cell/dropout/MulMulwhile/lstm_cell/ones_like:y:0&while/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@x
while/lstm_cell/dropout/ShapeShapewhile/lstm_cell/ones_like:y:0*
T0*
_output_shapes
::нѕђ
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>÷
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@d
while/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ”
 while/lstm_cell/dropout/SelectV2SelectV2(while/lstm_cell/dropout/GreaterEqual:z:0while/lstm_cell/dropout/Mul:z:0(while/lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@d
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Я
while/lstm_cell/dropout_1/MulMulwhile/lstm_cell/ones_like:y:0(while/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@z
while/lstm_cell/dropout_1/ShapeShapewhile/lstm_cell/ones_like:y:0*
T0*
_output_shapes
::нѕ∞
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>№
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@f
!while/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    џ
"while/lstm_cell/dropout_1/SelectV2SelectV2*while/lstm_cell/dropout_1/GreaterEqual:z:0!while/lstm_cell/dropout_1/Mul:z:0*while/lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@d
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Я
while/lstm_cell/dropout_2/MulMulwhile/lstm_cell/ones_like:y:0(while/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@z
while/lstm_cell/dropout_2/ShapeShapewhile/lstm_cell/ones_like:y:0*
T0*
_output_shapes
::нѕ∞
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>№
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@f
!while/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    џ
"while/lstm_cell/dropout_2/SelectV2SelectV2*while/lstm_cell/dropout_2/GreaterEqual:z:0!while/lstm_cell/dropout_2/Mul:z:0*while/lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@d
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Я
while/lstm_cell/dropout_3/MulMulwhile/lstm_cell/ones_like:y:0(while/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@z
while/lstm_cell/dropout_3/ShapeShapewhile/lstm_cell/ones_like:y:0*
T0*
_output_shapes
::нѕ∞
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>№
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@f
!while/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    џ
"while/lstm_cell/dropout_3/SelectV2SelectV2*while/lstm_cell/dropout_3/GreaterEqual:z:0!while/lstm_cell/dropout_3/Mul:z:0*while/lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@n
while/lstm_cell/ones_like_1OnesLikewhile_placeholder_2*
T0*'
_output_shapes
:€€€€€€€€€dd
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?°
while/lstm_cell/dropout_4/MulMulwhile/lstm_cell/ones_like_1:y:0(while/lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell/dropout_4/ShapeShapewhile/lstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::нѕ∞
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0m
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>№
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€df
!while/lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    џ
"while/lstm_cell/dropout_4/SelectV2SelectV2*while/lstm_cell/dropout_4/GreaterEqual:z:0!while/lstm_cell/dropout_4/Mul:z:0*while/lstm_cell/dropout_4/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dd
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?°
while/lstm_cell/dropout_5/MulMulwhile/lstm_cell/ones_like_1:y:0(while/lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell/dropout_5/ShapeShapewhile/lstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::нѕ∞
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0m
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>№
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€df
!while/lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    џ
"while/lstm_cell/dropout_5/SelectV2SelectV2*while/lstm_cell/dropout_5/GreaterEqual:z:0!while/lstm_cell/dropout_5/Mul:z:0*while/lstm_cell/dropout_5/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dd
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?°
while/lstm_cell/dropout_6/MulMulwhile/lstm_cell/ones_like_1:y:0(while/lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell/dropout_6/ShapeShapewhile/lstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::нѕ∞
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0m
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>№
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€df
!while/lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    џ
"while/lstm_cell/dropout_6/SelectV2SelectV2*while/lstm_cell/dropout_6/GreaterEqual:z:0!while/lstm_cell/dropout_6/Mul:z:0*while/lstm_cell/dropout_6/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dd
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?°
while/lstm_cell/dropout_7/MulMulwhile/lstm_cell/ones_like_1:y:0(while/lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell/dropout_7/ShapeShapewhile/lstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::нѕ∞
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0m
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>№
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€df
!while/lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    џ
"while/lstm_cell/dropout_7/SelectV2SelectV2*while/lstm_cell/dropout_7/GreaterEqual:z:0!while/lstm_cell/dropout_7/Mul:z:0*while/lstm_cell/dropout_7/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€d©
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@≠
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@≠
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@≠
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	@Р*
dtype0ќ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@d:@d:@d:@d*
	num_splitЛ
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dП
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dП
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dП
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dc
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Х
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0ƒ
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_splitШ
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€dР
while/lstm_cell/mul_4Mulwhile_placeholder_2+while/lstm_cell/dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dР
while/lstm_cell/mul_5Mulwhile_placeholder_2+while/lstm_cell/dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dР
while/lstm_cell/mul_6Mulwhile_placeholder_2+while/lstm_cell/dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dР
while/lstm_cell/mul_7Mulwhile_placeholder_2+while/lstm_cell/dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЙ
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЧ
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€dФ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€dm
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЛ
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    »   x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ≈
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dВ
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dЛ
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    »   x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ≈
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€di
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЕ
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЛ
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ≈
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€dk
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€dК
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : л
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dv
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dВ

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
¬	
√
while_cond_164233
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_164233___redundant_placeholder04
0while_while_cond_164233___redundant_placeholder14
0while_while_cond_164233___redundant_placeholder24
0while_while_cond_164233___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
¬	
√
while_cond_162932
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_162932___redundant_placeholder04
0while_while_cond_162932___redundant_placeholder14
0while_while_cond_162932___redundant_placeholder24
0while_while_cond_162932___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Е¬
Ћ
B__inference_lstm_1_layer_call_and_return_conditional_losses_163631

inputs:
'lstm_cell_split_readvariableop_resource:	@Р8
)lstm_cell_split_1_readvariableop_resource:	Р4
!lstm_cell_readvariableop_resource:	dР
identityИҐlstm_cell/ReadVariableOpҐlstm_cell/ReadVariableOp_1Ґlstm_cell/ReadVariableOp_2Ґlstm_cell/ReadVariableOp_3Ґlstm_cell/split/ReadVariableOpҐ lstm_cell/split_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:М€€€€€€€€€@R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_maskk
lstm_cell/ones_likeOnesLikestrided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@\
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Й
lstm_cell/dropout/MulMullstm_cell/ones_like:y:0 lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@l
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::нѕ†
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>ƒ
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ї
lstm_cell/dropout/SelectV2SelectV2"lstm_cell/dropout/GreaterEqual:z:0lstm_cell/dropout/Mul:z:0"lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Н
lstm_cell/dropout_1/MulMullstm_cell/ones_like:y:0"lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@n
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::нѕ§
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ> 
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@`
lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
lstm_cell/dropout_1/SelectV2SelectV2$lstm_cell/dropout_1/GreaterEqual:z:0lstm_cell/dropout_1/Mul:z:0$lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Н
lstm_cell/dropout_2/MulMullstm_cell/ones_like:y:0"lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@n
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::нѕ§
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ> 
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@`
lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
lstm_cell/dropout_2/SelectV2SelectV2$lstm_cell/dropout_2/GreaterEqual:z:0lstm_cell/dropout_2/Mul:z:0$lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Н
lstm_cell/dropout_3/MulMullstm_cell/ones_like:y:0"lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@n
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::нѕ§
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ> 
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@`
lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
lstm_cell/dropout_3/SelectV2SelectV2$lstm_cell/dropout_3/GreaterEqual:z:0lstm_cell/dropout_3/Mul:z:0$lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@c
lstm_cell/ones_like_1OnesLikezeros:output:0*
T0*'
_output_shapes
:€€€€€€€€€d^
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?П
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:y:0"lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::нѕ§
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0g
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ> 
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€d`
lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
lstm_cell/dropout_4/SelectV2SelectV2$lstm_cell/dropout_4/GreaterEqual:z:0lstm_cell/dropout_4/Mul:z:0$lstm_cell/dropout_4/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€d^
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?П
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:y:0"lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::нѕ§
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0g
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ> 
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€d`
lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
lstm_cell/dropout_5/SelectV2SelectV2$lstm_cell/dropout_5/GreaterEqual:z:0lstm_cell/dropout_5/Mul:z:0$lstm_cell/dropout_5/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€d^
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?П
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:y:0"lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::нѕ§
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0g
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ> 
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€d`
lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
lstm_cell/dropout_6/SelectV2SelectV2$lstm_cell/dropout_6/GreaterEqual:z:0lstm_cell/dropout_6/Mul:z:0$lstm_cell/dropout_6/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€d^
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?П
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:y:0"lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::нѕ§
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0g
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ> 
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€d`
lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
lstm_cell/dropout_7/SelectV2SelectV2$lstm_cell/dropout_7/GreaterEqual:z:0lstm_cell/dropout_7/Mul:z:0$lstm_cell/dropout_7/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЕ
lstm_cell/mulMulstrided_slice_2:output:0#lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Й
lstm_cell/mul_1Mulstrided_slice_2:output:0%lstm_cell/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Й
lstm_cell/mul_2Mulstrided_slice_2:output:0%lstm_cell/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Й
lstm_cell/mul_3Mulstrided_slice_2:output:0%lstm_cell/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	@Р*
dtype0Љ
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@d:@d:@d:@d*
	num_splity
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€d]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : З
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:Р*
dtype0≤
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_splitЖ
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€d
lstm_cell/mul_4Mulzeros:output:0%lstm_cell/dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€d
lstm_cell/mul_5Mulzeros:output:0%lstm_cell/dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€d
lstm_cell/mul_6Mulzeros:output:0%lstm_cell/dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€d
lstm_cell/mul_7Mulzeros:output:0%lstm_cell/dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€d{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Э
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЕ
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€dВ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€da
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    »   r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      І
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЗ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ds
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    »   r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      І
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЗ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€d]
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ds
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€dt
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      І
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЗ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€d_
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€dx
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : “
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_163436*
condR
while_cond_163435*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dа
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€М@: : : 28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_324
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp2@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:T P
,
_output_shapes
:€€€€€€€€€М@
 
_user_specified_nameinputs
Ї

С
$__inference_signature_wrapper_164004
embedding_4_input
unknown:
Рњ@
	unknown_0:	@Р
	unknown_1:	Р
	unknown_2:	dР
	unknown_3:d
	unknown_4:
identityИҐStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallembedding_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_162746o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€М: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name164000:&"
 
_user_specified_name163998:&"
 
_user_specified_name163996:&"
 
_user_specified_name163994:&"
 
_user_specified_name163992:&"
 
_user_specified_name163990:[ W
(
_output_shapes
:€€€€€€€€€М
+
_user_specified_nameembedding_4_input
Б{
Ћ
B__inference_lstm_1_layer_call_and_return_conditional_losses_165268

inputs:
'lstm_cell_split_readvariableop_resource:	@Р8
)lstm_cell_split_1_readvariableop_resource:	Р4
!lstm_cell_readvariableop_resource:	dР
identityИҐlstm_cell/ReadVariableOpҐlstm_cell/ReadVariableOp_1Ґlstm_cell/ReadVariableOp_2Ґlstm_cell/ReadVariableOp_3Ґlstm_cell/split/ReadVariableOpҐ lstm_cell/split_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:М€€€€€€€€€@R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_maskk
lstm_cell/ones_likeOnesLikestrided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@c
lstm_cell/ones_like_1OnesLikezeros:output:0*
T0*'
_output_shapes
:€€€€€€€€€dy
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@{
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@{
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@{
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	@Р*
dtype0Љ
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@d:@d:@d:@d*
	num_splity
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€d]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : З
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:Р*
dtype0≤
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_splitЖ
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€ds
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ds
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ds
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ds
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€d{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Э
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЕ
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€dВ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€da
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    »   r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      І
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЗ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ds
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    »   r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      І
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЗ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€d]
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ds
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€dt
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      І
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЗ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€d_
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€dx
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : “
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_165137*
condR
while_cond_165136*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dа
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€М@: : : 28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_324
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp2@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:T P
,
_output_shapes
:€€€€€€€€€М@
 
_user_specified_nameinputs
≈i
З
"__inference__traced_restore_165771
file_prefix;
'assignvariableop_embedding_4_embeddings:
Рњ@3
!assignvariableop_1_dense_1_kernel:d-
assignvariableop_2_dense_1_bias:=
*assignvariableop_3_lstm_1_lstm_cell_kernel:	@РG
4assignvariableop_4_lstm_1_lstm_cell_recurrent_kernel:	dР7
(assignvariableop_5_lstm_1_lstm_cell_bias:	Р&
assignvariableop_6_iteration:	 *
 assignvariableop_7_learning_rate: D
1assignvariableop_8_adam_m_lstm_1_lstm_cell_kernel:	@РD
1assignvariableop_9_adam_v_lstm_1_lstm_cell_kernel:	@РO
<assignvariableop_10_adam_m_lstm_1_lstm_cell_recurrent_kernel:	dРO
<assignvariableop_11_adam_v_lstm_1_lstm_cell_recurrent_kernel:	dР?
0assignvariableop_12_adam_m_lstm_1_lstm_cell_bias:	Р?
0assignvariableop_13_adam_v_lstm_1_lstm_cell_bias:	Р;
)assignvariableop_14_adam_m_dense_1_kernel:d;
)assignvariableop_15_adam_v_dense_1_kernel:d5
'assignvariableop_16_adam_m_dense_1_bias:5
'assignvariableop_17_adam_v_dense_1_bias:%
assignvariableop_18_total_1: %
assignvariableop_19_count_1: #
assignvariableop_20_total: #
assignvariableop_21_count: 
identity_23ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9н	
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*У	
valueЙ	BЖ	B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЮ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B С
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*p
_output_shapes^
\:::::::::::::::::::::::*%
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOpAssignVariableOp'assignvariableop_embedding_4_embeddingsIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_1_kernelIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:ґ
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_1_biasIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_3AssignVariableOp*assignvariableop_3_lstm_1_lstm_cell_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_4AssignVariableOp4assignvariableop_4_lstm_1_lstm_cell_recurrent_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_5AssignVariableOp(assignvariableop_5_lstm_1_lstm_cell_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:≥
AssignVariableOp_6AssignVariableOpassignvariableop_6_iterationIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_7AssignVariableOp assignvariableop_7_learning_rateIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_8AssignVariableOp1assignvariableop_8_adam_m_lstm_1_lstm_cell_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_9AssignVariableOp1assignvariableop_9_adam_v_lstm_1_lstm_cell_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:’
AssignVariableOp_10AssignVariableOp<assignvariableop_10_adam_m_lstm_1_lstm_cell_recurrent_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:’
AssignVariableOp_11AssignVariableOp<assignvariableop_11_adam_v_lstm_1_lstm_cell_recurrent_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:…
AssignVariableOp_12AssignVariableOp0assignvariableop_12_adam_m_lstm_1_lstm_cell_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:…
AssignVariableOp_13AssignVariableOp0assignvariableop_13_adam_v_lstm_1_lstm_cell_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_14AssignVariableOp)assignvariableop_14_adam_m_dense_1_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_v_dense_1_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_m_dense_1_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_v_dense_1_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_1Identity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_1Identity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_20AssignVariableOpassignvariableop_20_totalIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_21AssignVariableOpassignvariableop_21_countIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ≥
Identity_22Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_23IdentityIdentity_22:output:0^NoOp_1*
T0*
_output_shapes
: ь
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_23Identity_23:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%!

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'#
!
_user_specified_name	total_1:3/
-
_user_specified_nameAdam/v/dense_1/bias:3/
-
_user_specified_nameAdam/m/dense_1/bias:51
/
_user_specified_nameAdam/v/dense_1/kernel:51
/
_user_specified_nameAdam/m/dense_1/kernel:<8
6
_user_specified_nameAdam/v/lstm_1/lstm_cell/bias:<8
6
_user_specified_nameAdam/m/lstm_1/lstm_cell/bias:HD
B
_user_specified_name*(Adam/v/lstm_1/lstm_cell/recurrent_kernel:HD
B
_user_specified_name*(Adam/m/lstm_1/lstm_cell/recurrent_kernel:>
:
8
_user_specified_name Adam/v/lstm_1/lstm_cell/kernel:>	:
8
_user_specified_name Adam/m/lstm_1/lstm_cell/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:51
/
_user_specified_namelstm_1/lstm_cell/bias:A=
;
_user_specified_name#!lstm_1/lstm_cell/recurrent_kernel:73
1
_user_specified_namelstm_1/lstm_cell/kernel:,(
&
_user_specified_namedense_1/bias:.*
(
_user_specified_namedense_1/kernel:62
0
_user_specified_nameembedding_4/embeddings:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
є
у
*__inference_lstm_cell_layer_call_fn_165322

inputs
states_0
states_1
unknown:	@Р
	unknown_0:	Р
	unknown_1:	dР
identity

identity_1

identity_2ИҐStatefulPartitionedCall•
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_163111o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€d<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€@:€€€€€€€€€d:€€€€€€€€€d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name165314:&"
 
_user_specified_name165312:&"
 
_user_specified_name165310:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_1:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_0:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ґ9
ш
B__inference_lstm_1_layer_call_and_return_conditional_losses_163003

inputs#
lstm_cell_162919:	@Р
lstm_cell_162921:	Р#
lstm_cell_162923:	dР
identityИҐ!lstm_cell/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_maskж
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_162919lstm_cell_162921lstm_cell_162923*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_162918n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : С
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_162919lstm_cell_162921lstm_cell_162923*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_162933*
condR
while_cond_162932*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dN
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€@: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:&"
 
_user_specified_name162923:&"
 
_user_specified_name162921:&"
 
_user_specified_name162919:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
е}
®
E__inference_lstm_cell_layer_call_and_return_conditional_losses_165464

inputs
states_0
states_10
split_readvariableop_resource:	@Р.
split_1_readvariableop_resource:	Р*
readvariableop_resource:	dР
identity

identity_1

identity_2ИҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2ҐReadVariableOp_3Ґsplit/ReadVariableOpҐsplit_1/ReadVariableOpO
	ones_likeOnesLikeinputs*
T0*'
_output_shapes
:€€€€€€€€€@R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?k
dropout/MulMulones_like:y:0dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@X
dropout/ShapeShapeones_like:y:0*
T0*
_output_shapes
::нѕМ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?o
dropout_1/MulMulones_like:y:0dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Z
dropout_1/ShapeShapeones_like:y:0*
T0*
_output_shapes
::нѕР
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>ђ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@V
dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_1/SelectV2SelectV2dropout_1/GreaterEqual:z:0dropout_1/Mul:z:0dropout_1/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?o
dropout_2/MulMulones_like:y:0dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Z
dropout_2/ShapeShapeones_like:y:0*
T0*
_output_shapes
::нѕР
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>ђ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@V
dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_2/SelectV2SelectV2dropout_2/GreaterEqual:z:0dropout_2/Mul:z:0dropout_2/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@T
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?o
dropout_3/MulMulones_like:y:0dropout_3/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Z
dropout_3/ShapeShapeones_like:y:0*
T0*
_output_shapes
::нѕР
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>ђ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@V
dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_3/SelectV2SelectV2dropout_3/GreaterEqual:z:0dropout_3/Mul:z:0dropout_3/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@S
ones_like_1OnesLikestates_0*
T0*'
_output_shapes
:€€€€€€€€€dT
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?q
dropout_4/MulMulones_like_1:y:0dropout_4/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€d\
dropout_4/ShapeShapeones_like_1:y:0*
T0*
_output_shapes
::нѕР
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0]
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>ђ
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€dV
dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_4/SelectV2SelectV2dropout_4/GreaterEqual:z:0dropout_4/Mul:z:0dropout_4/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dT
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?q
dropout_5/MulMulones_like_1:y:0dropout_5/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€d\
dropout_5/ShapeShapeones_like_1:y:0*
T0*
_output_shapes
::нѕР
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0]
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>ђ
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€dV
dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_5/SelectV2SelectV2dropout_5/GreaterEqual:z:0dropout_5/Mul:z:0dropout_5/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dT
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?q
dropout_6/MulMulones_like_1:y:0dropout_6/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€d\
dropout_6/ShapeShapeones_like_1:y:0*
T0*
_output_shapes
::нѕР
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0]
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>ђ
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€dV
dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_6/SelectV2SelectV2dropout_6/GreaterEqual:z:0dropout_6/Mul:z:0dropout_6/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dT
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?q
dropout_7/MulMulones_like_1:y:0dropout_7/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€d\
dropout_7/ShapeShapeones_like_1:y:0*
T0*
_output_shapes
::нѕР
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0]
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>ђ
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€dV
dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_7/SelectV2SelectV2dropout_7/GreaterEqual:z:0dropout_7/Mul:z:0dropout_7/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€d_
mulMulinputsdropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@c
mul_1Mulinputsdropout_1/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@c
mul_2Mulinputsdropout_2/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@c
mul_3Mulinputsdropout_3/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	@Р*
dtype0Ю
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@d:@d:@d:@d*
	num_split[
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d_
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:€€€€€€€€€d_
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:€€€€€€€€€d_
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:Р*
dtype0Ф
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dl
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€dl
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€dl
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€de
mul_4Mulstates_0dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€de
mul_5Mulstates_0dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€de
mul_6Mulstates_0dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€de
mul_7Mulstates_0dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	dР*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      л
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskg
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€dd
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€dM
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€di
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	dР*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    »   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      х
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maski
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€dQ
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dW
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€di
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	dР*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    »   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      х
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maski
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€dI
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€dU
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€dV
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€di
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	dР*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      х
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maski
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€dQ
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€dK
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€dZ
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dY
IdentityIdentity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€d[

Identity_1Identity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dЬ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€@:€€€€€€€€€d:€€€€€€€€€d: : : 2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32 
ReadVariableOpReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_1:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_0:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
¬	
√
while_cond_163125
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_163125___redundant_placeholder04
0while_while_cond_163125___redundant_placeholder14
0while_while_cond_163125___redundant_placeholder24
0while_while_cond_163125___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
√p
А	
while_body_165137
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	@Р@
1while_lstm_cell_split_1_readvariableop_resource_0:	Р<
)while_lstm_cell_readvariableop_resource_0:	dР
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	@Р>
/while_lstm_cell_split_1_readvariableop_resource:	Р:
'while_lstm_cell_readvariableop_resource:	dРИҐwhile/lstm_cell/ReadVariableOpҐ while/lstm_cell/ReadVariableOp_1Ґ while/lstm_cell/ReadVariableOp_2Ґ while/lstm_cell/ReadVariableOp_3Ґ$while/lstm_cell/split/ReadVariableOpҐ&while/lstm_cell/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype0Й
while/lstm_cell/ones_likeOnesLike0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*'
_output_shapes
:€€€€€€€€€@n
while/lstm_cell/ones_like_1OnesLikewhile_placeholder_2*
T0*'
_output_shapes
:€€€€€€€€€dЭ
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@Я
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@Я
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@Я
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	@Р*
dtype0ќ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@d:@d:@d:@d*
	num_splitЛ
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dП
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dП
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dП
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dc
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Х
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0ƒ
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_splitШ
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€dД
while/lstm_cell/mul_4Mulwhile_placeholder_2while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dД
while/lstm_cell/mul_5Mulwhile_placeholder_2while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dД
while/lstm_cell/mul_6Mulwhile_placeholder_2while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dД
while/lstm_cell/mul_7Mulwhile_placeholder_2while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dЙ
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЧ
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€dФ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€dm
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЛ
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    »   x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ≈
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dВ
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dЛ
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    »   x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ≈
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€di
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЕ
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЛ
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ≈
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€dk
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€dК
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : л
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dv
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dВ

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
√p
А	
while_body_164535
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	@Р@
1while_lstm_cell_split_1_readvariableop_resource_0:	Р<
)while_lstm_cell_readvariableop_resource_0:	dР
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	@Р>
/while_lstm_cell_split_1_readvariableop_resource:	Р:
'while_lstm_cell_readvariableop_resource:	dРИҐwhile/lstm_cell/ReadVariableOpҐ while/lstm_cell/ReadVariableOp_1Ґ while/lstm_cell/ReadVariableOp_2Ґ while/lstm_cell/ReadVariableOp_3Ґ$while/lstm_cell/split/ReadVariableOpҐ&while/lstm_cell/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype0Й
while/lstm_cell/ones_likeOnesLike0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*'
_output_shapes
:€€€€€€€€€@n
while/lstm_cell/ones_like_1OnesLikewhile_placeholder_2*
T0*'
_output_shapes
:€€€€€€€€€dЭ
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@Я
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@Я
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@Я
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	@Р*
dtype0ќ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@d:@d:@d:@d*
	num_splitЛ
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dП
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dП
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dП
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dc
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Х
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0ƒ
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_splitШ
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€dД
while/lstm_cell/mul_4Mulwhile_placeholder_2while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dД
while/lstm_cell/mul_5Mulwhile_placeholder_2while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dД
while/lstm_cell/mul_6Mulwhile_placeholder_2while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dД
while/lstm_cell/mul_7Mulwhile_placeholder_2while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dЙ
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЧ
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€dФ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€dm
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЛ
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    »   x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ≈
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dВ
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dЛ
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    »   x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ≈
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€di
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЕ
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЛ
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ≈
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€dk
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€dК
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : л
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dv
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dВ

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Е¬
Ћ
B__inference_lstm_1_layer_call_and_return_conditional_losses_165031

inputs:
'lstm_cell_split_readvariableop_resource:	@Р8
)lstm_cell_split_1_readvariableop_resource:	Р4
!lstm_cell_readvariableop_resource:	dР
identityИҐlstm_cell/ReadVariableOpҐlstm_cell/ReadVariableOp_1Ґlstm_cell/ReadVariableOp_2Ґlstm_cell/ReadVariableOp_3Ґlstm_cell/split/ReadVariableOpҐ lstm_cell/split_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:М€€€€€€€€€@R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_maskk
lstm_cell/ones_likeOnesLikestrided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@\
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Й
lstm_cell/dropout/MulMullstm_cell/ones_like:y:0 lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@l
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::нѕ†
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>ƒ
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ї
lstm_cell/dropout/SelectV2SelectV2"lstm_cell/dropout/GreaterEqual:z:0lstm_cell/dropout/Mul:z:0"lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Н
lstm_cell/dropout_1/MulMullstm_cell/ones_like:y:0"lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@n
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::нѕ§
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ> 
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@`
lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
lstm_cell/dropout_1/SelectV2SelectV2$lstm_cell/dropout_1/GreaterEqual:z:0lstm_cell/dropout_1/Mul:z:0$lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Н
lstm_cell/dropout_2/MulMullstm_cell/ones_like:y:0"lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@n
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::нѕ§
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ> 
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@`
lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
lstm_cell/dropout_2/SelectV2SelectV2$lstm_cell/dropout_2/GreaterEqual:z:0lstm_cell/dropout_2/Mul:z:0$lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Н
lstm_cell/dropout_3/MulMullstm_cell/ones_like:y:0"lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@n
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::нѕ§
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ> 
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@`
lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
lstm_cell/dropout_3/SelectV2SelectV2$lstm_cell/dropout_3/GreaterEqual:z:0lstm_cell/dropout_3/Mul:z:0$lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@c
lstm_cell/ones_like_1OnesLikezeros:output:0*
T0*'
_output_shapes
:€€€€€€€€€d^
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?П
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:y:0"lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::нѕ§
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0g
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ> 
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€d`
lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
lstm_cell/dropout_4/SelectV2SelectV2$lstm_cell/dropout_4/GreaterEqual:z:0lstm_cell/dropout_4/Mul:z:0$lstm_cell/dropout_4/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€d^
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?П
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:y:0"lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::нѕ§
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0g
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ> 
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€d`
lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
lstm_cell/dropout_5/SelectV2SelectV2$lstm_cell/dropout_5/GreaterEqual:z:0lstm_cell/dropout_5/Mul:z:0$lstm_cell/dropout_5/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€d^
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?П
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:y:0"lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::нѕ§
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0g
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ> 
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€d`
lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
lstm_cell/dropout_6/SelectV2SelectV2$lstm_cell/dropout_6/GreaterEqual:z:0lstm_cell/dropout_6/Mul:z:0$lstm_cell/dropout_6/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€d^
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?П
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:y:0"lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::нѕ§
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0g
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ> 
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€d`
lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
lstm_cell/dropout_7/SelectV2SelectV2$lstm_cell/dropout_7/GreaterEqual:z:0lstm_cell/dropout_7/Mul:z:0$lstm_cell/dropout_7/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЕ
lstm_cell/mulMulstrided_slice_2:output:0#lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Й
lstm_cell/mul_1Mulstrided_slice_2:output:0%lstm_cell/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Й
lstm_cell/mul_2Mulstrided_slice_2:output:0%lstm_cell/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Й
lstm_cell/mul_3Mulstrided_slice_2:output:0%lstm_cell/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	@Р*
dtype0Љ
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@d:@d:@d:@d*
	num_splity
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€d]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : З
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:Р*
dtype0≤
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_splitЖ
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€d
lstm_cell/mul_4Mulzeros:output:0%lstm_cell/dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€d
lstm_cell/mul_5Mulzeros:output:0%lstm_cell/dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€d
lstm_cell/mul_6Mulzeros:output:0%lstm_cell/dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€d
lstm_cell/mul_7Mulzeros:output:0%lstm_cell/dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€d{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Э
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЕ
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€dВ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€da
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    »   r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      І
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЗ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ds
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    »   r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      І
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЗ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€d]
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ds
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€dt
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€d}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	dР*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      І
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЗ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€d_
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€dx
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : “
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_164836*
condR
while_cond_164835*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dа
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€М@: : : 28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_324
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp2@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:T P
,
_output_shapes
:€€€€€€€€€М@
 
_user_specified_nameinputs
¬	
√
while_cond_164534
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_164534___redundant_placeholder04
0while_while_cond_164534___redundant_placeholder14
0while_while_cond_164534___redundant_placeholder24
0while_while_cond_164534___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ґ9
ш
B__inference_lstm_1_layer_call_and_return_conditional_losses_163196

inputs#
lstm_cell_163112:	@Р
lstm_cell_163114:	Р#
lstm_cell_163116:	dР
identityИҐ!lstm_cell/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_maskж
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_163112lstm_cell_163114lstm_cell_163116*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_163111n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : С
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_163112lstm_cell_163114lstm_cell_163116*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_163126*
condR
while_cond_163125*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dN
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€@: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:&"
 
_user_specified_name163116:&"
 
_user_specified_name163114:&"
 
_user_specified_name163112:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
уљ
А	
while_body_164836
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	@Р@
1while_lstm_cell_split_1_readvariableop_resource_0:	Р<
)while_lstm_cell_readvariableop_resource_0:	dР
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	@Р>
/while_lstm_cell_split_1_readvariableop_resource:	Р:
'while_lstm_cell_readvariableop_resource:	dРИҐwhile/lstm_cell/ReadVariableOpҐ while/lstm_cell/ReadVariableOp_1Ґ while/lstm_cell/ReadVariableOp_2Ґ while/lstm_cell/ReadVariableOp_3Ґ$while/lstm_cell/split/ReadVariableOpҐ&while/lstm_cell/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype0Й
while/lstm_cell/ones_likeOnesLike0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*'
_output_shapes
:€€€€€€€€€@b
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Ы
while/lstm_cell/dropout/MulMulwhile/lstm_cell/ones_like:y:0&while/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@x
while/lstm_cell/dropout/ShapeShapewhile/lstm_cell/ones_like:y:0*
T0*
_output_shapes
::нѕђ
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>÷
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@d
while/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ”
 while/lstm_cell/dropout/SelectV2SelectV2(while/lstm_cell/dropout/GreaterEqual:z:0while/lstm_cell/dropout/Mul:z:0(while/lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@d
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Я
while/lstm_cell/dropout_1/MulMulwhile/lstm_cell/ones_like:y:0(while/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@z
while/lstm_cell/dropout_1/ShapeShapewhile/lstm_cell/ones_like:y:0*
T0*
_output_shapes
::нѕ∞
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>№
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@f
!while/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    џ
"while/lstm_cell/dropout_1/SelectV2SelectV2*while/lstm_cell/dropout_1/GreaterEqual:z:0!while/lstm_cell/dropout_1/Mul:z:0*while/lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@d
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Я
while/lstm_cell/dropout_2/MulMulwhile/lstm_cell/ones_like:y:0(while/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@z
while/lstm_cell/dropout_2/ShapeShapewhile/lstm_cell/ones_like:y:0*
T0*
_output_shapes
::нѕ∞
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>№
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@f
!while/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    џ
"while/lstm_cell/dropout_2/SelectV2SelectV2*while/lstm_cell/dropout_2/GreaterEqual:z:0!while/lstm_cell/dropout_2/Mul:z:0*while/lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@d
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Я
while/lstm_cell/dropout_3/MulMulwhile/lstm_cell/ones_like:y:0(while/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@z
while/lstm_cell/dropout_3/ShapeShapewhile/lstm_cell/ones_like:y:0*
T0*
_output_shapes
::нѕ∞
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>№
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@f
!while/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    џ
"while/lstm_cell/dropout_3/SelectV2SelectV2*while/lstm_cell/dropout_3/GreaterEqual:z:0!while/lstm_cell/dropout_3/Mul:z:0*while/lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@n
while/lstm_cell/ones_like_1OnesLikewhile_placeholder_2*
T0*'
_output_shapes
:€€€€€€€€€dd
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?°
while/lstm_cell/dropout_4/MulMulwhile/lstm_cell/ones_like_1:y:0(while/lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell/dropout_4/ShapeShapewhile/lstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::нѕ∞
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0m
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>№
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€df
!while/lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    џ
"while/lstm_cell/dropout_4/SelectV2SelectV2*while/lstm_cell/dropout_4/GreaterEqual:z:0!while/lstm_cell/dropout_4/Mul:z:0*while/lstm_cell/dropout_4/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dd
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?°
while/lstm_cell/dropout_5/MulMulwhile/lstm_cell/ones_like_1:y:0(while/lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell/dropout_5/ShapeShapewhile/lstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::нѕ∞
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0m
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>№
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€df
!while/lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    џ
"while/lstm_cell/dropout_5/SelectV2SelectV2*while/lstm_cell/dropout_5/GreaterEqual:z:0!while/lstm_cell/dropout_5/Mul:z:0*while/lstm_cell/dropout_5/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dd
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?°
while/lstm_cell/dropout_6/MulMulwhile/lstm_cell/ones_like_1:y:0(while/lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell/dropout_6/ShapeShapewhile/lstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::нѕ∞
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0m
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>№
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€df
!while/lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    џ
"while/lstm_cell/dropout_6/SelectV2SelectV2*while/lstm_cell/dropout_6/GreaterEqual:z:0!while/lstm_cell/dropout_6/Mul:z:0*while/lstm_cell/dropout_6/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dd
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?°
while/lstm_cell/dropout_7/MulMulwhile/lstm_cell/ones_like_1:y:0(while/lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell/dropout_7/ShapeShapewhile/lstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::нѕ∞
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0m
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>№
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€df
!while/lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    џ
"while/lstm_cell/dropout_7/SelectV2SelectV2*while/lstm_cell/dropout_7/GreaterEqual:z:0!while/lstm_cell/dropout_7/Mul:z:0*while/lstm_cell/dropout_7/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€d©
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@≠
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@≠
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@≠
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	@Р*
dtype0ќ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@d:@d:@d:@d*
	num_splitЛ
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dП
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dП
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dП
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dc
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Х
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0ƒ
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_splitШ
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€dР
while/lstm_cell/mul_4Mulwhile_placeholder_2+while/lstm_cell/dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dР
while/lstm_cell/mul_5Mulwhile_placeholder_2+while/lstm_cell/dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dР
while/lstm_cell/mul_6Mulwhile_placeholder_2+while/lstm_cell/dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dР
while/lstm_cell/mul_7Mulwhile_placeholder_2+while/lstm_cell/dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЙ
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЧ
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€dФ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€dm
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЛ
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    »   x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ≈
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dВ
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dЛ
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    »   x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ≈
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€di
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЕ
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЛ
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ≈
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€dk
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€dК
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : л
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dv
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dВ

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
’}
¶
E__inference_lstm_cell_layer_call_and_return_conditional_losses_162918

inputs

states
states_10
split_readvariableop_resource:	@Р.
split_1_readvariableop_resource:	Р*
readvariableop_resource:	dР
identity

identity_1

identity_2ИҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2ҐReadVariableOp_3Ґsplit/ReadVariableOpҐsplit_1/ReadVariableOpO
	ones_likeOnesLikeinputs*
T0*'
_output_shapes
:€€€€€€€€€@R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?k
dropout/MulMulones_like:y:0dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@X
dropout/ShapeShapeones_like:y:0*
T0*
_output_shapes
::нѕМ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?o
dropout_1/MulMulones_like:y:0dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Z
dropout_1/ShapeShapeones_like:y:0*
T0*
_output_shapes
::нѕР
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>ђ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@V
dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_1/SelectV2SelectV2dropout_1/GreaterEqual:z:0dropout_1/Mul:z:0dropout_1/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?o
dropout_2/MulMulones_like:y:0dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Z
dropout_2/ShapeShapeones_like:y:0*
T0*
_output_shapes
::нѕР
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>ђ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@V
dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_2/SelectV2SelectV2dropout_2/GreaterEqual:z:0dropout_2/Mul:z:0dropout_2/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@T
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?o
dropout_3/MulMulones_like:y:0dropout_3/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Z
dropout_3/ShapeShapeones_like:y:0*
T0*
_output_shapes
::нѕР
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>ђ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@V
dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_3/SelectV2SelectV2dropout_3/GreaterEqual:z:0dropout_3/Mul:z:0dropout_3/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Q
ones_like_1OnesLikestates*
T0*'
_output_shapes
:€€€€€€€€€dT
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?q
dropout_4/MulMulones_like_1:y:0dropout_4/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€d\
dropout_4/ShapeShapeones_like_1:y:0*
T0*
_output_shapes
::нѕР
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0]
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>ђ
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€dV
dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_4/SelectV2SelectV2dropout_4/GreaterEqual:z:0dropout_4/Mul:z:0dropout_4/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dT
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?q
dropout_5/MulMulones_like_1:y:0dropout_5/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€d\
dropout_5/ShapeShapeones_like_1:y:0*
T0*
_output_shapes
::нѕР
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0]
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>ђ
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€dV
dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_5/SelectV2SelectV2dropout_5/GreaterEqual:z:0dropout_5/Mul:z:0dropout_5/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dT
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?q
dropout_6/MulMulones_like_1:y:0dropout_6/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€d\
dropout_6/ShapeShapeones_like_1:y:0*
T0*
_output_shapes
::нѕР
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0]
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>ђ
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€dV
dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_6/SelectV2SelectV2dropout_6/GreaterEqual:z:0dropout_6/Mul:z:0dropout_6/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dT
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?q
dropout_7/MulMulones_like_1:y:0dropout_7/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€d\
dropout_7/ShapeShapeones_like_1:y:0*
T0*
_output_shapes
::нѕР
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€d*
dtype0]
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>ђ
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€dV
dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_7/SelectV2SelectV2dropout_7/GreaterEqual:z:0dropout_7/Mul:z:0dropout_7/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€d_
mulMulinputsdropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@c
mul_1Mulinputsdropout_1/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@c
mul_2Mulinputsdropout_2/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@c
mul_3Mulinputsdropout_3/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	@Р*
dtype0Ю
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@d:@d:@d:@d*
	num_split[
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d_
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:€€€€€€€€€d_
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:€€€€€€€€€d_
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:Р*
dtype0Ф
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dl
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€dl
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€dl
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€dc
mul_4Mulstatesdropout_4/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dc
mul_5Mulstatesdropout_5/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dc
mul_6Mulstatesdropout_6/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dc
mul_7Mulstatesdropout_7/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	dР*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      л
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskg
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€dd
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€dM
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€di
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	dР*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    »   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      х
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maski
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€dQ
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dW
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€di
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	dР*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    »   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      х
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maski
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€dI
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€dU
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€dV
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€di
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	dР*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      х
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maski
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€dQ
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€dK
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€dZ
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dY
IdentityIdentity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€d[

Identity_1Identity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dЬ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€@:€€€€€€€€€d:€€€€€€€€€d: : : 2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32 
ReadVariableOpReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:OK
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_namestates:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
љA
®
E__inference_lstm_cell_layer_call_and_return_conditional_losses_165542

inputs
states_0
states_10
split_readvariableop_resource:	@Р.
split_1_readvariableop_resource:	Р*
readvariableop_resource:	dР
identity

identity_1

identity_2ИҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2ҐReadVariableOp_3Ґsplit/ReadVariableOpҐsplit_1/ReadVariableOpO
	ones_likeOnesLikeinputs*
T0*'
_output_shapes
:€€€€€€€€€@S
ones_like_1OnesLikestates_0*
T0*'
_output_shapes
:€€€€€€€€€dS
mulMulinputsones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@U
mul_1Mulinputsones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@U
mul_2Mulinputsones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@U
mul_3Mulinputsones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	@Р*
dtype0Ю
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@d:@d:@d:@d*
	num_split[
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d_
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:€€€€€€€€€d_
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:€€€€€€€€€d_
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:Р*
dtype0Ф
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dl
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€dl
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€dl
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€dY
mul_4Mulstates_0ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dY
mul_5Mulstates_0ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dY
mul_6Mulstates_0ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dY
mul_7Mulstates_0ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	dР*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      л
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskg
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€dd
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€dM
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€di
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	dР*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    »   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      х
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maski
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€dQ
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dW
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€di
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	dР*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    »   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      х
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maski
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€dI
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€dU
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€dV
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€di
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	dР*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      х
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maski
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€dQ
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€dK
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€dZ
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dY
IdentityIdentity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€d[

Identity_1Identity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dЬ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€@:€€€€€€€€€d:€€€€€€€€€d: : : 2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32 
ReadVariableOpReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_1:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_0:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
√p
А	
while_body_163767
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	@Р@
1while_lstm_cell_split_1_readvariableop_resource_0:	Р<
)while_lstm_cell_readvariableop_resource_0:	dР
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	@Р>
/while_lstm_cell_split_1_readvariableop_resource:	Р:
'while_lstm_cell_readvariableop_resource:	dРИҐwhile/lstm_cell/ReadVariableOpҐ while/lstm_cell/ReadVariableOp_1Ґ while/lstm_cell/ReadVariableOp_2Ґ while/lstm_cell/ReadVariableOp_3Ґ$while/lstm_cell/split/ReadVariableOpҐ&while/lstm_cell/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype0Й
while/lstm_cell/ones_likeOnesLike0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*'
_output_shapes
:€€€€€€€€€@n
while/lstm_cell/ones_like_1OnesLikewhile_placeholder_2*
T0*'
_output_shapes
:€€€€€€€€€dЭ
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@Я
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@Я
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@Я
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€@a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	@Р*
dtype0ќ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@d:@d:@d:@d*
	num_splitЛ
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dП
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dП
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dП
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dc
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Х
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0ƒ
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_splitШ
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€dД
while/lstm_cell/mul_4Mulwhile_placeholder_2while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dД
while/lstm_cell/mul_5Mulwhile_placeholder_2while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dД
while/lstm_cell/mul_6Mulwhile_placeholder_2while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dД
while/lstm_cell/mul_7Mulwhile_placeholder_2while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dЙ
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЧ
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€dФ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€dm
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЛ
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    »   x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ≈
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dВ
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dЛ
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    »   x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ≈
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€di
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЕ
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€dЖ
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЛ
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ≈
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€dk
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€dК
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : л
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dv
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dВ

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
ё%
ќ
while_body_162933
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_162957_0:	@Р'
while_lstm_cell_162959_0:	Р+
while_lstm_cell_162961_0:	dР
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_162957:	@Р%
while_lstm_cell_162959:	Р)
while_lstm_cell_162961:	dРИҐ'while/lstm_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype0§
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_162957_0while_lstm_cell_162959_0while_lstm_cell_162961_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_162918r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Н
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dН
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dR

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"2
while_lstm_cell_162957while_lstm_cell_162957_0"2
while_lstm_cell_162959while_lstm_cell_162959_0"2
while_lstm_cell_162961while_lstm_cell_162961_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:&
"
 
_user_specified_name162961:&	"
 
_user_specified_name162959:&"
 
_user_specified_name162957:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter"нL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*њ
serving_defaultЂ
P
embedding_4_input;
#serving_default_embedding_4_input:0€€€€€€€€€М;
dense_10
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:чЫ
џ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
µ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
Џ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
ї
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias"
_tf_keras_layer
J
0
%1
&2
'3
#4
$5"
trackable_list_wrapper
C
%0
&1
'2
#3
$4"
trackable_list_wrapper
 "
trackable_list_wrapper
 
(non_trainable_variables

)layers
*metrics
+layer_regularization_losses
,layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
Ќ
-trace_0
.trace_12Ц
-__inference_sequential_4_layer_call_fn_163929
-__inference_sequential_4_layer_call_fn_163946µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z-trace_0z.trace_1
Г
/trace_0
0trace_12ћ
H__inference_sequential_4_layer_call_and_return_conditional_losses_163656
H__inference_sequential_4_layer_call_and_return_conditional_losses_163912µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z/trace_0z0trace_1
÷B”
!__inference__wrapped_model_162746embedding_4_input"Ш
С≤Н
FullArgSpec
argsЪ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ь
1
_variables
2_iterations
3_learning_rate
4_index_dict
5
_momentums
6_velocities
7_update_step_xla"
experimentalOptimizer
,
8serving_default"
signature_map
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ж
>trace_02…
,__inference_embedding_4_layer_call_fn_164011Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z>trace_0
Б
?trace_02д
G__inference_embedding_4_layer_call_and_return_conditional_losses_164020Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z?trace_0
*:(
Рњ@2embedding_4/embeddings
5
%0
&1
'2"
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
є

@states
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
№
Ftrace_0
Gtrace_1
Htrace_2
Itrace_32с
'__inference_lstm_1_layer_call_fn_164031
'__inference_lstm_1_layer_call_fn_164042
'__inference_lstm_1_layer_call_fn_164053
'__inference_lstm_1_layer_call_fn_164064 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zFtrace_0zGtrace_1zHtrace_2zItrace_3
»
Jtrace_0
Ktrace_1
Ltrace_2
Mtrace_32Ё
B__inference_lstm_1_layer_call_and_return_conditional_losses_164429
B__inference_lstm_1_layer_call_and_return_conditional_losses_164666
B__inference_lstm_1_layer_call_and_return_conditional_losses_165031
B__inference_lstm_1_layer_call_and_return_conditional_losses_165268 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zJtrace_0zKtrace_1zLtrace_2zMtrace_3
"
_generic_user_object
ш
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses
T_random_generator
U
state_size

%kernel
&recurrent_kernel
'bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
в
[trace_02≈
(__inference_dense_1_layer_call_fn_165277Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z[trace_0
э
\trace_02а
C__inference_dense_1_layer_call_and_return_conditional_losses_165288Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z\trace_0
 :d2dense_1/kernel
:2dense_1/bias
*:(	@Р2lstm_1/lstm_cell/kernel
4:2	dР2!lstm_1/lstm_cell/recurrent_kernel
$:"Р2lstm_1/lstm_cell/bias
'
0"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
цBу
-__inference_sequential_4_layer_call_fn_163929embedding_4_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
-__inference_sequential_4_layer_call_fn_163946embedding_4_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
СBО
H__inference_sequential_4_layer_call_and_return_conditional_losses_163656embedding_4_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
СBО
H__inference_sequential_4_layer_call_and_return_conditional_losses_163912embedding_4_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
n
20
_1
`2
a3
b4
c5
d6
e7
f8
g9
h10"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
C
_0
a1
c2
e3
g4"
trackable_list_wrapper
C
`0
b1
d2
f3
h4"
trackable_list_wrapper
µ2≤ѓ
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
дBб
$__inference_signature_wrapper_164004embedding_4_input"£
Ь≤Ш
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 &

kwonlyargsЪ
jembedding_4_input
kwonlydefaults
 
annotations™ *
 
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
÷B”
,__inference_embedding_4_layer_call_fn_164011inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
сBо
G__inference_embedding_4_layer_call_and_return_conditional_losses_164020inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
шBх
'__inference_lstm_1_layer_call_fn_164031inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
'__inference_lstm_1_layer_call_fn_164042inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
'__inference_lstm_1_layer_call_fn_164053inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
'__inference_lstm_1_layer_call_fn_164064inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
УBР
B__inference_lstm_1_layer_call_and_return_conditional_losses_164429inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
УBР
B__inference_lstm_1_layer_call_and_return_conditional_losses_164666inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
СBО
B__inference_lstm_1_layer_call_and_return_conditional_losses_165031inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
СBО
B__inference_lstm_1_layer_call_and_return_conditional_losses_165268inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
5
%0
&1
'2"
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
≈
ntrace_0
otrace_12О
*__inference_lstm_cell_layer_call_fn_165305
*__inference_lstm_cell_layer_call_fn_165322≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zntrace_0zotrace_1
ы
ptrace_0
qtrace_12ƒ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_165464
E__inference_lstm_cell_layer_call_and_return_conditional_losses_165542≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zptrace_0zqtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
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
“Bѕ
(__inference_dense_1_layer_call_fn_165277inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_dense_1_layer_call_and_return_conditional_losses_165288inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
N
r	variables
s	keras_api
	ttotal
	ucount"
_tf_keras_metric
^
v	variables
w	keras_api
	xtotal
	ycount
z
_fn_kwargs"
_tf_keras_metric
/:-	@Р2Adam/m/lstm_1/lstm_cell/kernel
/:-	@Р2Adam/v/lstm_1/lstm_cell/kernel
9:7	dР2(Adam/m/lstm_1/lstm_cell/recurrent_kernel
9:7	dР2(Adam/v/lstm_1/lstm_cell/recurrent_kernel
):'Р2Adam/m/lstm_1/lstm_cell/bias
):'Р2Adam/v/lstm_1/lstm_cell/bias
%:#d2Adam/m/dense_1/kernel
%:#d2Adam/v/dense_1/kernel
:2Adam/m/dense_1/bias
:2Adam/v/dense_1/bias
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
юBы
*__inference_lstm_cell_layer_call_fn_165305inputsstates_0states_1"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
юBы
*__inference_lstm_cell_layer_call_fn_165322inputsstates_0states_1"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЩBЦ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_165464inputsstates_0states_1"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЩBЦ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_165542inputsstates_0states_1"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
.
t0
u1"
trackable_list_wrapper
-
r	variables"
_generic_user_object
:  (2total
:  (2count
.
x0
y1"
trackable_list_wrapper
-
v	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperЭ
!__inference__wrapped_model_162746x%'&#$;Ґ8
1Ґ.
,К)
embedding_4_input€€€€€€€€€М
™ "1™.
,
dense_1!К
dense_1€€€€€€€€€™
C__inference_dense_1_layer_call_and_return_conditional_losses_165288c#$/Ґ,
%Ґ"
 К
inputs€€€€€€€€€d
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Д
(__inference_dense_1_layer_call_fn_165277X#$/Ґ,
%Ґ"
 К
inputs€€€€€€€€€d
™ "!К
unknown€€€€€€€€€≥
G__inference_embedding_4_layer_call_and_return_conditional_losses_164020h0Ґ-
&Ґ#
!К
inputs€€€€€€€€€М
™ "1Ґ.
'К$
tensor_0€€€€€€€€€М@
Ъ Н
,__inference_embedding_4_layer_call_fn_164011]0Ґ-
&Ґ#
!К
inputs€€€€€€€€€М
™ "&К#
unknown€€€€€€€€€М@Ћ
B__inference_lstm_1_layer_call_and_return_conditional_losses_164429Д%'&OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€@

 
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€d
Ъ Ћ
B__inference_lstm_1_layer_call_and_return_conditional_losses_164666Д%'&OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€@

 
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€d
Ъ ї
B__inference_lstm_1_layer_call_and_return_conditional_losses_165031u%'&@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€М@

 
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€d
Ъ ї
B__inference_lstm_1_layer_call_and_return_conditional_losses_165268u%'&@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€М@

 
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€d
Ъ §
'__inference_lstm_1_layer_call_fn_164031y%'&OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€@

 
p

 
™ "!К
unknown€€€€€€€€€d§
'__inference_lstm_1_layer_call_fn_164042y%'&OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€@

 
p 

 
™ "!К
unknown€€€€€€€€€dХ
'__inference_lstm_1_layer_call_fn_164053j%'&@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€М@

 
p

 
™ "!К
unknown€€€€€€€€€dХ
'__inference_lstm_1_layer_call_fn_164064j%'&@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€М@

 
p 

 
™ "!К
unknown€€€€€€€€€dё
E__inference_lstm_cell_layer_call_and_return_conditional_losses_165464Ф%'&АҐ}
vҐs
 К
inputs€€€€€€€€€@
KҐH
"К
states_0€€€€€€€€€d
"К
states_1€€€€€€€€€d
p
™ "ЙҐЕ
~Ґ{
$К!

tensor_0_0€€€€€€€€€d
SЪP
&К#
tensor_0_1_0€€€€€€€€€d
&К#
tensor_0_1_1€€€€€€€€€d
Ъ ё
E__inference_lstm_cell_layer_call_and_return_conditional_losses_165542Ф%'&АҐ}
vҐs
 К
inputs€€€€€€€€€@
KҐH
"К
states_0€€€€€€€€€d
"К
states_1€€€€€€€€€d
p 
™ "ЙҐЕ
~Ґ{
$К!

tensor_0_0€€€€€€€€€d
SЪP
&К#
tensor_0_1_0€€€€€€€€€d
&К#
tensor_0_1_1€€€€€€€€€d
Ъ ±
*__inference_lstm_cell_layer_call_fn_165305В%'&АҐ}
vҐs
 К
inputs€€€€€€€€€@
KҐH
"К
states_0€€€€€€€€€d
"К
states_1€€€€€€€€€d
p
™ "xҐu
"К
tensor_0€€€€€€€€€d
OЪL
$К!

tensor_1_0€€€€€€€€€d
$К!

tensor_1_1€€€€€€€€€d±
*__inference_lstm_cell_layer_call_fn_165322В%'&АҐ}
vҐs
 К
inputs€€€€€€€€€@
KҐH
"К
states_0€€€€€€€€€d
"К
states_1€€€€€€€€€d
p 
™ "xҐu
"К
tensor_0€€€€€€€€€d
OЪL
$К!

tensor_1_0€€€€€€€€€d
$К!

tensor_1_1€€€€€€€€€d«
H__inference_sequential_4_layer_call_and_return_conditional_losses_163656{%'&#$CҐ@
9Ґ6
,К)
embedding_4_input€€€€€€€€€М
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ «
H__inference_sequential_4_layer_call_and_return_conditional_losses_163912{%'&#$CҐ@
9Ґ6
,К)
embedding_4_input€€€€€€€€€М
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ °
-__inference_sequential_4_layer_call_fn_163929p%'&#$CҐ@
9Ґ6
,К)
embedding_4_input€€€€€€€€€М
p

 
™ "!К
unknown€€€€€€€€€°
-__inference_sequential_4_layer_call_fn_163946p%'&#$CҐ@
9Ґ6
,К)
embedding_4_input€€€€€€€€€М
p 

 
™ "!К
unknown€€€€€€€€€ґ
$__inference_signature_wrapper_164004Н%'&#$PҐM
Ґ 
F™C
A
embedding_4_input,К)
embedding_4_input€€€€€€€€€М"1™.
,
dense_1!К
dense_1€€€€€€€€€