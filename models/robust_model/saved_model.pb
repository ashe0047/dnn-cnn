Ù!
­ý
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
¼
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
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

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
û
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%·Ñ8"&
exponential_avg_factorfloat%  ?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
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
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
Á
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
executor_typestring ¨
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8±ð
³
-Adam/block_108/batch_normalization_217/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-Adam/block_108/batch_normalization_217/beta/v
¬
AAdam/block_108/batch_normalization_217/beta/v/Read/ReadVariableOpReadVariableOp-Adam/block_108/batch_normalization_217/beta/v*
_output_shapes	
:*
dtype0
µ
.Adam/block_108/batch_normalization_217/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.Adam/block_108/batch_normalization_217/gamma/v
®
BAdam/block_108/batch_normalization_217/gamma/v/Read/ReadVariableOpReadVariableOp.Adam/block_108/batch_normalization_217/gamma/v*
_output_shapes	
:*
dtype0

 Adam/block_108/conv2d_225/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/block_108/conv2d_225/bias/v

4Adam/block_108/conv2d_225/bias/v/Read/ReadVariableOpReadVariableOp Adam/block_108/conv2d_225/bias/v*
_output_shapes	
:*
dtype0
ª
"Adam/block_108/conv2d_225/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/block_108/conv2d_225/kernel/v
£
6Adam/block_108/conv2d_225/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/block_108/conv2d_225/kernel/v*(
_output_shapes
:*
dtype0
³
-Adam/block_108/batch_normalization_216/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-Adam/block_108/batch_normalization_216/beta/v
¬
AAdam/block_108/batch_normalization_216/beta/v/Read/ReadVariableOpReadVariableOp-Adam/block_108/batch_normalization_216/beta/v*
_output_shapes	
:*
dtype0
µ
.Adam/block_108/batch_normalization_216/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.Adam/block_108/batch_normalization_216/gamma/v
®
BAdam/block_108/batch_normalization_216/gamma/v/Read/ReadVariableOpReadVariableOp.Adam/block_108/batch_normalization_216/gamma/v*
_output_shapes	
:*
dtype0

 Adam/block_108/conv2d_224/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/block_108/conv2d_224/bias/v

4Adam/block_108/conv2d_224/bias/v/Read/ReadVariableOpReadVariableOp Adam/block_108/conv2d_224/bias/v*
_output_shapes	
:*
dtype0
©
"Adam/block_108/conv2d_224/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/block_108/conv2d_224/kernel/v
¢
6Adam/block_108/conv2d_224/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/block_108/conv2d_224/kernel/v*'
_output_shapes
:@*
dtype0
²
-Adam/block_107/batch_normalization_215/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*>
shared_name/-Adam/block_107/batch_normalization_215/beta/v
«
AAdam/block_107/batch_normalization_215/beta/v/Read/ReadVariableOpReadVariableOp-Adam/block_107/batch_normalization_215/beta/v*
_output_shapes
:@*
dtype0
´
.Adam/block_107/batch_normalization_215/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*?
shared_name0.Adam/block_107/batch_normalization_215/gamma/v
­
BAdam/block_107/batch_normalization_215/gamma/v/Read/ReadVariableOpReadVariableOp.Adam/block_107/batch_normalization_215/gamma/v*
_output_shapes
:@*
dtype0

 Adam/block_107/conv2d_223/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/block_107/conv2d_223/bias/v

4Adam/block_107/conv2d_223/bias/v/Read/ReadVariableOpReadVariableOp Adam/block_107/conv2d_223/bias/v*
_output_shapes
:@*
dtype0
¨
"Adam/block_107/conv2d_223/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*3
shared_name$"Adam/block_107/conv2d_223/kernel/v
¡
6Adam/block_107/conv2d_223/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/block_107/conv2d_223/kernel/v*&
_output_shapes
:@@*
dtype0
²
-Adam/block_107/batch_normalization_214/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*>
shared_name/-Adam/block_107/batch_normalization_214/beta/v
«
AAdam/block_107/batch_normalization_214/beta/v/Read/ReadVariableOpReadVariableOp-Adam/block_107/batch_normalization_214/beta/v*
_output_shapes
:@*
dtype0
´
.Adam/block_107/batch_normalization_214/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*?
shared_name0.Adam/block_107/batch_normalization_214/gamma/v
­
BAdam/block_107/batch_normalization_214/gamma/v/Read/ReadVariableOpReadVariableOp.Adam/block_107/batch_normalization_214/gamma/v*
_output_shapes
:@*
dtype0

 Adam/block_107/conv2d_222/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/block_107/conv2d_222/bias/v

4Adam/block_107/conv2d_222/bias/v/Read/ReadVariableOpReadVariableOp Adam/block_107/conv2d_222/bias/v*
_output_shapes
:@*
dtype0
¨
"Adam/block_107/conv2d_222/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*3
shared_name$"Adam/block_107/conv2d_222/kernel/v
¡
6Adam/block_107/conv2d_222/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/block_107/conv2d_222/kernel/v*&
_output_shapes
: @*
dtype0
²
-Adam/block_106/batch_normalization_213/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *>
shared_name/-Adam/block_106/batch_normalization_213/beta/v
«
AAdam/block_106/batch_normalization_213/beta/v/Read/ReadVariableOpReadVariableOp-Adam/block_106/batch_normalization_213/beta/v*
_output_shapes
: *
dtype0
´
.Adam/block_106/batch_normalization_213/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *?
shared_name0.Adam/block_106/batch_normalization_213/gamma/v
­
BAdam/block_106/batch_normalization_213/gamma/v/Read/ReadVariableOpReadVariableOp.Adam/block_106/batch_normalization_213/gamma/v*
_output_shapes
: *
dtype0

 Adam/block_106/conv2d_221/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/block_106/conv2d_221/bias/v

4Adam/block_106/conv2d_221/bias/v/Read/ReadVariableOpReadVariableOp Adam/block_106/conv2d_221/bias/v*
_output_shapes
: *
dtype0
¨
"Adam/block_106/conv2d_221/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *3
shared_name$"Adam/block_106/conv2d_221/kernel/v
¡
6Adam/block_106/conv2d_221/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/block_106/conv2d_221/kernel/v*&
_output_shapes
:  *
dtype0
²
-Adam/block_106/batch_normalization_212/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *>
shared_name/-Adam/block_106/batch_normalization_212/beta/v
«
AAdam/block_106/batch_normalization_212/beta/v/Read/ReadVariableOpReadVariableOp-Adam/block_106/batch_normalization_212/beta/v*
_output_shapes
: *
dtype0
´
.Adam/block_106/batch_normalization_212/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *?
shared_name0.Adam/block_106/batch_normalization_212/gamma/v
­
BAdam/block_106/batch_normalization_212/gamma/v/Read/ReadVariableOpReadVariableOp.Adam/block_106/batch_normalization_212/gamma/v*
_output_shapes
: *
dtype0

 Adam/block_106/conv2d_220/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/block_106/conv2d_220/bias/v

4Adam/block_106/conv2d_220/bias/v/Read/ReadVariableOpReadVariableOp Adam/block_106/conv2d_220/bias/v*
_output_shapes
: *
dtype0
¨
"Adam/block_106/conv2d_220/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/block_106/conv2d_220/kernel/v
¡
6Adam/block_106/conv2d_220/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/block_106/conv2d_220/kernel/v*&
_output_shapes
: *
dtype0

Adam/dense_41/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_41/bias/v
y
(Adam/dense_41/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_41/bias/v*
_output_shapes
:
*
dtype0

Adam/dense_41/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*'
shared_nameAdam/dense_41/kernel/v

*Adam/dense_41/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_41/kernel/v*
_output_shapes
:	
*
dtype0
³
-Adam/block_108/batch_normalization_217/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-Adam/block_108/batch_normalization_217/beta/m
¬
AAdam/block_108/batch_normalization_217/beta/m/Read/ReadVariableOpReadVariableOp-Adam/block_108/batch_normalization_217/beta/m*
_output_shapes	
:*
dtype0
µ
.Adam/block_108/batch_normalization_217/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.Adam/block_108/batch_normalization_217/gamma/m
®
BAdam/block_108/batch_normalization_217/gamma/m/Read/ReadVariableOpReadVariableOp.Adam/block_108/batch_normalization_217/gamma/m*
_output_shapes	
:*
dtype0

 Adam/block_108/conv2d_225/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/block_108/conv2d_225/bias/m

4Adam/block_108/conv2d_225/bias/m/Read/ReadVariableOpReadVariableOp Adam/block_108/conv2d_225/bias/m*
_output_shapes	
:*
dtype0
ª
"Adam/block_108/conv2d_225/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/block_108/conv2d_225/kernel/m
£
6Adam/block_108/conv2d_225/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/block_108/conv2d_225/kernel/m*(
_output_shapes
:*
dtype0
³
-Adam/block_108/batch_normalization_216/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-Adam/block_108/batch_normalization_216/beta/m
¬
AAdam/block_108/batch_normalization_216/beta/m/Read/ReadVariableOpReadVariableOp-Adam/block_108/batch_normalization_216/beta/m*
_output_shapes	
:*
dtype0
µ
.Adam/block_108/batch_normalization_216/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.Adam/block_108/batch_normalization_216/gamma/m
®
BAdam/block_108/batch_normalization_216/gamma/m/Read/ReadVariableOpReadVariableOp.Adam/block_108/batch_normalization_216/gamma/m*
_output_shapes	
:*
dtype0

 Adam/block_108/conv2d_224/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/block_108/conv2d_224/bias/m

4Adam/block_108/conv2d_224/bias/m/Read/ReadVariableOpReadVariableOp Adam/block_108/conv2d_224/bias/m*
_output_shapes	
:*
dtype0
©
"Adam/block_108/conv2d_224/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/block_108/conv2d_224/kernel/m
¢
6Adam/block_108/conv2d_224/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/block_108/conv2d_224/kernel/m*'
_output_shapes
:@*
dtype0
²
-Adam/block_107/batch_normalization_215/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*>
shared_name/-Adam/block_107/batch_normalization_215/beta/m
«
AAdam/block_107/batch_normalization_215/beta/m/Read/ReadVariableOpReadVariableOp-Adam/block_107/batch_normalization_215/beta/m*
_output_shapes
:@*
dtype0
´
.Adam/block_107/batch_normalization_215/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*?
shared_name0.Adam/block_107/batch_normalization_215/gamma/m
­
BAdam/block_107/batch_normalization_215/gamma/m/Read/ReadVariableOpReadVariableOp.Adam/block_107/batch_normalization_215/gamma/m*
_output_shapes
:@*
dtype0

 Adam/block_107/conv2d_223/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/block_107/conv2d_223/bias/m

4Adam/block_107/conv2d_223/bias/m/Read/ReadVariableOpReadVariableOp Adam/block_107/conv2d_223/bias/m*
_output_shapes
:@*
dtype0
¨
"Adam/block_107/conv2d_223/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*3
shared_name$"Adam/block_107/conv2d_223/kernel/m
¡
6Adam/block_107/conv2d_223/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/block_107/conv2d_223/kernel/m*&
_output_shapes
:@@*
dtype0
²
-Adam/block_107/batch_normalization_214/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*>
shared_name/-Adam/block_107/batch_normalization_214/beta/m
«
AAdam/block_107/batch_normalization_214/beta/m/Read/ReadVariableOpReadVariableOp-Adam/block_107/batch_normalization_214/beta/m*
_output_shapes
:@*
dtype0
´
.Adam/block_107/batch_normalization_214/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*?
shared_name0.Adam/block_107/batch_normalization_214/gamma/m
­
BAdam/block_107/batch_normalization_214/gamma/m/Read/ReadVariableOpReadVariableOp.Adam/block_107/batch_normalization_214/gamma/m*
_output_shapes
:@*
dtype0

 Adam/block_107/conv2d_222/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/block_107/conv2d_222/bias/m

4Adam/block_107/conv2d_222/bias/m/Read/ReadVariableOpReadVariableOp Adam/block_107/conv2d_222/bias/m*
_output_shapes
:@*
dtype0
¨
"Adam/block_107/conv2d_222/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*3
shared_name$"Adam/block_107/conv2d_222/kernel/m
¡
6Adam/block_107/conv2d_222/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/block_107/conv2d_222/kernel/m*&
_output_shapes
: @*
dtype0
²
-Adam/block_106/batch_normalization_213/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *>
shared_name/-Adam/block_106/batch_normalization_213/beta/m
«
AAdam/block_106/batch_normalization_213/beta/m/Read/ReadVariableOpReadVariableOp-Adam/block_106/batch_normalization_213/beta/m*
_output_shapes
: *
dtype0
´
.Adam/block_106/batch_normalization_213/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *?
shared_name0.Adam/block_106/batch_normalization_213/gamma/m
­
BAdam/block_106/batch_normalization_213/gamma/m/Read/ReadVariableOpReadVariableOp.Adam/block_106/batch_normalization_213/gamma/m*
_output_shapes
: *
dtype0

 Adam/block_106/conv2d_221/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/block_106/conv2d_221/bias/m

4Adam/block_106/conv2d_221/bias/m/Read/ReadVariableOpReadVariableOp Adam/block_106/conv2d_221/bias/m*
_output_shapes
: *
dtype0
¨
"Adam/block_106/conv2d_221/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *3
shared_name$"Adam/block_106/conv2d_221/kernel/m
¡
6Adam/block_106/conv2d_221/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/block_106/conv2d_221/kernel/m*&
_output_shapes
:  *
dtype0
²
-Adam/block_106/batch_normalization_212/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *>
shared_name/-Adam/block_106/batch_normalization_212/beta/m
«
AAdam/block_106/batch_normalization_212/beta/m/Read/ReadVariableOpReadVariableOp-Adam/block_106/batch_normalization_212/beta/m*
_output_shapes
: *
dtype0
´
.Adam/block_106/batch_normalization_212/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *?
shared_name0.Adam/block_106/batch_normalization_212/gamma/m
­
BAdam/block_106/batch_normalization_212/gamma/m/Read/ReadVariableOpReadVariableOp.Adam/block_106/batch_normalization_212/gamma/m*
_output_shapes
: *
dtype0

 Adam/block_106/conv2d_220/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/block_106/conv2d_220/bias/m

4Adam/block_106/conv2d_220/bias/m/Read/ReadVariableOpReadVariableOp Adam/block_106/conv2d_220/bias/m*
_output_shapes
: *
dtype0
¨
"Adam/block_106/conv2d_220/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/block_106/conv2d_220/kernel/m
¡
6Adam/block_106/conv2d_220/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/block_106/conv2d_220/kernel/m*&
_output_shapes
: *
dtype0

Adam/dense_41/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_41/bias/m
y
(Adam/dense_41/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_41/bias/m*
_output_shapes
:
*
dtype0

Adam/dense_41/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*'
shared_nameAdam/dense_41/kernel/m

*Adam/dense_41/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_41/kernel/m*
_output_shapes
:	
*
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
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
»
1block_108/batch_normalization_217/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*B
shared_name31block_108/batch_normalization_217/moving_variance
´
Eblock_108/batch_normalization_217/moving_variance/Read/ReadVariableOpReadVariableOp1block_108/batch_normalization_217/moving_variance*
_output_shapes	
:*
dtype0
³
-block_108/batch_normalization_217/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-block_108/batch_normalization_217/moving_mean
¬
Ablock_108/batch_normalization_217/moving_mean/Read/ReadVariableOpReadVariableOp-block_108/batch_normalization_217/moving_mean*
_output_shapes	
:*
dtype0
»
1block_108/batch_normalization_216/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*B
shared_name31block_108/batch_normalization_216/moving_variance
´
Eblock_108/batch_normalization_216/moving_variance/Read/ReadVariableOpReadVariableOp1block_108/batch_normalization_216/moving_variance*
_output_shapes	
:*
dtype0
³
-block_108/batch_normalization_216/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-block_108/batch_normalization_216/moving_mean
¬
Ablock_108/batch_normalization_216/moving_mean/Read/ReadVariableOpReadVariableOp-block_108/batch_normalization_216/moving_mean*
_output_shapes	
:*
dtype0
¥
&block_108/batch_normalization_217/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&block_108/batch_normalization_217/beta

:block_108/batch_normalization_217/beta/Read/ReadVariableOpReadVariableOp&block_108/batch_normalization_217/beta*
_output_shapes	
:*
dtype0
§
'block_108/batch_normalization_217/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'block_108/batch_normalization_217/gamma
 
;block_108/batch_normalization_217/gamma/Read/ReadVariableOpReadVariableOp'block_108/batch_normalization_217/gamma*
_output_shapes	
:*
dtype0

block_108/conv2d_225/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameblock_108/conv2d_225/bias

-block_108/conv2d_225/bias/Read/ReadVariableOpReadVariableOpblock_108/conv2d_225/bias*
_output_shapes	
:*
dtype0

block_108/conv2d_225/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameblock_108/conv2d_225/kernel

/block_108/conv2d_225/kernel/Read/ReadVariableOpReadVariableOpblock_108/conv2d_225/kernel*(
_output_shapes
:*
dtype0
¥
&block_108/batch_normalization_216/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&block_108/batch_normalization_216/beta

:block_108/batch_normalization_216/beta/Read/ReadVariableOpReadVariableOp&block_108/batch_normalization_216/beta*
_output_shapes	
:*
dtype0
§
'block_108/batch_normalization_216/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'block_108/batch_normalization_216/gamma
 
;block_108/batch_normalization_216/gamma/Read/ReadVariableOpReadVariableOp'block_108/batch_normalization_216/gamma*
_output_shapes	
:*
dtype0

block_108/conv2d_224/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameblock_108/conv2d_224/bias

-block_108/conv2d_224/bias/Read/ReadVariableOpReadVariableOpblock_108/conv2d_224/bias*
_output_shapes	
:*
dtype0

block_108/conv2d_224/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_nameblock_108/conv2d_224/kernel

/block_108/conv2d_224/kernel/Read/ReadVariableOpReadVariableOpblock_108/conv2d_224/kernel*'
_output_shapes
:@*
dtype0
º
1block_107/batch_normalization_215/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*B
shared_name31block_107/batch_normalization_215/moving_variance
³
Eblock_107/batch_normalization_215/moving_variance/Read/ReadVariableOpReadVariableOp1block_107/batch_normalization_215/moving_variance*
_output_shapes
:@*
dtype0
²
-block_107/batch_normalization_215/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*>
shared_name/-block_107/batch_normalization_215/moving_mean
«
Ablock_107/batch_normalization_215/moving_mean/Read/ReadVariableOpReadVariableOp-block_107/batch_normalization_215/moving_mean*
_output_shapes
:@*
dtype0
º
1block_107/batch_normalization_214/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*B
shared_name31block_107/batch_normalization_214/moving_variance
³
Eblock_107/batch_normalization_214/moving_variance/Read/ReadVariableOpReadVariableOp1block_107/batch_normalization_214/moving_variance*
_output_shapes
:@*
dtype0
²
-block_107/batch_normalization_214/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*>
shared_name/-block_107/batch_normalization_214/moving_mean
«
Ablock_107/batch_normalization_214/moving_mean/Read/ReadVariableOpReadVariableOp-block_107/batch_normalization_214/moving_mean*
_output_shapes
:@*
dtype0
¤
&block_107/batch_normalization_215/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&block_107/batch_normalization_215/beta

:block_107/batch_normalization_215/beta/Read/ReadVariableOpReadVariableOp&block_107/batch_normalization_215/beta*
_output_shapes
:@*
dtype0
¦
'block_107/batch_normalization_215/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'block_107/batch_normalization_215/gamma

;block_107/batch_normalization_215/gamma/Read/ReadVariableOpReadVariableOp'block_107/batch_normalization_215/gamma*
_output_shapes
:@*
dtype0

block_107/conv2d_223/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameblock_107/conv2d_223/bias

-block_107/conv2d_223/bias/Read/ReadVariableOpReadVariableOpblock_107/conv2d_223/bias*
_output_shapes
:@*
dtype0

block_107/conv2d_223/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*,
shared_nameblock_107/conv2d_223/kernel

/block_107/conv2d_223/kernel/Read/ReadVariableOpReadVariableOpblock_107/conv2d_223/kernel*&
_output_shapes
:@@*
dtype0
¤
&block_107/batch_normalization_214/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&block_107/batch_normalization_214/beta

:block_107/batch_normalization_214/beta/Read/ReadVariableOpReadVariableOp&block_107/batch_normalization_214/beta*
_output_shapes
:@*
dtype0
¦
'block_107/batch_normalization_214/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'block_107/batch_normalization_214/gamma

;block_107/batch_normalization_214/gamma/Read/ReadVariableOpReadVariableOp'block_107/batch_normalization_214/gamma*
_output_shapes
:@*
dtype0

block_107/conv2d_222/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameblock_107/conv2d_222/bias

-block_107/conv2d_222/bias/Read/ReadVariableOpReadVariableOpblock_107/conv2d_222/bias*
_output_shapes
:@*
dtype0

block_107/conv2d_222/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*,
shared_nameblock_107/conv2d_222/kernel

/block_107/conv2d_222/kernel/Read/ReadVariableOpReadVariableOpblock_107/conv2d_222/kernel*&
_output_shapes
: @*
dtype0
º
1block_106/batch_normalization_213/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *B
shared_name31block_106/batch_normalization_213/moving_variance
³
Eblock_106/batch_normalization_213/moving_variance/Read/ReadVariableOpReadVariableOp1block_106/batch_normalization_213/moving_variance*
_output_shapes
: *
dtype0
²
-block_106/batch_normalization_213/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *>
shared_name/-block_106/batch_normalization_213/moving_mean
«
Ablock_106/batch_normalization_213/moving_mean/Read/ReadVariableOpReadVariableOp-block_106/batch_normalization_213/moving_mean*
_output_shapes
: *
dtype0
º
1block_106/batch_normalization_212/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *B
shared_name31block_106/batch_normalization_212/moving_variance
³
Eblock_106/batch_normalization_212/moving_variance/Read/ReadVariableOpReadVariableOp1block_106/batch_normalization_212/moving_variance*
_output_shapes
: *
dtype0
²
-block_106/batch_normalization_212/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *>
shared_name/-block_106/batch_normalization_212/moving_mean
«
Ablock_106/batch_normalization_212/moving_mean/Read/ReadVariableOpReadVariableOp-block_106/batch_normalization_212/moving_mean*
_output_shapes
: *
dtype0
¤
&block_106/batch_normalization_213/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&block_106/batch_normalization_213/beta

:block_106/batch_normalization_213/beta/Read/ReadVariableOpReadVariableOp&block_106/batch_normalization_213/beta*
_output_shapes
: *
dtype0
¦
'block_106/batch_normalization_213/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'block_106/batch_normalization_213/gamma

;block_106/batch_normalization_213/gamma/Read/ReadVariableOpReadVariableOp'block_106/batch_normalization_213/gamma*
_output_shapes
: *
dtype0

block_106/conv2d_221/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameblock_106/conv2d_221/bias

-block_106/conv2d_221/bias/Read/ReadVariableOpReadVariableOpblock_106/conv2d_221/bias*
_output_shapes
: *
dtype0

block_106/conv2d_221/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *,
shared_nameblock_106/conv2d_221/kernel

/block_106/conv2d_221/kernel/Read/ReadVariableOpReadVariableOpblock_106/conv2d_221/kernel*&
_output_shapes
:  *
dtype0
¤
&block_106/batch_normalization_212/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&block_106/batch_normalization_212/beta

:block_106/batch_normalization_212/beta/Read/ReadVariableOpReadVariableOp&block_106/batch_normalization_212/beta*
_output_shapes
: *
dtype0
¦
'block_106/batch_normalization_212/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'block_106/batch_normalization_212/gamma

;block_106/batch_normalization_212/gamma/Read/ReadVariableOpReadVariableOp'block_106/batch_normalization_212/gamma*
_output_shapes
: *
dtype0

block_106/conv2d_220/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameblock_106/conv2d_220/bias

-block_106/conv2d_220/bias/Read/ReadVariableOpReadVariableOpblock_106/conv2d_220/bias*
_output_shapes
: *
dtype0

block_106/conv2d_220/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_nameblock_106/conv2d_220/kernel

/block_106/conv2d_220/kernel/Read/ReadVariableOpReadVariableOpblock_106/conv2d_220/kernel*&
_output_shapes
: *
dtype0
r
dense_41/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_41/bias
k
!dense_41/bias/Read/ReadVariableOpReadVariableOpdense_41/bias*
_output_shapes
:
*
dtype0
{
dense_41/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
* 
shared_namedense_41/kernel
t
#dense_41/kernel/Read/ReadVariableOpReadVariableOpdense_41/kernel*
_output_shapes
:	
*
dtype0

serving_default_input_37Placeholder*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
dtype0*$
shape:ÿÿÿÿÿÿÿÿÿ  
¥
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_37block_106/conv2d_220/kernelblock_106/conv2d_220/bias'block_106/batch_normalization_212/gamma&block_106/batch_normalization_212/beta-block_106/batch_normalization_212/moving_mean1block_106/batch_normalization_212/moving_varianceblock_106/conv2d_221/kernelblock_106/conv2d_221/bias'block_106/batch_normalization_213/gamma&block_106/batch_normalization_213/beta-block_106/batch_normalization_213/moving_mean1block_106/batch_normalization_213/moving_varianceblock_107/conv2d_222/kernelblock_107/conv2d_222/bias'block_107/batch_normalization_214/gamma&block_107/batch_normalization_214/beta-block_107/batch_normalization_214/moving_mean1block_107/batch_normalization_214/moving_varianceblock_107/conv2d_223/kernelblock_107/conv2d_223/bias'block_107/batch_normalization_215/gamma&block_107/batch_normalization_215/beta-block_107/batch_normalization_215/moving_mean1block_107/batch_normalization_215/moving_varianceblock_108/conv2d_224/kernelblock_108/conv2d_224/bias'block_108/batch_normalization_216/gamma&block_108/batch_normalization_216/beta-block_108/batch_normalization_216/moving_mean1block_108/batch_normalization_216/moving_varianceblock_108/conv2d_225/kernelblock_108/conv2d_225/bias'block_108/batch_normalization_217/gamma&block_108/batch_normalization_217/beta-block_108/batch_normalization_217/moving_mean1block_108/batch_normalization_217/moving_variancedense_41/kerneldense_41/bias*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_2496456

NoOpNoOp
ªô
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*äó
valueÙóBÕó BÍó
õ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
Ü
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	conv1
bn1
act1
	conv2
bn2
act2
mp
dp*
Ü
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
	#conv1
$bn1
%act1
	&conv2
'bn2
(act2
)mp
*dp*
Ü
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
	1conv1
2bn1
3act1
	4conv2
5bn2
6act2
7mp
8dp*

9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses* 
¦
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses

Ekernel
Fbias*
ª
G0
H1
I2
J3
K4
L5
M6
N7
O8
P9
Q10
R11
S12
T13
U14
V15
W16
X17
Y18
Z19
[20
\21
]22
^23
_24
`25
a26
b27
c28
d29
e30
f31
g32
h33
i34
j35
E36
F37*
Ê
G0
H1
I2
J3
K4
L5
M6
N7
S8
T9
U10
V11
W12
X13
Y14
Z15
_16
`17
a18
b19
c20
d21
e22
f23
E24
F25*
* 
°
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
ptrace_0
qtrace_1
rtrace_2
strace_3* 
6
ttrace_0
utrace_1
vtrace_2
wtrace_3* 
* 
Ì
xiter

ybeta_1

zbeta_2
	{decay
|learning_rateEmçFmèGméHmêImëJmìKmíLmîMmïNmðSmñTmòUmóVmôWmõXmöYm÷Zmø_mù`múamûbmücmýdmþemÿfmEvFvGvHvIvJvKvLvMvNvSvTvUvVvWvXvYvZv_v`vavbvcvdvevfv*

}serving_default* 
Z
G0
H1
I2
J3
K4
L5
M6
N7
O8
P9
Q10
R11*
<
G0
H1
I2
J3
K4
L5
M6
N7*
* 

~non_trainable_variables

layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
Ï
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

Gkernel
Hbias
!_jit_compiled_convolution_op*
Ü
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis
	Igamma
Jbeta
Omoving_mean
Pmoving_variance*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
Ï
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+ &call_and_return_all_conditional_losses

Kkernel
Lbias
!¡_jit_compiled_convolution_op*
Ü
¢	variables
£trainable_variables
¤regularization_losses
¥	keras_api
¦__call__
+§&call_and_return_all_conditional_losses
	¨axis
	Mgamma
Nbeta
Qmoving_mean
Rmoving_variance*

©	variables
ªtrainable_variables
«regularization_losses
¬	keras_api
­__call__
+®&call_and_return_all_conditional_losses* 

¯	variables
°trainable_variables
±regularization_losses
²	keras_api
³__call__
+´&call_and_return_all_conditional_losses* 
¬
µ	variables
¶trainable_variables
·regularization_losses
¸	keras_api
¹__call__
+º&call_and_return_all_conditional_losses
»_random_generator* 
Z
S0
T1
U2
V3
W4
X5
Y6
Z7
[8
\9
]10
^11*
<
S0
T1
U2
V3
W4
X5
Y6
Z7*
* 

¼non_trainable_variables
½layers
¾metrics
 ¿layer_regularization_losses
Àlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

Átrace_0
Âtrace_1* 

Ãtrace_0
Ätrace_1* 
Ï
Å	variables
Ætrainable_variables
Çregularization_losses
È	keras_api
É__call__
+Ê&call_and_return_all_conditional_losses

Skernel
Tbias
!Ë_jit_compiled_convolution_op*
Ü
Ì	variables
Ítrainable_variables
Îregularization_losses
Ï	keras_api
Ð__call__
+Ñ&call_and_return_all_conditional_losses
	Òaxis
	Ugamma
Vbeta
[moving_mean
\moving_variance*

Ó	variables
Ôtrainable_variables
Õregularization_losses
Ö	keras_api
×__call__
+Ø&call_and_return_all_conditional_losses* 
Ï
Ù	variables
Útrainable_variables
Ûregularization_losses
Ü	keras_api
Ý__call__
+Þ&call_and_return_all_conditional_losses

Wkernel
Xbias
!ß_jit_compiled_convolution_op*
Ü
à	variables
átrainable_variables
âregularization_losses
ã	keras_api
ä__call__
+å&call_and_return_all_conditional_losses
	æaxis
	Ygamma
Zbeta
]moving_mean
^moving_variance*

ç	variables
ètrainable_variables
éregularization_losses
ê	keras_api
ë__call__
+ì&call_and_return_all_conditional_losses* 

í	variables
îtrainable_variables
ïregularization_losses
ð	keras_api
ñ__call__
+ò&call_and_return_all_conditional_losses* 
¬
ó	variables
ôtrainable_variables
õregularization_losses
ö	keras_api
÷__call__
+ø&call_and_return_all_conditional_losses
ù_random_generator* 
Z
_0
`1
a2
b3
c4
d5
e6
f7
g8
h9
i10
j11*
<
_0
`1
a2
b3
c4
d5
e6
f7*
* 

únon_trainable_variables
ûlayers
ümetrics
 ýlayer_regularization_losses
þlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*

ÿtrace_0
trace_1* 

trace_0
trace_1* 
Ï
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

_kernel
`bias
!_jit_compiled_convolution_op*
Ü
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis
	agamma
bbeta
gmoving_mean
hmoving_variance*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
Ï
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

ckernel
dbias
!_jit_compiled_convolution_op*
Ü
	variables
trainable_variables
 regularization_losses
¡	keras_api
¢__call__
+£&call_and_return_all_conditional_losses
	¤axis
	egamma
fbeta
imoving_mean
jmoving_variance*

¥	variables
¦trainable_variables
§regularization_losses
¨	keras_api
©__call__
+ª&call_and_return_all_conditional_losses* 

«	variables
¬trainable_variables
­regularization_losses
®	keras_api
¯__call__
+°&call_and_return_all_conditional_losses* 
¬
±	variables
²trainable_variables
³regularization_losses
´	keras_api
µ__call__
+¶&call_and_return_all_conditional_losses
·_random_generator* 
* 
* 
* 

¸non_trainable_variables
¹layers
ºmetrics
 »layer_regularization_losses
¼layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses* 

½trace_0* 

¾trace_0* 

E0
F1*

E0
F1*
* 

¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*

Ätrace_0* 

Åtrace_0* 
_Y
VARIABLE_VALUEdense_41/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_41/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEblock_106/conv2d_220/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEblock_106/conv2d_220/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE'block_106/batch_normalization_212/gamma&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE&block_106/batch_normalization_212/beta&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEblock_106/conv2d_221/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEblock_106/conv2d_221/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE'block_106/batch_normalization_213/gamma&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE&block_106/batch_normalization_213/beta&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE-block_106/batch_normalization_212/moving_mean&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE1block_106/batch_normalization_212/moving_variance&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-block_106/batch_normalization_213/moving_mean'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1block_106/batch_normalization_213/moving_variance'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEblock_107/conv2d_222/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEblock_107/conv2d_222/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUE'block_107/batch_normalization_214/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&block_107/batch_normalization_214/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEblock_107/conv2d_223/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEblock_107/conv2d_223/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUE'block_107/batch_normalization_215/gamma'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&block_107/batch_normalization_215/beta'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-block_107/batch_normalization_214/moving_mean'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1block_107/batch_normalization_214/moving_variance'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-block_107/batch_normalization_215/moving_mean'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1block_107/batch_normalization_215/moving_variance'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEblock_108/conv2d_224/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEblock_108/conv2d_224/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUE'block_108/batch_normalization_216/gamma'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&block_108/batch_normalization_216/beta'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEblock_108/conv2d_225/kernel'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEblock_108/conv2d_225/bias'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUE'block_108/batch_normalization_217/gamma'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&block_108/batch_normalization_217/beta'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-block_108/batch_normalization_216/moving_mean'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1block_108/batch_normalization_216/moving_variance'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-block_108/batch_normalization_217/moving_mean'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1block_108/batch_normalization_217/moving_variance'variables/35/.ATTRIBUTES/VARIABLE_VALUE*
Z
O0
P1
Q2
R3
[4
\5
]6
^7
g8
h9
i10
j11*
'
0
1
2
3
4*

Æ0
Ç1*
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
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
O0
P1
Q2
R3*
<
0
1
2
3
4
5
6
7*
* 
* 
* 
* 
* 
* 
* 

G0
H1*

G0
H1*
* 

Ènon_trainable_variables
Élayers
Êmetrics
 Ëlayer_regularization_losses
Ìlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
 
I0
J1
O2
P3*

I0
J1*
* 

Ínon_trainable_variables
Îlayers
Ïmetrics
 Ðlayer_regularization_losses
Ñlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Òtrace_0
Ótrace_1* 

Ôtrace_0
Õtrace_1* 
* 
* 
* 
* 

Önon_trainable_variables
×layers
Ømetrics
 Ùlayer_regularization_losses
Úlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 

K0
L1*

K0
L1*
* 

Ûnon_trainable_variables
Ülayers
Ýmetrics
 Þlayer_regularization_losses
ßlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses*
* 
* 
* 
 
M0
N1
Q2
R3*

M0
N1*
* 

ànon_trainable_variables
álayers
âmetrics
 ãlayer_regularization_losses
älayer_metrics
¢	variables
£trainable_variables
¤regularization_losses
¦__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses*

åtrace_0
ætrace_1* 

çtrace_0
ètrace_1* 
* 
* 
* 
* 

énon_trainable_variables
êlayers
ëmetrics
 ìlayer_regularization_losses
ílayer_metrics
©	variables
ªtrainable_variables
«regularization_losses
­__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

înon_trainable_variables
ïlayers
ðmetrics
 ñlayer_regularization_losses
òlayer_metrics
¯	variables
°trainable_variables
±regularization_losses
³__call__
+´&call_and_return_all_conditional_losses
'´"call_and_return_conditional_losses* 

ótrace_0* 

ôtrace_0* 
* 
* 
* 

õnon_trainable_variables
ölayers
÷metrics
 ølayer_regularization_losses
ùlayer_metrics
µ	variables
¶trainable_variables
·regularization_losses
¹__call__
+º&call_and_return_all_conditional_losses
'º"call_and_return_conditional_losses* 
* 
* 
* 
 
[0
\1
]2
^3*
<
#0
$1
%2
&3
'4
(5
)6
*7*
* 
* 
* 
* 
* 
* 
* 

S0
T1*

S0
T1*
* 

únon_trainable_variables
ûlayers
ümetrics
 ýlayer_regularization_losses
þlayer_metrics
Å	variables
Ætrainable_variables
Çregularization_losses
É__call__
+Ê&call_and_return_all_conditional_losses
'Ê"call_and_return_conditional_losses*
* 
* 
* 
 
U0
V1
[2
\3*

U0
V1*
* 

ÿnon_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ì	variables
Ítrainable_variables
Îregularization_losses
Ð__call__
+Ñ&call_and_return_all_conditional_losses
'Ñ"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ó	variables
Ôtrainable_variables
Õregularization_losses
×__call__
+Ø&call_and_return_all_conditional_losses
'Ø"call_and_return_conditional_losses* 
* 
* 

W0
X1*

W0
X1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ù	variables
Útrainable_variables
Ûregularization_losses
Ý__call__
+Þ&call_and_return_all_conditional_losses
'Þ"call_and_return_conditional_losses*
* 
* 
* 
 
Y0
Z1
]2
^3*

Y0
Z1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
à	variables
átrainable_variables
âregularization_losses
ä__call__
+å&call_and_return_all_conditional_losses
'å"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ç	variables
ètrainable_variables
éregularization_losses
ë__call__
+ì&call_and_return_all_conditional_losses
'ì"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

 non_trainable_variables
¡layers
¢metrics
 £layer_regularization_losses
¤layer_metrics
í	variables
îtrainable_variables
ïregularization_losses
ñ__call__
+ò&call_and_return_all_conditional_losses
'ò"call_and_return_conditional_losses* 

¥trace_0* 

¦trace_0* 
* 
* 
* 

§non_trainable_variables
¨layers
©metrics
 ªlayer_regularization_losses
«layer_metrics
ó	variables
ôtrainable_variables
õregularization_losses
÷__call__
+ø&call_and_return_all_conditional_losses
'ø"call_and_return_conditional_losses* 
* 
* 
* 
 
g0
h1
i2
j3*
<
10
21
32
43
54
65
76
87*
* 
* 
* 
* 
* 
* 
* 

_0
`1*

_0
`1*
* 

¬non_trainable_variables
­layers
®metrics
 ¯layer_regularization_losses
°layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
 
a0
b1
g2
h3*

a0
b1*
* 

±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

¶trace_0
·trace_1* 

¸trace_0
¹trace_1* 
* 
* 
* 
* 

ºnon_trainable_variables
»layers
¼metrics
 ½layer_regularization_losses
¾layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 

c0
d1*

c0
d1*
* 

¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
 
e0
f1
i2
j3*

e0
f1*
* 

Änon_trainable_variables
Ålayers
Æmetrics
 Çlayer_regularization_losses
Èlayer_metrics
	variables
trainable_variables
 regularization_losses
¢__call__
+£&call_and_return_all_conditional_losses
'£"call_and_return_conditional_losses*

Étrace_0
Êtrace_1* 

Ëtrace_0
Ìtrace_1* 
* 
* 
* 
* 

Ínon_trainable_variables
Îlayers
Ïmetrics
 Ðlayer_regularization_losses
Ñlayer_metrics
¥	variables
¦trainable_variables
§regularization_losses
©__call__
+ª&call_and_return_all_conditional_losses
'ª"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

Ònon_trainable_variables
Ólayers
Ômetrics
 Õlayer_regularization_losses
Ölayer_metrics
«	variables
¬trainable_variables
­regularization_losses
¯__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses* 

×trace_0* 

Øtrace_0* 
* 
* 
* 

Ùnon_trainable_variables
Úlayers
Ûmetrics
 Ülayer_regularization_losses
Ýlayer_metrics
±	variables
²trainable_variables
³regularization_losses
µ__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses* 
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
<
Þ	variables
ß	keras_api

àtotal

ácount*
M
â	variables
ã	keras_api

ätotal

åcount
æ
_fn_kwargs*
* 
* 
* 
* 
* 

O0
P1*
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

Q0
R1*
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
* 

[0
\1*
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

]0
^1*
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
* 

g0
h1*
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

i0
j1*
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

à0
á1*

Þ	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

ä0
å1*

â	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
|
VARIABLE_VALUEAdam/dense_41/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_41/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/block_106/conv2d_220/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/block_106/conv2d_220/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE.Adam/block_106/batch_normalization_212/gamma/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/block_106/batch_normalization_212/beta/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/block_106/conv2d_221/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/block_106/conv2d_221/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE.Adam/block_106/batch_normalization_213/gamma/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/block_106/batch_normalization_213/beta/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/block_107/conv2d_222/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/block_107/conv2d_222/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE.Adam/block_107/batch_normalization_214/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/block_107/batch_normalization_214/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/block_107/conv2d_223/kernel/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/block_107/conv2d_223/bias/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE.Adam/block_107/batch_normalization_215/gamma/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/block_107/batch_normalization_215/beta/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/block_108/conv2d_224/kernel/mCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/block_108/conv2d_224/bias/mCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE.Adam/block_108/batch_normalization_216/gamma/mCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/block_108/batch_normalization_216/beta/mCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/block_108/conv2d_225/kernel/mCvariables/28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/block_108/conv2d_225/bias/mCvariables/29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE.Adam/block_108/batch_normalization_217/gamma/mCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/block_108/batch_normalization_217/beta/mCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_41/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_41/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/block_106/conv2d_220/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/block_106/conv2d_220/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE.Adam/block_106/batch_normalization_212/gamma/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/block_106/batch_normalization_212/beta/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/block_106/conv2d_221/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/block_106/conv2d_221/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE.Adam/block_106/batch_normalization_213/gamma/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/block_106/batch_normalization_213/beta/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/block_107/conv2d_222/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/block_107/conv2d_222/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE.Adam/block_107/batch_normalization_214/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/block_107/batch_normalization_214/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/block_107/conv2d_223/kernel/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/block_107/conv2d_223/bias/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE.Adam/block_107/batch_normalization_215/gamma/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/block_107/batch_normalization_215/beta/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/block_108/conv2d_224/kernel/vCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/block_108/conv2d_224/bias/vCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE.Adam/block_108/batch_normalization_216/gamma/vCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/block_108/batch_normalization_216/beta/vCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/block_108/conv2d_225/kernel/vCvariables/28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/block_108/conv2d_225/bias/vCvariables/29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE.Adam/block_108/batch_normalization_217/gamma/vCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/block_108/batch_normalization_217/beta/vCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ý.
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_41/kernel/Read/ReadVariableOp!dense_41/bias/Read/ReadVariableOp/block_106/conv2d_220/kernel/Read/ReadVariableOp-block_106/conv2d_220/bias/Read/ReadVariableOp;block_106/batch_normalization_212/gamma/Read/ReadVariableOp:block_106/batch_normalization_212/beta/Read/ReadVariableOp/block_106/conv2d_221/kernel/Read/ReadVariableOp-block_106/conv2d_221/bias/Read/ReadVariableOp;block_106/batch_normalization_213/gamma/Read/ReadVariableOp:block_106/batch_normalization_213/beta/Read/ReadVariableOpAblock_106/batch_normalization_212/moving_mean/Read/ReadVariableOpEblock_106/batch_normalization_212/moving_variance/Read/ReadVariableOpAblock_106/batch_normalization_213/moving_mean/Read/ReadVariableOpEblock_106/batch_normalization_213/moving_variance/Read/ReadVariableOp/block_107/conv2d_222/kernel/Read/ReadVariableOp-block_107/conv2d_222/bias/Read/ReadVariableOp;block_107/batch_normalization_214/gamma/Read/ReadVariableOp:block_107/batch_normalization_214/beta/Read/ReadVariableOp/block_107/conv2d_223/kernel/Read/ReadVariableOp-block_107/conv2d_223/bias/Read/ReadVariableOp;block_107/batch_normalization_215/gamma/Read/ReadVariableOp:block_107/batch_normalization_215/beta/Read/ReadVariableOpAblock_107/batch_normalization_214/moving_mean/Read/ReadVariableOpEblock_107/batch_normalization_214/moving_variance/Read/ReadVariableOpAblock_107/batch_normalization_215/moving_mean/Read/ReadVariableOpEblock_107/batch_normalization_215/moving_variance/Read/ReadVariableOp/block_108/conv2d_224/kernel/Read/ReadVariableOp-block_108/conv2d_224/bias/Read/ReadVariableOp;block_108/batch_normalization_216/gamma/Read/ReadVariableOp:block_108/batch_normalization_216/beta/Read/ReadVariableOp/block_108/conv2d_225/kernel/Read/ReadVariableOp-block_108/conv2d_225/bias/Read/ReadVariableOp;block_108/batch_normalization_217/gamma/Read/ReadVariableOp:block_108/batch_normalization_217/beta/Read/ReadVariableOpAblock_108/batch_normalization_216/moving_mean/Read/ReadVariableOpEblock_108/batch_normalization_216/moving_variance/Read/ReadVariableOpAblock_108/batch_normalization_217/moving_mean/Read/ReadVariableOpEblock_108/batch_normalization_217/moving_variance/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_41/kernel/m/Read/ReadVariableOp(Adam/dense_41/bias/m/Read/ReadVariableOp6Adam/block_106/conv2d_220/kernel/m/Read/ReadVariableOp4Adam/block_106/conv2d_220/bias/m/Read/ReadVariableOpBAdam/block_106/batch_normalization_212/gamma/m/Read/ReadVariableOpAAdam/block_106/batch_normalization_212/beta/m/Read/ReadVariableOp6Adam/block_106/conv2d_221/kernel/m/Read/ReadVariableOp4Adam/block_106/conv2d_221/bias/m/Read/ReadVariableOpBAdam/block_106/batch_normalization_213/gamma/m/Read/ReadVariableOpAAdam/block_106/batch_normalization_213/beta/m/Read/ReadVariableOp6Adam/block_107/conv2d_222/kernel/m/Read/ReadVariableOp4Adam/block_107/conv2d_222/bias/m/Read/ReadVariableOpBAdam/block_107/batch_normalization_214/gamma/m/Read/ReadVariableOpAAdam/block_107/batch_normalization_214/beta/m/Read/ReadVariableOp6Adam/block_107/conv2d_223/kernel/m/Read/ReadVariableOp4Adam/block_107/conv2d_223/bias/m/Read/ReadVariableOpBAdam/block_107/batch_normalization_215/gamma/m/Read/ReadVariableOpAAdam/block_107/batch_normalization_215/beta/m/Read/ReadVariableOp6Adam/block_108/conv2d_224/kernel/m/Read/ReadVariableOp4Adam/block_108/conv2d_224/bias/m/Read/ReadVariableOpBAdam/block_108/batch_normalization_216/gamma/m/Read/ReadVariableOpAAdam/block_108/batch_normalization_216/beta/m/Read/ReadVariableOp6Adam/block_108/conv2d_225/kernel/m/Read/ReadVariableOp4Adam/block_108/conv2d_225/bias/m/Read/ReadVariableOpBAdam/block_108/batch_normalization_217/gamma/m/Read/ReadVariableOpAAdam/block_108/batch_normalization_217/beta/m/Read/ReadVariableOp*Adam/dense_41/kernel/v/Read/ReadVariableOp(Adam/dense_41/bias/v/Read/ReadVariableOp6Adam/block_106/conv2d_220/kernel/v/Read/ReadVariableOp4Adam/block_106/conv2d_220/bias/v/Read/ReadVariableOpBAdam/block_106/batch_normalization_212/gamma/v/Read/ReadVariableOpAAdam/block_106/batch_normalization_212/beta/v/Read/ReadVariableOp6Adam/block_106/conv2d_221/kernel/v/Read/ReadVariableOp4Adam/block_106/conv2d_221/bias/v/Read/ReadVariableOpBAdam/block_106/batch_normalization_213/gamma/v/Read/ReadVariableOpAAdam/block_106/batch_normalization_213/beta/v/Read/ReadVariableOp6Adam/block_107/conv2d_222/kernel/v/Read/ReadVariableOp4Adam/block_107/conv2d_222/bias/v/Read/ReadVariableOpBAdam/block_107/batch_normalization_214/gamma/v/Read/ReadVariableOpAAdam/block_107/batch_normalization_214/beta/v/Read/ReadVariableOp6Adam/block_107/conv2d_223/kernel/v/Read/ReadVariableOp4Adam/block_107/conv2d_223/bias/v/Read/ReadVariableOpBAdam/block_107/batch_normalization_215/gamma/v/Read/ReadVariableOpAAdam/block_107/batch_normalization_215/beta/v/Read/ReadVariableOp6Adam/block_108/conv2d_224/kernel/v/Read/ReadVariableOp4Adam/block_108/conv2d_224/bias/v/Read/ReadVariableOpBAdam/block_108/batch_normalization_216/gamma/v/Read/ReadVariableOpAAdam/block_108/batch_normalization_216/beta/v/Read/ReadVariableOp6Adam/block_108/conv2d_225/kernel/v/Read/ReadVariableOp4Adam/block_108/conv2d_225/bias/v/Read/ReadVariableOpBAdam/block_108/batch_normalization_217/gamma/v/Read/ReadVariableOpAAdam/block_108/batch_normalization_217/beta/v/Read/ReadVariableOpConst*p
Tini
g2e	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__traced_save_2498129

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_41/kerneldense_41/biasblock_106/conv2d_220/kernelblock_106/conv2d_220/bias'block_106/batch_normalization_212/gamma&block_106/batch_normalization_212/betablock_106/conv2d_221/kernelblock_106/conv2d_221/bias'block_106/batch_normalization_213/gamma&block_106/batch_normalization_213/beta-block_106/batch_normalization_212/moving_mean1block_106/batch_normalization_212/moving_variance-block_106/batch_normalization_213/moving_mean1block_106/batch_normalization_213/moving_varianceblock_107/conv2d_222/kernelblock_107/conv2d_222/bias'block_107/batch_normalization_214/gamma&block_107/batch_normalization_214/betablock_107/conv2d_223/kernelblock_107/conv2d_223/bias'block_107/batch_normalization_215/gamma&block_107/batch_normalization_215/beta-block_107/batch_normalization_214/moving_mean1block_107/batch_normalization_214/moving_variance-block_107/batch_normalization_215/moving_mean1block_107/batch_normalization_215/moving_varianceblock_108/conv2d_224/kernelblock_108/conv2d_224/bias'block_108/batch_normalization_216/gamma&block_108/batch_normalization_216/betablock_108/conv2d_225/kernelblock_108/conv2d_225/bias'block_108/batch_normalization_217/gamma&block_108/batch_normalization_217/beta-block_108/batch_normalization_216/moving_mean1block_108/batch_normalization_216/moving_variance-block_108/batch_normalization_217/moving_mean1block_108/batch_normalization_217/moving_variance	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense_41/kernel/mAdam/dense_41/bias/m"Adam/block_106/conv2d_220/kernel/m Adam/block_106/conv2d_220/bias/m.Adam/block_106/batch_normalization_212/gamma/m-Adam/block_106/batch_normalization_212/beta/m"Adam/block_106/conv2d_221/kernel/m Adam/block_106/conv2d_221/bias/m.Adam/block_106/batch_normalization_213/gamma/m-Adam/block_106/batch_normalization_213/beta/m"Adam/block_107/conv2d_222/kernel/m Adam/block_107/conv2d_222/bias/m.Adam/block_107/batch_normalization_214/gamma/m-Adam/block_107/batch_normalization_214/beta/m"Adam/block_107/conv2d_223/kernel/m Adam/block_107/conv2d_223/bias/m.Adam/block_107/batch_normalization_215/gamma/m-Adam/block_107/batch_normalization_215/beta/m"Adam/block_108/conv2d_224/kernel/m Adam/block_108/conv2d_224/bias/m.Adam/block_108/batch_normalization_216/gamma/m-Adam/block_108/batch_normalization_216/beta/m"Adam/block_108/conv2d_225/kernel/m Adam/block_108/conv2d_225/bias/m.Adam/block_108/batch_normalization_217/gamma/m-Adam/block_108/batch_normalization_217/beta/mAdam/dense_41/kernel/vAdam/dense_41/bias/v"Adam/block_106/conv2d_220/kernel/v Adam/block_106/conv2d_220/bias/v.Adam/block_106/batch_normalization_212/gamma/v-Adam/block_106/batch_normalization_212/beta/v"Adam/block_106/conv2d_221/kernel/v Adam/block_106/conv2d_221/bias/v.Adam/block_106/batch_normalization_213/gamma/v-Adam/block_106/batch_normalization_213/beta/v"Adam/block_107/conv2d_222/kernel/v Adam/block_107/conv2d_222/bias/v.Adam/block_107/batch_normalization_214/gamma/v-Adam/block_107/batch_normalization_214/beta/v"Adam/block_107/conv2d_223/kernel/v Adam/block_107/conv2d_223/bias/v.Adam/block_107/batch_normalization_215/gamma/v-Adam/block_107/batch_normalization_215/beta/v"Adam/block_108/conv2d_224/kernel/v Adam/block_108/conv2d_224/bias/v.Adam/block_108/batch_normalization_216/gamma/v-Adam/block_108/batch_normalization_216/beta/v"Adam/block_108/conv2d_225/kernel/v Adam/block_108/conv2d_225/bias/v.Adam/block_108/batch_normalization_217/gamma/v-Adam/block_108/batch_normalization_217/beta/v*o
Tinh
f2d*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference__traced_restore_2498436§¨
Û<
Ä
F__inference_block_106_layer_call_and_return_conditional_losses_2495251
xC
)conv2d_220_conv2d_readvariableop_resource: 8
*conv2d_220_biasadd_readvariableop_resource: =
/batch_normalization_212_readvariableop_resource: ?
1batch_normalization_212_readvariableop_1_resource: N
@batch_normalization_212_fusedbatchnormv3_readvariableop_resource: P
Bbatch_normalization_212_fusedbatchnormv3_readvariableop_1_resource: C
)conv2d_221_conv2d_readvariableop_resource:  8
*conv2d_221_biasadd_readvariableop_resource: =
/batch_normalization_213_readvariableop_resource: ?
1batch_normalization_213_readvariableop_1_resource: N
@batch_normalization_213_fusedbatchnormv3_readvariableop_resource: P
Bbatch_normalization_213_fusedbatchnormv3_readvariableop_1_resource: 
identity¢7batch_normalization_212/FusedBatchNormV3/ReadVariableOp¢9batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1¢&batch_normalization_212/ReadVariableOp¢(batch_normalization_212/ReadVariableOp_1¢7batch_normalization_213/FusedBatchNormV3/ReadVariableOp¢9batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1¢&batch_normalization_213/ReadVariableOp¢(batch_normalization_213/ReadVariableOp_1¢!conv2d_220/BiasAdd/ReadVariableOp¢ conv2d_220/Conv2D/ReadVariableOp¢!conv2d_221/BiasAdd/ReadVariableOp¢ conv2d_221/Conv2D/ReadVariableOp
 conv2d_220/Conv2D/ReadVariableOpReadVariableOp)conv2d_220_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ª
conv2d_220/Conv2DConv2Dx(conv2d_220/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   *
paddingSAME*
strides

!conv2d_220/BiasAdd/ReadVariableOpReadVariableOp*conv2d_220_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_220/BiasAddBiasAddconv2d_220/Conv2D:output:0)conv2d_220/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   
&batch_normalization_212/ReadVariableOpReadVariableOp/batch_normalization_212_readvariableop_resource*
_output_shapes
: *
dtype0
(batch_normalization_212/ReadVariableOp_1ReadVariableOp1batch_normalization_212_readvariableop_1_resource*
_output_shapes
: *
dtype0´
7batch_normalization_212/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_212_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0¸
9batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_212_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ã
(batch_normalization_212/FusedBatchNormV3FusedBatchNormV3conv2d_220/BiasAdd:output:0.batch_normalization_212/ReadVariableOp:value:00batch_normalization_212/ReadVariableOp_1:value:0?batch_normalization_212/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_212/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ   : : : : :*
epsilon%o:*
is_training( 
activation_212/ReluRelu,batch_normalization_212/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   
 conv2d_221/Conv2D/ReadVariableOpReadVariableOp)conv2d_221_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ê
conv2d_221/Conv2DConv2D!activation_212/Relu:activations:0(conv2d_221/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   *
paddingSAME*
strides

!conv2d_221/BiasAdd/ReadVariableOpReadVariableOp*conv2d_221_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_221/BiasAddBiasAddconv2d_221/Conv2D:output:0)conv2d_221/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   
&batch_normalization_213/ReadVariableOpReadVariableOp/batch_normalization_213_readvariableop_resource*
_output_shapes
: *
dtype0
(batch_normalization_213/ReadVariableOp_1ReadVariableOp1batch_normalization_213_readvariableop_1_resource*
_output_shapes
: *
dtype0´
7batch_normalization_213/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_213_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0¸
9batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_213_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ã
(batch_normalization_213/FusedBatchNormV3FusedBatchNormV3conv2d_221/BiasAdd:output:0.batch_normalization_213/ReadVariableOp:value:00batch_normalization_213/ReadVariableOp_1:value:0?batch_normalization_213/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_213/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ   : : : : :*
epsilon%o:*
is_training( 
addAddV2,batch_normalization_213/FusedBatchNormV3:y:0conv2d_220/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   ^
activation_213/ReluReluadd:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   À
average_pooling2d_110/AvgPoolAvgPool!activation_213/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingSAME*
strides

dropout_106/IdentityIdentity&average_pooling2d_110/AvgPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
IdentityIdentitydropout_106/Identity:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ è
NoOpNoOp8^batch_normalization_212/FusedBatchNormV3/ReadVariableOp:^batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_212/ReadVariableOp)^batch_normalization_212/ReadVariableOp_18^batch_normalization_213/FusedBatchNormV3/ReadVariableOp:^batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_213/ReadVariableOp)^batch_normalization_213/ReadVariableOp_1"^conv2d_220/BiasAdd/ReadVariableOp!^conv2d_220/Conv2D/ReadVariableOp"^conv2d_221/BiasAdd/ReadVariableOp!^conv2d_221/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : : : : : 2r
7batch_normalization_212/FusedBatchNormV3/ReadVariableOp7batch_normalization_212/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_212/FusedBatchNormV3/ReadVariableOp_19batch_normalization_212/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_212/ReadVariableOp&batch_normalization_212/ReadVariableOp2T
(batch_normalization_212/ReadVariableOp_1(batch_normalization_212/ReadVariableOp_12r
7batch_normalization_213/FusedBatchNormV3/ReadVariableOp7batch_normalization_213/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_213/FusedBatchNormV3/ReadVariableOp_19batch_normalization_213/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_213/ReadVariableOp&batch_normalization_213/ReadVariableOp2T
(batch_normalization_213/ReadVariableOp_1(batch_normalization_213/ReadVariableOp_12F
!conv2d_220/BiasAdd/ReadVariableOp!conv2d_220/BiasAdd/ReadVariableOp2D
 conv2d_220/Conv2D/ReadVariableOp conv2d_220/Conv2D/ReadVariableOp2F
!conv2d_221/BiasAdd/ReadVariableOp!conv2d_221/BiasAdd/ReadVariableOp2D
 conv2d_221/Conv2D/ReadVariableOp conv2d_221/Conv2D/ReadVariableOp:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  

_user_specified_nameX
¢	
Ø
9__inference_batch_normalization_216_layer_call_fn_2497688

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_2495077
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ã
T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_2497603

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ö
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
×#<Æ
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ð
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Ô
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ÿ
«0
"__inference__wrapped_model_2494775
input_37[
Asequential_77_block_106_conv2d_220_conv2d_readvariableop_resource: P
Bsequential_77_block_106_conv2d_220_biasadd_readvariableop_resource: U
Gsequential_77_block_106_batch_normalization_212_readvariableop_resource: W
Isequential_77_block_106_batch_normalization_212_readvariableop_1_resource: f
Xsequential_77_block_106_batch_normalization_212_fusedbatchnormv3_readvariableop_resource: h
Zsequential_77_block_106_batch_normalization_212_fusedbatchnormv3_readvariableop_1_resource: [
Asequential_77_block_106_conv2d_221_conv2d_readvariableop_resource:  P
Bsequential_77_block_106_conv2d_221_biasadd_readvariableop_resource: U
Gsequential_77_block_106_batch_normalization_213_readvariableop_resource: W
Isequential_77_block_106_batch_normalization_213_readvariableop_1_resource: f
Xsequential_77_block_106_batch_normalization_213_fusedbatchnormv3_readvariableop_resource: h
Zsequential_77_block_106_batch_normalization_213_fusedbatchnormv3_readvariableop_1_resource: [
Asequential_77_block_107_conv2d_222_conv2d_readvariableop_resource: @P
Bsequential_77_block_107_conv2d_222_biasadd_readvariableop_resource:@U
Gsequential_77_block_107_batch_normalization_214_readvariableop_resource:@W
Isequential_77_block_107_batch_normalization_214_readvariableop_1_resource:@f
Xsequential_77_block_107_batch_normalization_214_fusedbatchnormv3_readvariableop_resource:@h
Zsequential_77_block_107_batch_normalization_214_fusedbatchnormv3_readvariableop_1_resource:@[
Asequential_77_block_107_conv2d_223_conv2d_readvariableop_resource:@@P
Bsequential_77_block_107_conv2d_223_biasadd_readvariableop_resource:@U
Gsequential_77_block_107_batch_normalization_215_readvariableop_resource:@W
Isequential_77_block_107_batch_normalization_215_readvariableop_1_resource:@f
Xsequential_77_block_107_batch_normalization_215_fusedbatchnormv3_readvariableop_resource:@h
Zsequential_77_block_107_batch_normalization_215_fusedbatchnormv3_readvariableop_1_resource:@\
Asequential_77_block_108_conv2d_224_conv2d_readvariableop_resource:@Q
Bsequential_77_block_108_conv2d_224_biasadd_readvariableop_resource:	V
Gsequential_77_block_108_batch_normalization_216_readvariableop_resource:	X
Isequential_77_block_108_batch_normalization_216_readvariableop_1_resource:	g
Xsequential_77_block_108_batch_normalization_216_fusedbatchnormv3_readvariableop_resource:	i
Zsequential_77_block_108_batch_normalization_216_fusedbatchnormv3_readvariableop_1_resource:	]
Asequential_77_block_108_conv2d_225_conv2d_readvariableop_resource:Q
Bsequential_77_block_108_conv2d_225_biasadd_readvariableop_resource:	V
Gsequential_77_block_108_batch_normalization_217_readvariableop_resource:	X
Isequential_77_block_108_batch_normalization_217_readvariableop_1_resource:	g
Xsequential_77_block_108_batch_normalization_217_fusedbatchnormv3_readvariableop_resource:	i
Zsequential_77_block_108_batch_normalization_217_fusedbatchnormv3_readvariableop_1_resource:	H
5sequential_77_dense_41_matmul_readvariableop_resource:	
D
6sequential_77_dense_41_biasadd_readvariableop_resource:

identity¢Osequential_77/block_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp¢Qsequential_77/block_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1¢>sequential_77/block_106/batch_normalization_212/ReadVariableOp¢@sequential_77/block_106/batch_normalization_212/ReadVariableOp_1¢Osequential_77/block_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp¢Qsequential_77/block_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1¢>sequential_77/block_106/batch_normalization_213/ReadVariableOp¢@sequential_77/block_106/batch_normalization_213/ReadVariableOp_1¢9sequential_77/block_106/conv2d_220/BiasAdd/ReadVariableOp¢8sequential_77/block_106/conv2d_220/Conv2D/ReadVariableOp¢9sequential_77/block_106/conv2d_221/BiasAdd/ReadVariableOp¢8sequential_77/block_106/conv2d_221/Conv2D/ReadVariableOp¢Osequential_77/block_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp¢Qsequential_77/block_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1¢>sequential_77/block_107/batch_normalization_214/ReadVariableOp¢@sequential_77/block_107/batch_normalization_214/ReadVariableOp_1¢Osequential_77/block_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp¢Qsequential_77/block_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1¢>sequential_77/block_107/batch_normalization_215/ReadVariableOp¢@sequential_77/block_107/batch_normalization_215/ReadVariableOp_1¢9sequential_77/block_107/conv2d_222/BiasAdd/ReadVariableOp¢8sequential_77/block_107/conv2d_222/Conv2D/ReadVariableOp¢9sequential_77/block_107/conv2d_223/BiasAdd/ReadVariableOp¢8sequential_77/block_107/conv2d_223/Conv2D/ReadVariableOp¢Osequential_77/block_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp¢Qsequential_77/block_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1¢>sequential_77/block_108/batch_normalization_216/ReadVariableOp¢@sequential_77/block_108/batch_normalization_216/ReadVariableOp_1¢Osequential_77/block_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp¢Qsequential_77/block_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1¢>sequential_77/block_108/batch_normalization_217/ReadVariableOp¢@sequential_77/block_108/batch_normalization_217/ReadVariableOp_1¢9sequential_77/block_108/conv2d_224/BiasAdd/ReadVariableOp¢8sequential_77/block_108/conv2d_224/Conv2D/ReadVariableOp¢9sequential_77/block_108/conv2d_225/BiasAdd/ReadVariableOp¢8sequential_77/block_108/conv2d_225/Conv2D/ReadVariableOp¢-sequential_77/dense_41/BiasAdd/ReadVariableOp¢,sequential_77/dense_41/MatMul/ReadVariableOpÂ
8sequential_77/block_106/conv2d_220/Conv2D/ReadVariableOpReadVariableOpAsequential_77_block_106_conv2d_220_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0á
)sequential_77/block_106/conv2d_220/Conv2DConv2Dinput_37@sequential_77/block_106/conv2d_220/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   *
paddingSAME*
strides
¸
9sequential_77/block_106/conv2d_220/BiasAdd/ReadVariableOpReadVariableOpBsequential_77_block_106_conv2d_220_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0æ
*sequential_77/block_106/conv2d_220/BiasAddBiasAdd2sequential_77/block_106/conv2d_220/Conv2D:output:0Asequential_77/block_106/conv2d_220/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   Â
>sequential_77/block_106/batch_normalization_212/ReadVariableOpReadVariableOpGsequential_77_block_106_batch_normalization_212_readvariableop_resource*
_output_shapes
: *
dtype0Æ
@sequential_77/block_106/batch_normalization_212/ReadVariableOp_1ReadVariableOpIsequential_77_block_106_batch_normalization_212_readvariableop_1_resource*
_output_shapes
: *
dtype0ä
Osequential_77/block_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOpReadVariableOpXsequential_77_block_106_batch_normalization_212_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0è
Qsequential_77/block_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZsequential_77_block_106_batch_normalization_212_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ó
@sequential_77/block_106/batch_normalization_212/FusedBatchNormV3FusedBatchNormV33sequential_77/block_106/conv2d_220/BiasAdd:output:0Fsequential_77/block_106/batch_normalization_212/ReadVariableOp:value:0Hsequential_77/block_106/batch_normalization_212/ReadVariableOp_1:value:0Wsequential_77/block_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp:value:0Ysequential_77/block_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ   : : : : :*
epsilon%o:*
is_training( ³
+sequential_77/block_106/activation_212/ReluReluDsequential_77/block_106/batch_normalization_212/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   Â
8sequential_77/block_106/conv2d_221/Conv2D/ReadVariableOpReadVariableOpAsequential_77_block_106_conv2d_221_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0
)sequential_77/block_106/conv2d_221/Conv2DConv2D9sequential_77/block_106/activation_212/Relu:activations:0@sequential_77/block_106/conv2d_221/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   *
paddingSAME*
strides
¸
9sequential_77/block_106/conv2d_221/BiasAdd/ReadVariableOpReadVariableOpBsequential_77_block_106_conv2d_221_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0æ
*sequential_77/block_106/conv2d_221/BiasAddBiasAdd2sequential_77/block_106/conv2d_221/Conv2D:output:0Asequential_77/block_106/conv2d_221/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   Â
>sequential_77/block_106/batch_normalization_213/ReadVariableOpReadVariableOpGsequential_77_block_106_batch_normalization_213_readvariableop_resource*
_output_shapes
: *
dtype0Æ
@sequential_77/block_106/batch_normalization_213/ReadVariableOp_1ReadVariableOpIsequential_77_block_106_batch_normalization_213_readvariableop_1_resource*
_output_shapes
: *
dtype0ä
Osequential_77/block_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOpReadVariableOpXsequential_77_block_106_batch_normalization_213_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0è
Qsequential_77/block_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZsequential_77_block_106_batch_normalization_213_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ó
@sequential_77/block_106/batch_normalization_213/FusedBatchNormV3FusedBatchNormV33sequential_77/block_106/conv2d_221/BiasAdd:output:0Fsequential_77/block_106/batch_normalization_213/ReadVariableOp:value:0Hsequential_77/block_106/batch_normalization_213/ReadVariableOp_1:value:0Wsequential_77/block_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp:value:0Ysequential_77/block_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ   : : : : :*
epsilon%o:*
is_training( Ù
sequential_77/block_106/addAddV2Dsequential_77/block_106/batch_normalization_213/FusedBatchNormV3:y:03sequential_77/block_106/conv2d_220/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   
+sequential_77/block_106/activation_213/ReluRelusequential_77/block_106/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   ð
5sequential_77/block_106/average_pooling2d_110/AvgPoolAvgPool9sequential_77/block_106/activation_213/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingSAME*
strides
²
,sequential_77/block_106/dropout_106/IdentityIdentity>sequential_77/block_106/average_pooling2d_110/AvgPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Â
8sequential_77/block_107/conv2d_222/Conv2D/ReadVariableOpReadVariableOpAsequential_77_block_107_conv2d_222_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
)sequential_77/block_107/conv2d_222/Conv2DConv2D5sequential_77/block_106/dropout_106/Identity:output:0@sequential_77/block_107/conv2d_222/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
¸
9sequential_77/block_107/conv2d_222/BiasAdd/ReadVariableOpReadVariableOpBsequential_77_block_107_conv2d_222_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0æ
*sequential_77/block_107/conv2d_222/BiasAddBiasAdd2sequential_77/block_107/conv2d_222/Conv2D:output:0Asequential_77/block_107/conv2d_222/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
>sequential_77/block_107/batch_normalization_214/ReadVariableOpReadVariableOpGsequential_77_block_107_batch_normalization_214_readvariableop_resource*
_output_shapes
:@*
dtype0Æ
@sequential_77/block_107/batch_normalization_214/ReadVariableOp_1ReadVariableOpIsequential_77_block_107_batch_normalization_214_readvariableop_1_resource*
_output_shapes
:@*
dtype0ä
Osequential_77/block_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOpReadVariableOpXsequential_77_block_107_batch_normalization_214_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0è
Qsequential_77/block_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZsequential_77_block_107_batch_normalization_214_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ó
@sequential_77/block_107/batch_normalization_214/FusedBatchNormV3FusedBatchNormV33sequential_77/block_107/conv2d_222/BiasAdd:output:0Fsequential_77/block_107/batch_normalization_214/ReadVariableOp:value:0Hsequential_77/block_107/batch_normalization_214/ReadVariableOp_1:value:0Wsequential_77/block_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp:value:0Ysequential_77/block_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
is_training( ³
+sequential_77/block_107/activation_214/ReluReluDsequential_77/block_107/batch_normalization_214/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
8sequential_77/block_107/conv2d_223/Conv2D/ReadVariableOpReadVariableOpAsequential_77_block_107_conv2d_223_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
)sequential_77/block_107/conv2d_223/Conv2DConv2D9sequential_77/block_107/activation_214/Relu:activations:0@sequential_77/block_107/conv2d_223/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
¸
9sequential_77/block_107/conv2d_223/BiasAdd/ReadVariableOpReadVariableOpBsequential_77_block_107_conv2d_223_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0æ
*sequential_77/block_107/conv2d_223/BiasAddBiasAdd2sequential_77/block_107/conv2d_223/Conv2D:output:0Asequential_77/block_107/conv2d_223/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
>sequential_77/block_107/batch_normalization_215/ReadVariableOpReadVariableOpGsequential_77_block_107_batch_normalization_215_readvariableop_resource*
_output_shapes
:@*
dtype0Æ
@sequential_77/block_107/batch_normalization_215/ReadVariableOp_1ReadVariableOpIsequential_77_block_107_batch_normalization_215_readvariableop_1_resource*
_output_shapes
:@*
dtype0ä
Osequential_77/block_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOpReadVariableOpXsequential_77_block_107_batch_normalization_215_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0è
Qsequential_77/block_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZsequential_77_block_107_batch_normalization_215_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ó
@sequential_77/block_107/batch_normalization_215/FusedBatchNormV3FusedBatchNormV33sequential_77/block_107/conv2d_223/BiasAdd:output:0Fsequential_77/block_107/batch_normalization_215/ReadVariableOp:value:0Hsequential_77/block_107/batch_normalization_215/ReadVariableOp_1:value:0Wsequential_77/block_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp:value:0Ysequential_77/block_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
is_training( Ù
sequential_77/block_107/addAddV2Dsequential_77/block_107/batch_normalization_215/FusedBatchNormV3:y:03sequential_77/block_107/conv2d_222/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
+sequential_77/block_107/activation_215/ReluRelusequential_77/block_107/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ð
5sequential_77/block_107/average_pooling2d_111/AvgPoolAvgPool9sequential_77/block_107/activation_215/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingSAME*
strides
²
,sequential_77/block_107/dropout_107/IdentityIdentity>sequential_77/block_107/average_pooling2d_111/AvgPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ã
8sequential_77/block_108/conv2d_224/Conv2D/ReadVariableOpReadVariableOpAsequential_77_block_108_conv2d_224_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
)sequential_77/block_108/conv2d_224/Conv2DConv2D5sequential_77/block_107/dropout_107/Identity:output:0@sequential_77/block_108/conv2d_224/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
¹
9sequential_77/block_108/conv2d_224/BiasAdd/ReadVariableOpReadVariableOpBsequential_77_block_108_conv2d_224_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ç
*sequential_77/block_108/conv2d_224/BiasAddBiasAdd2sequential_77/block_108/conv2d_224/Conv2D:output:0Asequential_77/block_108/conv2d_224/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
>sequential_77/block_108/batch_normalization_216/ReadVariableOpReadVariableOpGsequential_77_block_108_batch_normalization_216_readvariableop_resource*
_output_shapes	
:*
dtype0Ç
@sequential_77/block_108/batch_normalization_216/ReadVariableOp_1ReadVariableOpIsequential_77_block_108_batch_normalization_216_readvariableop_1_resource*
_output_shapes	
:*
dtype0å
Osequential_77/block_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOpReadVariableOpXsequential_77_block_108_batch_normalization_216_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0é
Qsequential_77/block_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZsequential_77_block_108_batch_normalization_216_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Ø
@sequential_77/block_108/batch_normalization_216/FusedBatchNormV3FusedBatchNormV33sequential_77/block_108/conv2d_224/BiasAdd:output:0Fsequential_77/block_108/batch_normalization_216/ReadVariableOp:value:0Hsequential_77/block_108/batch_normalization_216/ReadVariableOp_1:value:0Wsequential_77/block_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp:value:0Ysequential_77/block_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( ´
+sequential_77/block_108/activation_216/ReluReluDsequential_77/block_108/batch_normalization_216/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
8sequential_77/block_108/conv2d_225/Conv2D/ReadVariableOpReadVariableOpAsequential_77_block_108_conv2d_225_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
)sequential_77/block_108/conv2d_225/Conv2DConv2D9sequential_77/block_108/activation_216/Relu:activations:0@sequential_77/block_108/conv2d_225/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
¹
9sequential_77/block_108/conv2d_225/BiasAdd/ReadVariableOpReadVariableOpBsequential_77_block_108_conv2d_225_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ç
*sequential_77/block_108/conv2d_225/BiasAddBiasAdd2sequential_77/block_108/conv2d_225/Conv2D:output:0Asequential_77/block_108/conv2d_225/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
>sequential_77/block_108/batch_normalization_217/ReadVariableOpReadVariableOpGsequential_77_block_108_batch_normalization_217_readvariableop_resource*
_output_shapes	
:*
dtype0Ç
@sequential_77/block_108/batch_normalization_217/ReadVariableOp_1ReadVariableOpIsequential_77_block_108_batch_normalization_217_readvariableop_1_resource*
_output_shapes	
:*
dtype0å
Osequential_77/block_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOpReadVariableOpXsequential_77_block_108_batch_normalization_217_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0é
Qsequential_77/block_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZsequential_77_block_108_batch_normalization_217_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Ø
@sequential_77/block_108/batch_normalization_217/FusedBatchNormV3FusedBatchNormV33sequential_77/block_108/conv2d_225/BiasAdd:output:0Fsequential_77/block_108/batch_normalization_217/ReadVariableOp:value:0Hsequential_77/block_108/batch_normalization_217/ReadVariableOp_1:value:0Wsequential_77/block_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp:value:0Ysequential_77/block_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( Ú
sequential_77/block_108/addAddV2Dsequential_77/block_108/batch_normalization_217/FusedBatchNormV3:y:03sequential_77/block_108/conv2d_224/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+sequential_77/block_108/activation_217/ReluRelusequential_77/block_108/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ
5sequential_77/block_108/average_pooling2d_112/AvgPoolAvgPool9sequential_77/block_108/activation_217/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingSAME*
strides
³
,sequential_77/block_108/dropout_108/IdentityIdentity>sequential_77/block_108/average_pooling2d_112/AvgPool:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
sequential_77/flatten_38/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¾
 sequential_77/flatten_38/ReshapeReshape5sequential_77/block_108/dropout_108/Identity:output:0'sequential_77/flatten_38/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
,sequential_77/dense_41/MatMul/ReadVariableOpReadVariableOp5sequential_77_dense_41_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0º
sequential_77/dense_41/MatMulMatMul)sequential_77/flatten_38/Reshape:output:04sequential_77/dense_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
-sequential_77/dense_41/BiasAdd/ReadVariableOpReadVariableOp6sequential_77_dense_41_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0»
sequential_77/dense_41/BiasAddBiasAdd'sequential_77/dense_41/MatMul:product:05sequential_77/dense_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

sequential_77/dense_41/SoftmaxSoftmax'sequential_77/dense_41/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
IdentityIdentity(sequential_77/dense_41/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ë
NoOpNoOpP^sequential_77/block_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOpR^sequential_77/block_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1?^sequential_77/block_106/batch_normalization_212/ReadVariableOpA^sequential_77/block_106/batch_normalization_212/ReadVariableOp_1P^sequential_77/block_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOpR^sequential_77/block_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1?^sequential_77/block_106/batch_normalization_213/ReadVariableOpA^sequential_77/block_106/batch_normalization_213/ReadVariableOp_1:^sequential_77/block_106/conv2d_220/BiasAdd/ReadVariableOp9^sequential_77/block_106/conv2d_220/Conv2D/ReadVariableOp:^sequential_77/block_106/conv2d_221/BiasAdd/ReadVariableOp9^sequential_77/block_106/conv2d_221/Conv2D/ReadVariableOpP^sequential_77/block_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOpR^sequential_77/block_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1?^sequential_77/block_107/batch_normalization_214/ReadVariableOpA^sequential_77/block_107/batch_normalization_214/ReadVariableOp_1P^sequential_77/block_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOpR^sequential_77/block_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1?^sequential_77/block_107/batch_normalization_215/ReadVariableOpA^sequential_77/block_107/batch_normalization_215/ReadVariableOp_1:^sequential_77/block_107/conv2d_222/BiasAdd/ReadVariableOp9^sequential_77/block_107/conv2d_222/Conv2D/ReadVariableOp:^sequential_77/block_107/conv2d_223/BiasAdd/ReadVariableOp9^sequential_77/block_107/conv2d_223/Conv2D/ReadVariableOpP^sequential_77/block_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOpR^sequential_77/block_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1?^sequential_77/block_108/batch_normalization_216/ReadVariableOpA^sequential_77/block_108/batch_normalization_216/ReadVariableOp_1P^sequential_77/block_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOpR^sequential_77/block_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1?^sequential_77/block_108/batch_normalization_217/ReadVariableOpA^sequential_77/block_108/batch_normalization_217/ReadVariableOp_1:^sequential_77/block_108/conv2d_224/BiasAdd/ReadVariableOp9^sequential_77/block_108/conv2d_224/Conv2D/ReadVariableOp:^sequential_77/block_108/conv2d_225/BiasAdd/ReadVariableOp9^sequential_77/block_108/conv2d_225/Conv2D/ReadVariableOp.^sequential_77/dense_41/BiasAdd/ReadVariableOp-^sequential_77/dense_41/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2¢
Osequential_77/block_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOpOsequential_77/block_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp2¦
Qsequential_77/block_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1Qsequential_77/block_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp_12
>sequential_77/block_106/batch_normalization_212/ReadVariableOp>sequential_77/block_106/batch_normalization_212/ReadVariableOp2
@sequential_77/block_106/batch_normalization_212/ReadVariableOp_1@sequential_77/block_106/batch_normalization_212/ReadVariableOp_12¢
Osequential_77/block_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOpOsequential_77/block_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp2¦
Qsequential_77/block_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1Qsequential_77/block_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp_12
>sequential_77/block_106/batch_normalization_213/ReadVariableOp>sequential_77/block_106/batch_normalization_213/ReadVariableOp2
@sequential_77/block_106/batch_normalization_213/ReadVariableOp_1@sequential_77/block_106/batch_normalization_213/ReadVariableOp_12v
9sequential_77/block_106/conv2d_220/BiasAdd/ReadVariableOp9sequential_77/block_106/conv2d_220/BiasAdd/ReadVariableOp2t
8sequential_77/block_106/conv2d_220/Conv2D/ReadVariableOp8sequential_77/block_106/conv2d_220/Conv2D/ReadVariableOp2v
9sequential_77/block_106/conv2d_221/BiasAdd/ReadVariableOp9sequential_77/block_106/conv2d_221/BiasAdd/ReadVariableOp2t
8sequential_77/block_106/conv2d_221/Conv2D/ReadVariableOp8sequential_77/block_106/conv2d_221/Conv2D/ReadVariableOp2¢
Osequential_77/block_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOpOsequential_77/block_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp2¦
Qsequential_77/block_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1Qsequential_77/block_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp_12
>sequential_77/block_107/batch_normalization_214/ReadVariableOp>sequential_77/block_107/batch_normalization_214/ReadVariableOp2
@sequential_77/block_107/batch_normalization_214/ReadVariableOp_1@sequential_77/block_107/batch_normalization_214/ReadVariableOp_12¢
Osequential_77/block_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOpOsequential_77/block_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp2¦
Qsequential_77/block_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1Qsequential_77/block_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_12
>sequential_77/block_107/batch_normalization_215/ReadVariableOp>sequential_77/block_107/batch_normalization_215/ReadVariableOp2
@sequential_77/block_107/batch_normalization_215/ReadVariableOp_1@sequential_77/block_107/batch_normalization_215/ReadVariableOp_12v
9sequential_77/block_107/conv2d_222/BiasAdd/ReadVariableOp9sequential_77/block_107/conv2d_222/BiasAdd/ReadVariableOp2t
8sequential_77/block_107/conv2d_222/Conv2D/ReadVariableOp8sequential_77/block_107/conv2d_222/Conv2D/ReadVariableOp2v
9sequential_77/block_107/conv2d_223/BiasAdd/ReadVariableOp9sequential_77/block_107/conv2d_223/BiasAdd/ReadVariableOp2t
8sequential_77/block_107/conv2d_223/Conv2D/ReadVariableOp8sequential_77/block_107/conv2d_223/Conv2D/ReadVariableOp2¢
Osequential_77/block_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOpOsequential_77/block_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp2¦
Qsequential_77/block_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1Qsequential_77/block_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_12
>sequential_77/block_108/batch_normalization_216/ReadVariableOp>sequential_77/block_108/batch_normalization_216/ReadVariableOp2
@sequential_77/block_108/batch_normalization_216/ReadVariableOp_1@sequential_77/block_108/batch_normalization_216/ReadVariableOp_12¢
Osequential_77/block_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOpOsequential_77/block_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp2¦
Qsequential_77/block_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1Qsequential_77/block_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_12
>sequential_77/block_108/batch_normalization_217/ReadVariableOp>sequential_77/block_108/batch_normalization_217/ReadVariableOp2
@sequential_77/block_108/batch_normalization_217/ReadVariableOp_1@sequential_77/block_108/batch_normalization_217/ReadVariableOp_12v
9sequential_77/block_108/conv2d_224/BiasAdd/ReadVariableOp9sequential_77/block_108/conv2d_224/BiasAdd/ReadVariableOp2t
8sequential_77/block_108/conv2d_224/Conv2D/ReadVariableOp8sequential_77/block_108/conv2d_224/Conv2D/ReadVariableOp2v
9sequential_77/block_108/conv2d_225/BiasAdd/ReadVariableOp9sequential_77/block_108/conv2d_225/BiasAdd/ReadVariableOp2t
8sequential_77/block_108/conv2d_225/Conv2D/ReadVariableOp8sequential_77/block_108/conv2d_225/Conv2D/ReadVariableOp2^
-sequential_77/dense_41/BiasAdd/ReadVariableOp-sequential_77/dense_41/BiasAdd/ReadVariableOp2\
,sequential_77/dense_41/MatMul/ReadVariableOp,sequential_77/dense_41/MatMul/ReadVariableOp:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
"
_user_specified_name
input_37
(
¸
J__inference_sequential_77_layer_call_and_return_conditional_losses_2496282
input_37+
block_106_2496200: 
block_106_2496202: 
block_106_2496204: 
block_106_2496206: 
block_106_2496208: 
block_106_2496210: +
block_106_2496212:  
block_106_2496214: 
block_106_2496216: 
block_106_2496218: 
block_106_2496220: 
block_106_2496222: +
block_107_2496225: @
block_107_2496227:@
block_107_2496229:@
block_107_2496231:@
block_107_2496233:@
block_107_2496235:@+
block_107_2496237:@@
block_107_2496239:@
block_107_2496241:@
block_107_2496243:@
block_107_2496245:@
block_107_2496247:@,
block_108_2496250:@ 
block_108_2496252:	 
block_108_2496254:	 
block_108_2496256:	 
block_108_2496258:	 
block_108_2496260:	-
block_108_2496262: 
block_108_2496264:	 
block_108_2496266:	 
block_108_2496268:	 
block_108_2496270:	 
block_108_2496272:	#
dense_41_2496276:	

dense_41_2496278:

identity¢!block_106/StatefulPartitionedCall¢!block_107/StatefulPartitionedCall¢!block_108/StatefulPartitionedCall¢ dense_41/StatefulPartitionedCallÖ
!block_106/StatefulPartitionedCallStatefulPartitionedCallinput_37block_106_2496200block_106_2496202block_106_2496204block_106_2496206block_106_2496208block_106_2496210block_106_2496212block_106_2496214block_106_2496216block_106_2496218block_106_2496220block_106_2496222*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block_106_layer_call_and_return_conditional_losses_2495251ø
!block_107/StatefulPartitionedCallStatefulPartitionedCall*block_106/StatefulPartitionedCall:output:0block_107_2496225block_107_2496227block_107_2496229block_107_2496231block_107_2496233block_107_2496235block_107_2496237block_107_2496239block_107_2496241block_107_2496243block_107_2496245block_107_2496247*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block_107_layer_call_and_return_conditional_losses_2495326ù
!block_108/StatefulPartitionedCallStatefulPartitionedCall*block_107/StatefulPartitionedCall:output:0block_108_2496250block_108_2496252block_108_2496254block_108_2496256block_108_2496258block_108_2496260block_108_2496262block_108_2496264block_108_2496266block_108_2496268block_108_2496270block_108_2496272*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block_108_layer_call_and_return_conditional_losses_2495401å
flatten_38/PartitionedCallPartitionedCall*block_108/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_flatten_38_layer_call_and_return_conditional_losses_2495433
 dense_41/StatefulPartitionedCallStatefulPartitionedCall#flatten_38/PartitionedCall:output:0dense_41_2496276dense_41_2496278*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_41_layer_call_and_return_conditional_losses_2495446x
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Õ
NoOpNoOp"^block_106/StatefulPartitionedCall"^block_107/StatefulPartitionedCall"^block_108/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!block_106/StatefulPartitionedCall!block_106/StatefulPartitionedCall2F
!block_107/StatefulPartitionedCall!block_107/StatefulPartitionedCall2F
!block_108/StatefulPartitionedCall!block_108/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
"
_user_specified_name
input_37
Ï

T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_2497647

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0È
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@°
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ß
£
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_2495077

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Í
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼Ç
5
 __inference__traced_save_2498129
file_prefix.
*savev2_dense_41_kernel_read_readvariableop,
(savev2_dense_41_bias_read_readvariableop:
6savev2_block_106_conv2d_220_kernel_read_readvariableop8
4savev2_block_106_conv2d_220_bias_read_readvariableopF
Bsavev2_block_106_batch_normalization_212_gamma_read_readvariableopE
Asavev2_block_106_batch_normalization_212_beta_read_readvariableop:
6savev2_block_106_conv2d_221_kernel_read_readvariableop8
4savev2_block_106_conv2d_221_bias_read_readvariableopF
Bsavev2_block_106_batch_normalization_213_gamma_read_readvariableopE
Asavev2_block_106_batch_normalization_213_beta_read_readvariableopL
Hsavev2_block_106_batch_normalization_212_moving_mean_read_readvariableopP
Lsavev2_block_106_batch_normalization_212_moving_variance_read_readvariableopL
Hsavev2_block_106_batch_normalization_213_moving_mean_read_readvariableopP
Lsavev2_block_106_batch_normalization_213_moving_variance_read_readvariableop:
6savev2_block_107_conv2d_222_kernel_read_readvariableop8
4savev2_block_107_conv2d_222_bias_read_readvariableopF
Bsavev2_block_107_batch_normalization_214_gamma_read_readvariableopE
Asavev2_block_107_batch_normalization_214_beta_read_readvariableop:
6savev2_block_107_conv2d_223_kernel_read_readvariableop8
4savev2_block_107_conv2d_223_bias_read_readvariableopF
Bsavev2_block_107_batch_normalization_215_gamma_read_readvariableopE
Asavev2_block_107_batch_normalization_215_beta_read_readvariableopL
Hsavev2_block_107_batch_normalization_214_moving_mean_read_readvariableopP
Lsavev2_block_107_batch_normalization_214_moving_variance_read_readvariableopL
Hsavev2_block_107_batch_normalization_215_moving_mean_read_readvariableopP
Lsavev2_block_107_batch_normalization_215_moving_variance_read_readvariableop:
6savev2_block_108_conv2d_224_kernel_read_readvariableop8
4savev2_block_108_conv2d_224_bias_read_readvariableopF
Bsavev2_block_108_batch_normalization_216_gamma_read_readvariableopE
Asavev2_block_108_batch_normalization_216_beta_read_readvariableop:
6savev2_block_108_conv2d_225_kernel_read_readvariableop8
4savev2_block_108_conv2d_225_bias_read_readvariableopF
Bsavev2_block_108_batch_normalization_217_gamma_read_readvariableopE
Asavev2_block_108_batch_normalization_217_beta_read_readvariableopL
Hsavev2_block_108_batch_normalization_216_moving_mean_read_readvariableopP
Lsavev2_block_108_batch_normalization_216_moving_variance_read_readvariableopL
Hsavev2_block_108_batch_normalization_217_moving_mean_read_readvariableopP
Lsavev2_block_108_batch_normalization_217_moving_variance_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_41_kernel_m_read_readvariableop3
/savev2_adam_dense_41_bias_m_read_readvariableopA
=savev2_adam_block_106_conv2d_220_kernel_m_read_readvariableop?
;savev2_adam_block_106_conv2d_220_bias_m_read_readvariableopM
Isavev2_adam_block_106_batch_normalization_212_gamma_m_read_readvariableopL
Hsavev2_adam_block_106_batch_normalization_212_beta_m_read_readvariableopA
=savev2_adam_block_106_conv2d_221_kernel_m_read_readvariableop?
;savev2_adam_block_106_conv2d_221_bias_m_read_readvariableopM
Isavev2_adam_block_106_batch_normalization_213_gamma_m_read_readvariableopL
Hsavev2_adam_block_106_batch_normalization_213_beta_m_read_readvariableopA
=savev2_adam_block_107_conv2d_222_kernel_m_read_readvariableop?
;savev2_adam_block_107_conv2d_222_bias_m_read_readvariableopM
Isavev2_adam_block_107_batch_normalization_214_gamma_m_read_readvariableopL
Hsavev2_adam_block_107_batch_normalization_214_beta_m_read_readvariableopA
=savev2_adam_block_107_conv2d_223_kernel_m_read_readvariableop?
;savev2_adam_block_107_conv2d_223_bias_m_read_readvariableopM
Isavev2_adam_block_107_batch_normalization_215_gamma_m_read_readvariableopL
Hsavev2_adam_block_107_batch_normalization_215_beta_m_read_readvariableopA
=savev2_adam_block_108_conv2d_224_kernel_m_read_readvariableop?
;savev2_adam_block_108_conv2d_224_bias_m_read_readvariableopM
Isavev2_adam_block_108_batch_normalization_216_gamma_m_read_readvariableopL
Hsavev2_adam_block_108_batch_normalization_216_beta_m_read_readvariableopA
=savev2_adam_block_108_conv2d_225_kernel_m_read_readvariableop?
;savev2_adam_block_108_conv2d_225_bias_m_read_readvariableopM
Isavev2_adam_block_108_batch_normalization_217_gamma_m_read_readvariableopL
Hsavev2_adam_block_108_batch_normalization_217_beta_m_read_readvariableop5
1savev2_adam_dense_41_kernel_v_read_readvariableop3
/savev2_adam_dense_41_bias_v_read_readvariableopA
=savev2_adam_block_106_conv2d_220_kernel_v_read_readvariableop?
;savev2_adam_block_106_conv2d_220_bias_v_read_readvariableopM
Isavev2_adam_block_106_batch_normalization_212_gamma_v_read_readvariableopL
Hsavev2_adam_block_106_batch_normalization_212_beta_v_read_readvariableopA
=savev2_adam_block_106_conv2d_221_kernel_v_read_readvariableop?
;savev2_adam_block_106_conv2d_221_bias_v_read_readvariableopM
Isavev2_adam_block_106_batch_normalization_213_gamma_v_read_readvariableopL
Hsavev2_adam_block_106_batch_normalization_213_beta_v_read_readvariableopA
=savev2_adam_block_107_conv2d_222_kernel_v_read_readvariableop?
;savev2_adam_block_107_conv2d_222_bias_v_read_readvariableopM
Isavev2_adam_block_107_batch_normalization_214_gamma_v_read_readvariableopL
Hsavev2_adam_block_107_batch_normalization_214_beta_v_read_readvariableopA
=savev2_adam_block_107_conv2d_223_kernel_v_read_readvariableop?
;savev2_adam_block_107_conv2d_223_bias_v_read_readvariableopM
Isavev2_adam_block_107_batch_normalization_215_gamma_v_read_readvariableopL
Hsavev2_adam_block_107_batch_normalization_215_beta_v_read_readvariableopA
=savev2_adam_block_108_conv2d_224_kernel_v_read_readvariableop?
;savev2_adam_block_108_conv2d_224_bias_v_read_readvariableopM
Isavev2_adam_block_108_batch_normalization_216_gamma_v_read_readvariableopL
Hsavev2_adam_block_108_batch_normalization_216_beta_v_read_readvariableopA
=savev2_adam_block_108_conv2d_225_kernel_v_read_readvariableop?
;savev2_adam_block_108_conv2d_225_bias_v_read_readvariableopM
Isavev2_adam_block_108_batch_normalization_217_gamma_v_read_readvariableopL
Hsavev2_adam_block_108_batch_normalization_217_beta_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: -
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:d*
dtype0*Ä,
valueº,B·,dB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¸
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:d*
dtype0*Ý
valueÓBÐdB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B £3
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_41_kernel_read_readvariableop(savev2_dense_41_bias_read_readvariableop6savev2_block_106_conv2d_220_kernel_read_readvariableop4savev2_block_106_conv2d_220_bias_read_readvariableopBsavev2_block_106_batch_normalization_212_gamma_read_readvariableopAsavev2_block_106_batch_normalization_212_beta_read_readvariableop6savev2_block_106_conv2d_221_kernel_read_readvariableop4savev2_block_106_conv2d_221_bias_read_readvariableopBsavev2_block_106_batch_normalization_213_gamma_read_readvariableopAsavev2_block_106_batch_normalization_213_beta_read_readvariableopHsavev2_block_106_batch_normalization_212_moving_mean_read_readvariableopLsavev2_block_106_batch_normalization_212_moving_variance_read_readvariableopHsavev2_block_106_batch_normalization_213_moving_mean_read_readvariableopLsavev2_block_106_batch_normalization_213_moving_variance_read_readvariableop6savev2_block_107_conv2d_222_kernel_read_readvariableop4savev2_block_107_conv2d_222_bias_read_readvariableopBsavev2_block_107_batch_normalization_214_gamma_read_readvariableopAsavev2_block_107_batch_normalization_214_beta_read_readvariableop6savev2_block_107_conv2d_223_kernel_read_readvariableop4savev2_block_107_conv2d_223_bias_read_readvariableopBsavev2_block_107_batch_normalization_215_gamma_read_readvariableopAsavev2_block_107_batch_normalization_215_beta_read_readvariableopHsavev2_block_107_batch_normalization_214_moving_mean_read_readvariableopLsavev2_block_107_batch_normalization_214_moving_variance_read_readvariableopHsavev2_block_107_batch_normalization_215_moving_mean_read_readvariableopLsavev2_block_107_batch_normalization_215_moving_variance_read_readvariableop6savev2_block_108_conv2d_224_kernel_read_readvariableop4savev2_block_108_conv2d_224_bias_read_readvariableopBsavev2_block_108_batch_normalization_216_gamma_read_readvariableopAsavev2_block_108_batch_normalization_216_beta_read_readvariableop6savev2_block_108_conv2d_225_kernel_read_readvariableop4savev2_block_108_conv2d_225_bias_read_readvariableopBsavev2_block_108_batch_normalization_217_gamma_read_readvariableopAsavev2_block_108_batch_normalization_217_beta_read_readvariableopHsavev2_block_108_batch_normalization_216_moving_mean_read_readvariableopLsavev2_block_108_batch_normalization_216_moving_variance_read_readvariableopHsavev2_block_108_batch_normalization_217_moving_mean_read_readvariableopLsavev2_block_108_batch_normalization_217_moving_variance_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_41_kernel_m_read_readvariableop/savev2_adam_dense_41_bias_m_read_readvariableop=savev2_adam_block_106_conv2d_220_kernel_m_read_readvariableop;savev2_adam_block_106_conv2d_220_bias_m_read_readvariableopIsavev2_adam_block_106_batch_normalization_212_gamma_m_read_readvariableopHsavev2_adam_block_106_batch_normalization_212_beta_m_read_readvariableop=savev2_adam_block_106_conv2d_221_kernel_m_read_readvariableop;savev2_adam_block_106_conv2d_221_bias_m_read_readvariableopIsavev2_adam_block_106_batch_normalization_213_gamma_m_read_readvariableopHsavev2_adam_block_106_batch_normalization_213_beta_m_read_readvariableop=savev2_adam_block_107_conv2d_222_kernel_m_read_readvariableop;savev2_adam_block_107_conv2d_222_bias_m_read_readvariableopIsavev2_adam_block_107_batch_normalization_214_gamma_m_read_readvariableopHsavev2_adam_block_107_batch_normalization_214_beta_m_read_readvariableop=savev2_adam_block_107_conv2d_223_kernel_m_read_readvariableop;savev2_adam_block_107_conv2d_223_bias_m_read_readvariableopIsavev2_adam_block_107_batch_normalization_215_gamma_m_read_readvariableopHsavev2_adam_block_107_batch_normalization_215_beta_m_read_readvariableop=savev2_adam_block_108_conv2d_224_kernel_m_read_readvariableop;savev2_adam_block_108_conv2d_224_bias_m_read_readvariableopIsavev2_adam_block_108_batch_normalization_216_gamma_m_read_readvariableopHsavev2_adam_block_108_batch_normalization_216_beta_m_read_readvariableop=savev2_adam_block_108_conv2d_225_kernel_m_read_readvariableop;savev2_adam_block_108_conv2d_225_bias_m_read_readvariableopIsavev2_adam_block_108_batch_normalization_217_gamma_m_read_readvariableopHsavev2_adam_block_108_batch_normalization_217_beta_m_read_readvariableop1savev2_adam_dense_41_kernel_v_read_readvariableop/savev2_adam_dense_41_bias_v_read_readvariableop=savev2_adam_block_106_conv2d_220_kernel_v_read_readvariableop;savev2_adam_block_106_conv2d_220_bias_v_read_readvariableopIsavev2_adam_block_106_batch_normalization_212_gamma_v_read_readvariableopHsavev2_adam_block_106_batch_normalization_212_beta_v_read_readvariableop=savev2_adam_block_106_conv2d_221_kernel_v_read_readvariableop;savev2_adam_block_106_conv2d_221_bias_v_read_readvariableopIsavev2_adam_block_106_batch_normalization_213_gamma_v_read_readvariableopHsavev2_adam_block_106_batch_normalization_213_beta_v_read_readvariableop=savev2_adam_block_107_conv2d_222_kernel_v_read_readvariableop;savev2_adam_block_107_conv2d_222_bias_v_read_readvariableopIsavev2_adam_block_107_batch_normalization_214_gamma_v_read_readvariableopHsavev2_adam_block_107_batch_normalization_214_beta_v_read_readvariableop=savev2_adam_block_107_conv2d_223_kernel_v_read_readvariableop;savev2_adam_block_107_conv2d_223_bias_v_read_readvariableopIsavev2_adam_block_107_batch_normalization_215_gamma_v_read_readvariableopHsavev2_adam_block_107_batch_normalization_215_beta_v_read_readvariableop=savev2_adam_block_108_conv2d_224_kernel_v_read_readvariableop;savev2_adam_block_108_conv2d_224_bias_v_read_readvariableopIsavev2_adam_block_108_batch_normalization_216_gamma_v_read_readvariableopHsavev2_adam_block_108_batch_normalization_216_beta_v_read_readvariableop=savev2_adam_block_108_conv2d_225_kernel_v_read_readvariableop;savev2_adam_block_108_conv2d_225_bias_v_read_readvariableopIsavev2_adam_block_108_batch_normalization_217_gamma_v_read_readvariableopHsavev2_adam_block_108_batch_normalization_217_beta_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *r
dtypesh
f2d	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Í
_input_shapes»
¸: :	
:
: : : : :  : : : : : : : : @:@:@:@:@@:@:@:@:@:@:@:@:@:::::::::::: : : : : : : : : :	
:
: : : : :  : : : : @:@:@:@:@@:@:@:@:@::::::::	
:
: : : : :  : : : : @:@:@:@:@@:@:@:@:@:::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	
: 

_output_shapes
:
:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: : 	

_output_shapes
: : 


_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::.*
(
_output_shapes
::! 

_output_shapes	
::!!

_output_shapes	
::!"

_output_shapes	
::!#

_output_shapes	
::!$

_output_shapes	
::!%

_output_shapes	
::!&

_output_shapes	
::'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :%0!

_output_shapes
:	
: 1

_output_shapes
:
:,2(
&
_output_shapes
: : 3

_output_shapes
: : 4

_output_shapes
: : 5

_output_shapes
: :,6(
&
_output_shapes
:  : 7

_output_shapes
: : 8

_output_shapes
: : 9

_output_shapes
: :,:(
&
_output_shapes
: @: ;

_output_shapes
:@: <

_output_shapes
:@: =

_output_shapes
:@:,>(
&
_output_shapes
:@@: ?

_output_shapes
:@: @

_output_shapes
:@: A

_output_shapes
:@:-B)
'
_output_shapes
:@:!C

_output_shapes	
::!D

_output_shapes	
::!E

_output_shapes	
::.F*
(
_output_shapes
::!G

_output_shapes	
::!H

_output_shapes	
::!I

_output_shapes	
::%J!

_output_shapes
:	
: K

_output_shapes
:
:,L(
&
_output_shapes
: : M

_output_shapes
: : N

_output_shapes
: : O

_output_shapes
: :,P(
&
_output_shapes
:  : Q

_output_shapes
: : R

_output_shapes
: : S

_output_shapes
: :,T(
&
_output_shapes
: @: U

_output_shapes
:@: V

_output_shapes
:@: W

_output_shapes
:@:,X(
&
_output_shapes
:@@: Y

_output_shapes
:@: Z

_output_shapes
:@: [

_output_shapes
:@:-\)
'
_output_shapes
:@:!]

_output_shapes	
::!^

_output_shapes	
::!_

_output_shapes	
::.`*
(
_output_shapes
::!a

_output_shapes	
::!b

_output_shapes	
::!c

_output_shapes	
::d

_output_shapes
: 
K
ù
F__inference_block_108_layer_call_and_return_conditional_losses_2497376
xD
)conv2d_224_conv2d_readvariableop_resource:@9
*conv2d_224_biasadd_readvariableop_resource:	>
/batch_normalization_216_readvariableop_resource:	@
1batch_normalization_216_readvariableop_1_resource:	O
@batch_normalization_216_fusedbatchnormv3_readvariableop_resource:	Q
Bbatch_normalization_216_fusedbatchnormv3_readvariableop_1_resource:	E
)conv2d_225_conv2d_readvariableop_resource:9
*conv2d_225_biasadd_readvariableop_resource:	>
/batch_normalization_217_readvariableop_resource:	@
1batch_normalization_217_readvariableop_1_resource:	O
@batch_normalization_217_fusedbatchnormv3_readvariableop_resource:	Q
Bbatch_normalization_217_fusedbatchnormv3_readvariableop_1_resource:	
identity¢&batch_normalization_216/AssignNewValue¢(batch_normalization_216/AssignNewValue_1¢7batch_normalization_216/FusedBatchNormV3/ReadVariableOp¢9batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1¢&batch_normalization_216/ReadVariableOp¢(batch_normalization_216/ReadVariableOp_1¢&batch_normalization_217/AssignNewValue¢(batch_normalization_217/AssignNewValue_1¢7batch_normalization_217/FusedBatchNormV3/ReadVariableOp¢9batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1¢&batch_normalization_217/ReadVariableOp¢(batch_normalization_217/ReadVariableOp_1¢!conv2d_224/BiasAdd/ReadVariableOp¢ conv2d_224/Conv2D/ReadVariableOp¢!conv2d_225/BiasAdd/ReadVariableOp¢ conv2d_225/Conv2D/ReadVariableOp
 conv2d_224/Conv2D/ReadVariableOpReadVariableOp)conv2d_224_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0«
conv2d_224/Conv2DConv2Dx(conv2d_224/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

!conv2d_224/BiasAdd/ReadVariableOpReadVariableOp*conv2d_224_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_224/BiasAddBiasAddconv2d_224/Conv2D:output:0)conv2d_224/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&batch_normalization_216/ReadVariableOpReadVariableOp/batch_normalization_216_readvariableop_resource*
_output_shapes	
:*
dtype0
(batch_normalization_216/ReadVariableOp_1ReadVariableOp1batch_normalization_216_readvariableop_1_resource*
_output_shapes	
:*
dtype0µ
7batch_normalization_216/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_216_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0¹
9batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_216_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Ö
(batch_normalization_216/FusedBatchNormV3FusedBatchNormV3conv2d_224/BiasAdd:output:0.batch_normalization_216/ReadVariableOp:value:00batch_normalization_216/ReadVariableOp_1:value:0?batch_normalization_216/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_216/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<¦
&batch_normalization_216/AssignNewValueAssignVariableOp@batch_normalization_216_fusedbatchnormv3_readvariableop_resource5batch_normalization_216/FusedBatchNormV3:batch_mean:08^batch_normalization_216/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(°
(batch_normalization_216/AssignNewValue_1AssignVariableOpBbatch_normalization_216_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_216/FusedBatchNormV3:batch_variance:0:^batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
activation_216/ReluRelu,batch_normalization_216/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 conv2d_225/Conv2D/ReadVariableOpReadVariableOp)conv2d_225_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ë
conv2d_225/Conv2DConv2D!activation_216/Relu:activations:0(conv2d_225/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

!conv2d_225/BiasAdd/ReadVariableOpReadVariableOp*conv2d_225_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_225/BiasAddBiasAddconv2d_225/Conv2D:output:0)conv2d_225/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&batch_normalization_217/ReadVariableOpReadVariableOp/batch_normalization_217_readvariableop_resource*
_output_shapes	
:*
dtype0
(batch_normalization_217/ReadVariableOp_1ReadVariableOp1batch_normalization_217_readvariableop_1_resource*
_output_shapes	
:*
dtype0µ
7batch_normalization_217/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_217_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0¹
9batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_217_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Ö
(batch_normalization_217/FusedBatchNormV3FusedBatchNormV3conv2d_225/BiasAdd:output:0.batch_normalization_217/ReadVariableOp:value:00batch_normalization_217/ReadVariableOp_1:value:0?batch_normalization_217/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_217/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<¦
&batch_normalization_217/AssignNewValueAssignVariableOp@batch_normalization_217_fusedbatchnormv3_readvariableop_resource5batch_normalization_217/FusedBatchNormV3:batch_mean:08^batch_normalization_217/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(°
(batch_normalization_217/AssignNewValue_1AssignVariableOpBbatch_normalization_217_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_217/FusedBatchNormV3:batch_variance:0:^batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
addAddV2,batch_normalization_217/FusedBatchNormV3:y:0conv2d_224/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
activation_217/ReluReluadd:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
average_pooling2d_112/AvgPoolAvgPool!activation_217/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingSAME*
strides
~
IdentityIdentity&average_pooling2d_112/AvgPool:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp'^batch_normalization_216/AssignNewValue)^batch_normalization_216/AssignNewValue_18^batch_normalization_216/FusedBatchNormV3/ReadVariableOp:^batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_216/ReadVariableOp)^batch_normalization_216/ReadVariableOp_1'^batch_normalization_217/AssignNewValue)^batch_normalization_217/AssignNewValue_18^batch_normalization_217/FusedBatchNormV3/ReadVariableOp:^batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_217/ReadVariableOp)^batch_normalization_217/ReadVariableOp_1"^conv2d_224/BiasAdd/ReadVariableOp!^conv2d_224/Conv2D/ReadVariableOp"^conv2d_225/BiasAdd/ReadVariableOp!^conv2d_225/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : : : : : 2P
&batch_normalization_216/AssignNewValue&batch_normalization_216/AssignNewValue2T
(batch_normalization_216/AssignNewValue_1(batch_normalization_216/AssignNewValue_12r
7batch_normalization_216/FusedBatchNormV3/ReadVariableOp7batch_normalization_216/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_216/FusedBatchNormV3/ReadVariableOp_19batch_normalization_216/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_216/ReadVariableOp&batch_normalization_216/ReadVariableOp2T
(batch_normalization_216/ReadVariableOp_1(batch_normalization_216/ReadVariableOp_12P
&batch_normalization_217/AssignNewValue&batch_normalization_217/AssignNewValue2T
(batch_normalization_217/AssignNewValue_1(batch_normalization_217/AssignNewValue_12r
7batch_normalization_217/FusedBatchNormV3/ReadVariableOp7batch_normalization_217/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_217/FusedBatchNormV3/ReadVariableOp_19batch_normalization_217/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_217/ReadVariableOp&batch_normalization_217/ReadVariableOp2T
(batch_normalization_217/ReadVariableOp_1(batch_normalization_217/ReadVariableOp_12F
!conv2d_224/BiasAdd/ReadVariableOp!conv2d_224/BiasAdd/ReadVariableOp2D
 conv2d_224/Conv2D/ReadVariableOp conv2d_224/Conv2D/ReadVariableOp2F
!conv2d_225/BiasAdd/ReadVariableOp!conv2d_225/BiasAdd/ReadVariableOp2D
 conv2d_225/Conv2D/ReadVariableOp conv2d_225/Conv2D/ReadVariableOp:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@

_user_specified_nameX
Û<
Ä
F__inference_block_107_layer_call_and_return_conditional_losses_2495326
xC
)conv2d_222_conv2d_readvariableop_resource: @8
*conv2d_222_biasadd_readvariableop_resource:@=
/batch_normalization_214_readvariableop_resource:@?
1batch_normalization_214_readvariableop_1_resource:@N
@batch_normalization_214_fusedbatchnormv3_readvariableop_resource:@P
Bbatch_normalization_214_fusedbatchnormv3_readvariableop_1_resource:@C
)conv2d_223_conv2d_readvariableop_resource:@@8
*conv2d_223_biasadd_readvariableop_resource:@=
/batch_normalization_215_readvariableop_resource:@?
1batch_normalization_215_readvariableop_1_resource:@N
@batch_normalization_215_fusedbatchnormv3_readvariableop_resource:@P
Bbatch_normalization_215_fusedbatchnormv3_readvariableop_1_resource:@
identity¢7batch_normalization_214/FusedBatchNormV3/ReadVariableOp¢9batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1¢&batch_normalization_214/ReadVariableOp¢(batch_normalization_214/ReadVariableOp_1¢7batch_normalization_215/FusedBatchNormV3/ReadVariableOp¢9batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1¢&batch_normalization_215/ReadVariableOp¢(batch_normalization_215/ReadVariableOp_1¢!conv2d_222/BiasAdd/ReadVariableOp¢ conv2d_222/Conv2D/ReadVariableOp¢!conv2d_223/BiasAdd/ReadVariableOp¢ conv2d_223/Conv2D/ReadVariableOp
 conv2d_222/Conv2D/ReadVariableOpReadVariableOp)conv2d_222_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ª
conv2d_222/Conv2DConv2Dx(conv2d_222/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides

!conv2d_222/BiasAdd/ReadVariableOpReadVariableOp*conv2d_222_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_222/BiasAddBiasAddconv2d_222/Conv2D:output:0)conv2d_222/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
&batch_normalization_214/ReadVariableOpReadVariableOp/batch_normalization_214_readvariableop_resource*
_output_shapes
:@*
dtype0
(batch_normalization_214/ReadVariableOp_1ReadVariableOp1batch_normalization_214_readvariableop_1_resource*
_output_shapes
:@*
dtype0´
7batch_normalization_214/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_214_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0¸
9batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_214_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ã
(batch_normalization_214/FusedBatchNormV3FusedBatchNormV3conv2d_222/BiasAdd:output:0.batch_normalization_214/ReadVariableOp:value:00batch_normalization_214/ReadVariableOp_1:value:0?batch_normalization_214/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_214/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
is_training( 
activation_214/ReluRelu,batch_normalization_214/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 conv2d_223/Conv2D/ReadVariableOpReadVariableOp)conv2d_223_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ê
conv2d_223/Conv2DConv2D!activation_214/Relu:activations:0(conv2d_223/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides

!conv2d_223/BiasAdd/ReadVariableOpReadVariableOp*conv2d_223_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_223/BiasAddBiasAddconv2d_223/Conv2D:output:0)conv2d_223/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
&batch_normalization_215/ReadVariableOpReadVariableOp/batch_normalization_215_readvariableop_resource*
_output_shapes
:@*
dtype0
(batch_normalization_215/ReadVariableOp_1ReadVariableOp1batch_normalization_215_readvariableop_1_resource*
_output_shapes
:@*
dtype0´
7batch_normalization_215/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_215_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0¸
9batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_215_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ã
(batch_normalization_215/FusedBatchNormV3FusedBatchNormV3conv2d_223/BiasAdd:output:0.batch_normalization_215/ReadVariableOp:value:00batch_normalization_215/ReadVariableOp_1:value:0?batch_normalization_215/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_215/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
is_training( 
addAddV2,batch_normalization_215/FusedBatchNormV3:y:0conv2d_222/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
activation_215/ReluReluadd:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@À
average_pooling2d_111/AvgPoolAvgPool!activation_215/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingSAME*
strides

dropout_107/IdentityIdentity&average_pooling2d_111/AvgPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@t
IdentityIdentitydropout_107/Identity:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@è
NoOpNoOp8^batch_normalization_214/FusedBatchNormV3/ReadVariableOp:^batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_214/ReadVariableOp)^batch_normalization_214/ReadVariableOp_18^batch_normalization_215/FusedBatchNormV3/ReadVariableOp:^batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_215/ReadVariableOp)^batch_normalization_215/ReadVariableOp_1"^conv2d_222/BiasAdd/ReadVariableOp!^conv2d_222/Conv2D/ReadVariableOp"^conv2d_223/BiasAdd/ReadVariableOp!^conv2d_223/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ : : : : : : : : : : : : 2r
7batch_normalization_214/FusedBatchNormV3/ReadVariableOp7batch_normalization_214/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_214/FusedBatchNormV3/ReadVariableOp_19batch_normalization_214/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_214/ReadVariableOp&batch_normalization_214/ReadVariableOp2T
(batch_normalization_214/ReadVariableOp_1(batch_normalization_214/ReadVariableOp_12r
7batch_normalization_215/FusedBatchNormV3/ReadVariableOp7batch_normalization_215/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_215/FusedBatchNormV3/ReadVariableOp_19batch_normalization_215/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_215/ReadVariableOp&batch_normalization_215/ReadVariableOp2T
(batch_normalization_215/ReadVariableOp_1(batch_normalization_215/ReadVariableOp_12F
!conv2d_222/BiasAdd/ReadVariableOp!conv2d_222/BiasAdd/ReadVariableOp2D
 conv2d_222/Conv2D/ReadVariableOp conv2d_222/Conv2D/ReadVariableOp2F
!conv2d_223/BiasAdd/ReadVariableOp!conv2d_223/BiasAdd/ReadVariableOp2D
 conv2d_223/Conv2D/ReadVariableOp conv2d_223/Conv2D/ReadVariableOp:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 

_user_specified_nameX
ÓJ
ì
F__inference_block_107_layer_call_and_return_conditional_losses_2495735
xC
)conv2d_222_conv2d_readvariableop_resource: @8
*conv2d_222_biasadd_readvariableop_resource:@=
/batch_normalization_214_readvariableop_resource:@?
1batch_normalization_214_readvariableop_1_resource:@N
@batch_normalization_214_fusedbatchnormv3_readvariableop_resource:@P
Bbatch_normalization_214_fusedbatchnormv3_readvariableop_1_resource:@C
)conv2d_223_conv2d_readvariableop_resource:@@8
*conv2d_223_biasadd_readvariableop_resource:@=
/batch_normalization_215_readvariableop_resource:@?
1batch_normalization_215_readvariableop_1_resource:@N
@batch_normalization_215_fusedbatchnormv3_readvariableop_resource:@P
Bbatch_normalization_215_fusedbatchnormv3_readvariableop_1_resource:@
identity¢&batch_normalization_214/AssignNewValue¢(batch_normalization_214/AssignNewValue_1¢7batch_normalization_214/FusedBatchNormV3/ReadVariableOp¢9batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1¢&batch_normalization_214/ReadVariableOp¢(batch_normalization_214/ReadVariableOp_1¢&batch_normalization_215/AssignNewValue¢(batch_normalization_215/AssignNewValue_1¢7batch_normalization_215/FusedBatchNormV3/ReadVariableOp¢9batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1¢&batch_normalization_215/ReadVariableOp¢(batch_normalization_215/ReadVariableOp_1¢!conv2d_222/BiasAdd/ReadVariableOp¢ conv2d_222/Conv2D/ReadVariableOp¢!conv2d_223/BiasAdd/ReadVariableOp¢ conv2d_223/Conv2D/ReadVariableOp
 conv2d_222/Conv2D/ReadVariableOpReadVariableOp)conv2d_222_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ª
conv2d_222/Conv2DConv2Dx(conv2d_222/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides

!conv2d_222/BiasAdd/ReadVariableOpReadVariableOp*conv2d_222_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_222/BiasAddBiasAddconv2d_222/Conv2D:output:0)conv2d_222/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
&batch_normalization_214/ReadVariableOpReadVariableOp/batch_normalization_214_readvariableop_resource*
_output_shapes
:@*
dtype0
(batch_normalization_214/ReadVariableOp_1ReadVariableOp1batch_normalization_214_readvariableop_1_resource*
_output_shapes
:@*
dtype0´
7batch_normalization_214/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_214_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0¸
9batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_214_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ñ
(batch_normalization_214/FusedBatchNormV3FusedBatchNormV3conv2d_222/BiasAdd:output:0.batch_normalization_214/ReadVariableOp:value:00batch_normalization_214/ReadVariableOp_1:value:0?batch_normalization_214/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_214/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
×#<¦
&batch_normalization_214/AssignNewValueAssignVariableOp@batch_normalization_214_fusedbatchnormv3_readvariableop_resource5batch_normalization_214/FusedBatchNormV3:batch_mean:08^batch_normalization_214/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(°
(batch_normalization_214/AssignNewValue_1AssignVariableOpBbatch_normalization_214_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_214/FusedBatchNormV3:batch_variance:0:^batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
activation_214/ReluRelu,batch_normalization_214/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 conv2d_223/Conv2D/ReadVariableOpReadVariableOp)conv2d_223_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ê
conv2d_223/Conv2DConv2D!activation_214/Relu:activations:0(conv2d_223/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides

!conv2d_223/BiasAdd/ReadVariableOpReadVariableOp*conv2d_223_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_223/BiasAddBiasAddconv2d_223/Conv2D:output:0)conv2d_223/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
&batch_normalization_215/ReadVariableOpReadVariableOp/batch_normalization_215_readvariableop_resource*
_output_shapes
:@*
dtype0
(batch_normalization_215/ReadVariableOp_1ReadVariableOp1batch_normalization_215_readvariableop_1_resource*
_output_shapes
:@*
dtype0´
7batch_normalization_215/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_215_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0¸
9batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_215_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ñ
(batch_normalization_215/FusedBatchNormV3FusedBatchNormV3conv2d_223/BiasAdd:output:0.batch_normalization_215/ReadVariableOp:value:00batch_normalization_215/ReadVariableOp_1:value:0?batch_normalization_215/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_215/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
×#<¦
&batch_normalization_215/AssignNewValueAssignVariableOp@batch_normalization_215_fusedbatchnormv3_readvariableop_resource5batch_normalization_215/FusedBatchNormV3:batch_mean:08^batch_normalization_215/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(°
(batch_normalization_215/AssignNewValue_1AssignVariableOpBbatch_normalization_215_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_215/FusedBatchNormV3:batch_variance:0:^batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
addAddV2,batch_normalization_215/FusedBatchNormV3:y:0conv2d_222/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
activation_215/ReluReluadd:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@À
average_pooling2d_111/AvgPoolAvgPool!activation_215/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingSAME*
strides
}
IdentityIdentity&average_pooling2d_111/AvgPool:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp'^batch_normalization_214/AssignNewValue)^batch_normalization_214/AssignNewValue_18^batch_normalization_214/FusedBatchNormV3/ReadVariableOp:^batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_214/ReadVariableOp)^batch_normalization_214/ReadVariableOp_1'^batch_normalization_215/AssignNewValue)^batch_normalization_215/AssignNewValue_18^batch_normalization_215/FusedBatchNormV3/ReadVariableOp:^batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_215/ReadVariableOp)^batch_normalization_215/ReadVariableOp_1"^conv2d_222/BiasAdd/ReadVariableOp!^conv2d_222/Conv2D/ReadVariableOp"^conv2d_223/BiasAdd/ReadVariableOp!^conv2d_223/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ : : : : : : : : : : : : 2P
&batch_normalization_214/AssignNewValue&batch_normalization_214/AssignNewValue2T
(batch_normalization_214/AssignNewValue_1(batch_normalization_214/AssignNewValue_12r
7batch_normalization_214/FusedBatchNormV3/ReadVariableOp7batch_normalization_214/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_214/FusedBatchNormV3/ReadVariableOp_19batch_normalization_214/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_214/ReadVariableOp&batch_normalization_214/ReadVariableOp2T
(batch_normalization_214/ReadVariableOp_1(batch_normalization_214/ReadVariableOp_12P
&batch_normalization_215/AssignNewValue&batch_normalization_215/AssignNewValue2T
(batch_normalization_215/AssignNewValue_1(batch_normalization_215/AssignNewValue_12r
7batch_normalization_215/FusedBatchNormV3/ReadVariableOp7batch_normalization_215/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_215/FusedBatchNormV3/ReadVariableOp_19batch_normalization_215/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_215/ReadVariableOp&batch_normalization_215/ReadVariableOp2T
(batch_normalization_215/ReadVariableOp_1(batch_normalization_215/ReadVariableOp_12F
!conv2d_222/BiasAdd/ReadVariableOp!conv2d_222/BiasAdd/ReadVariableOp2D
 conv2d_222/Conv2D/ReadVariableOp conv2d_222/Conv2D/ReadVariableOp2F
!conv2d_223/BiasAdd/ReadVariableOp!conv2d_223/BiasAdd/ReadVariableOp2D
 conv2d_223/Conv2D/ReadVariableOp conv2d_223/Conv2D/ReadVariableOp:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 

_user_specified_nameX
É
S
7__inference_average_pooling2d_111_layer_call_fn_2497670

inputs
identityã
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_average_pooling2d_111_layer_call_and_return_conditional_losses_2495052
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
Ô
9__inference_batch_normalization_214_layer_call_fn_2497554

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity¢StatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_2494937
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
K
ù
F__inference_block_108_layer_call_and_return_conditional_losses_2495628
xD
)conv2d_224_conv2d_readvariableop_resource:@9
*conv2d_224_biasadd_readvariableop_resource:	>
/batch_normalization_216_readvariableop_resource:	@
1batch_normalization_216_readvariableop_1_resource:	O
@batch_normalization_216_fusedbatchnormv3_readvariableop_resource:	Q
Bbatch_normalization_216_fusedbatchnormv3_readvariableop_1_resource:	E
)conv2d_225_conv2d_readvariableop_resource:9
*conv2d_225_biasadd_readvariableop_resource:	>
/batch_normalization_217_readvariableop_resource:	@
1batch_normalization_217_readvariableop_1_resource:	O
@batch_normalization_217_fusedbatchnormv3_readvariableop_resource:	Q
Bbatch_normalization_217_fusedbatchnormv3_readvariableop_1_resource:	
identity¢&batch_normalization_216/AssignNewValue¢(batch_normalization_216/AssignNewValue_1¢7batch_normalization_216/FusedBatchNormV3/ReadVariableOp¢9batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1¢&batch_normalization_216/ReadVariableOp¢(batch_normalization_216/ReadVariableOp_1¢&batch_normalization_217/AssignNewValue¢(batch_normalization_217/AssignNewValue_1¢7batch_normalization_217/FusedBatchNormV3/ReadVariableOp¢9batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1¢&batch_normalization_217/ReadVariableOp¢(batch_normalization_217/ReadVariableOp_1¢!conv2d_224/BiasAdd/ReadVariableOp¢ conv2d_224/Conv2D/ReadVariableOp¢!conv2d_225/BiasAdd/ReadVariableOp¢ conv2d_225/Conv2D/ReadVariableOp
 conv2d_224/Conv2D/ReadVariableOpReadVariableOp)conv2d_224_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0«
conv2d_224/Conv2DConv2Dx(conv2d_224/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

!conv2d_224/BiasAdd/ReadVariableOpReadVariableOp*conv2d_224_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_224/BiasAddBiasAddconv2d_224/Conv2D:output:0)conv2d_224/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&batch_normalization_216/ReadVariableOpReadVariableOp/batch_normalization_216_readvariableop_resource*
_output_shapes	
:*
dtype0
(batch_normalization_216/ReadVariableOp_1ReadVariableOp1batch_normalization_216_readvariableop_1_resource*
_output_shapes	
:*
dtype0µ
7batch_normalization_216/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_216_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0¹
9batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_216_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Ö
(batch_normalization_216/FusedBatchNormV3FusedBatchNormV3conv2d_224/BiasAdd:output:0.batch_normalization_216/ReadVariableOp:value:00batch_normalization_216/ReadVariableOp_1:value:0?batch_normalization_216/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_216/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<¦
&batch_normalization_216/AssignNewValueAssignVariableOp@batch_normalization_216_fusedbatchnormv3_readvariableop_resource5batch_normalization_216/FusedBatchNormV3:batch_mean:08^batch_normalization_216/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(°
(batch_normalization_216/AssignNewValue_1AssignVariableOpBbatch_normalization_216_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_216/FusedBatchNormV3:batch_variance:0:^batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
activation_216/ReluRelu,batch_normalization_216/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 conv2d_225/Conv2D/ReadVariableOpReadVariableOp)conv2d_225_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ë
conv2d_225/Conv2DConv2D!activation_216/Relu:activations:0(conv2d_225/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

!conv2d_225/BiasAdd/ReadVariableOpReadVariableOp*conv2d_225_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_225/BiasAddBiasAddconv2d_225/Conv2D:output:0)conv2d_225/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&batch_normalization_217/ReadVariableOpReadVariableOp/batch_normalization_217_readvariableop_resource*
_output_shapes	
:*
dtype0
(batch_normalization_217/ReadVariableOp_1ReadVariableOp1batch_normalization_217_readvariableop_1_resource*
_output_shapes	
:*
dtype0µ
7batch_normalization_217/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_217_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0¹
9batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_217_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Ö
(batch_normalization_217/FusedBatchNormV3FusedBatchNormV3conv2d_225/BiasAdd:output:0.batch_normalization_217/ReadVariableOp:value:00batch_normalization_217/ReadVariableOp_1:value:0?batch_normalization_217/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_217/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<¦
&batch_normalization_217/AssignNewValueAssignVariableOp@batch_normalization_217_fusedbatchnormv3_readvariableop_resource5batch_normalization_217/FusedBatchNormV3:batch_mean:08^batch_normalization_217/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(°
(batch_normalization_217/AssignNewValue_1AssignVariableOpBbatch_normalization_217_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_217/FusedBatchNormV3:batch_variance:0:^batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
addAddV2,batch_normalization_217/FusedBatchNormV3:y:0conv2d_224/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
activation_217/ReluReluadd:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
average_pooling2d_112/AvgPoolAvgPool!activation_217/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingSAME*
strides
~
IdentityIdentity&average_pooling2d_112/AvgPool:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp'^batch_normalization_216/AssignNewValue)^batch_normalization_216/AssignNewValue_18^batch_normalization_216/FusedBatchNormV3/ReadVariableOp:^batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_216/ReadVariableOp)^batch_normalization_216/ReadVariableOp_1'^batch_normalization_217/AssignNewValue)^batch_normalization_217/AssignNewValue_18^batch_normalization_217/FusedBatchNormV3/ReadVariableOp:^batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_217/ReadVariableOp)^batch_normalization_217/ReadVariableOp_1"^conv2d_224/BiasAdd/ReadVariableOp!^conv2d_224/Conv2D/ReadVariableOp"^conv2d_225/BiasAdd/ReadVariableOp!^conv2d_225/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : : : : : 2P
&batch_normalization_216/AssignNewValue&batch_normalization_216/AssignNewValue2T
(batch_normalization_216/AssignNewValue_1(batch_normalization_216/AssignNewValue_12r
7batch_normalization_216/FusedBatchNormV3/ReadVariableOp7batch_normalization_216/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_216/FusedBatchNormV3/ReadVariableOp_19batch_normalization_216/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_216/ReadVariableOp&batch_normalization_216/ReadVariableOp2T
(batch_normalization_216/ReadVariableOp_1(batch_normalization_216/ReadVariableOp_12P
&batch_normalization_217/AssignNewValue&batch_normalization_217/AssignNewValue2T
(batch_normalization_217/AssignNewValue_1(batch_normalization_217/AssignNewValue_12r
7batch_normalization_217/FusedBatchNormV3/ReadVariableOp7batch_normalization_217/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_217/FusedBatchNormV3/ReadVariableOp_19batch_normalization_217/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_217/ReadVariableOp&batch_normalization_217/ReadVariableOp2T
(batch_normalization_217/ReadVariableOp_1(batch_normalization_217/ReadVariableOp_12F
!conv2d_224/BiasAdd/ReadVariableOp!conv2d_224/BiasAdd/ReadVariableOp2D
 conv2d_224/Conv2D/ReadVariableOp conv2d_224/Conv2D/ReadVariableOp2F
!conv2d_225/BiasAdd/ReadVariableOp!conv2d_225/BiasAdd/ReadVariableOp2D
 conv2d_225/Conv2D/ReadVariableOp conv2d_225/Conv2D/ReadVariableOp:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@

_user_specified_nameX
á
	
%__inference_signature_wrapper_2496456
input_37!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@%

unknown_23:@

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	&

unknown_29:

unknown_30:	

unknown_31:	

unknown_32:	

unknown_33:	

unknown_34:	

unknown_35:	


unknown_36:

identity¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinput_37unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_2494775o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
"
_user_specified_name
input_37

Ã
T__inference_batch_normalization_212_layer_call_and_return_conditional_losses_2497469

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ö
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
exponential_avg_factor%
×#<Æ
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ð
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ Ô
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
=
Ñ
F__inference_block_108_layer_call_and_return_conditional_losses_2495401
xD
)conv2d_224_conv2d_readvariableop_resource:@9
*conv2d_224_biasadd_readvariableop_resource:	>
/batch_normalization_216_readvariableop_resource:	@
1batch_normalization_216_readvariableop_1_resource:	O
@batch_normalization_216_fusedbatchnormv3_readvariableop_resource:	Q
Bbatch_normalization_216_fusedbatchnormv3_readvariableop_1_resource:	E
)conv2d_225_conv2d_readvariableop_resource:9
*conv2d_225_biasadd_readvariableop_resource:	>
/batch_normalization_217_readvariableop_resource:	@
1batch_normalization_217_readvariableop_1_resource:	O
@batch_normalization_217_fusedbatchnormv3_readvariableop_resource:	Q
Bbatch_normalization_217_fusedbatchnormv3_readvariableop_1_resource:	
identity¢7batch_normalization_216/FusedBatchNormV3/ReadVariableOp¢9batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1¢&batch_normalization_216/ReadVariableOp¢(batch_normalization_216/ReadVariableOp_1¢7batch_normalization_217/FusedBatchNormV3/ReadVariableOp¢9batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1¢&batch_normalization_217/ReadVariableOp¢(batch_normalization_217/ReadVariableOp_1¢!conv2d_224/BiasAdd/ReadVariableOp¢ conv2d_224/Conv2D/ReadVariableOp¢!conv2d_225/BiasAdd/ReadVariableOp¢ conv2d_225/Conv2D/ReadVariableOp
 conv2d_224/Conv2D/ReadVariableOpReadVariableOp)conv2d_224_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0«
conv2d_224/Conv2DConv2Dx(conv2d_224/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

!conv2d_224/BiasAdd/ReadVariableOpReadVariableOp*conv2d_224_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_224/BiasAddBiasAddconv2d_224/Conv2D:output:0)conv2d_224/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&batch_normalization_216/ReadVariableOpReadVariableOp/batch_normalization_216_readvariableop_resource*
_output_shapes	
:*
dtype0
(batch_normalization_216/ReadVariableOp_1ReadVariableOp1batch_normalization_216_readvariableop_1_resource*
_output_shapes	
:*
dtype0µ
7batch_normalization_216/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_216_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0¹
9batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_216_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0È
(batch_normalization_216/FusedBatchNormV3FusedBatchNormV3conv2d_224/BiasAdd:output:0.batch_normalization_216/ReadVariableOp:value:00batch_normalization_216/ReadVariableOp_1:value:0?batch_normalization_216/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_216/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( 
activation_216/ReluRelu,batch_normalization_216/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 conv2d_225/Conv2D/ReadVariableOpReadVariableOp)conv2d_225_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ë
conv2d_225/Conv2DConv2D!activation_216/Relu:activations:0(conv2d_225/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

!conv2d_225/BiasAdd/ReadVariableOpReadVariableOp*conv2d_225_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_225/BiasAddBiasAddconv2d_225/Conv2D:output:0)conv2d_225/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&batch_normalization_217/ReadVariableOpReadVariableOp/batch_normalization_217_readvariableop_resource*
_output_shapes	
:*
dtype0
(batch_normalization_217/ReadVariableOp_1ReadVariableOp1batch_normalization_217_readvariableop_1_resource*
_output_shapes	
:*
dtype0µ
7batch_normalization_217/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_217_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0¹
9batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_217_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0È
(batch_normalization_217/FusedBatchNormV3FusedBatchNormV3conv2d_225/BiasAdd:output:0.batch_normalization_217/ReadVariableOp:value:00batch_normalization_217/ReadVariableOp_1:value:0?batch_normalization_217/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_217/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( 
addAddV2,batch_normalization_217/FusedBatchNormV3:y:0conv2d_224/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
activation_217/ReluReluadd:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
average_pooling2d_112/AvgPoolAvgPool!activation_217/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingSAME*
strides

dropout_108/IdentityIdentity&average_pooling2d_112/AvgPool:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
IdentityIdentitydropout_108/Identity:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
NoOpNoOp8^batch_normalization_216/FusedBatchNormV3/ReadVariableOp:^batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_216/ReadVariableOp)^batch_normalization_216/ReadVariableOp_18^batch_normalization_217/FusedBatchNormV3/ReadVariableOp:^batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_217/ReadVariableOp)^batch_normalization_217/ReadVariableOp_1"^conv2d_224/BiasAdd/ReadVariableOp!^conv2d_224/Conv2D/ReadVariableOp"^conv2d_225/BiasAdd/ReadVariableOp!^conv2d_225/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : : : : : 2r
7batch_normalization_216/FusedBatchNormV3/ReadVariableOp7batch_normalization_216/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_216/FusedBatchNormV3/ReadVariableOp_19batch_normalization_216/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_216/ReadVariableOp&batch_normalization_216/ReadVariableOp2T
(batch_normalization_216/ReadVariableOp_1(batch_normalization_216/ReadVariableOp_12r
7batch_normalization_217/FusedBatchNormV3/ReadVariableOp7batch_normalization_217/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_217/FusedBatchNormV3/ReadVariableOp_19batch_normalization_217/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_217/ReadVariableOp&batch_normalization_217/ReadVariableOp2T
(batch_normalization_217/ReadVariableOp_1(batch_normalization_217/ReadVariableOp_12F
!conv2d_224/BiasAdd/ReadVariableOp!conv2d_224/BiasAdd/ReadVariableOp2D
 conv2d_224/Conv2D/ReadVariableOp conv2d_224/Conv2D/ReadVariableOp2F
!conv2d_225/BiasAdd/ReadVariableOp!conv2d_225/BiasAdd/ReadVariableOp2D
 conv2d_225/Conv2D/ReadVariableOp conv2d_225/Conv2D/ReadVariableOp:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@

_user_specified_nameX
ß
£
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_2497781

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Í
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ã
T__inference_batch_normalization_213_layer_call_and_return_conditional_losses_2494892

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ö
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
exponential_avg_factor%
×#<Æ
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ð
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ Ô
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ê
ÜI
#__inference__traced_restore_2498436
file_prefix3
 assignvariableop_dense_41_kernel:	
.
 assignvariableop_1_dense_41_bias:
H
.assignvariableop_2_block_106_conv2d_220_kernel: :
,assignvariableop_3_block_106_conv2d_220_bias: H
:assignvariableop_4_block_106_batch_normalization_212_gamma: G
9assignvariableop_5_block_106_batch_normalization_212_beta: H
.assignvariableop_6_block_106_conv2d_221_kernel:  :
,assignvariableop_7_block_106_conv2d_221_bias: H
:assignvariableop_8_block_106_batch_normalization_213_gamma: G
9assignvariableop_9_block_106_batch_normalization_213_beta: O
Aassignvariableop_10_block_106_batch_normalization_212_moving_mean: S
Eassignvariableop_11_block_106_batch_normalization_212_moving_variance: O
Aassignvariableop_12_block_106_batch_normalization_213_moving_mean: S
Eassignvariableop_13_block_106_batch_normalization_213_moving_variance: I
/assignvariableop_14_block_107_conv2d_222_kernel: @;
-assignvariableop_15_block_107_conv2d_222_bias:@I
;assignvariableop_16_block_107_batch_normalization_214_gamma:@H
:assignvariableop_17_block_107_batch_normalization_214_beta:@I
/assignvariableop_18_block_107_conv2d_223_kernel:@@;
-assignvariableop_19_block_107_conv2d_223_bias:@I
;assignvariableop_20_block_107_batch_normalization_215_gamma:@H
:assignvariableop_21_block_107_batch_normalization_215_beta:@O
Aassignvariableop_22_block_107_batch_normalization_214_moving_mean:@S
Eassignvariableop_23_block_107_batch_normalization_214_moving_variance:@O
Aassignvariableop_24_block_107_batch_normalization_215_moving_mean:@S
Eassignvariableop_25_block_107_batch_normalization_215_moving_variance:@J
/assignvariableop_26_block_108_conv2d_224_kernel:@<
-assignvariableop_27_block_108_conv2d_224_bias:	J
;assignvariableop_28_block_108_batch_normalization_216_gamma:	I
:assignvariableop_29_block_108_batch_normalization_216_beta:	K
/assignvariableop_30_block_108_conv2d_225_kernel:<
-assignvariableop_31_block_108_conv2d_225_bias:	J
;assignvariableop_32_block_108_batch_normalization_217_gamma:	I
:assignvariableop_33_block_108_batch_normalization_217_beta:	P
Aassignvariableop_34_block_108_batch_normalization_216_moving_mean:	T
Eassignvariableop_35_block_108_batch_normalization_216_moving_variance:	P
Aassignvariableop_36_block_108_batch_normalization_217_moving_mean:	T
Eassignvariableop_37_block_108_batch_normalization_217_moving_variance:	'
assignvariableop_38_adam_iter:	 )
assignvariableop_39_adam_beta_1: )
assignvariableop_40_adam_beta_2: (
assignvariableop_41_adam_decay: 0
&assignvariableop_42_adam_learning_rate: %
assignvariableop_43_total_1: %
assignvariableop_44_count_1: #
assignvariableop_45_total: #
assignvariableop_46_count: =
*assignvariableop_47_adam_dense_41_kernel_m:	
6
(assignvariableop_48_adam_dense_41_bias_m:
P
6assignvariableop_49_adam_block_106_conv2d_220_kernel_m: B
4assignvariableop_50_adam_block_106_conv2d_220_bias_m: P
Bassignvariableop_51_adam_block_106_batch_normalization_212_gamma_m: O
Aassignvariableop_52_adam_block_106_batch_normalization_212_beta_m: P
6assignvariableop_53_adam_block_106_conv2d_221_kernel_m:  B
4assignvariableop_54_adam_block_106_conv2d_221_bias_m: P
Bassignvariableop_55_adam_block_106_batch_normalization_213_gamma_m: O
Aassignvariableop_56_adam_block_106_batch_normalization_213_beta_m: P
6assignvariableop_57_adam_block_107_conv2d_222_kernel_m: @B
4assignvariableop_58_adam_block_107_conv2d_222_bias_m:@P
Bassignvariableop_59_adam_block_107_batch_normalization_214_gamma_m:@O
Aassignvariableop_60_adam_block_107_batch_normalization_214_beta_m:@P
6assignvariableop_61_adam_block_107_conv2d_223_kernel_m:@@B
4assignvariableop_62_adam_block_107_conv2d_223_bias_m:@P
Bassignvariableop_63_adam_block_107_batch_normalization_215_gamma_m:@O
Aassignvariableop_64_adam_block_107_batch_normalization_215_beta_m:@Q
6assignvariableop_65_adam_block_108_conv2d_224_kernel_m:@C
4assignvariableop_66_adam_block_108_conv2d_224_bias_m:	Q
Bassignvariableop_67_adam_block_108_batch_normalization_216_gamma_m:	P
Aassignvariableop_68_adam_block_108_batch_normalization_216_beta_m:	R
6assignvariableop_69_adam_block_108_conv2d_225_kernel_m:C
4assignvariableop_70_adam_block_108_conv2d_225_bias_m:	Q
Bassignvariableop_71_adam_block_108_batch_normalization_217_gamma_m:	P
Aassignvariableop_72_adam_block_108_batch_normalization_217_beta_m:	=
*assignvariableop_73_adam_dense_41_kernel_v:	
6
(assignvariableop_74_adam_dense_41_bias_v:
P
6assignvariableop_75_adam_block_106_conv2d_220_kernel_v: B
4assignvariableop_76_adam_block_106_conv2d_220_bias_v: P
Bassignvariableop_77_adam_block_106_batch_normalization_212_gamma_v: O
Aassignvariableop_78_adam_block_106_batch_normalization_212_beta_v: P
6assignvariableop_79_adam_block_106_conv2d_221_kernel_v:  B
4assignvariableop_80_adam_block_106_conv2d_221_bias_v: P
Bassignvariableop_81_adam_block_106_batch_normalization_213_gamma_v: O
Aassignvariableop_82_adam_block_106_batch_normalization_213_beta_v: P
6assignvariableop_83_adam_block_107_conv2d_222_kernel_v: @B
4assignvariableop_84_adam_block_107_conv2d_222_bias_v:@P
Bassignvariableop_85_adam_block_107_batch_normalization_214_gamma_v:@O
Aassignvariableop_86_adam_block_107_batch_normalization_214_beta_v:@P
6assignvariableop_87_adam_block_107_conv2d_223_kernel_v:@@B
4assignvariableop_88_adam_block_107_conv2d_223_bias_v:@P
Bassignvariableop_89_adam_block_107_batch_normalization_215_gamma_v:@O
Aassignvariableop_90_adam_block_107_batch_normalization_215_beta_v:@Q
6assignvariableop_91_adam_block_108_conv2d_224_kernel_v:@C
4assignvariableop_92_adam_block_108_conv2d_224_bias_v:	Q
Bassignvariableop_93_adam_block_108_batch_normalization_216_gamma_v:	P
Aassignvariableop_94_adam_block_108_batch_normalization_216_beta_v:	R
6assignvariableop_95_adam_block_108_conv2d_225_kernel_v:C
4assignvariableop_96_adam_block_108_conv2d_225_bias_v:	Q
Bassignvariableop_97_adam_block_108_batch_normalization_217_gamma_v:	P
Aassignvariableop_98_adam_block_108_batch_normalization_217_beta_v:	
identity_100¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_69¢AssignVariableOp_7¢AssignVariableOp_70¢AssignVariableOp_71¢AssignVariableOp_72¢AssignVariableOp_73¢AssignVariableOp_74¢AssignVariableOp_75¢AssignVariableOp_76¢AssignVariableOp_77¢AssignVariableOp_78¢AssignVariableOp_79¢AssignVariableOp_8¢AssignVariableOp_80¢AssignVariableOp_81¢AssignVariableOp_82¢AssignVariableOp_83¢AssignVariableOp_84¢AssignVariableOp_85¢AssignVariableOp_86¢AssignVariableOp_87¢AssignVariableOp_88¢AssignVariableOp_89¢AssignVariableOp_9¢AssignVariableOp_90¢AssignVariableOp_91¢AssignVariableOp_92¢AssignVariableOp_93¢AssignVariableOp_94¢AssignVariableOp_95¢AssignVariableOp_96¢AssignVariableOp_97¢AssignVariableOp_98-
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:d*
dtype0*Ä,
valueº,B·,dB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH»
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:d*
dtype0*Ý
valueÓBÐdB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¦
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*r
dtypesh
f2d	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_dense_41_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_41_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp.assignvariableop_2_block_106_conv2d_220_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp,assignvariableop_3_block_106_conv2d_220_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_4AssignVariableOp:assignvariableop_4_block_106_batch_normalization_212_gammaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_5AssignVariableOp9assignvariableop_5_block_106_batch_normalization_212_betaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp.assignvariableop_6_block_106_conv2d_221_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp,assignvariableop_7_block_106_conv2d_221_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_8AssignVariableOp:assignvariableop_8_block_106_batch_normalization_213_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_9AssignVariableOp9assignvariableop_9_block_106_batch_normalization_213_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_10AssignVariableOpAassignvariableop_10_block_106_batch_normalization_212_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_11AssignVariableOpEassignvariableop_11_block_106_batch_normalization_212_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_12AssignVariableOpAassignvariableop_12_block_106_batch_normalization_213_moving_meanIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_13AssignVariableOpEassignvariableop_13_block_106_batch_normalization_213_moving_varianceIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_14AssignVariableOp/assignvariableop_14_block_107_conv2d_222_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp-assignvariableop_15_block_107_conv2d_222_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_16AssignVariableOp;assignvariableop_16_block_107_batch_normalization_214_gammaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_17AssignVariableOp:assignvariableop_17_block_107_batch_normalization_214_betaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_18AssignVariableOp/assignvariableop_18_block_107_conv2d_223_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp-assignvariableop_19_block_107_conv2d_223_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_20AssignVariableOp;assignvariableop_20_block_107_batch_normalization_215_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_21AssignVariableOp:assignvariableop_21_block_107_batch_normalization_215_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_22AssignVariableOpAassignvariableop_22_block_107_batch_normalization_214_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_23AssignVariableOpEassignvariableop_23_block_107_batch_normalization_214_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_24AssignVariableOpAassignvariableop_24_block_107_batch_normalization_215_moving_meanIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_25AssignVariableOpEassignvariableop_25_block_107_batch_normalization_215_moving_varianceIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_26AssignVariableOp/assignvariableop_26_block_108_conv2d_224_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp-assignvariableop_27_block_108_conv2d_224_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_28AssignVariableOp;assignvariableop_28_block_108_batch_normalization_216_gammaIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_29AssignVariableOp:assignvariableop_29_block_108_batch_normalization_216_betaIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_30AssignVariableOp/assignvariableop_30_block_108_conv2d_225_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp-assignvariableop_31_block_108_conv2d_225_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_32AssignVariableOp;assignvariableop_32_block_108_batch_normalization_217_gammaIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_33AssignVariableOp:assignvariableop_33_block_108_batch_normalization_217_betaIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_34AssignVariableOpAassignvariableop_34_block_108_batch_normalization_216_moving_meanIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_35AssignVariableOpEassignvariableop_35_block_108_batch_normalization_216_moving_varianceIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_36AssignVariableOpAassignvariableop_36_block_108_batch_normalization_217_moving_meanIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_37AssignVariableOpEassignvariableop_37_block_108_batch_normalization_217_moving_varianceIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_38AssignVariableOpassignvariableop_38_adam_iterIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOpassignvariableop_39_adam_beta_1Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOpassignvariableop_40_adam_beta_2Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOpassignvariableop_41_adam_decayIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp&assignvariableop_42_adam_learning_rateIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOpassignvariableop_43_total_1Identity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOpassignvariableop_44_count_1Identity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOpassignvariableop_45_totalIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOpassignvariableop_46_countIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_41_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_41_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_49AssignVariableOp6assignvariableop_49_adam_block_106_conv2d_220_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_50AssignVariableOp4assignvariableop_50_adam_block_106_conv2d_220_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_51AssignVariableOpBassignvariableop_51_adam_block_106_batch_normalization_212_gamma_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_52AssignVariableOpAassignvariableop_52_adam_block_106_batch_normalization_212_beta_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_53AssignVariableOp6assignvariableop_53_adam_block_106_conv2d_221_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_54AssignVariableOp4assignvariableop_54_adam_block_106_conv2d_221_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_55AssignVariableOpBassignvariableop_55_adam_block_106_batch_normalization_213_gamma_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_56AssignVariableOpAassignvariableop_56_adam_block_106_batch_normalization_213_beta_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_57AssignVariableOp6assignvariableop_57_adam_block_107_conv2d_222_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_58AssignVariableOp4assignvariableop_58_adam_block_107_conv2d_222_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_59AssignVariableOpBassignvariableop_59_adam_block_107_batch_normalization_214_gamma_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_60AssignVariableOpAassignvariableop_60_adam_block_107_batch_normalization_214_beta_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_61AssignVariableOp6assignvariableop_61_adam_block_107_conv2d_223_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_62AssignVariableOp4assignvariableop_62_adam_block_107_conv2d_223_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_63AssignVariableOpBassignvariableop_63_adam_block_107_batch_normalization_215_gamma_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_64AssignVariableOpAassignvariableop_64_adam_block_107_batch_normalization_215_beta_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_65AssignVariableOp6assignvariableop_65_adam_block_108_conv2d_224_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_66AssignVariableOp4assignvariableop_66_adam_block_108_conv2d_224_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_67AssignVariableOpBassignvariableop_67_adam_block_108_batch_normalization_216_gamma_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_68AssignVariableOpAassignvariableop_68_adam_block_108_batch_normalization_216_beta_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_69AssignVariableOp6assignvariableop_69_adam_block_108_conv2d_225_kernel_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_70AssignVariableOp4assignvariableop_70_adam_block_108_conv2d_225_bias_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_71AssignVariableOpBassignvariableop_71_adam_block_108_batch_normalization_217_gamma_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_72AssignVariableOpAassignvariableop_72_adam_block_108_batch_normalization_217_beta_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_73AssignVariableOp*assignvariableop_73_adam_dense_41_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_74AssignVariableOp(assignvariableop_74_adam_dense_41_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_75AssignVariableOp6assignvariableop_75_adam_block_106_conv2d_220_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_76AssignVariableOp4assignvariableop_76_adam_block_106_conv2d_220_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_77AssignVariableOpBassignvariableop_77_adam_block_106_batch_normalization_212_gamma_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_78AssignVariableOpAassignvariableop_78_adam_block_106_batch_normalization_212_beta_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_79AssignVariableOp6assignvariableop_79_adam_block_106_conv2d_221_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_80AssignVariableOp4assignvariableop_80_adam_block_106_conv2d_221_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_81AssignVariableOpBassignvariableop_81_adam_block_106_batch_normalization_213_gamma_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_82AssignVariableOpAassignvariableop_82_adam_block_106_batch_normalization_213_beta_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_83AssignVariableOp6assignvariableop_83_adam_block_107_conv2d_222_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_84AssignVariableOp4assignvariableop_84_adam_block_107_conv2d_222_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_85AssignVariableOpBassignvariableop_85_adam_block_107_batch_normalization_214_gamma_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_86AssignVariableOpAassignvariableop_86_adam_block_107_batch_normalization_214_beta_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_87AssignVariableOp6assignvariableop_87_adam_block_107_conv2d_223_kernel_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_88AssignVariableOp4assignvariableop_88_adam_block_107_conv2d_223_bias_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_89AssignVariableOpBassignvariableop_89_adam_block_107_batch_normalization_215_gamma_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_90AssignVariableOpAassignvariableop_90_adam_block_107_batch_normalization_215_beta_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_91AssignVariableOp6assignvariableop_91_adam_block_108_conv2d_224_kernel_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_92AssignVariableOp4assignvariableop_92_adam_block_108_conv2d_224_bias_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_93AssignVariableOpBassignvariableop_93_adam_block_108_batch_normalization_216_gamma_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_94AssignVariableOpAassignvariableop_94_adam_block_108_batch_normalization_216_beta_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_95AssignVariableOp6assignvariableop_95_adam_block_108_conv2d_225_kernel_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_96AssignVariableOp4assignvariableop_96_adam_block_108_conv2d_225_bias_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_97AssignVariableOpBassignvariableop_97_adam_block_108_batch_normalization_217_gamma_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_98AssignVariableOpAassignvariableop_98_adam_block_108_batch_normalization_217_beta_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Ñ
Identity_99Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^NoOp"/device:CPU:0*
T0*
_output_shapes
: X
Identity_100IdentityIdentity_99:output:0^NoOp_1*
T0*
_output_shapes
: ¾
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98*"
_acd_function_control_output(*
_output_shapes
 "%
identity_100Identity_100:output:0*Ý
_input_shapesË
È: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_98:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
	
Ô
9__inference_batch_normalization_212_layer_call_fn_2497420

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity¢StatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_212_layer_call_and_return_conditional_losses_2494797
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
	
Ô
9__inference_batch_normalization_215_layer_call_fn_2497629

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_2495032
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
	
Ô
9__inference_batch_normalization_213_layer_call_fn_2497495

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_213_layer_call_and_return_conditional_losses_2494892
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ï

T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_2497585

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0È
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@°
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Û<
Ä
F__inference_block_106_layer_call_and_return_conditional_losses_2497018
xC
)conv2d_220_conv2d_readvariableop_resource: 8
*conv2d_220_biasadd_readvariableop_resource: =
/batch_normalization_212_readvariableop_resource: ?
1batch_normalization_212_readvariableop_1_resource: N
@batch_normalization_212_fusedbatchnormv3_readvariableop_resource: P
Bbatch_normalization_212_fusedbatchnormv3_readvariableop_1_resource: C
)conv2d_221_conv2d_readvariableop_resource:  8
*conv2d_221_biasadd_readvariableop_resource: =
/batch_normalization_213_readvariableop_resource: ?
1batch_normalization_213_readvariableop_1_resource: N
@batch_normalization_213_fusedbatchnormv3_readvariableop_resource: P
Bbatch_normalization_213_fusedbatchnormv3_readvariableop_1_resource: 
identity¢7batch_normalization_212/FusedBatchNormV3/ReadVariableOp¢9batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1¢&batch_normalization_212/ReadVariableOp¢(batch_normalization_212/ReadVariableOp_1¢7batch_normalization_213/FusedBatchNormV3/ReadVariableOp¢9batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1¢&batch_normalization_213/ReadVariableOp¢(batch_normalization_213/ReadVariableOp_1¢!conv2d_220/BiasAdd/ReadVariableOp¢ conv2d_220/Conv2D/ReadVariableOp¢!conv2d_221/BiasAdd/ReadVariableOp¢ conv2d_221/Conv2D/ReadVariableOp
 conv2d_220/Conv2D/ReadVariableOpReadVariableOp)conv2d_220_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ª
conv2d_220/Conv2DConv2Dx(conv2d_220/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   *
paddingSAME*
strides

!conv2d_220/BiasAdd/ReadVariableOpReadVariableOp*conv2d_220_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_220/BiasAddBiasAddconv2d_220/Conv2D:output:0)conv2d_220/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   
&batch_normalization_212/ReadVariableOpReadVariableOp/batch_normalization_212_readvariableop_resource*
_output_shapes
: *
dtype0
(batch_normalization_212/ReadVariableOp_1ReadVariableOp1batch_normalization_212_readvariableop_1_resource*
_output_shapes
: *
dtype0´
7batch_normalization_212/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_212_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0¸
9batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_212_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ã
(batch_normalization_212/FusedBatchNormV3FusedBatchNormV3conv2d_220/BiasAdd:output:0.batch_normalization_212/ReadVariableOp:value:00batch_normalization_212/ReadVariableOp_1:value:0?batch_normalization_212/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_212/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ   : : : : :*
epsilon%o:*
is_training( 
activation_212/ReluRelu,batch_normalization_212/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   
 conv2d_221/Conv2D/ReadVariableOpReadVariableOp)conv2d_221_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ê
conv2d_221/Conv2DConv2D!activation_212/Relu:activations:0(conv2d_221/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   *
paddingSAME*
strides

!conv2d_221/BiasAdd/ReadVariableOpReadVariableOp*conv2d_221_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_221/BiasAddBiasAddconv2d_221/Conv2D:output:0)conv2d_221/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   
&batch_normalization_213/ReadVariableOpReadVariableOp/batch_normalization_213_readvariableop_resource*
_output_shapes
: *
dtype0
(batch_normalization_213/ReadVariableOp_1ReadVariableOp1batch_normalization_213_readvariableop_1_resource*
_output_shapes
: *
dtype0´
7batch_normalization_213/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_213_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0¸
9batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_213_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ã
(batch_normalization_213/FusedBatchNormV3FusedBatchNormV3conv2d_221/BiasAdd:output:0.batch_normalization_213/ReadVariableOp:value:00batch_normalization_213/ReadVariableOp_1:value:0?batch_normalization_213/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_213/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ   : : : : :*
epsilon%o:*
is_training( 
addAddV2,batch_normalization_213/FusedBatchNormV3:y:0conv2d_220/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   ^
activation_213/ReluReluadd:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   À
average_pooling2d_110/AvgPoolAvgPool!activation_213/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingSAME*
strides

dropout_106/IdentityIdentity&average_pooling2d_110/AvgPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
IdentityIdentitydropout_106/Identity:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ è
NoOpNoOp8^batch_normalization_212/FusedBatchNormV3/ReadVariableOp:^batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_212/ReadVariableOp)^batch_normalization_212/ReadVariableOp_18^batch_normalization_213/FusedBatchNormV3/ReadVariableOp:^batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_213/ReadVariableOp)^batch_normalization_213/ReadVariableOp_1"^conv2d_220/BiasAdd/ReadVariableOp!^conv2d_220/Conv2D/ReadVariableOp"^conv2d_221/BiasAdd/ReadVariableOp!^conv2d_221/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : : : : : 2r
7batch_normalization_212/FusedBatchNormV3/ReadVariableOp7batch_normalization_212/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_212/FusedBatchNormV3/ReadVariableOp_19batch_normalization_212/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_212/ReadVariableOp&batch_normalization_212/ReadVariableOp2T
(batch_normalization_212/ReadVariableOp_1(batch_normalization_212/ReadVariableOp_12r
7batch_normalization_213/FusedBatchNormV3/ReadVariableOp7batch_normalization_213/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_213/FusedBatchNormV3/ReadVariableOp_19batch_normalization_213/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_213/ReadVariableOp&batch_normalization_213/ReadVariableOp2T
(batch_normalization_213/ReadVariableOp_1(batch_normalization_213/ReadVariableOp_12F
!conv2d_220/BiasAdd/ReadVariableOp!conv2d_220/BiasAdd/ReadVariableOp2D
 conv2d_220/Conv2D/ReadVariableOp conv2d_220/Conv2D/ReadVariableOp2F
!conv2d_221/BiasAdd/ReadVariableOp!conv2d_221/BiasAdd/ReadVariableOp2D
 conv2d_221/Conv2D/ReadVariableOp conv2d_221/Conv2D/ReadVariableOp:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  

_user_specified_nameX

Ç
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_2497799

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Û
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<Æ
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ð
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

	
/__inference_sequential_77_layer_call_fn_2496618

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@%

unknown_23:@

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	&

unknown_29:

unknown_30:	

unknown_31:	

unknown_32:	

unknown_33:	

unknown_34:	

unknown_35:	


unknown_36:

identity¢StatefulPartitionedCallÅ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*<
_read_only_resource_inputs
	
 !"%&*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_77_layer_call_and_return_conditional_losses_2496037o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
¢
n
R__inference_average_pooling2d_110_layer_call_and_return_conditional_losses_2497541

inputs
identityª
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢
n
R__inference_average_pooling2d_110_layer_call_and_return_conditional_losses_2494912

inputs
identityª
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥

÷
E__inference_dense_41_layer_call_and_return_conditional_losses_2497407

inputs1
matmul_readvariableop_resource:	
-
biasadd_readvariableop_resource:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÓJ
ì
F__inference_block_106_layer_call_and_return_conditional_losses_2497066
xC
)conv2d_220_conv2d_readvariableop_resource: 8
*conv2d_220_biasadd_readvariableop_resource: =
/batch_normalization_212_readvariableop_resource: ?
1batch_normalization_212_readvariableop_1_resource: N
@batch_normalization_212_fusedbatchnormv3_readvariableop_resource: P
Bbatch_normalization_212_fusedbatchnormv3_readvariableop_1_resource: C
)conv2d_221_conv2d_readvariableop_resource:  8
*conv2d_221_biasadd_readvariableop_resource: =
/batch_normalization_213_readvariableop_resource: ?
1batch_normalization_213_readvariableop_1_resource: N
@batch_normalization_213_fusedbatchnormv3_readvariableop_resource: P
Bbatch_normalization_213_fusedbatchnormv3_readvariableop_1_resource: 
identity¢&batch_normalization_212/AssignNewValue¢(batch_normalization_212/AssignNewValue_1¢7batch_normalization_212/FusedBatchNormV3/ReadVariableOp¢9batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1¢&batch_normalization_212/ReadVariableOp¢(batch_normalization_212/ReadVariableOp_1¢&batch_normalization_213/AssignNewValue¢(batch_normalization_213/AssignNewValue_1¢7batch_normalization_213/FusedBatchNormV3/ReadVariableOp¢9batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1¢&batch_normalization_213/ReadVariableOp¢(batch_normalization_213/ReadVariableOp_1¢!conv2d_220/BiasAdd/ReadVariableOp¢ conv2d_220/Conv2D/ReadVariableOp¢!conv2d_221/BiasAdd/ReadVariableOp¢ conv2d_221/Conv2D/ReadVariableOp
 conv2d_220/Conv2D/ReadVariableOpReadVariableOp)conv2d_220_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ª
conv2d_220/Conv2DConv2Dx(conv2d_220/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   *
paddingSAME*
strides

!conv2d_220/BiasAdd/ReadVariableOpReadVariableOp*conv2d_220_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_220/BiasAddBiasAddconv2d_220/Conv2D:output:0)conv2d_220/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   
&batch_normalization_212/ReadVariableOpReadVariableOp/batch_normalization_212_readvariableop_resource*
_output_shapes
: *
dtype0
(batch_normalization_212/ReadVariableOp_1ReadVariableOp1batch_normalization_212_readvariableop_1_resource*
_output_shapes
: *
dtype0´
7batch_normalization_212/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_212_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0¸
9batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_212_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ñ
(batch_normalization_212/FusedBatchNormV3FusedBatchNormV3conv2d_220/BiasAdd:output:0.batch_normalization_212/ReadVariableOp:value:00batch_normalization_212/ReadVariableOp_1:value:0?batch_normalization_212/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_212/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ   : : : : :*
epsilon%o:*
exponential_avg_factor%
×#<¦
&batch_normalization_212/AssignNewValueAssignVariableOp@batch_normalization_212_fusedbatchnormv3_readvariableop_resource5batch_normalization_212/FusedBatchNormV3:batch_mean:08^batch_normalization_212/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(°
(batch_normalization_212/AssignNewValue_1AssignVariableOpBbatch_normalization_212_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_212/FusedBatchNormV3:batch_variance:0:^batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
activation_212/ReluRelu,batch_normalization_212/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   
 conv2d_221/Conv2D/ReadVariableOpReadVariableOp)conv2d_221_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ê
conv2d_221/Conv2DConv2D!activation_212/Relu:activations:0(conv2d_221/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   *
paddingSAME*
strides

!conv2d_221/BiasAdd/ReadVariableOpReadVariableOp*conv2d_221_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_221/BiasAddBiasAddconv2d_221/Conv2D:output:0)conv2d_221/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   
&batch_normalization_213/ReadVariableOpReadVariableOp/batch_normalization_213_readvariableop_resource*
_output_shapes
: *
dtype0
(batch_normalization_213/ReadVariableOp_1ReadVariableOp1batch_normalization_213_readvariableop_1_resource*
_output_shapes
: *
dtype0´
7batch_normalization_213/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_213_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0¸
9batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_213_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ñ
(batch_normalization_213/FusedBatchNormV3FusedBatchNormV3conv2d_221/BiasAdd:output:0.batch_normalization_213/ReadVariableOp:value:00batch_normalization_213/ReadVariableOp_1:value:0?batch_normalization_213/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_213/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ   : : : : :*
epsilon%o:*
exponential_avg_factor%
×#<¦
&batch_normalization_213/AssignNewValueAssignVariableOp@batch_normalization_213_fusedbatchnormv3_readvariableop_resource5batch_normalization_213/FusedBatchNormV3:batch_mean:08^batch_normalization_213/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(°
(batch_normalization_213/AssignNewValue_1AssignVariableOpBbatch_normalization_213_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_213/FusedBatchNormV3:batch_variance:0:^batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
addAddV2,batch_normalization_213/FusedBatchNormV3:y:0conv2d_220/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   ^
activation_213/ReluReluadd:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   À
average_pooling2d_110/AvgPoolAvgPool!activation_213/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingSAME*
strides
}
IdentityIdentity&average_pooling2d_110/AvgPool:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp'^batch_normalization_212/AssignNewValue)^batch_normalization_212/AssignNewValue_18^batch_normalization_212/FusedBatchNormV3/ReadVariableOp:^batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_212/ReadVariableOp)^batch_normalization_212/ReadVariableOp_1'^batch_normalization_213/AssignNewValue)^batch_normalization_213/AssignNewValue_18^batch_normalization_213/FusedBatchNormV3/ReadVariableOp:^batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_213/ReadVariableOp)^batch_normalization_213/ReadVariableOp_1"^conv2d_220/BiasAdd/ReadVariableOp!^conv2d_220/Conv2D/ReadVariableOp"^conv2d_221/BiasAdd/ReadVariableOp!^conv2d_221/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : : : : : 2P
&batch_normalization_212/AssignNewValue&batch_normalization_212/AssignNewValue2T
(batch_normalization_212/AssignNewValue_1(batch_normalization_212/AssignNewValue_12r
7batch_normalization_212/FusedBatchNormV3/ReadVariableOp7batch_normalization_212/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_212/FusedBatchNormV3/ReadVariableOp_19batch_normalization_212/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_212/ReadVariableOp&batch_normalization_212/ReadVariableOp2T
(batch_normalization_212/ReadVariableOp_1(batch_normalization_212/ReadVariableOp_12P
&batch_normalization_213/AssignNewValue&batch_normalization_213/AssignNewValue2T
(batch_normalization_213/AssignNewValue_1(batch_normalization_213/AssignNewValue_12r
7batch_normalization_213/FusedBatchNormV3/ReadVariableOp7batch_normalization_213/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_213/FusedBatchNormV3/ReadVariableOp_19batch_normalization_213/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_213/ReadVariableOp&batch_normalization_213/ReadVariableOp2T
(batch_normalization_213/ReadVariableOp_1(batch_normalization_213/ReadVariableOp_12F
!conv2d_220/BiasAdd/ReadVariableOp!conv2d_220/BiasAdd/ReadVariableOp2D
 conv2d_220/Conv2D/ReadVariableOp conv2d_220/Conv2D/ReadVariableOp2F
!conv2d_221/BiasAdd/ReadVariableOp!conv2d_221/BiasAdd/ReadVariableOp2D
 conv2d_221/Conv2D/ReadVariableOp conv2d_221/Conv2D/ReadVariableOp:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  

_user_specified_nameX

¯
+__inference_block_108_layer_call_fn_2497279
x"
unknown:@
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	%
	unknown_5:
	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block_108_layer_call_and_return_conditional_losses_2495628x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@

_user_specified_nameX
Ï

T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_2494937

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0È
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@°
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

Ç
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_2495108

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Û
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<Æ
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ð
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ã
T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_2494968

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ö
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
×#<Æ
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ð
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Ô
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ï

T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_2495001

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0È
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@°
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Û<
Ä
F__inference_block_107_layer_call_and_return_conditional_losses_2497173
xC
)conv2d_222_conv2d_readvariableop_resource: @8
*conv2d_222_biasadd_readvariableop_resource:@=
/batch_normalization_214_readvariableop_resource:@?
1batch_normalization_214_readvariableop_1_resource:@N
@batch_normalization_214_fusedbatchnormv3_readvariableop_resource:@P
Bbatch_normalization_214_fusedbatchnormv3_readvariableop_1_resource:@C
)conv2d_223_conv2d_readvariableop_resource:@@8
*conv2d_223_biasadd_readvariableop_resource:@=
/batch_normalization_215_readvariableop_resource:@?
1batch_normalization_215_readvariableop_1_resource:@N
@batch_normalization_215_fusedbatchnormv3_readvariableop_resource:@P
Bbatch_normalization_215_fusedbatchnormv3_readvariableop_1_resource:@
identity¢7batch_normalization_214/FusedBatchNormV3/ReadVariableOp¢9batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1¢&batch_normalization_214/ReadVariableOp¢(batch_normalization_214/ReadVariableOp_1¢7batch_normalization_215/FusedBatchNormV3/ReadVariableOp¢9batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1¢&batch_normalization_215/ReadVariableOp¢(batch_normalization_215/ReadVariableOp_1¢!conv2d_222/BiasAdd/ReadVariableOp¢ conv2d_222/Conv2D/ReadVariableOp¢!conv2d_223/BiasAdd/ReadVariableOp¢ conv2d_223/Conv2D/ReadVariableOp
 conv2d_222/Conv2D/ReadVariableOpReadVariableOp)conv2d_222_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ª
conv2d_222/Conv2DConv2Dx(conv2d_222/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides

!conv2d_222/BiasAdd/ReadVariableOpReadVariableOp*conv2d_222_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_222/BiasAddBiasAddconv2d_222/Conv2D:output:0)conv2d_222/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
&batch_normalization_214/ReadVariableOpReadVariableOp/batch_normalization_214_readvariableop_resource*
_output_shapes
:@*
dtype0
(batch_normalization_214/ReadVariableOp_1ReadVariableOp1batch_normalization_214_readvariableop_1_resource*
_output_shapes
:@*
dtype0´
7batch_normalization_214/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_214_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0¸
9batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_214_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ã
(batch_normalization_214/FusedBatchNormV3FusedBatchNormV3conv2d_222/BiasAdd:output:0.batch_normalization_214/ReadVariableOp:value:00batch_normalization_214/ReadVariableOp_1:value:0?batch_normalization_214/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_214/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
is_training( 
activation_214/ReluRelu,batch_normalization_214/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 conv2d_223/Conv2D/ReadVariableOpReadVariableOp)conv2d_223_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ê
conv2d_223/Conv2DConv2D!activation_214/Relu:activations:0(conv2d_223/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides

!conv2d_223/BiasAdd/ReadVariableOpReadVariableOp*conv2d_223_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_223/BiasAddBiasAddconv2d_223/Conv2D:output:0)conv2d_223/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
&batch_normalization_215/ReadVariableOpReadVariableOp/batch_normalization_215_readvariableop_resource*
_output_shapes
:@*
dtype0
(batch_normalization_215/ReadVariableOp_1ReadVariableOp1batch_normalization_215_readvariableop_1_resource*
_output_shapes
:@*
dtype0´
7batch_normalization_215/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_215_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0¸
9batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_215_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ã
(batch_normalization_215/FusedBatchNormV3FusedBatchNormV3conv2d_223/BiasAdd:output:0.batch_normalization_215/ReadVariableOp:value:00batch_normalization_215/ReadVariableOp_1:value:0?batch_normalization_215/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_215/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
is_training( 
addAddV2,batch_normalization_215/FusedBatchNormV3:y:0conv2d_222/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
activation_215/ReluReluadd:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@À
average_pooling2d_111/AvgPoolAvgPool!activation_215/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingSAME*
strides

dropout_107/IdentityIdentity&average_pooling2d_111/AvgPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@t
IdentityIdentitydropout_107/Identity:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@è
NoOpNoOp8^batch_normalization_214/FusedBatchNormV3/ReadVariableOp:^batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_214/ReadVariableOp)^batch_normalization_214/ReadVariableOp_18^batch_normalization_215/FusedBatchNormV3/ReadVariableOp:^batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_215/ReadVariableOp)^batch_normalization_215/ReadVariableOp_1"^conv2d_222/BiasAdd/ReadVariableOp!^conv2d_222/Conv2D/ReadVariableOp"^conv2d_223/BiasAdd/ReadVariableOp!^conv2d_223/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ : : : : : : : : : : : : 2r
7batch_normalization_214/FusedBatchNormV3/ReadVariableOp7batch_normalization_214/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_214/FusedBatchNormV3/ReadVariableOp_19batch_normalization_214/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_214/ReadVariableOp&batch_normalization_214/ReadVariableOp2T
(batch_normalization_214/ReadVariableOp_1(batch_normalization_214/ReadVariableOp_12r
7batch_normalization_215/FusedBatchNormV3/ReadVariableOp7batch_normalization_215/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_215/FusedBatchNormV3/ReadVariableOp_19batch_normalization_215/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_215/ReadVariableOp&batch_normalization_215/ReadVariableOp2T
(batch_normalization_215/ReadVariableOp_1(batch_normalization_215/ReadVariableOp_12F
!conv2d_222/BiasAdd/ReadVariableOp!conv2d_222/BiasAdd/ReadVariableOp2D
 conv2d_222/Conv2D/ReadVariableOp conv2d_222/Conv2D/ReadVariableOp2F
!conv2d_223/BiasAdd/ReadVariableOp!conv2d_223/BiasAdd/ReadVariableOp2D
 conv2d_223/Conv2D/ReadVariableOp conv2d_223/Conv2D/ReadVariableOp:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 

_user_specified_nameX
ß
£
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_2495141

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Í
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
Ô
9__inference_batch_normalization_214_layer_call_fn_2497567

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_2494968
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ï

T__inference_batch_normalization_213_layer_call_and_return_conditional_losses_2497513

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0È
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ °
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ß
£
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_2497719

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Í
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ï

T__inference_batch_normalization_212_layer_call_and_return_conditional_losses_2497451

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0È
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ °
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
É
S
7__inference_average_pooling2d_112_layer_call_fn_2497804

inputs
identityã
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_average_pooling2d_112_layer_call_and_return_conditional_losses_2495192
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
Ô
9__inference_batch_normalization_212_layer_call_fn_2497433

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_212_layer_call_and_return_conditional_losses_2494828
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

	
/__inference_sequential_77_layer_call_fn_2495532
input_37!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@%

unknown_23:@

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	&

unknown_29:

unknown_30:	

unknown_31:	

unknown_32:	

unknown_33:	

unknown_34:	

unknown_35:	


unknown_36:

identity¢StatefulPartitionedCallÓ
StatefulPartitionedCallStatefulPartitionedCallinput_37unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_77_layer_call_and_return_conditional_losses_2495453o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
"
_user_specified_name
input_37

Ã
T__inference_batch_normalization_213_layer_call_and_return_conditional_losses_2497531

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ö
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
exponential_avg_factor%
×#<Æ
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ð
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ Ô
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
=
Ñ
F__inference_block_108_layer_call_and_return_conditional_losses_2497328
xD
)conv2d_224_conv2d_readvariableop_resource:@9
*conv2d_224_biasadd_readvariableop_resource:	>
/batch_normalization_216_readvariableop_resource:	@
1batch_normalization_216_readvariableop_1_resource:	O
@batch_normalization_216_fusedbatchnormv3_readvariableop_resource:	Q
Bbatch_normalization_216_fusedbatchnormv3_readvariableop_1_resource:	E
)conv2d_225_conv2d_readvariableop_resource:9
*conv2d_225_biasadd_readvariableop_resource:	>
/batch_normalization_217_readvariableop_resource:	@
1batch_normalization_217_readvariableop_1_resource:	O
@batch_normalization_217_fusedbatchnormv3_readvariableop_resource:	Q
Bbatch_normalization_217_fusedbatchnormv3_readvariableop_1_resource:	
identity¢7batch_normalization_216/FusedBatchNormV3/ReadVariableOp¢9batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1¢&batch_normalization_216/ReadVariableOp¢(batch_normalization_216/ReadVariableOp_1¢7batch_normalization_217/FusedBatchNormV3/ReadVariableOp¢9batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1¢&batch_normalization_217/ReadVariableOp¢(batch_normalization_217/ReadVariableOp_1¢!conv2d_224/BiasAdd/ReadVariableOp¢ conv2d_224/Conv2D/ReadVariableOp¢!conv2d_225/BiasAdd/ReadVariableOp¢ conv2d_225/Conv2D/ReadVariableOp
 conv2d_224/Conv2D/ReadVariableOpReadVariableOp)conv2d_224_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0«
conv2d_224/Conv2DConv2Dx(conv2d_224/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

!conv2d_224/BiasAdd/ReadVariableOpReadVariableOp*conv2d_224_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_224/BiasAddBiasAddconv2d_224/Conv2D:output:0)conv2d_224/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&batch_normalization_216/ReadVariableOpReadVariableOp/batch_normalization_216_readvariableop_resource*
_output_shapes	
:*
dtype0
(batch_normalization_216/ReadVariableOp_1ReadVariableOp1batch_normalization_216_readvariableop_1_resource*
_output_shapes	
:*
dtype0µ
7batch_normalization_216/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_216_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0¹
9batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_216_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0È
(batch_normalization_216/FusedBatchNormV3FusedBatchNormV3conv2d_224/BiasAdd:output:0.batch_normalization_216/ReadVariableOp:value:00batch_normalization_216/ReadVariableOp_1:value:0?batch_normalization_216/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_216/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( 
activation_216/ReluRelu,batch_normalization_216/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 conv2d_225/Conv2D/ReadVariableOpReadVariableOp)conv2d_225_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ë
conv2d_225/Conv2DConv2D!activation_216/Relu:activations:0(conv2d_225/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

!conv2d_225/BiasAdd/ReadVariableOpReadVariableOp*conv2d_225_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_225/BiasAddBiasAddconv2d_225/Conv2D:output:0)conv2d_225/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&batch_normalization_217/ReadVariableOpReadVariableOp/batch_normalization_217_readvariableop_resource*
_output_shapes	
:*
dtype0
(batch_normalization_217/ReadVariableOp_1ReadVariableOp1batch_normalization_217_readvariableop_1_resource*
_output_shapes	
:*
dtype0µ
7batch_normalization_217/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_217_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0¹
9batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_217_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0È
(batch_normalization_217/FusedBatchNormV3FusedBatchNormV3conv2d_225/BiasAdd:output:0.batch_normalization_217/ReadVariableOp:value:00batch_normalization_217/ReadVariableOp_1:value:0?batch_normalization_217/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_217/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( 
addAddV2,batch_normalization_217/FusedBatchNormV3:y:0conv2d_224/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
activation_217/ReluReluadd:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
average_pooling2d_112/AvgPoolAvgPool!activation_217/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingSAME*
strides

dropout_108/IdentityIdentity&average_pooling2d_112/AvgPool:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
IdentityIdentitydropout_108/Identity:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
NoOpNoOp8^batch_normalization_216/FusedBatchNormV3/ReadVariableOp:^batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_216/ReadVariableOp)^batch_normalization_216/ReadVariableOp_18^batch_normalization_217/FusedBatchNormV3/ReadVariableOp:^batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_217/ReadVariableOp)^batch_normalization_217/ReadVariableOp_1"^conv2d_224/BiasAdd/ReadVariableOp!^conv2d_224/Conv2D/ReadVariableOp"^conv2d_225/BiasAdd/ReadVariableOp!^conv2d_225/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : : : : : 2r
7batch_normalization_216/FusedBatchNormV3/ReadVariableOp7batch_normalization_216/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_216/FusedBatchNormV3/ReadVariableOp_19batch_normalization_216/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_216/ReadVariableOp&batch_normalization_216/ReadVariableOp2T
(batch_normalization_216/ReadVariableOp_1(batch_normalization_216/ReadVariableOp_12r
7batch_normalization_217/FusedBatchNormV3/ReadVariableOp7batch_normalization_217/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_217/FusedBatchNormV3/ReadVariableOp_19batch_normalization_217/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_217/ReadVariableOp&batch_normalization_217/ReadVariableOp2T
(batch_normalization_217/ReadVariableOp_1(batch_normalization_217/ReadVariableOp_12F
!conv2d_224/BiasAdd/ReadVariableOp!conv2d_224/BiasAdd/ReadVariableOp2D
 conv2d_224/Conv2D/ReadVariableOp conv2d_224/Conv2D/ReadVariableOp2F
!conv2d_225/BiasAdd/ReadVariableOp!conv2d_225/BiasAdd/ReadVariableOp2D
 conv2d_225/Conv2D/ReadVariableOp conv2d_225/Conv2D/ReadVariableOp:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@

_user_specified_nameX
¢	
Ø
9__inference_batch_normalization_217_layer_call_fn_2497750

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_2495141
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ï

T__inference_batch_normalization_213_layer_call_and_return_conditional_losses_2494861

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0È
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ °
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ü

¢
+__inference_block_107_layer_call_fn_2497124
x!
unknown: @
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block_107_layer_call_and_return_conditional_losses_2495735w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 

_user_specified_nameX
Ë
c
G__inference_flatten_38_layer_call_and_return_conditional_losses_2495433

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¢
+__inference_block_106_layer_call_fn_2496940
x!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block_106_layer_call_and_return_conditional_losses_2495251w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  

_user_specified_nameX
¢
n
R__inference_average_pooling2d_112_layer_call_and_return_conditional_losses_2497809

inputs
identityª
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ç
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_2497737

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Û
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<Æ
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ð
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

-
J__inference_sequential_77_layer_call_and_return_conditional_losses_2496911

inputsM
3block_106_conv2d_220_conv2d_readvariableop_resource: B
4block_106_conv2d_220_biasadd_readvariableop_resource: G
9block_106_batch_normalization_212_readvariableop_resource: I
;block_106_batch_normalization_212_readvariableop_1_resource: X
Jblock_106_batch_normalization_212_fusedbatchnormv3_readvariableop_resource: Z
Lblock_106_batch_normalization_212_fusedbatchnormv3_readvariableop_1_resource: M
3block_106_conv2d_221_conv2d_readvariableop_resource:  B
4block_106_conv2d_221_biasadd_readvariableop_resource: G
9block_106_batch_normalization_213_readvariableop_resource: I
;block_106_batch_normalization_213_readvariableop_1_resource: X
Jblock_106_batch_normalization_213_fusedbatchnormv3_readvariableop_resource: Z
Lblock_106_batch_normalization_213_fusedbatchnormv3_readvariableop_1_resource: M
3block_107_conv2d_222_conv2d_readvariableop_resource: @B
4block_107_conv2d_222_biasadd_readvariableop_resource:@G
9block_107_batch_normalization_214_readvariableop_resource:@I
;block_107_batch_normalization_214_readvariableop_1_resource:@X
Jblock_107_batch_normalization_214_fusedbatchnormv3_readvariableop_resource:@Z
Lblock_107_batch_normalization_214_fusedbatchnormv3_readvariableop_1_resource:@M
3block_107_conv2d_223_conv2d_readvariableop_resource:@@B
4block_107_conv2d_223_biasadd_readvariableop_resource:@G
9block_107_batch_normalization_215_readvariableop_resource:@I
;block_107_batch_normalization_215_readvariableop_1_resource:@X
Jblock_107_batch_normalization_215_fusedbatchnormv3_readvariableop_resource:@Z
Lblock_107_batch_normalization_215_fusedbatchnormv3_readvariableop_1_resource:@N
3block_108_conv2d_224_conv2d_readvariableop_resource:@C
4block_108_conv2d_224_biasadd_readvariableop_resource:	H
9block_108_batch_normalization_216_readvariableop_resource:	J
;block_108_batch_normalization_216_readvariableop_1_resource:	Y
Jblock_108_batch_normalization_216_fusedbatchnormv3_readvariableop_resource:	[
Lblock_108_batch_normalization_216_fusedbatchnormv3_readvariableop_1_resource:	O
3block_108_conv2d_225_conv2d_readvariableop_resource:C
4block_108_conv2d_225_biasadd_readvariableop_resource:	H
9block_108_batch_normalization_217_readvariableop_resource:	J
;block_108_batch_normalization_217_readvariableop_1_resource:	Y
Jblock_108_batch_normalization_217_fusedbatchnormv3_readvariableop_resource:	[
Lblock_108_batch_normalization_217_fusedbatchnormv3_readvariableop_1_resource:	:
'dense_41_matmul_readvariableop_resource:	
6
(dense_41_biasadd_readvariableop_resource:

identity¢0block_106/batch_normalization_212/AssignNewValue¢2block_106/batch_normalization_212/AssignNewValue_1¢Ablock_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp¢Cblock_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1¢0block_106/batch_normalization_212/ReadVariableOp¢2block_106/batch_normalization_212/ReadVariableOp_1¢0block_106/batch_normalization_213/AssignNewValue¢2block_106/batch_normalization_213/AssignNewValue_1¢Ablock_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp¢Cblock_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1¢0block_106/batch_normalization_213/ReadVariableOp¢2block_106/batch_normalization_213/ReadVariableOp_1¢+block_106/conv2d_220/BiasAdd/ReadVariableOp¢*block_106/conv2d_220/Conv2D/ReadVariableOp¢+block_106/conv2d_221/BiasAdd/ReadVariableOp¢*block_106/conv2d_221/Conv2D/ReadVariableOp¢0block_107/batch_normalization_214/AssignNewValue¢2block_107/batch_normalization_214/AssignNewValue_1¢Ablock_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp¢Cblock_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1¢0block_107/batch_normalization_214/ReadVariableOp¢2block_107/batch_normalization_214/ReadVariableOp_1¢0block_107/batch_normalization_215/AssignNewValue¢2block_107/batch_normalization_215/AssignNewValue_1¢Ablock_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp¢Cblock_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1¢0block_107/batch_normalization_215/ReadVariableOp¢2block_107/batch_normalization_215/ReadVariableOp_1¢+block_107/conv2d_222/BiasAdd/ReadVariableOp¢*block_107/conv2d_222/Conv2D/ReadVariableOp¢+block_107/conv2d_223/BiasAdd/ReadVariableOp¢*block_107/conv2d_223/Conv2D/ReadVariableOp¢0block_108/batch_normalization_216/AssignNewValue¢2block_108/batch_normalization_216/AssignNewValue_1¢Ablock_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp¢Cblock_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1¢0block_108/batch_normalization_216/ReadVariableOp¢2block_108/batch_normalization_216/ReadVariableOp_1¢0block_108/batch_normalization_217/AssignNewValue¢2block_108/batch_normalization_217/AssignNewValue_1¢Ablock_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp¢Cblock_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1¢0block_108/batch_normalization_217/ReadVariableOp¢2block_108/batch_normalization_217/ReadVariableOp_1¢+block_108/conv2d_224/BiasAdd/ReadVariableOp¢*block_108/conv2d_224/Conv2D/ReadVariableOp¢+block_108/conv2d_225/BiasAdd/ReadVariableOp¢*block_108/conv2d_225/Conv2D/ReadVariableOp¢dense_41/BiasAdd/ReadVariableOp¢dense_41/MatMul/ReadVariableOp¦
*block_106/conv2d_220/Conv2D/ReadVariableOpReadVariableOp3block_106_conv2d_220_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ã
block_106/conv2d_220/Conv2DConv2Dinputs2block_106/conv2d_220/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   *
paddingSAME*
strides

+block_106/conv2d_220/BiasAdd/ReadVariableOpReadVariableOp4block_106_conv2d_220_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¼
block_106/conv2d_220/BiasAddBiasAdd$block_106/conv2d_220/Conv2D:output:03block_106/conv2d_220/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   ¦
0block_106/batch_normalization_212/ReadVariableOpReadVariableOp9block_106_batch_normalization_212_readvariableop_resource*
_output_shapes
: *
dtype0ª
2block_106/batch_normalization_212/ReadVariableOp_1ReadVariableOp;block_106_batch_normalization_212_readvariableop_1_resource*
_output_shapes
: *
dtype0È
Ablock_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOpReadVariableOpJblock_106_batch_normalization_212_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0Ì
Cblock_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLblock_106_batch_normalization_212_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0
2block_106/batch_normalization_212/FusedBatchNormV3FusedBatchNormV3%block_106/conv2d_220/BiasAdd:output:08block_106/batch_normalization_212/ReadVariableOp:value:0:block_106/batch_normalization_212/ReadVariableOp_1:value:0Iblock_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp:value:0Kblock_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ   : : : : :*
epsilon%o:*
exponential_avg_factor%
×#<Î
0block_106/batch_normalization_212/AssignNewValueAssignVariableOpJblock_106_batch_normalization_212_fusedbatchnormv3_readvariableop_resource?block_106/batch_normalization_212/FusedBatchNormV3:batch_mean:0B^block_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ø
2block_106/batch_normalization_212/AssignNewValue_1AssignVariableOpLblock_106_batch_normalization_212_fusedbatchnormv3_readvariableop_1_resourceCblock_106/batch_normalization_212/FusedBatchNormV3:batch_variance:0D^block_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
block_106/activation_212/ReluRelu6block_106/batch_normalization_212/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   ¦
*block_106/conv2d_221/Conv2D/ReadVariableOpReadVariableOp3block_106_conv2d_221_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0è
block_106/conv2d_221/Conv2DConv2D+block_106/activation_212/Relu:activations:02block_106/conv2d_221/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   *
paddingSAME*
strides

+block_106/conv2d_221/BiasAdd/ReadVariableOpReadVariableOp4block_106_conv2d_221_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¼
block_106/conv2d_221/BiasAddBiasAdd$block_106/conv2d_221/Conv2D:output:03block_106/conv2d_221/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   ¦
0block_106/batch_normalization_213/ReadVariableOpReadVariableOp9block_106_batch_normalization_213_readvariableop_resource*
_output_shapes
: *
dtype0ª
2block_106/batch_normalization_213/ReadVariableOp_1ReadVariableOp;block_106_batch_normalization_213_readvariableop_1_resource*
_output_shapes
: *
dtype0È
Ablock_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOpReadVariableOpJblock_106_batch_normalization_213_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0Ì
Cblock_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLblock_106_batch_normalization_213_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0
2block_106/batch_normalization_213/FusedBatchNormV3FusedBatchNormV3%block_106/conv2d_221/BiasAdd:output:08block_106/batch_normalization_213/ReadVariableOp:value:0:block_106/batch_normalization_213/ReadVariableOp_1:value:0Iblock_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp:value:0Kblock_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ   : : : : :*
epsilon%o:*
exponential_avg_factor%
×#<Î
0block_106/batch_normalization_213/AssignNewValueAssignVariableOpJblock_106_batch_normalization_213_fusedbatchnormv3_readvariableop_resource?block_106/batch_normalization_213/FusedBatchNormV3:batch_mean:0B^block_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ø
2block_106/batch_normalization_213/AssignNewValue_1AssignVariableOpLblock_106_batch_normalization_213_fusedbatchnormv3_readvariableop_1_resourceCblock_106/batch_normalization_213/FusedBatchNormV3:batch_variance:0D^block_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(¯
block_106/addAddV26block_106/batch_normalization_213/FusedBatchNormV3:y:0%block_106/conv2d_220/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   r
block_106/activation_213/ReluRelublock_106/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   Ô
'block_106/average_pooling2d_110/AvgPoolAvgPool+block_106/activation_213/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingSAME*
strides
¦
*block_107/conv2d_222/Conv2D/ReadVariableOpReadVariableOp3block_107_conv2d_222_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0í
block_107/conv2d_222/Conv2DConv2D0block_106/average_pooling2d_110/AvgPool:output:02block_107/conv2d_222/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides

+block_107/conv2d_222/BiasAdd/ReadVariableOpReadVariableOp4block_107_conv2d_222_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¼
block_107/conv2d_222/BiasAddBiasAdd$block_107/conv2d_222/Conv2D:output:03block_107/conv2d_222/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¦
0block_107/batch_normalization_214/ReadVariableOpReadVariableOp9block_107_batch_normalization_214_readvariableop_resource*
_output_shapes
:@*
dtype0ª
2block_107/batch_normalization_214/ReadVariableOp_1ReadVariableOp;block_107_batch_normalization_214_readvariableop_1_resource*
_output_shapes
:@*
dtype0È
Ablock_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOpReadVariableOpJblock_107_batch_normalization_214_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ì
Cblock_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLblock_107_batch_normalization_214_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0
2block_107/batch_normalization_214/FusedBatchNormV3FusedBatchNormV3%block_107/conv2d_222/BiasAdd:output:08block_107/batch_normalization_214/ReadVariableOp:value:0:block_107/batch_normalization_214/ReadVariableOp_1:value:0Iblock_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp:value:0Kblock_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
×#<Î
0block_107/batch_normalization_214/AssignNewValueAssignVariableOpJblock_107_batch_normalization_214_fusedbatchnormv3_readvariableop_resource?block_107/batch_normalization_214/FusedBatchNormV3:batch_mean:0B^block_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ø
2block_107/batch_normalization_214/AssignNewValue_1AssignVariableOpLblock_107_batch_normalization_214_fusedbatchnormv3_readvariableop_1_resourceCblock_107/batch_normalization_214/FusedBatchNormV3:batch_variance:0D^block_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
block_107/activation_214/ReluRelu6block_107/batch_normalization_214/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¦
*block_107/conv2d_223/Conv2D/ReadVariableOpReadVariableOp3block_107_conv2d_223_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0è
block_107/conv2d_223/Conv2DConv2D+block_107/activation_214/Relu:activations:02block_107/conv2d_223/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides

+block_107/conv2d_223/BiasAdd/ReadVariableOpReadVariableOp4block_107_conv2d_223_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¼
block_107/conv2d_223/BiasAddBiasAdd$block_107/conv2d_223/Conv2D:output:03block_107/conv2d_223/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¦
0block_107/batch_normalization_215/ReadVariableOpReadVariableOp9block_107_batch_normalization_215_readvariableop_resource*
_output_shapes
:@*
dtype0ª
2block_107/batch_normalization_215/ReadVariableOp_1ReadVariableOp;block_107_batch_normalization_215_readvariableop_1_resource*
_output_shapes
:@*
dtype0È
Ablock_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOpReadVariableOpJblock_107_batch_normalization_215_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ì
Cblock_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLblock_107_batch_normalization_215_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0
2block_107/batch_normalization_215/FusedBatchNormV3FusedBatchNormV3%block_107/conv2d_223/BiasAdd:output:08block_107/batch_normalization_215/ReadVariableOp:value:0:block_107/batch_normalization_215/ReadVariableOp_1:value:0Iblock_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp:value:0Kblock_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
×#<Î
0block_107/batch_normalization_215/AssignNewValueAssignVariableOpJblock_107_batch_normalization_215_fusedbatchnormv3_readvariableop_resource?block_107/batch_normalization_215/FusedBatchNormV3:batch_mean:0B^block_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ø
2block_107/batch_normalization_215/AssignNewValue_1AssignVariableOpLblock_107_batch_normalization_215_fusedbatchnormv3_readvariableop_1_resourceCblock_107/batch_normalization_215/FusedBatchNormV3:batch_variance:0D^block_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(¯
block_107/addAddV26block_107/batch_normalization_215/FusedBatchNormV3:y:0%block_107/conv2d_222/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
block_107/activation_215/ReluRelublock_107/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ô
'block_107/average_pooling2d_111/AvgPoolAvgPool+block_107/activation_215/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingSAME*
strides
§
*block_108/conv2d_224/Conv2D/ReadVariableOpReadVariableOp3block_108_conv2d_224_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0î
block_108/conv2d_224/Conv2DConv2D0block_107/average_pooling2d_111/AvgPool:output:02block_108/conv2d_224/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

+block_108/conv2d_224/BiasAdd/ReadVariableOpReadVariableOp4block_108_conv2d_224_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0½
block_108/conv2d_224/BiasAddBiasAdd$block_108/conv2d_224/Conv2D:output:03block_108/conv2d_224/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
0block_108/batch_normalization_216/ReadVariableOpReadVariableOp9block_108_batch_normalization_216_readvariableop_resource*
_output_shapes	
:*
dtype0«
2block_108/batch_normalization_216/ReadVariableOp_1ReadVariableOp;block_108_batch_normalization_216_readvariableop_1_resource*
_output_shapes	
:*
dtype0É
Ablock_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOpReadVariableOpJblock_108_batch_normalization_216_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0Í
Cblock_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLblock_108_batch_normalization_216_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0
2block_108/batch_normalization_216/FusedBatchNormV3FusedBatchNormV3%block_108/conv2d_224/BiasAdd:output:08block_108/batch_normalization_216/ReadVariableOp:value:0:block_108/batch_normalization_216/ReadVariableOp_1:value:0Iblock_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp:value:0Kblock_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<Î
0block_108/batch_normalization_216/AssignNewValueAssignVariableOpJblock_108_batch_normalization_216_fusedbatchnormv3_readvariableop_resource?block_108/batch_normalization_216/FusedBatchNormV3:batch_mean:0B^block_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ø
2block_108/batch_normalization_216/AssignNewValue_1AssignVariableOpLblock_108_batch_normalization_216_fusedbatchnormv3_readvariableop_1_resourceCblock_108/batch_normalization_216/FusedBatchNormV3:batch_variance:0D^block_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
block_108/activation_216/ReluRelu6block_108/batch_normalization_216/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
*block_108/conv2d_225/Conv2D/ReadVariableOpReadVariableOp3block_108_conv2d_225_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0é
block_108/conv2d_225/Conv2DConv2D+block_108/activation_216/Relu:activations:02block_108/conv2d_225/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

+block_108/conv2d_225/BiasAdd/ReadVariableOpReadVariableOp4block_108_conv2d_225_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0½
block_108/conv2d_225/BiasAddBiasAdd$block_108/conv2d_225/Conv2D:output:03block_108/conv2d_225/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
0block_108/batch_normalization_217/ReadVariableOpReadVariableOp9block_108_batch_normalization_217_readvariableop_resource*
_output_shapes	
:*
dtype0«
2block_108/batch_normalization_217/ReadVariableOp_1ReadVariableOp;block_108_batch_normalization_217_readvariableop_1_resource*
_output_shapes	
:*
dtype0É
Ablock_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOpReadVariableOpJblock_108_batch_normalization_217_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0Í
Cblock_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLblock_108_batch_normalization_217_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0
2block_108/batch_normalization_217/FusedBatchNormV3FusedBatchNormV3%block_108/conv2d_225/BiasAdd:output:08block_108/batch_normalization_217/ReadVariableOp:value:0:block_108/batch_normalization_217/ReadVariableOp_1:value:0Iblock_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp:value:0Kblock_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<Î
0block_108/batch_normalization_217/AssignNewValueAssignVariableOpJblock_108_batch_normalization_217_fusedbatchnormv3_readvariableop_resource?block_108/batch_normalization_217/FusedBatchNormV3:batch_mean:0B^block_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ø
2block_108/batch_normalization_217/AssignNewValue_1AssignVariableOpLblock_108_batch_normalization_217_fusedbatchnormv3_readvariableop_1_resourceCblock_108/batch_normalization_217/FusedBatchNormV3:batch_variance:0D^block_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(°
block_108/addAddV26block_108/batch_normalization_217/FusedBatchNormV3:y:0%block_108/conv2d_224/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
block_108/activation_217/ReluRelublock_108/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÕ
'block_108/average_pooling2d_112/AvgPoolAvgPool+block_108/activation_217/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingSAME*
strides
a
flatten_38/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_38/ReshapeReshape0block_108/average_pooling2d_112/AvgPool:output:0flatten_38/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_41/MatMul/ReadVariableOpReadVariableOp'dense_41_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
dense_41/MatMulMatMulflatten_38/Reshape:output:0&dense_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

dense_41/BiasAdd/ReadVariableOpReadVariableOp(dense_41_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
dense_41/BiasAddBiasAdddense_41/MatMul:product:0'dense_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
h
dense_41/SoftmaxSoftmaxdense_41/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
i
IdentityIdentitydense_41/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ç
NoOpNoOp1^block_106/batch_normalization_212/AssignNewValue3^block_106/batch_normalization_212/AssignNewValue_1B^block_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOpD^block_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp_11^block_106/batch_normalization_212/ReadVariableOp3^block_106/batch_normalization_212/ReadVariableOp_11^block_106/batch_normalization_213/AssignNewValue3^block_106/batch_normalization_213/AssignNewValue_1B^block_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOpD^block_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp_11^block_106/batch_normalization_213/ReadVariableOp3^block_106/batch_normalization_213/ReadVariableOp_1,^block_106/conv2d_220/BiasAdd/ReadVariableOp+^block_106/conv2d_220/Conv2D/ReadVariableOp,^block_106/conv2d_221/BiasAdd/ReadVariableOp+^block_106/conv2d_221/Conv2D/ReadVariableOp1^block_107/batch_normalization_214/AssignNewValue3^block_107/batch_normalization_214/AssignNewValue_1B^block_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOpD^block_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp_11^block_107/batch_normalization_214/ReadVariableOp3^block_107/batch_normalization_214/ReadVariableOp_11^block_107/batch_normalization_215/AssignNewValue3^block_107/batch_normalization_215/AssignNewValue_1B^block_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOpD^block_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_11^block_107/batch_normalization_215/ReadVariableOp3^block_107/batch_normalization_215/ReadVariableOp_1,^block_107/conv2d_222/BiasAdd/ReadVariableOp+^block_107/conv2d_222/Conv2D/ReadVariableOp,^block_107/conv2d_223/BiasAdd/ReadVariableOp+^block_107/conv2d_223/Conv2D/ReadVariableOp1^block_108/batch_normalization_216/AssignNewValue3^block_108/batch_normalization_216/AssignNewValue_1B^block_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOpD^block_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_11^block_108/batch_normalization_216/ReadVariableOp3^block_108/batch_normalization_216/ReadVariableOp_11^block_108/batch_normalization_217/AssignNewValue3^block_108/batch_normalization_217/AssignNewValue_1B^block_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOpD^block_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_11^block_108/batch_normalization_217/ReadVariableOp3^block_108/batch_normalization_217/ReadVariableOp_1,^block_108/conv2d_224/BiasAdd/ReadVariableOp+^block_108/conv2d_224/Conv2D/ReadVariableOp,^block_108/conv2d_225/BiasAdd/ReadVariableOp+^block_108/conv2d_225/Conv2D/ReadVariableOp ^dense_41/BiasAdd/ReadVariableOp^dense_41/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2d
0block_106/batch_normalization_212/AssignNewValue0block_106/batch_normalization_212/AssignNewValue2h
2block_106/batch_normalization_212/AssignNewValue_12block_106/batch_normalization_212/AssignNewValue_12
Ablock_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOpAblock_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp2
Cblock_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1Cblock_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp_12d
0block_106/batch_normalization_212/ReadVariableOp0block_106/batch_normalization_212/ReadVariableOp2h
2block_106/batch_normalization_212/ReadVariableOp_12block_106/batch_normalization_212/ReadVariableOp_12d
0block_106/batch_normalization_213/AssignNewValue0block_106/batch_normalization_213/AssignNewValue2h
2block_106/batch_normalization_213/AssignNewValue_12block_106/batch_normalization_213/AssignNewValue_12
Ablock_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOpAblock_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp2
Cblock_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1Cblock_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp_12d
0block_106/batch_normalization_213/ReadVariableOp0block_106/batch_normalization_213/ReadVariableOp2h
2block_106/batch_normalization_213/ReadVariableOp_12block_106/batch_normalization_213/ReadVariableOp_12Z
+block_106/conv2d_220/BiasAdd/ReadVariableOp+block_106/conv2d_220/BiasAdd/ReadVariableOp2X
*block_106/conv2d_220/Conv2D/ReadVariableOp*block_106/conv2d_220/Conv2D/ReadVariableOp2Z
+block_106/conv2d_221/BiasAdd/ReadVariableOp+block_106/conv2d_221/BiasAdd/ReadVariableOp2X
*block_106/conv2d_221/Conv2D/ReadVariableOp*block_106/conv2d_221/Conv2D/ReadVariableOp2d
0block_107/batch_normalization_214/AssignNewValue0block_107/batch_normalization_214/AssignNewValue2h
2block_107/batch_normalization_214/AssignNewValue_12block_107/batch_normalization_214/AssignNewValue_12
Ablock_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOpAblock_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp2
Cblock_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1Cblock_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp_12d
0block_107/batch_normalization_214/ReadVariableOp0block_107/batch_normalization_214/ReadVariableOp2h
2block_107/batch_normalization_214/ReadVariableOp_12block_107/batch_normalization_214/ReadVariableOp_12d
0block_107/batch_normalization_215/AssignNewValue0block_107/batch_normalization_215/AssignNewValue2h
2block_107/batch_normalization_215/AssignNewValue_12block_107/batch_normalization_215/AssignNewValue_12
Ablock_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOpAblock_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp2
Cblock_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1Cblock_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_12d
0block_107/batch_normalization_215/ReadVariableOp0block_107/batch_normalization_215/ReadVariableOp2h
2block_107/batch_normalization_215/ReadVariableOp_12block_107/batch_normalization_215/ReadVariableOp_12Z
+block_107/conv2d_222/BiasAdd/ReadVariableOp+block_107/conv2d_222/BiasAdd/ReadVariableOp2X
*block_107/conv2d_222/Conv2D/ReadVariableOp*block_107/conv2d_222/Conv2D/ReadVariableOp2Z
+block_107/conv2d_223/BiasAdd/ReadVariableOp+block_107/conv2d_223/BiasAdd/ReadVariableOp2X
*block_107/conv2d_223/Conv2D/ReadVariableOp*block_107/conv2d_223/Conv2D/ReadVariableOp2d
0block_108/batch_normalization_216/AssignNewValue0block_108/batch_normalization_216/AssignNewValue2h
2block_108/batch_normalization_216/AssignNewValue_12block_108/batch_normalization_216/AssignNewValue_12
Ablock_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOpAblock_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp2
Cblock_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1Cblock_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_12d
0block_108/batch_normalization_216/ReadVariableOp0block_108/batch_normalization_216/ReadVariableOp2h
2block_108/batch_normalization_216/ReadVariableOp_12block_108/batch_normalization_216/ReadVariableOp_12d
0block_108/batch_normalization_217/AssignNewValue0block_108/batch_normalization_217/AssignNewValue2h
2block_108/batch_normalization_217/AssignNewValue_12block_108/batch_normalization_217/AssignNewValue_12
Ablock_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOpAblock_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp2
Cblock_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1Cblock_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_12d
0block_108/batch_normalization_217/ReadVariableOp0block_108/batch_normalization_217/ReadVariableOp2h
2block_108/batch_normalization_217/ReadVariableOp_12block_108/batch_normalization_217/ReadVariableOp_12Z
+block_108/conv2d_224/BiasAdd/ReadVariableOp+block_108/conv2d_224/BiasAdd/ReadVariableOp2X
*block_108/conv2d_224/Conv2D/ReadVariableOp*block_108/conv2d_224/Conv2D/ReadVariableOp2Z
+block_108/conv2d_225/BiasAdd/ReadVariableOp+block_108/conv2d_225/BiasAdd/ReadVariableOp2X
*block_108/conv2d_225/Conv2D/ReadVariableOp*block_108/conv2d_225/Conv2D/ReadVariableOp2B
dense_41/BiasAdd/ReadVariableOpdense_41/BiasAdd/ReadVariableOp2@
dense_41/MatMul/ReadVariableOpdense_41/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs

¢
+__inference_block_107_layer_call_fn_2497095
x!
unknown: @
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block_107_layer_call_and_return_conditional_losses_2495326w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 

_user_specified_nameX

	
/__inference_sequential_77_layer_call_fn_2496537

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@%

unknown_23:@

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	&

unknown_29:

unknown_30:	

unknown_31:	

unknown_32:	

unknown_33:	

unknown_34:	

unknown_35:	


unknown_36:

identity¢StatefulPartitionedCallÑ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_77_layer_call_and_return_conditional_losses_2495453o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
 	
Ø
9__inference_batch_normalization_216_layer_call_fn_2497701

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_2495108
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ã
T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_2495032

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ö
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
×#<Æ
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ð
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Ô
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ü

¢
+__inference_block_106_layer_call_fn_2496969
x!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ **
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block_106_layer_call_and_return_conditional_losses_2495842w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  

_user_specified_nameX
(
¸
J__inference_sequential_77_layer_call_and_return_conditional_losses_2496367
input_37+
block_106_2496285: 
block_106_2496287: 
block_106_2496289: 
block_106_2496291: 
block_106_2496293: 
block_106_2496295: +
block_106_2496297:  
block_106_2496299: 
block_106_2496301: 
block_106_2496303: 
block_106_2496305: 
block_106_2496307: +
block_107_2496310: @
block_107_2496312:@
block_107_2496314:@
block_107_2496316:@
block_107_2496318:@
block_107_2496320:@+
block_107_2496322:@@
block_107_2496324:@
block_107_2496326:@
block_107_2496328:@
block_107_2496330:@
block_107_2496332:@,
block_108_2496335:@ 
block_108_2496337:	 
block_108_2496339:	 
block_108_2496341:	 
block_108_2496343:	 
block_108_2496345:	-
block_108_2496347: 
block_108_2496349:	 
block_108_2496351:	 
block_108_2496353:	 
block_108_2496355:	 
block_108_2496357:	#
dense_41_2496361:	

dense_41_2496363:

identity¢!block_106/StatefulPartitionedCall¢!block_107/StatefulPartitionedCall¢!block_108/StatefulPartitionedCall¢ dense_41/StatefulPartitionedCallÒ
!block_106/StatefulPartitionedCallStatefulPartitionedCallinput_37block_106_2496285block_106_2496287block_106_2496289block_106_2496291block_106_2496293block_106_2496295block_106_2496297block_106_2496299block_106_2496301block_106_2496303block_106_2496305block_106_2496307*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ **
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block_106_layer_call_and_return_conditional_losses_2495842ô
!block_107/StatefulPartitionedCallStatefulPartitionedCall*block_106/StatefulPartitionedCall:output:0block_107_2496310block_107_2496312block_107_2496314block_107_2496316block_107_2496318block_107_2496320block_107_2496322block_107_2496324block_107_2496326block_107_2496328block_107_2496330block_107_2496332*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block_107_layer_call_and_return_conditional_losses_2495735õ
!block_108/StatefulPartitionedCallStatefulPartitionedCall*block_107/StatefulPartitionedCall:output:0block_108_2496335block_108_2496337block_108_2496339block_108_2496341block_108_2496343block_108_2496345block_108_2496347block_108_2496349block_108_2496351block_108_2496353block_108_2496355block_108_2496357*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block_108_layer_call_and_return_conditional_losses_2495628å
flatten_38/PartitionedCallPartitionedCall*block_108/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_flatten_38_layer_call_and_return_conditional_losses_2495433
 dense_41/StatefulPartitionedCallStatefulPartitionedCall#flatten_38/PartitionedCall:output:0dense_41_2496361dense_41_2496363*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_41_layer_call_and_return_conditional_losses_2495446x
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Õ
NoOpNoOp"^block_106/StatefulPartitionedCall"^block_107/StatefulPartitionedCall"^block_108/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!block_106/StatefulPartitionedCall!block_106/StatefulPartitionedCall2F
!block_107/StatefulPartitionedCall!block_107/StatefulPartitionedCall2F
!block_108/StatefulPartitionedCall!block_108/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
"
_user_specified_name
input_37
 	
Ø
9__inference_batch_normalization_217_layer_call_fn_2497763

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_2495172
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
Ô
9__inference_batch_normalization_213_layer_call_fn_2497482

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity¢StatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_213_layer_call_and_return_conditional_losses_2494861
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¥

÷
E__inference_dense_41_layer_call_and_return_conditional_losses_2495446

inputs1
matmul_readvariableop_resource:	
-
biasadd_readvariableop_resource:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ã
T__inference_batch_normalization_212_layer_call_and_return_conditional_losses_2494828

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ö
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
exponential_avg_factor%
×#<Æ
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ð
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ Ô
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ÓJ
ì
F__inference_block_106_layer_call_and_return_conditional_losses_2495842
xC
)conv2d_220_conv2d_readvariableop_resource: 8
*conv2d_220_biasadd_readvariableop_resource: =
/batch_normalization_212_readvariableop_resource: ?
1batch_normalization_212_readvariableop_1_resource: N
@batch_normalization_212_fusedbatchnormv3_readvariableop_resource: P
Bbatch_normalization_212_fusedbatchnormv3_readvariableop_1_resource: C
)conv2d_221_conv2d_readvariableop_resource:  8
*conv2d_221_biasadd_readvariableop_resource: =
/batch_normalization_213_readvariableop_resource: ?
1batch_normalization_213_readvariableop_1_resource: N
@batch_normalization_213_fusedbatchnormv3_readvariableop_resource: P
Bbatch_normalization_213_fusedbatchnormv3_readvariableop_1_resource: 
identity¢&batch_normalization_212/AssignNewValue¢(batch_normalization_212/AssignNewValue_1¢7batch_normalization_212/FusedBatchNormV3/ReadVariableOp¢9batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1¢&batch_normalization_212/ReadVariableOp¢(batch_normalization_212/ReadVariableOp_1¢&batch_normalization_213/AssignNewValue¢(batch_normalization_213/AssignNewValue_1¢7batch_normalization_213/FusedBatchNormV3/ReadVariableOp¢9batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1¢&batch_normalization_213/ReadVariableOp¢(batch_normalization_213/ReadVariableOp_1¢!conv2d_220/BiasAdd/ReadVariableOp¢ conv2d_220/Conv2D/ReadVariableOp¢!conv2d_221/BiasAdd/ReadVariableOp¢ conv2d_221/Conv2D/ReadVariableOp
 conv2d_220/Conv2D/ReadVariableOpReadVariableOp)conv2d_220_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ª
conv2d_220/Conv2DConv2Dx(conv2d_220/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   *
paddingSAME*
strides

!conv2d_220/BiasAdd/ReadVariableOpReadVariableOp*conv2d_220_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_220/BiasAddBiasAddconv2d_220/Conv2D:output:0)conv2d_220/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   
&batch_normalization_212/ReadVariableOpReadVariableOp/batch_normalization_212_readvariableop_resource*
_output_shapes
: *
dtype0
(batch_normalization_212/ReadVariableOp_1ReadVariableOp1batch_normalization_212_readvariableop_1_resource*
_output_shapes
: *
dtype0´
7batch_normalization_212/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_212_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0¸
9batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_212_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ñ
(batch_normalization_212/FusedBatchNormV3FusedBatchNormV3conv2d_220/BiasAdd:output:0.batch_normalization_212/ReadVariableOp:value:00batch_normalization_212/ReadVariableOp_1:value:0?batch_normalization_212/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_212/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ   : : : : :*
epsilon%o:*
exponential_avg_factor%
×#<¦
&batch_normalization_212/AssignNewValueAssignVariableOp@batch_normalization_212_fusedbatchnormv3_readvariableop_resource5batch_normalization_212/FusedBatchNormV3:batch_mean:08^batch_normalization_212/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(°
(batch_normalization_212/AssignNewValue_1AssignVariableOpBbatch_normalization_212_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_212/FusedBatchNormV3:batch_variance:0:^batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
activation_212/ReluRelu,batch_normalization_212/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   
 conv2d_221/Conv2D/ReadVariableOpReadVariableOp)conv2d_221_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ê
conv2d_221/Conv2DConv2D!activation_212/Relu:activations:0(conv2d_221/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   *
paddingSAME*
strides

!conv2d_221/BiasAdd/ReadVariableOpReadVariableOp*conv2d_221_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_221/BiasAddBiasAddconv2d_221/Conv2D:output:0)conv2d_221/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   
&batch_normalization_213/ReadVariableOpReadVariableOp/batch_normalization_213_readvariableop_resource*
_output_shapes
: *
dtype0
(batch_normalization_213/ReadVariableOp_1ReadVariableOp1batch_normalization_213_readvariableop_1_resource*
_output_shapes
: *
dtype0´
7batch_normalization_213/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_213_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0¸
9batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_213_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ñ
(batch_normalization_213/FusedBatchNormV3FusedBatchNormV3conv2d_221/BiasAdd:output:0.batch_normalization_213/ReadVariableOp:value:00batch_normalization_213/ReadVariableOp_1:value:0?batch_normalization_213/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_213/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ   : : : : :*
epsilon%o:*
exponential_avg_factor%
×#<¦
&batch_normalization_213/AssignNewValueAssignVariableOp@batch_normalization_213_fusedbatchnormv3_readvariableop_resource5batch_normalization_213/FusedBatchNormV3:batch_mean:08^batch_normalization_213/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(°
(batch_normalization_213/AssignNewValue_1AssignVariableOpBbatch_normalization_213_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_213/FusedBatchNormV3:batch_variance:0:^batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
addAddV2,batch_normalization_213/FusedBatchNormV3:y:0conv2d_220/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   ^
activation_213/ReluReluadd:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   À
average_pooling2d_110/AvgPoolAvgPool!activation_213/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingSAME*
strides
}
IdentityIdentity&average_pooling2d_110/AvgPool:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp'^batch_normalization_212/AssignNewValue)^batch_normalization_212/AssignNewValue_18^batch_normalization_212/FusedBatchNormV3/ReadVariableOp:^batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_212/ReadVariableOp)^batch_normalization_212/ReadVariableOp_1'^batch_normalization_213/AssignNewValue)^batch_normalization_213/AssignNewValue_18^batch_normalization_213/FusedBatchNormV3/ReadVariableOp:^batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_213/ReadVariableOp)^batch_normalization_213/ReadVariableOp_1"^conv2d_220/BiasAdd/ReadVariableOp!^conv2d_220/Conv2D/ReadVariableOp"^conv2d_221/BiasAdd/ReadVariableOp!^conv2d_221/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : : : : : 2P
&batch_normalization_212/AssignNewValue&batch_normalization_212/AssignNewValue2T
(batch_normalization_212/AssignNewValue_1(batch_normalization_212/AssignNewValue_12r
7batch_normalization_212/FusedBatchNormV3/ReadVariableOp7batch_normalization_212/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_212/FusedBatchNormV3/ReadVariableOp_19batch_normalization_212/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_212/ReadVariableOp&batch_normalization_212/ReadVariableOp2T
(batch_normalization_212/ReadVariableOp_1(batch_normalization_212/ReadVariableOp_12P
&batch_normalization_213/AssignNewValue&batch_normalization_213/AssignNewValue2T
(batch_normalization_213/AssignNewValue_1(batch_normalization_213/AssignNewValue_12r
7batch_normalization_213/FusedBatchNormV3/ReadVariableOp7batch_normalization_213/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_213/FusedBatchNormV3/ReadVariableOp_19batch_normalization_213/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_213/ReadVariableOp&batch_normalization_213/ReadVariableOp2T
(batch_normalization_213/ReadVariableOp_1(batch_normalization_213/ReadVariableOp_12F
!conv2d_220/BiasAdd/ReadVariableOp!conv2d_220/BiasAdd/ReadVariableOp2D
 conv2d_220/Conv2D/ReadVariableOp conv2d_220/Conv2D/ReadVariableOp2F
!conv2d_221/BiasAdd/ReadVariableOp!conv2d_221/BiasAdd/ReadVariableOp2D
 conv2d_221/Conv2D/ReadVariableOp conv2d_221/Conv2D/ReadVariableOp:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  

_user_specified_nameX
¢
n
R__inference_average_pooling2d_111_layer_call_and_return_conditional_losses_2497675

inputs
identityª
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê

*__inference_dense_41_layer_call_fn_2497396

inputs
unknown:	

	unknown_0:

identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_41_layer_call_and_return_conditional_losses_2495446o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

	
/__inference_sequential_77_layer_call_fn_2496197
input_37!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@%

unknown_23:@

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	&

unknown_29:

unknown_30:	

unknown_31:	

unknown_32:	

unknown_33:	

unknown_34:	

unknown_35:	


unknown_36:

identity¢StatefulPartitionedCallÇ
StatefulPartitionedCallStatefulPartitionedCallinput_37unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*<
_read_only_resource_inputs
	
 !"%&*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_77_layer_call_and_return_conditional_losses_2496037o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
"
_user_specified_name
input_37
´Õ
©(
J__inference_sequential_77_layer_call_and_return_conditional_losses_2496766

inputsM
3block_106_conv2d_220_conv2d_readvariableop_resource: B
4block_106_conv2d_220_biasadd_readvariableop_resource: G
9block_106_batch_normalization_212_readvariableop_resource: I
;block_106_batch_normalization_212_readvariableop_1_resource: X
Jblock_106_batch_normalization_212_fusedbatchnormv3_readvariableop_resource: Z
Lblock_106_batch_normalization_212_fusedbatchnormv3_readvariableop_1_resource: M
3block_106_conv2d_221_conv2d_readvariableop_resource:  B
4block_106_conv2d_221_biasadd_readvariableop_resource: G
9block_106_batch_normalization_213_readvariableop_resource: I
;block_106_batch_normalization_213_readvariableop_1_resource: X
Jblock_106_batch_normalization_213_fusedbatchnormv3_readvariableop_resource: Z
Lblock_106_batch_normalization_213_fusedbatchnormv3_readvariableop_1_resource: M
3block_107_conv2d_222_conv2d_readvariableop_resource: @B
4block_107_conv2d_222_biasadd_readvariableop_resource:@G
9block_107_batch_normalization_214_readvariableop_resource:@I
;block_107_batch_normalization_214_readvariableop_1_resource:@X
Jblock_107_batch_normalization_214_fusedbatchnormv3_readvariableop_resource:@Z
Lblock_107_batch_normalization_214_fusedbatchnormv3_readvariableop_1_resource:@M
3block_107_conv2d_223_conv2d_readvariableop_resource:@@B
4block_107_conv2d_223_biasadd_readvariableop_resource:@G
9block_107_batch_normalization_215_readvariableop_resource:@I
;block_107_batch_normalization_215_readvariableop_1_resource:@X
Jblock_107_batch_normalization_215_fusedbatchnormv3_readvariableop_resource:@Z
Lblock_107_batch_normalization_215_fusedbatchnormv3_readvariableop_1_resource:@N
3block_108_conv2d_224_conv2d_readvariableop_resource:@C
4block_108_conv2d_224_biasadd_readvariableop_resource:	H
9block_108_batch_normalization_216_readvariableop_resource:	J
;block_108_batch_normalization_216_readvariableop_1_resource:	Y
Jblock_108_batch_normalization_216_fusedbatchnormv3_readvariableop_resource:	[
Lblock_108_batch_normalization_216_fusedbatchnormv3_readvariableop_1_resource:	O
3block_108_conv2d_225_conv2d_readvariableop_resource:C
4block_108_conv2d_225_biasadd_readvariableop_resource:	H
9block_108_batch_normalization_217_readvariableop_resource:	J
;block_108_batch_normalization_217_readvariableop_1_resource:	Y
Jblock_108_batch_normalization_217_fusedbatchnormv3_readvariableop_resource:	[
Lblock_108_batch_normalization_217_fusedbatchnormv3_readvariableop_1_resource:	:
'dense_41_matmul_readvariableop_resource:	
6
(dense_41_biasadd_readvariableop_resource:

identity¢Ablock_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp¢Cblock_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1¢0block_106/batch_normalization_212/ReadVariableOp¢2block_106/batch_normalization_212/ReadVariableOp_1¢Ablock_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp¢Cblock_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1¢0block_106/batch_normalization_213/ReadVariableOp¢2block_106/batch_normalization_213/ReadVariableOp_1¢+block_106/conv2d_220/BiasAdd/ReadVariableOp¢*block_106/conv2d_220/Conv2D/ReadVariableOp¢+block_106/conv2d_221/BiasAdd/ReadVariableOp¢*block_106/conv2d_221/Conv2D/ReadVariableOp¢Ablock_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp¢Cblock_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1¢0block_107/batch_normalization_214/ReadVariableOp¢2block_107/batch_normalization_214/ReadVariableOp_1¢Ablock_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp¢Cblock_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1¢0block_107/batch_normalization_215/ReadVariableOp¢2block_107/batch_normalization_215/ReadVariableOp_1¢+block_107/conv2d_222/BiasAdd/ReadVariableOp¢*block_107/conv2d_222/Conv2D/ReadVariableOp¢+block_107/conv2d_223/BiasAdd/ReadVariableOp¢*block_107/conv2d_223/Conv2D/ReadVariableOp¢Ablock_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp¢Cblock_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1¢0block_108/batch_normalization_216/ReadVariableOp¢2block_108/batch_normalization_216/ReadVariableOp_1¢Ablock_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp¢Cblock_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1¢0block_108/batch_normalization_217/ReadVariableOp¢2block_108/batch_normalization_217/ReadVariableOp_1¢+block_108/conv2d_224/BiasAdd/ReadVariableOp¢*block_108/conv2d_224/Conv2D/ReadVariableOp¢+block_108/conv2d_225/BiasAdd/ReadVariableOp¢*block_108/conv2d_225/Conv2D/ReadVariableOp¢dense_41/BiasAdd/ReadVariableOp¢dense_41/MatMul/ReadVariableOp¦
*block_106/conv2d_220/Conv2D/ReadVariableOpReadVariableOp3block_106_conv2d_220_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ã
block_106/conv2d_220/Conv2DConv2Dinputs2block_106/conv2d_220/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   *
paddingSAME*
strides

+block_106/conv2d_220/BiasAdd/ReadVariableOpReadVariableOp4block_106_conv2d_220_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¼
block_106/conv2d_220/BiasAddBiasAdd$block_106/conv2d_220/Conv2D:output:03block_106/conv2d_220/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   ¦
0block_106/batch_normalization_212/ReadVariableOpReadVariableOp9block_106_batch_normalization_212_readvariableop_resource*
_output_shapes
: *
dtype0ª
2block_106/batch_normalization_212/ReadVariableOp_1ReadVariableOp;block_106_batch_normalization_212_readvariableop_1_resource*
_output_shapes
: *
dtype0È
Ablock_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOpReadVariableOpJblock_106_batch_normalization_212_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0Ì
Cblock_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLblock_106_batch_normalization_212_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ÿ
2block_106/batch_normalization_212/FusedBatchNormV3FusedBatchNormV3%block_106/conv2d_220/BiasAdd:output:08block_106/batch_normalization_212/ReadVariableOp:value:0:block_106/batch_normalization_212/ReadVariableOp_1:value:0Iblock_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp:value:0Kblock_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ   : : : : :*
epsilon%o:*
is_training( 
block_106/activation_212/ReluRelu6block_106/batch_normalization_212/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   ¦
*block_106/conv2d_221/Conv2D/ReadVariableOpReadVariableOp3block_106_conv2d_221_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0è
block_106/conv2d_221/Conv2DConv2D+block_106/activation_212/Relu:activations:02block_106/conv2d_221/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   *
paddingSAME*
strides

+block_106/conv2d_221/BiasAdd/ReadVariableOpReadVariableOp4block_106_conv2d_221_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¼
block_106/conv2d_221/BiasAddBiasAdd$block_106/conv2d_221/Conv2D:output:03block_106/conv2d_221/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   ¦
0block_106/batch_normalization_213/ReadVariableOpReadVariableOp9block_106_batch_normalization_213_readvariableop_resource*
_output_shapes
: *
dtype0ª
2block_106/batch_normalization_213/ReadVariableOp_1ReadVariableOp;block_106_batch_normalization_213_readvariableop_1_resource*
_output_shapes
: *
dtype0È
Ablock_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOpReadVariableOpJblock_106_batch_normalization_213_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0Ì
Cblock_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLblock_106_batch_normalization_213_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ÿ
2block_106/batch_normalization_213/FusedBatchNormV3FusedBatchNormV3%block_106/conv2d_221/BiasAdd:output:08block_106/batch_normalization_213/ReadVariableOp:value:0:block_106/batch_normalization_213/ReadVariableOp_1:value:0Iblock_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp:value:0Kblock_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ   : : : : :*
epsilon%o:*
is_training( ¯
block_106/addAddV26block_106/batch_normalization_213/FusedBatchNormV3:y:0%block_106/conv2d_220/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   r
block_106/activation_213/ReluRelublock_106/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   Ô
'block_106/average_pooling2d_110/AvgPoolAvgPool+block_106/activation_213/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingSAME*
strides

block_106/dropout_106/IdentityIdentity0block_106/average_pooling2d_110/AvgPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¦
*block_107/conv2d_222/Conv2D/ReadVariableOpReadVariableOp3block_107_conv2d_222_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ä
block_107/conv2d_222/Conv2DConv2D'block_106/dropout_106/Identity:output:02block_107/conv2d_222/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides

+block_107/conv2d_222/BiasAdd/ReadVariableOpReadVariableOp4block_107_conv2d_222_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¼
block_107/conv2d_222/BiasAddBiasAdd$block_107/conv2d_222/Conv2D:output:03block_107/conv2d_222/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¦
0block_107/batch_normalization_214/ReadVariableOpReadVariableOp9block_107_batch_normalization_214_readvariableop_resource*
_output_shapes
:@*
dtype0ª
2block_107/batch_normalization_214/ReadVariableOp_1ReadVariableOp;block_107_batch_normalization_214_readvariableop_1_resource*
_output_shapes
:@*
dtype0È
Ablock_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOpReadVariableOpJblock_107_batch_normalization_214_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ì
Cblock_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLblock_107_batch_normalization_214_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ÿ
2block_107/batch_normalization_214/FusedBatchNormV3FusedBatchNormV3%block_107/conv2d_222/BiasAdd:output:08block_107/batch_normalization_214/ReadVariableOp:value:0:block_107/batch_normalization_214/ReadVariableOp_1:value:0Iblock_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp:value:0Kblock_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
is_training( 
block_107/activation_214/ReluRelu6block_107/batch_normalization_214/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¦
*block_107/conv2d_223/Conv2D/ReadVariableOpReadVariableOp3block_107_conv2d_223_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0è
block_107/conv2d_223/Conv2DConv2D+block_107/activation_214/Relu:activations:02block_107/conv2d_223/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides

+block_107/conv2d_223/BiasAdd/ReadVariableOpReadVariableOp4block_107_conv2d_223_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¼
block_107/conv2d_223/BiasAddBiasAdd$block_107/conv2d_223/Conv2D:output:03block_107/conv2d_223/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¦
0block_107/batch_normalization_215/ReadVariableOpReadVariableOp9block_107_batch_normalization_215_readvariableop_resource*
_output_shapes
:@*
dtype0ª
2block_107/batch_normalization_215/ReadVariableOp_1ReadVariableOp;block_107_batch_normalization_215_readvariableop_1_resource*
_output_shapes
:@*
dtype0È
Ablock_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOpReadVariableOpJblock_107_batch_normalization_215_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ì
Cblock_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLblock_107_batch_normalization_215_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ÿ
2block_107/batch_normalization_215/FusedBatchNormV3FusedBatchNormV3%block_107/conv2d_223/BiasAdd:output:08block_107/batch_normalization_215/ReadVariableOp:value:0:block_107/batch_normalization_215/ReadVariableOp_1:value:0Iblock_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp:value:0Kblock_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
is_training( ¯
block_107/addAddV26block_107/batch_normalization_215/FusedBatchNormV3:y:0%block_107/conv2d_222/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
block_107/activation_215/ReluRelublock_107/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ô
'block_107/average_pooling2d_111/AvgPoolAvgPool+block_107/activation_215/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingSAME*
strides

block_107/dropout_107/IdentityIdentity0block_107/average_pooling2d_111/AvgPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@§
*block_108/conv2d_224/Conv2D/ReadVariableOpReadVariableOp3block_108_conv2d_224_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0å
block_108/conv2d_224/Conv2DConv2D'block_107/dropout_107/Identity:output:02block_108/conv2d_224/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

+block_108/conv2d_224/BiasAdd/ReadVariableOpReadVariableOp4block_108_conv2d_224_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0½
block_108/conv2d_224/BiasAddBiasAdd$block_108/conv2d_224/Conv2D:output:03block_108/conv2d_224/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
0block_108/batch_normalization_216/ReadVariableOpReadVariableOp9block_108_batch_normalization_216_readvariableop_resource*
_output_shapes	
:*
dtype0«
2block_108/batch_normalization_216/ReadVariableOp_1ReadVariableOp;block_108_batch_normalization_216_readvariableop_1_resource*
_output_shapes	
:*
dtype0É
Ablock_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOpReadVariableOpJblock_108_batch_normalization_216_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0Í
Cblock_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLblock_108_batch_normalization_216_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0
2block_108/batch_normalization_216/FusedBatchNormV3FusedBatchNormV3%block_108/conv2d_224/BiasAdd:output:08block_108/batch_normalization_216/ReadVariableOp:value:0:block_108/batch_normalization_216/ReadVariableOp_1:value:0Iblock_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp:value:0Kblock_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( 
block_108/activation_216/ReluRelu6block_108/batch_normalization_216/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
*block_108/conv2d_225/Conv2D/ReadVariableOpReadVariableOp3block_108_conv2d_225_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0é
block_108/conv2d_225/Conv2DConv2D+block_108/activation_216/Relu:activations:02block_108/conv2d_225/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

+block_108/conv2d_225/BiasAdd/ReadVariableOpReadVariableOp4block_108_conv2d_225_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0½
block_108/conv2d_225/BiasAddBiasAdd$block_108/conv2d_225/Conv2D:output:03block_108/conv2d_225/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
0block_108/batch_normalization_217/ReadVariableOpReadVariableOp9block_108_batch_normalization_217_readvariableop_resource*
_output_shapes	
:*
dtype0«
2block_108/batch_normalization_217/ReadVariableOp_1ReadVariableOp;block_108_batch_normalization_217_readvariableop_1_resource*
_output_shapes	
:*
dtype0É
Ablock_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOpReadVariableOpJblock_108_batch_normalization_217_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0Í
Cblock_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLblock_108_batch_normalization_217_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0
2block_108/batch_normalization_217/FusedBatchNormV3FusedBatchNormV3%block_108/conv2d_225/BiasAdd:output:08block_108/batch_normalization_217/ReadVariableOp:value:0:block_108/batch_normalization_217/ReadVariableOp_1:value:0Iblock_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp:value:0Kblock_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( °
block_108/addAddV26block_108/batch_normalization_217/FusedBatchNormV3:y:0%block_108/conv2d_224/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
block_108/activation_217/ReluRelublock_108/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÕ
'block_108/average_pooling2d_112/AvgPoolAvgPool+block_108/activation_217/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingSAME*
strides

block_108/dropout_108/IdentityIdentity0block_108/average_pooling2d_112/AvgPool:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
flatten_38/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_38/ReshapeReshape'block_108/dropout_108/Identity:output:0flatten_38/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_41/MatMul/ReadVariableOpReadVariableOp'dense_41_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
dense_41/MatMulMatMulflatten_38/Reshape:output:0&dense_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

dense_41/BiasAdd/ReadVariableOpReadVariableOp(dense_41_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
dense_41/BiasAddBiasAdddense_41/MatMul:product:0'dense_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
h
dense_41/SoftmaxSoftmaxdense_41/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
i
IdentityIdentitydense_41/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
×
NoOpNoOpB^block_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOpD^block_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp_11^block_106/batch_normalization_212/ReadVariableOp3^block_106/batch_normalization_212/ReadVariableOp_1B^block_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOpD^block_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp_11^block_106/batch_normalization_213/ReadVariableOp3^block_106/batch_normalization_213/ReadVariableOp_1,^block_106/conv2d_220/BiasAdd/ReadVariableOp+^block_106/conv2d_220/Conv2D/ReadVariableOp,^block_106/conv2d_221/BiasAdd/ReadVariableOp+^block_106/conv2d_221/Conv2D/ReadVariableOpB^block_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOpD^block_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp_11^block_107/batch_normalization_214/ReadVariableOp3^block_107/batch_normalization_214/ReadVariableOp_1B^block_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOpD^block_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_11^block_107/batch_normalization_215/ReadVariableOp3^block_107/batch_normalization_215/ReadVariableOp_1,^block_107/conv2d_222/BiasAdd/ReadVariableOp+^block_107/conv2d_222/Conv2D/ReadVariableOp,^block_107/conv2d_223/BiasAdd/ReadVariableOp+^block_107/conv2d_223/Conv2D/ReadVariableOpB^block_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOpD^block_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_11^block_108/batch_normalization_216/ReadVariableOp3^block_108/batch_normalization_216/ReadVariableOp_1B^block_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOpD^block_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_11^block_108/batch_normalization_217/ReadVariableOp3^block_108/batch_normalization_217/ReadVariableOp_1,^block_108/conv2d_224/BiasAdd/ReadVariableOp+^block_108/conv2d_224/Conv2D/ReadVariableOp,^block_108/conv2d_225/BiasAdd/ReadVariableOp+^block_108/conv2d_225/Conv2D/ReadVariableOp ^dense_41/BiasAdd/ReadVariableOp^dense_41/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2
Ablock_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOpAblock_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp2
Cblock_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp_1Cblock_106/batch_normalization_212/FusedBatchNormV3/ReadVariableOp_12d
0block_106/batch_normalization_212/ReadVariableOp0block_106/batch_normalization_212/ReadVariableOp2h
2block_106/batch_normalization_212/ReadVariableOp_12block_106/batch_normalization_212/ReadVariableOp_12
Ablock_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOpAblock_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp2
Cblock_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp_1Cblock_106/batch_normalization_213/FusedBatchNormV3/ReadVariableOp_12d
0block_106/batch_normalization_213/ReadVariableOp0block_106/batch_normalization_213/ReadVariableOp2h
2block_106/batch_normalization_213/ReadVariableOp_12block_106/batch_normalization_213/ReadVariableOp_12Z
+block_106/conv2d_220/BiasAdd/ReadVariableOp+block_106/conv2d_220/BiasAdd/ReadVariableOp2X
*block_106/conv2d_220/Conv2D/ReadVariableOp*block_106/conv2d_220/Conv2D/ReadVariableOp2Z
+block_106/conv2d_221/BiasAdd/ReadVariableOp+block_106/conv2d_221/BiasAdd/ReadVariableOp2X
*block_106/conv2d_221/Conv2D/ReadVariableOp*block_106/conv2d_221/Conv2D/ReadVariableOp2
Ablock_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOpAblock_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp2
Cblock_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1Cblock_107/batch_normalization_214/FusedBatchNormV3/ReadVariableOp_12d
0block_107/batch_normalization_214/ReadVariableOp0block_107/batch_normalization_214/ReadVariableOp2h
2block_107/batch_normalization_214/ReadVariableOp_12block_107/batch_normalization_214/ReadVariableOp_12
Ablock_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOpAblock_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp2
Cblock_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1Cblock_107/batch_normalization_215/FusedBatchNormV3/ReadVariableOp_12d
0block_107/batch_normalization_215/ReadVariableOp0block_107/batch_normalization_215/ReadVariableOp2h
2block_107/batch_normalization_215/ReadVariableOp_12block_107/batch_normalization_215/ReadVariableOp_12Z
+block_107/conv2d_222/BiasAdd/ReadVariableOp+block_107/conv2d_222/BiasAdd/ReadVariableOp2X
*block_107/conv2d_222/Conv2D/ReadVariableOp*block_107/conv2d_222/Conv2D/ReadVariableOp2Z
+block_107/conv2d_223/BiasAdd/ReadVariableOp+block_107/conv2d_223/BiasAdd/ReadVariableOp2X
*block_107/conv2d_223/Conv2D/ReadVariableOp*block_107/conv2d_223/Conv2D/ReadVariableOp2
Ablock_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOpAblock_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp2
Cblock_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_1Cblock_108/batch_normalization_216/FusedBatchNormV3/ReadVariableOp_12d
0block_108/batch_normalization_216/ReadVariableOp0block_108/batch_normalization_216/ReadVariableOp2h
2block_108/batch_normalization_216/ReadVariableOp_12block_108/batch_normalization_216/ReadVariableOp_12
Ablock_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOpAblock_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp2
Cblock_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_1Cblock_108/batch_normalization_217/FusedBatchNormV3/ReadVariableOp_12d
0block_108/batch_normalization_217/ReadVariableOp0block_108/batch_normalization_217/ReadVariableOp2h
2block_108/batch_normalization_217/ReadVariableOp_12block_108/batch_normalization_217/ReadVariableOp_12Z
+block_108/conv2d_224/BiasAdd/ReadVariableOp+block_108/conv2d_224/BiasAdd/ReadVariableOp2X
*block_108/conv2d_224/Conv2D/ReadVariableOp*block_108/conv2d_224/Conv2D/ReadVariableOp2Z
+block_108/conv2d_225/BiasAdd/ReadVariableOp+block_108/conv2d_225/BiasAdd/ReadVariableOp2X
*block_108/conv2d_225/Conv2D/ReadVariableOp*block_108/conv2d_225/Conv2D/ReadVariableOp2B
dense_41/BiasAdd/ReadVariableOpdense_41/BiasAdd/ReadVariableOp2@
dense_41/MatMul/ReadVariableOpdense_41/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
Ï

T__inference_batch_normalization_212_layer_call_and_return_conditional_losses_2494797

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0È
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ °
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

Ç
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_2495172

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Û
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<Æ
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ð
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É
S
7__inference_average_pooling2d_110_layer_call_fn_2497536

inputs
identityã
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_average_pooling2d_110_layer_call_and_return_conditional_losses_2494912
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢
n
R__inference_average_pooling2d_111_layer_call_and_return_conditional_losses_2495052

inputs
identityª
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë
c
G__inference_flatten_38_layer_call_and_return_conditional_losses_2497387

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢
n
R__inference_average_pooling2d_112_layer_call_and_return_conditional_losses_2495192

inputs
identityª
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¯
+__inference_block_108_layer_call_fn_2497250
x"
unknown:@
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	%
	unknown_5:
	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block_108_layer_call_and_return_conditional_losses_2495401x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@

_user_specified_nameX
(
¶
J__inference_sequential_77_layer_call_and_return_conditional_losses_2496037

inputs+
block_106_2495955: 
block_106_2495957: 
block_106_2495959: 
block_106_2495961: 
block_106_2495963: 
block_106_2495965: +
block_106_2495967:  
block_106_2495969: 
block_106_2495971: 
block_106_2495973: 
block_106_2495975: 
block_106_2495977: +
block_107_2495980: @
block_107_2495982:@
block_107_2495984:@
block_107_2495986:@
block_107_2495988:@
block_107_2495990:@+
block_107_2495992:@@
block_107_2495994:@
block_107_2495996:@
block_107_2495998:@
block_107_2496000:@
block_107_2496002:@,
block_108_2496005:@ 
block_108_2496007:	 
block_108_2496009:	 
block_108_2496011:	 
block_108_2496013:	 
block_108_2496015:	-
block_108_2496017: 
block_108_2496019:	 
block_108_2496021:	 
block_108_2496023:	 
block_108_2496025:	 
block_108_2496027:	#
dense_41_2496031:	

dense_41_2496033:

identity¢!block_106/StatefulPartitionedCall¢!block_107/StatefulPartitionedCall¢!block_108/StatefulPartitionedCall¢ dense_41/StatefulPartitionedCallÐ
!block_106/StatefulPartitionedCallStatefulPartitionedCallinputsblock_106_2495955block_106_2495957block_106_2495959block_106_2495961block_106_2495963block_106_2495965block_106_2495967block_106_2495969block_106_2495971block_106_2495973block_106_2495975block_106_2495977*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ **
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block_106_layer_call_and_return_conditional_losses_2495842ô
!block_107/StatefulPartitionedCallStatefulPartitionedCall*block_106/StatefulPartitionedCall:output:0block_107_2495980block_107_2495982block_107_2495984block_107_2495986block_107_2495988block_107_2495990block_107_2495992block_107_2495994block_107_2495996block_107_2495998block_107_2496000block_107_2496002*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block_107_layer_call_and_return_conditional_losses_2495735õ
!block_108/StatefulPartitionedCallStatefulPartitionedCall*block_107/StatefulPartitionedCall:output:0block_108_2496005block_108_2496007block_108_2496009block_108_2496011block_108_2496013block_108_2496015block_108_2496017block_108_2496019block_108_2496021block_108_2496023block_108_2496025block_108_2496027*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block_108_layer_call_and_return_conditional_losses_2495628å
flatten_38/PartitionedCallPartitionedCall*block_108/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_flatten_38_layer_call_and_return_conditional_losses_2495433
 dense_41/StatefulPartitionedCallStatefulPartitionedCall#flatten_38/PartitionedCall:output:0dense_41_2496031dense_41_2496033*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_41_layer_call_and_return_conditional_losses_2495446x
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Õ
NoOpNoOp"^block_106/StatefulPartitionedCall"^block_107/StatefulPartitionedCall"^block_108/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!block_106/StatefulPartitionedCall!block_106/StatefulPartitionedCall2F
!block_107/StatefulPartitionedCall!block_107/StatefulPartitionedCall2F
!block_108/StatefulPartitionedCall!block_108/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
ÓJ
ì
F__inference_block_107_layer_call_and_return_conditional_losses_2497221
xC
)conv2d_222_conv2d_readvariableop_resource: @8
*conv2d_222_biasadd_readvariableop_resource:@=
/batch_normalization_214_readvariableop_resource:@?
1batch_normalization_214_readvariableop_1_resource:@N
@batch_normalization_214_fusedbatchnormv3_readvariableop_resource:@P
Bbatch_normalization_214_fusedbatchnormv3_readvariableop_1_resource:@C
)conv2d_223_conv2d_readvariableop_resource:@@8
*conv2d_223_biasadd_readvariableop_resource:@=
/batch_normalization_215_readvariableop_resource:@?
1batch_normalization_215_readvariableop_1_resource:@N
@batch_normalization_215_fusedbatchnormv3_readvariableop_resource:@P
Bbatch_normalization_215_fusedbatchnormv3_readvariableop_1_resource:@
identity¢&batch_normalization_214/AssignNewValue¢(batch_normalization_214/AssignNewValue_1¢7batch_normalization_214/FusedBatchNormV3/ReadVariableOp¢9batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1¢&batch_normalization_214/ReadVariableOp¢(batch_normalization_214/ReadVariableOp_1¢&batch_normalization_215/AssignNewValue¢(batch_normalization_215/AssignNewValue_1¢7batch_normalization_215/FusedBatchNormV3/ReadVariableOp¢9batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1¢&batch_normalization_215/ReadVariableOp¢(batch_normalization_215/ReadVariableOp_1¢!conv2d_222/BiasAdd/ReadVariableOp¢ conv2d_222/Conv2D/ReadVariableOp¢!conv2d_223/BiasAdd/ReadVariableOp¢ conv2d_223/Conv2D/ReadVariableOp
 conv2d_222/Conv2D/ReadVariableOpReadVariableOp)conv2d_222_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ª
conv2d_222/Conv2DConv2Dx(conv2d_222/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides

!conv2d_222/BiasAdd/ReadVariableOpReadVariableOp*conv2d_222_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_222/BiasAddBiasAddconv2d_222/Conv2D:output:0)conv2d_222/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
&batch_normalization_214/ReadVariableOpReadVariableOp/batch_normalization_214_readvariableop_resource*
_output_shapes
:@*
dtype0
(batch_normalization_214/ReadVariableOp_1ReadVariableOp1batch_normalization_214_readvariableop_1_resource*
_output_shapes
:@*
dtype0´
7batch_normalization_214/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_214_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0¸
9batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_214_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ñ
(batch_normalization_214/FusedBatchNormV3FusedBatchNormV3conv2d_222/BiasAdd:output:0.batch_normalization_214/ReadVariableOp:value:00batch_normalization_214/ReadVariableOp_1:value:0?batch_normalization_214/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_214/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
×#<¦
&batch_normalization_214/AssignNewValueAssignVariableOp@batch_normalization_214_fusedbatchnormv3_readvariableop_resource5batch_normalization_214/FusedBatchNormV3:batch_mean:08^batch_normalization_214/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(°
(batch_normalization_214/AssignNewValue_1AssignVariableOpBbatch_normalization_214_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_214/FusedBatchNormV3:batch_variance:0:^batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
activation_214/ReluRelu,batch_normalization_214/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 conv2d_223/Conv2D/ReadVariableOpReadVariableOp)conv2d_223_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ê
conv2d_223/Conv2DConv2D!activation_214/Relu:activations:0(conv2d_223/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides

!conv2d_223/BiasAdd/ReadVariableOpReadVariableOp*conv2d_223_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_223/BiasAddBiasAddconv2d_223/Conv2D:output:0)conv2d_223/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
&batch_normalization_215/ReadVariableOpReadVariableOp/batch_normalization_215_readvariableop_resource*
_output_shapes
:@*
dtype0
(batch_normalization_215/ReadVariableOp_1ReadVariableOp1batch_normalization_215_readvariableop_1_resource*
_output_shapes
:@*
dtype0´
7batch_normalization_215/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_215_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0¸
9batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_215_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ñ
(batch_normalization_215/FusedBatchNormV3FusedBatchNormV3conv2d_223/BiasAdd:output:0.batch_normalization_215/ReadVariableOp:value:00batch_normalization_215/ReadVariableOp_1:value:0?batch_normalization_215/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_215/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
×#<¦
&batch_normalization_215/AssignNewValueAssignVariableOp@batch_normalization_215_fusedbatchnormv3_readvariableop_resource5batch_normalization_215/FusedBatchNormV3:batch_mean:08^batch_normalization_215/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(°
(batch_normalization_215/AssignNewValue_1AssignVariableOpBbatch_normalization_215_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_215/FusedBatchNormV3:batch_variance:0:^batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
addAddV2,batch_normalization_215/FusedBatchNormV3:y:0conv2d_222/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
activation_215/ReluReluadd:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@À
average_pooling2d_111/AvgPoolAvgPool!activation_215/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingSAME*
strides
}
IdentityIdentity&average_pooling2d_111/AvgPool:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp'^batch_normalization_214/AssignNewValue)^batch_normalization_214/AssignNewValue_18^batch_normalization_214/FusedBatchNormV3/ReadVariableOp:^batch_normalization_214/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_214/ReadVariableOp)^batch_normalization_214/ReadVariableOp_1'^batch_normalization_215/AssignNewValue)^batch_normalization_215/AssignNewValue_18^batch_normalization_215/FusedBatchNormV3/ReadVariableOp:^batch_normalization_215/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_215/ReadVariableOp)^batch_normalization_215/ReadVariableOp_1"^conv2d_222/BiasAdd/ReadVariableOp!^conv2d_222/Conv2D/ReadVariableOp"^conv2d_223/BiasAdd/ReadVariableOp!^conv2d_223/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ : : : : : : : : : : : : 2P
&batch_normalization_214/AssignNewValue&batch_normalization_214/AssignNewValue2T
(batch_normalization_214/AssignNewValue_1(batch_normalization_214/AssignNewValue_12r
7batch_normalization_214/FusedBatchNormV3/ReadVariableOp7batch_normalization_214/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_214/FusedBatchNormV3/ReadVariableOp_19batch_normalization_214/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_214/ReadVariableOp&batch_normalization_214/ReadVariableOp2T
(batch_normalization_214/ReadVariableOp_1(batch_normalization_214/ReadVariableOp_12P
&batch_normalization_215/AssignNewValue&batch_normalization_215/AssignNewValue2T
(batch_normalization_215/AssignNewValue_1(batch_normalization_215/AssignNewValue_12r
7batch_normalization_215/FusedBatchNormV3/ReadVariableOp7batch_normalization_215/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_215/FusedBatchNormV3/ReadVariableOp_19batch_normalization_215/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_215/ReadVariableOp&batch_normalization_215/ReadVariableOp2T
(batch_normalization_215/ReadVariableOp_1(batch_normalization_215/ReadVariableOp_12F
!conv2d_222/BiasAdd/ReadVariableOp!conv2d_222/BiasAdd/ReadVariableOp2D
 conv2d_222/Conv2D/ReadVariableOp conv2d_222/Conv2D/ReadVariableOp2F
!conv2d_223/BiasAdd/ReadVariableOp!conv2d_223/BiasAdd/ReadVariableOp2D
 conv2d_223/Conv2D/ReadVariableOp conv2d_223/Conv2D/ReadVariableOp:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 

_user_specified_nameX

Ã
T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_2497665

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ö
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
×#<Æ
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ð
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Ô
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
º
H
,__inference_flatten_38_layer_call_fn_2497381

inputs
identity¶
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_flatten_38_layer_call_and_return_conditional_losses_2495433a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
Ô
9__inference_batch_normalization_215_layer_call_fn_2497616

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity¢StatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_2495001
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
(
¶
J__inference_sequential_77_layer_call_and_return_conditional_losses_2495453

inputs+
block_106_2495252: 
block_106_2495254: 
block_106_2495256: 
block_106_2495258: 
block_106_2495260: 
block_106_2495262: +
block_106_2495264:  
block_106_2495266: 
block_106_2495268: 
block_106_2495270: 
block_106_2495272: 
block_106_2495274: +
block_107_2495327: @
block_107_2495329:@
block_107_2495331:@
block_107_2495333:@
block_107_2495335:@
block_107_2495337:@+
block_107_2495339:@@
block_107_2495341:@
block_107_2495343:@
block_107_2495345:@
block_107_2495347:@
block_107_2495349:@,
block_108_2495402:@ 
block_108_2495404:	 
block_108_2495406:	 
block_108_2495408:	 
block_108_2495410:	 
block_108_2495412:	-
block_108_2495414: 
block_108_2495416:	 
block_108_2495418:	 
block_108_2495420:	 
block_108_2495422:	 
block_108_2495424:	#
dense_41_2495447:	

dense_41_2495449:

identity¢!block_106/StatefulPartitionedCall¢!block_107/StatefulPartitionedCall¢!block_108/StatefulPartitionedCall¢ dense_41/StatefulPartitionedCallÔ
!block_106/StatefulPartitionedCallStatefulPartitionedCallinputsblock_106_2495252block_106_2495254block_106_2495256block_106_2495258block_106_2495260block_106_2495262block_106_2495264block_106_2495266block_106_2495268block_106_2495270block_106_2495272block_106_2495274*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block_106_layer_call_and_return_conditional_losses_2495251ø
!block_107/StatefulPartitionedCallStatefulPartitionedCall*block_106/StatefulPartitionedCall:output:0block_107_2495327block_107_2495329block_107_2495331block_107_2495333block_107_2495335block_107_2495337block_107_2495339block_107_2495341block_107_2495343block_107_2495345block_107_2495347block_107_2495349*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block_107_layer_call_and_return_conditional_losses_2495326ù
!block_108/StatefulPartitionedCallStatefulPartitionedCall*block_107/StatefulPartitionedCall:output:0block_108_2495402block_108_2495404block_108_2495406block_108_2495408block_108_2495410block_108_2495412block_108_2495414block_108_2495416block_108_2495418block_108_2495420block_108_2495422block_108_2495424*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_block_108_layer_call_and_return_conditional_losses_2495401å
flatten_38/PartitionedCallPartitionedCall*block_108/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_flatten_38_layer_call_and_return_conditional_losses_2495433
 dense_41/StatefulPartitionedCallStatefulPartitionedCall#flatten_38/PartitionedCall:output:0dense_41_2495447dense_41_2495449*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_41_layer_call_and_return_conditional_losses_2495446x
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Õ
NoOpNoOp"^block_106/StatefulPartitionedCall"^block_107/StatefulPartitionedCall"^block_108/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!block_106/StatefulPartitionedCall!block_106/StatefulPartitionedCall2F
!block_107/StatefulPartitionedCall!block_107/StatefulPartitionedCall2F
!block_108/StatefulPartitionedCall!block_108/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*µ
serving_default¡
E
input_379
serving_default_input_37:0ÿÿÿÿÿÿÿÿÿ  <
dense_410
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ
tensorflow/serving/predict:ºÏ

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
ñ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	conv1
bn1
act1
	conv2
bn2
act2
mp
dp"
_tf_keras_layer
ñ
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
	#conv1
$bn1
%act1
	&conv2
'bn2
(act2
)mp
*dp"
_tf_keras_layer
ñ
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
	1conv1
2bn1
3act1
	4conv2
5bn2
6act2
7mp
8dp"
_tf_keras_layer
¥
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses"
_tf_keras_layer
»
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses

Ekernel
Fbias"
_tf_keras_layer
Æ
G0
H1
I2
J3
K4
L5
M6
N7
O8
P9
Q10
R11
S12
T13
U14
V15
W16
X17
Y18
Z19
[20
\21
]22
^23
_24
`25
a26
b27
c28
d29
e30
f31
g32
h33
i34
j35
E36
F37"
trackable_list_wrapper
æ
G0
H1
I2
J3
K4
L5
M6
N7
S8
T9
U10
V11
W12
X13
Y14
Z15
_16
`17
a18
b19
c20
d21
e22
f23
E24
F25"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ñ
ptrace_0
qtrace_1
rtrace_2
strace_32
/__inference_sequential_77_layer_call_fn_2495532
/__inference_sequential_77_layer_call_fn_2496537
/__inference_sequential_77_layer_call_fn_2496618
/__inference_sequential_77_layer_call_fn_2496197¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zptrace_0zqtrace_1zrtrace_2zstrace_3
Ý
ttrace_0
utrace_1
vtrace_2
wtrace_32ò
J__inference_sequential_77_layer_call_and_return_conditional_losses_2496766
J__inference_sequential_77_layer_call_and_return_conditional_losses_2496911
J__inference_sequential_77_layer_call_and_return_conditional_losses_2496282
J__inference_sequential_77_layer_call_and_return_conditional_losses_2496367¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zttrace_0zutrace_1zvtrace_2zwtrace_3
ÎBË
"__inference__wrapped_model_2494775input_37"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Û
xiter

ybeta_1

zbeta_2
	{decay
|learning_rateEmçFmèGméHmêImëJmìKmíLmîMmïNmðSmñTmòUmóVmôWmõXmöYm÷Zmø_mù`múamûbmücmýdmþemÿfmEvFvGvHvIvJvKvLvMvNvSvTvUvVvWvXvYvZv_v`vavbvcvdvevfv"
	optimizer
,
}serving_default"
signature_map
v
G0
H1
I2
J3
K4
L5
M6
N7
O8
P9
Q10
R11"
trackable_list_wrapper
X
G0
H1
I2
J3
K4
L5
M6
N7"
trackable_list_wrapper
 "
trackable_list_wrapper
°
~non_trainable_variables

layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ò
trace_0
trace_12
+__inference_block_106_layer_call_fn_2496940
+__inference_block_106_layer_call_fn_2496969º
±²­
FullArgSpec
args
jself
jX
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsª

trainingp 
annotationsª *
 ztrace_0ztrace_1

trace_0
trace_12Í
F__inference_block_106_layer_call_and_return_conditional_losses_2497018
F__inference_block_106_layer_call_and_return_conditional_losses_2497066º
±²­
FullArgSpec
args
jself
jX
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsª

trainingp 
annotationsª *
 ztrace_0ztrace_1
ä
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

Gkernel
Hbias
!_jit_compiled_convolution_op"
_tf_keras_layer
ñ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis
	Igamma
Jbeta
Omoving_mean
Pmoving_variance"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
ä
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+ &call_and_return_all_conditional_losses

Kkernel
Lbias
!¡_jit_compiled_convolution_op"
_tf_keras_layer
ñ
¢	variables
£trainable_variables
¤regularization_losses
¥	keras_api
¦__call__
+§&call_and_return_all_conditional_losses
	¨axis
	Mgamma
Nbeta
Qmoving_mean
Rmoving_variance"
_tf_keras_layer
«
©	variables
ªtrainable_variables
«regularization_losses
¬	keras_api
­__call__
+®&call_and_return_all_conditional_losses"
_tf_keras_layer
«
¯	variables
°trainable_variables
±regularization_losses
²	keras_api
³__call__
+´&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
µ	variables
¶trainable_variables
·regularization_losses
¸	keras_api
¹__call__
+º&call_and_return_all_conditional_losses
»_random_generator"
_tf_keras_layer
v
S0
T1
U2
V3
W4
X5
Y6
Z7
[8
\9
]10
^11"
trackable_list_wrapper
X
S0
T1
U2
V3
W4
X5
Y6
Z7"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¼non_trainable_variables
½layers
¾metrics
 ¿layer_regularization_losses
Àlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
Ò
Átrace_0
Âtrace_12
+__inference_block_107_layer_call_fn_2497095
+__inference_block_107_layer_call_fn_2497124º
±²­
FullArgSpec
args
jself
jX
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsª

trainingp 
annotationsª *
 zÁtrace_0zÂtrace_1

Ãtrace_0
Ätrace_12Í
F__inference_block_107_layer_call_and_return_conditional_losses_2497173
F__inference_block_107_layer_call_and_return_conditional_losses_2497221º
±²­
FullArgSpec
args
jself
jX
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsª

trainingp 
annotationsª *
 zÃtrace_0zÄtrace_1
ä
Å	variables
Ætrainable_variables
Çregularization_losses
È	keras_api
É__call__
+Ê&call_and_return_all_conditional_losses

Skernel
Tbias
!Ë_jit_compiled_convolution_op"
_tf_keras_layer
ñ
Ì	variables
Ítrainable_variables
Îregularization_losses
Ï	keras_api
Ð__call__
+Ñ&call_and_return_all_conditional_losses
	Òaxis
	Ugamma
Vbeta
[moving_mean
\moving_variance"
_tf_keras_layer
«
Ó	variables
Ôtrainable_variables
Õregularization_losses
Ö	keras_api
×__call__
+Ø&call_and_return_all_conditional_losses"
_tf_keras_layer
ä
Ù	variables
Útrainable_variables
Ûregularization_losses
Ü	keras_api
Ý__call__
+Þ&call_and_return_all_conditional_losses

Wkernel
Xbias
!ß_jit_compiled_convolution_op"
_tf_keras_layer
ñ
à	variables
átrainable_variables
âregularization_losses
ã	keras_api
ä__call__
+å&call_and_return_all_conditional_losses
	æaxis
	Ygamma
Zbeta
]moving_mean
^moving_variance"
_tf_keras_layer
«
ç	variables
ètrainable_variables
éregularization_losses
ê	keras_api
ë__call__
+ì&call_and_return_all_conditional_losses"
_tf_keras_layer
«
í	variables
îtrainable_variables
ïregularization_losses
ð	keras_api
ñ__call__
+ò&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
ó	variables
ôtrainable_variables
õregularization_losses
ö	keras_api
÷__call__
+ø&call_and_return_all_conditional_losses
ù_random_generator"
_tf_keras_layer
v
_0
`1
a2
b3
c4
d5
e6
f7
g8
h9
i10
j11"
trackable_list_wrapper
X
_0
`1
a2
b3
c4
d5
e6
f7"
trackable_list_wrapper
 "
trackable_list_wrapper
²
únon_trainable_variables
ûlayers
ümetrics
 ýlayer_regularization_losses
þlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
Ò
ÿtrace_0
trace_12
+__inference_block_108_layer_call_fn_2497250
+__inference_block_108_layer_call_fn_2497279º
±²­
FullArgSpec
args
jself
jX
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsª

trainingp 
annotationsª *
 zÿtrace_0ztrace_1

trace_0
trace_12Í
F__inference_block_108_layer_call_and_return_conditional_losses_2497328
F__inference_block_108_layer_call_and_return_conditional_losses_2497376º
±²­
FullArgSpec
args
jself
jX
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsª

trainingp 
annotationsª *
 ztrace_0ztrace_1
ä
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

_kernel
`bias
!_jit_compiled_convolution_op"
_tf_keras_layer
ñ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis
	agamma
bbeta
gmoving_mean
hmoving_variance"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
ä
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

ckernel
dbias
!_jit_compiled_convolution_op"
_tf_keras_layer
ñ
	variables
trainable_variables
 regularization_losses
¡	keras_api
¢__call__
+£&call_and_return_all_conditional_losses
	¤axis
	egamma
fbeta
imoving_mean
jmoving_variance"
_tf_keras_layer
«
¥	variables
¦trainable_variables
§regularization_losses
¨	keras_api
©__call__
+ª&call_and_return_all_conditional_losses"
_tf_keras_layer
«
«	variables
¬trainable_variables
­regularization_losses
®	keras_api
¯__call__
+°&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
±	variables
²trainable_variables
³regularization_losses
´	keras_api
µ__call__
+¶&call_and_return_all_conditional_losses
·_random_generator"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
¸non_trainable_variables
¹layers
ºmetrics
 »layer_regularization_losses
¼layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
ò
½trace_02Ó
,__inference_flatten_38_layer_call_fn_2497381¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z½trace_0

¾trace_02î
G__inference_flatten_38_layer_call_and_return_conditional_losses_2497387¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¾trace_0
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
ð
Ätrace_02Ñ
*__inference_dense_41_layer_call_fn_2497396¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÄtrace_0

Åtrace_02ì
E__inference_dense_41_layer_call_and_return_conditional_losses_2497407¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÅtrace_0
": 	
2dense_41/kernel
:
2dense_41/bias
5:3 2block_106/conv2d_220/kernel
':% 2block_106/conv2d_220/bias
5:3 2'block_106/batch_normalization_212/gamma
4:2 2&block_106/batch_normalization_212/beta
5:3  2block_106/conv2d_221/kernel
':% 2block_106/conv2d_221/bias
5:3 2'block_106/batch_normalization_213/gamma
4:2 2&block_106/batch_normalization_213/beta
=:;  (2-block_106/batch_normalization_212/moving_mean
A:?  (21block_106/batch_normalization_212/moving_variance
=:;  (2-block_106/batch_normalization_213/moving_mean
A:?  (21block_106/batch_normalization_213/moving_variance
5:3 @2block_107/conv2d_222/kernel
':%@2block_107/conv2d_222/bias
5:3@2'block_107/batch_normalization_214/gamma
4:2@2&block_107/batch_normalization_214/beta
5:3@@2block_107/conv2d_223/kernel
':%@2block_107/conv2d_223/bias
5:3@2'block_107/batch_normalization_215/gamma
4:2@2&block_107/batch_normalization_215/beta
=:;@ (2-block_107/batch_normalization_214/moving_mean
A:?@ (21block_107/batch_normalization_214/moving_variance
=:;@ (2-block_107/batch_normalization_215/moving_mean
A:?@ (21block_107/batch_normalization_215/moving_variance
6:4@2block_108/conv2d_224/kernel
(:&2block_108/conv2d_224/bias
6:42'block_108/batch_normalization_216/gamma
5:32&block_108/batch_normalization_216/beta
7:52block_108/conv2d_225/kernel
(:&2block_108/conv2d_225/bias
6:42'block_108/batch_normalization_217/gamma
5:32&block_108/batch_normalization_217/beta
>:< (2-block_108/batch_normalization_216/moving_mean
B:@ (21block_108/batch_normalization_216/moving_variance
>:< (2-block_108/batch_normalization_217/moving_mean
B:@ (21block_108/batch_normalization_217/moving_variance
v
O0
P1
Q2
R3
[4
\5
]6
^7
g8
h9
i10
j11"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
0
Æ0
Ç1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Bÿ
/__inference_sequential_77_layer_call_fn_2495532input_37"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Bý
/__inference_sequential_77_layer_call_fn_2496537inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Bý
/__inference_sequential_77_layer_call_fn_2496618inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Bÿ
/__inference_sequential_77_layer_call_fn_2496197input_37"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
J__inference_sequential_77_layer_call_and_return_conditional_losses_2496766inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
J__inference_sequential_77_layer_call_and_return_conditional_losses_2496911inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
J__inference_sequential_77_layer_call_and_return_conditional_losses_2496282input_37"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
J__inference_sequential_77_layer_call_and_return_conditional_losses_2496367input_37"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ÍBÊ
%__inference_signature_wrapper_2496456input_37"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
<
O0
P1
Q2
R3"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
òBï
+__inference_block_106_layer_call_fn_2496940X"º
±²­
FullArgSpec
args
jself
jX
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsª

trainingp 
annotationsª *
 
òBï
+__inference_block_106_layer_call_fn_2496969X"º
±²­
FullArgSpec
args
jself
jX
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsª

trainingp 
annotationsª *
 
B
F__inference_block_106_layer_call_and_return_conditional_losses_2497018X"º
±²­
FullArgSpec
args
jself
jX
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsª

trainingp 
annotationsª *
 
B
F__inference_block_106_layer_call_and_return_conditional_losses_2497066X"º
±²­
FullArgSpec
args
jself
jX
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsª

trainingp 
annotationsª *
 
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ènon_trainable_variables
Élayers
Êmetrics
 Ëlayer_regularization_losses
Ìlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
<
I0
J1
O2
P3"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ínon_trainable_variables
Îlayers
Ïmetrics
 Ðlayer_regularization_losses
Ñlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ç
Òtrace_0
Ótrace_12¬
9__inference_batch_normalization_212_layer_call_fn_2497420
9__inference_batch_normalization_212_layer_call_fn_2497433³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÒtrace_0zÓtrace_1

Ôtrace_0
Õtrace_12â
T__inference_batch_normalization_212_layer_call_and_return_conditional_losses_2497451
T__inference_batch_normalization_212_layer_call_and_return_conditional_losses_2497469³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÔtrace_0zÕtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Önon_trainable_variables
×layers
Ømetrics
 Ùlayer_regularization_losses
Úlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ûnon_trainable_variables
Ülayers
Ýmetrics
 Þlayer_regularization_losses
ßlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
<
M0
N1
Q2
R3"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ànon_trainable_variables
álayers
âmetrics
 ãlayer_regularization_losses
älayer_metrics
¢	variables
£trainable_variables
¤regularization_losses
¦__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
ç
åtrace_0
ætrace_12¬
9__inference_batch_normalization_213_layer_call_fn_2497482
9__inference_batch_normalization_213_layer_call_fn_2497495³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zåtrace_0zætrace_1

çtrace_0
ètrace_12â
T__inference_batch_normalization_213_layer_call_and_return_conditional_losses_2497513
T__inference_batch_normalization_213_layer_call_and_return_conditional_losses_2497531³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zçtrace_0zètrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
énon_trainable_variables
êlayers
ëmetrics
 ìlayer_regularization_losses
ílayer_metrics
©	variables
ªtrainable_variables
«regularization_losses
­__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
înon_trainable_variables
ïlayers
ðmetrics
 ñlayer_regularization_losses
òlayer_metrics
¯	variables
°trainable_variables
±regularization_losses
³__call__
+´&call_and_return_all_conditional_losses
'´"call_and_return_conditional_losses"
_generic_user_object
ý
ótrace_02Þ
7__inference_average_pooling2d_110_layer_call_fn_2497536¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zótrace_0

ôtrace_02ù
R__inference_average_pooling2d_110_layer_call_and_return_conditional_losses_2497541¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zôtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
õnon_trainable_variables
ölayers
÷metrics
 ølayer_regularization_losses
ùlayer_metrics
µ	variables
¶trainable_variables
·regularization_losses
¹__call__
+º&call_and_return_all_conditional_losses
'º"call_and_return_conditional_losses"
_generic_user_object
¹2¶³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¹2¶³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
"
_generic_user_object
<
[0
\1
]2
^3"
trackable_list_wrapper
X
#0
$1
%2
&3
'4
(5
)6
*7"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
òBï
+__inference_block_107_layer_call_fn_2497095X"º
±²­
FullArgSpec
args
jself
jX
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsª

trainingp 
annotationsª *
 
òBï
+__inference_block_107_layer_call_fn_2497124X"º
±²­
FullArgSpec
args
jself
jX
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsª

trainingp 
annotationsª *
 
B
F__inference_block_107_layer_call_and_return_conditional_losses_2497173X"º
±²­
FullArgSpec
args
jself
jX
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsª

trainingp 
annotationsª *
 
B
F__inference_block_107_layer_call_and_return_conditional_losses_2497221X"º
±²­
FullArgSpec
args
jself
jX
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsª

trainingp 
annotationsª *
 
.
S0
T1"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
únon_trainable_variables
ûlayers
ümetrics
 ýlayer_regularization_losses
þlayer_metrics
Å	variables
Ætrainable_variables
Çregularization_losses
É__call__
+Ê&call_and_return_all_conditional_losses
'Ê"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
<
U0
V1
[2
\3"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ÿnon_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ì	variables
Ítrainable_variables
Îregularization_losses
Ð__call__
+Ñ&call_and_return_all_conditional_losses
'Ñ"call_and_return_conditional_losses"
_generic_user_object
ç
trace_0
trace_12¬
9__inference_batch_normalization_214_layer_call_fn_2497554
9__inference_batch_normalization_214_layer_call_fn_2497567³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0ztrace_1

trace_0
trace_12â
T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_2497585
T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_2497603³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0ztrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ó	variables
Ôtrainable_variables
Õregularization_losses
×__call__
+Ø&call_and_return_all_conditional_losses
'Ø"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
.
W0
X1"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ù	variables
Útrainable_variables
Ûregularization_losses
Ý__call__
+Þ&call_and_return_all_conditional_losses
'Þ"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
<
Y0
Z1
]2
^3"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
à	variables
átrainable_variables
âregularization_losses
ä__call__
+å&call_and_return_all_conditional_losses
'å"call_and_return_conditional_losses"
_generic_user_object
ç
trace_0
trace_12¬
9__inference_batch_normalization_215_layer_call_fn_2497616
9__inference_batch_normalization_215_layer_call_fn_2497629³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0ztrace_1

trace_0
trace_12â
T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_2497647
T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_2497665³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0ztrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ç	variables
ètrainable_variables
éregularization_losses
ë__call__
+ì&call_and_return_all_conditional_losses
'ì"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 non_trainable_variables
¡layers
¢metrics
 £layer_regularization_losses
¤layer_metrics
í	variables
îtrainable_variables
ïregularization_losses
ñ__call__
+ò&call_and_return_all_conditional_losses
'ò"call_and_return_conditional_losses"
_generic_user_object
ý
¥trace_02Þ
7__inference_average_pooling2d_111_layer_call_fn_2497670¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¥trace_0

¦trace_02ù
R__inference_average_pooling2d_111_layer_call_and_return_conditional_losses_2497675¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¦trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
§non_trainable_variables
¨layers
©metrics
 ªlayer_regularization_losses
«layer_metrics
ó	variables
ôtrainable_variables
õregularization_losses
÷__call__
+ø&call_and_return_all_conditional_losses
'ø"call_and_return_conditional_losses"
_generic_user_object
¹2¶³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¹2¶³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
"
_generic_user_object
<
g0
h1
i2
j3"
trackable_list_wrapper
X
10
21
32
43
54
65
76
87"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
òBï
+__inference_block_108_layer_call_fn_2497250X"º
±²­
FullArgSpec
args
jself
jX
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsª

trainingp 
annotationsª *
 
òBï
+__inference_block_108_layer_call_fn_2497279X"º
±²­
FullArgSpec
args
jself
jX
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsª

trainingp 
annotationsª *
 
B
F__inference_block_108_layer_call_and_return_conditional_losses_2497328X"º
±²­
FullArgSpec
args
jself
jX
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsª

trainingp 
annotationsª *
 
B
F__inference_block_108_layer_call_and_return_conditional_losses_2497376X"º
±²­
FullArgSpec
args
jself
jX
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsª

trainingp 
annotationsª *
 
.
_0
`1"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¬non_trainable_variables
­layers
®metrics
 ¯layer_regularization_losses
°layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
<
a0
b1
g2
h3"
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ç
¶trace_0
·trace_12¬
9__inference_batch_normalization_216_layer_call_fn_2497688
9__inference_batch_normalization_216_layer_call_fn_2497701³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¶trace_0z·trace_1

¸trace_0
¹trace_12â
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_2497719
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_2497737³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¸trace_0z¹trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ºnon_trainable_variables
»layers
¼metrics
 ½layer_regularization_losses
¾layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
.
c0
d1"
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
<
e0
f1
i2
j3"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Änon_trainable_variables
Ålayers
Æmetrics
 Çlayer_regularization_losses
Èlayer_metrics
	variables
trainable_variables
 regularization_losses
¢__call__
+£&call_and_return_all_conditional_losses
'£"call_and_return_conditional_losses"
_generic_user_object
ç
Étrace_0
Êtrace_12¬
9__inference_batch_normalization_217_layer_call_fn_2497750
9__inference_batch_normalization_217_layer_call_fn_2497763³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÉtrace_0zÊtrace_1

Ëtrace_0
Ìtrace_12â
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_2497781
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_2497799³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zËtrace_0zÌtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ínon_trainable_variables
Îlayers
Ïmetrics
 Ðlayer_regularization_losses
Ñlayer_metrics
¥	variables
¦trainable_variables
§regularization_losses
©__call__
+ª&call_and_return_all_conditional_losses
'ª"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ònon_trainable_variables
Ólayers
Ômetrics
 Õlayer_regularization_losses
Ölayer_metrics
«	variables
¬trainable_variables
­regularization_losses
¯__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses"
_generic_user_object
ý
×trace_02Þ
7__inference_average_pooling2d_112_layer_call_fn_2497804¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z×trace_0

Øtrace_02ù
R__inference_average_pooling2d_112_layer_call_and_return_conditional_losses_2497809¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zØtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ùnon_trainable_variables
Úlayers
Ûmetrics
 Ülayer_regularization_losses
Ýlayer_metrics
±	variables
²trainable_variables
³regularization_losses
µ__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses"
_generic_user_object
¹2¶³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¹2¶³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
trackable_dict_wrapper
àBÝ
,__inference_flatten_38_layer_call_fn_2497381inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_flatten_38_layer_call_and_return_conditional_losses_2497387inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
ÞBÛ
*__inference_dense_41_layer_call_fn_2497396inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ùBö
E__inference_dense_41_layer_call_and_return_conditional_losses_2497407inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
R
Þ	variables
ß	keras_api

àtotal

ácount"
_tf_keras_metric
c
â	variables
ã	keras_api

ätotal

åcount
æ
_fn_kwargs"
_tf_keras_metric
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
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
þBû
9__inference_batch_normalization_212_layer_call_fn_2497420inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þBû
9__inference_batch_normalization_212_layer_call_fn_2497433inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
T__inference_batch_normalization_212_layer_call_and_return_conditional_losses_2497451inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
T__inference_batch_normalization_212_layer_call_and_return_conditional_losses_2497469inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
þBû
9__inference_batch_normalization_213_layer_call_fn_2497482inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þBû
9__inference_batch_normalization_213_layer_call_fn_2497495inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
T__inference_batch_normalization_213_layer_call_and_return_conditional_losses_2497513inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
T__inference_batch_normalization_213_layer_call_and_return_conditional_losses_2497531inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
ëBè
7__inference_average_pooling2d_110_layer_call_fn_2497536inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
R__inference_average_pooling2d_110_layer_call_and_return_conditional_losses_2497541inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
þBû
9__inference_batch_normalization_214_layer_call_fn_2497554inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þBû
9__inference_batch_normalization_214_layer_call_fn_2497567inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_2497585inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_2497603inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
þBû
9__inference_batch_normalization_215_layer_call_fn_2497616inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þBû
9__inference_batch_normalization_215_layer_call_fn_2497629inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_2497647inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_2497665inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
ëBè
7__inference_average_pooling2d_111_layer_call_fn_2497670inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
R__inference_average_pooling2d_111_layer_call_and_return_conditional_losses_2497675inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
þBû
9__inference_batch_normalization_216_layer_call_fn_2497688inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þBû
9__inference_batch_normalization_216_layer_call_fn_2497701inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_2497719inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_2497737inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
þBû
9__inference_batch_normalization_217_layer_call_fn_2497750inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þBû
9__inference_batch_normalization_217_layer_call_fn_2497763inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_2497781inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_2497799inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
ëBè
7__inference_average_pooling2d_112_layer_call_fn_2497804inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
R__inference_average_pooling2d_112_layer_call_and_return_conditional_losses_2497809inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
0
à0
á1"
trackable_list_wrapper
.
Þ	variables"
_generic_user_object
:  (2total
:  (2count
0
ä0
å1"
trackable_list_wrapper
.
â	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
':%	
2Adam/dense_41/kernel/m
 :
2Adam/dense_41/bias/m
::8 2"Adam/block_106/conv2d_220/kernel/m
,:* 2 Adam/block_106/conv2d_220/bias/m
::8 2.Adam/block_106/batch_normalization_212/gamma/m
9:7 2-Adam/block_106/batch_normalization_212/beta/m
::8  2"Adam/block_106/conv2d_221/kernel/m
,:* 2 Adam/block_106/conv2d_221/bias/m
::8 2.Adam/block_106/batch_normalization_213/gamma/m
9:7 2-Adam/block_106/batch_normalization_213/beta/m
::8 @2"Adam/block_107/conv2d_222/kernel/m
,:*@2 Adam/block_107/conv2d_222/bias/m
::8@2.Adam/block_107/batch_normalization_214/gamma/m
9:7@2-Adam/block_107/batch_normalization_214/beta/m
::8@@2"Adam/block_107/conv2d_223/kernel/m
,:*@2 Adam/block_107/conv2d_223/bias/m
::8@2.Adam/block_107/batch_normalization_215/gamma/m
9:7@2-Adam/block_107/batch_normalization_215/beta/m
;:9@2"Adam/block_108/conv2d_224/kernel/m
-:+2 Adam/block_108/conv2d_224/bias/m
;:92.Adam/block_108/batch_normalization_216/gamma/m
::82-Adam/block_108/batch_normalization_216/beta/m
<::2"Adam/block_108/conv2d_225/kernel/m
-:+2 Adam/block_108/conv2d_225/bias/m
;:92.Adam/block_108/batch_normalization_217/gamma/m
::82-Adam/block_108/batch_normalization_217/beta/m
':%	
2Adam/dense_41/kernel/v
 :
2Adam/dense_41/bias/v
::8 2"Adam/block_106/conv2d_220/kernel/v
,:* 2 Adam/block_106/conv2d_220/bias/v
::8 2.Adam/block_106/batch_normalization_212/gamma/v
9:7 2-Adam/block_106/batch_normalization_212/beta/v
::8  2"Adam/block_106/conv2d_221/kernel/v
,:* 2 Adam/block_106/conv2d_221/bias/v
::8 2.Adam/block_106/batch_normalization_213/gamma/v
9:7 2-Adam/block_106/batch_normalization_213/beta/v
::8 @2"Adam/block_107/conv2d_222/kernel/v
,:*@2 Adam/block_107/conv2d_222/bias/v
::8@2.Adam/block_107/batch_normalization_214/gamma/v
9:7@2-Adam/block_107/batch_normalization_214/beta/v
::8@@2"Adam/block_107/conv2d_223/kernel/v
,:*@2 Adam/block_107/conv2d_223/bias/v
::8@2.Adam/block_107/batch_normalization_215/gamma/v
9:7@2-Adam/block_107/batch_normalization_215/beta/v
;:9@2"Adam/block_108/conv2d_224/kernel/v
-:+2 Adam/block_108/conv2d_224/bias/v
;:92.Adam/block_108/batch_normalization_216/gamma/v
::82-Adam/block_108/batch_normalization_216/beta/v
<::2"Adam/block_108/conv2d_225/kernel/v
-:+2 Adam/block_108/conv2d_225/bias/v
;:92.Adam/block_108/batch_normalization_217/gamma/v
::82-Adam/block_108/batch_normalization_217/beta/v¿
"__inference__wrapped_model_2494775&GHIJOPKLMNQRSTUV[\WXYZ]^_`abghcdefijEF9¢6
/¢,
*'
input_37ÿÿÿÿÿÿÿÿÿ  
ª "3ª0
.
dense_41"
dense_41ÿÿÿÿÿÿÿÿÿ
õ
R__inference_average_pooling2d_110_layer_call_and_return_conditional_losses_2497541R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Í
7__inference_average_pooling2d_110_layer_call_fn_2497536R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿõ
R__inference_average_pooling2d_111_layer_call_and_return_conditional_losses_2497675R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Í
7__inference_average_pooling2d_111_layer_call_fn_2497670R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿõ
R__inference_average_pooling2d_112_layer_call_and_return_conditional_losses_2497809R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Í
7__inference_average_pooling2d_112_layer_call_fn_2497804R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿï
T__inference_batch_normalization_212_layer_call_and_return_conditional_losses_2497451IJOPM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
p 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 ï
T__inference_batch_normalization_212_layer_call_and_return_conditional_losses_2497469IJOPM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
p
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 Ç
9__inference_batch_normalization_212_layer_call_fn_2497420IJOPM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
p 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ Ç
9__inference_batch_normalization_212_layer_call_fn_2497433IJOPM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
p
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ï
T__inference_batch_normalization_213_layer_call_and_return_conditional_losses_2497513MNQRM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
p 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 ï
T__inference_batch_normalization_213_layer_call_and_return_conditional_losses_2497531MNQRM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
p
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 Ç
9__inference_batch_normalization_213_layer_call_fn_2497482MNQRM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
p 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ Ç
9__inference_batch_normalization_213_layer_call_fn_2497495MNQRM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
p
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ï
T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_2497585UV[\M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ï
T__inference_batch_normalization_214_layer_call_and_return_conditional_losses_2497603UV[\M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 Ç
9__inference_batch_normalization_214_layer_call_fn_2497554UV[\M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Ç
9__inference_batch_normalization_214_layer_call_fn_2497567UV[\M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@ï
T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_2497647YZ]^M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ï
T__inference_batch_normalization_215_layer_call_and_return_conditional_losses_2497665YZ]^M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 Ç
9__inference_batch_normalization_215_layer_call_fn_2497616YZ]^M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Ç
9__inference_batch_normalization_215_layer_call_fn_2497629YZ]^M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@ñ
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_2497719abghN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ñ
T__inference_batch_normalization_216_layer_call_and_return_conditional_losses_2497737abghN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 É
9__inference_batch_normalization_216_layer_call_fn_2497688abghN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉ
9__inference_batch_normalization_216_layer_call_fn_2497701abghN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿñ
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_2497781efijN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ñ
T__inference_batch_normalization_217_layer_call_and_return_conditional_losses_2497799efijN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 É
9__inference_batch_normalization_217_layer_call_fn_2497750efijN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉ
9__inference_batch_normalization_217_layer_call_fn_2497763efijN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌ
F__inference_block_106_layer_call_and_return_conditional_losses_2497018GHIJOPKLMNQRB¢?
(¢%
# 
Xÿÿÿÿÿÿÿÿÿ  
ª

trainingp "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ 
 Ì
F__inference_block_106_layer_call_and_return_conditional_losses_2497066GHIJOPKLMNQRB¢?
(¢%
# 
Xÿÿÿÿÿÿÿÿÿ  
ª

trainingp"-¢*
# 
0ÿÿÿÿÿÿÿÿÿ 
 £
+__inference_block_106_layer_call_fn_2496940tGHIJOPKLMNQRB¢?
(¢%
# 
Xÿÿÿÿÿÿÿÿÿ  
ª

trainingp " ÿÿÿÿÿÿÿÿÿ £
+__inference_block_106_layer_call_fn_2496969tGHIJOPKLMNQRB¢?
(¢%
# 
Xÿÿÿÿÿÿÿÿÿ  
ª

trainingp" ÿÿÿÿÿÿÿÿÿ Ì
F__inference_block_107_layer_call_and_return_conditional_losses_2497173STUV[\WXYZ]^B¢?
(¢%
# 
Xÿÿÿÿÿÿÿÿÿ 
ª

trainingp "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 Ì
F__inference_block_107_layer_call_and_return_conditional_losses_2497221STUV[\WXYZ]^B¢?
(¢%
# 
Xÿÿÿÿÿÿÿÿÿ 
ª

trainingp"-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 £
+__inference_block_107_layer_call_fn_2497095tSTUV[\WXYZ]^B¢?
(¢%
# 
Xÿÿÿÿÿÿÿÿÿ 
ª

trainingp " ÿÿÿÿÿÿÿÿÿ@£
+__inference_block_107_layer_call_fn_2497124tSTUV[\WXYZ]^B¢?
(¢%
# 
Xÿÿÿÿÿÿÿÿÿ 
ª

trainingp" ÿÿÿÿÿÿÿÿÿ@Í
F__inference_block_108_layer_call_and_return_conditional_losses_2497328_`abghcdefijB¢?
(¢%
# 
Xÿÿÿÿÿÿÿÿÿ@
ª

trainingp ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 Í
F__inference_block_108_layer_call_and_return_conditional_losses_2497376_`abghcdefijB¢?
(¢%
# 
Xÿÿÿÿÿÿÿÿÿ@
ª

trainingp".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 ¤
+__inference_block_108_layer_call_fn_2497250u_`abghcdefijB¢?
(¢%
# 
Xÿÿÿÿÿÿÿÿÿ@
ª

trainingp "!ÿÿÿÿÿÿÿÿÿ¤
+__inference_block_108_layer_call_fn_2497279u_`abghcdefijB¢?
(¢%
# 
Xÿÿÿÿÿÿÿÿÿ@
ª

trainingp"!ÿÿÿÿÿÿÿÿÿ¦
E__inference_dense_41_layer_call_and_return_conditional_losses_2497407]EF0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ~
*__inference_dense_41_layer_call_fn_2497396PEF0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
­
G__inference_flatten_38_layer_call_and_return_conditional_losses_2497387b8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_flatten_38_layer_call_fn_2497381U8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿá
J__inference_sequential_77_layer_call_and_return_conditional_losses_2496282&GHIJOPKLMNQRSTUV[\WXYZ]^_`abghcdefijEFA¢>
7¢4
*'
input_37ÿÿÿÿÿÿÿÿÿ  
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 á
J__inference_sequential_77_layer_call_and_return_conditional_losses_2496367&GHIJOPKLMNQRSTUV[\WXYZ]^_`abghcdefijEFA¢>
7¢4
*'
input_37ÿÿÿÿÿÿÿÿÿ  
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ß
J__inference_sequential_77_layer_call_and_return_conditional_losses_2496766&GHIJOPKLMNQRSTUV[\WXYZ]^_`abghcdefijEF?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ  
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ß
J__inference_sequential_77_layer_call_and_return_conditional_losses_2496911&GHIJOPKLMNQRSTUV[\WXYZ]^_`abghcdefijEF?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ  
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ¹
/__inference_sequential_77_layer_call_fn_2495532&GHIJOPKLMNQRSTUV[\WXYZ]^_`abghcdefijEFA¢>
7¢4
*'
input_37ÿÿÿÿÿÿÿÿÿ  
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
¹
/__inference_sequential_77_layer_call_fn_2496197&GHIJOPKLMNQRSTUV[\WXYZ]^_`abghcdefijEFA¢>
7¢4
*'
input_37ÿÿÿÿÿÿÿÿÿ  
p

 
ª "ÿÿÿÿÿÿÿÿÿ
·
/__inference_sequential_77_layer_call_fn_2496537&GHIJOPKLMNQRSTUV[\WXYZ]^_`abghcdefijEF?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ  
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
·
/__inference_sequential_77_layer_call_fn_2496618&GHIJOPKLMNQRSTUV[\WXYZ]^_`abghcdefijEF?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ  
p

 
ª "ÿÿÿÿÿÿÿÿÿ
Î
%__inference_signature_wrapper_2496456¤&GHIJOPKLMNQRSTUV[\WXYZ]^_`abghcdefijEFE¢B
¢ 
;ª8
6
input_37*'
input_37ÿÿÿÿÿÿÿÿÿ  "3ª0
.
dense_41"
dense_41ÿÿÿÿÿÿÿÿÿ
