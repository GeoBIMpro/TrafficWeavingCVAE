´č)
ˇ11
9
Add
x"T
y"T
z"T"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

A
Equal
x"T
y"T
z
"
Ttype:
2	

)
Exit	
data"T
output"T"	
Ttype
+
Exp
x"T
y"T"
Ttype:	
2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
4
Fill
dims

value"T
output"T"	
Ttype
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
?
GreaterEqual
x"T
y"T
z
"
Ttype:
2		
.
Identity

input"T
output"T"	
Ttype
7
Less
x"T
y"T
z
"
Ttype:
2		
+
Log
x"T
y"T"
Ttype:	
2
!
LoopCond	
input


output

o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2

Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

Min

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
:
Minimum
x"T
y"T
z"T"
Ttype:	
2	
<
Mul
x"T
y"T
z"T"
Ttype:
2	
w
Multinomial
logits"T
num_samples

output	"
seedint "
seed2int "
Ttype:
2		
2
NextIteration	
data"T
output"T"	
Ttype

NoOp

OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint˙˙˙˙˙˙˙˙˙"	
Ttype"
TItype0	:
2	
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
)
Rank

input"T

output"	
Ttype
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
A
Relu
features"T
activations"T"
Ttype:
2		
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
i
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
/
Sigmoid
x"T
y"T"
Ttype:	
2
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
8
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
,
Sqrt
x"T
y"T"
Ttype:	
2
0
Square
x"T
y"T"
Ttype:
	2	
2
StopGradient

input"T
output"T"	
Ttype
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
5
Sub
x"T
y"T
z"T"
Ttype:
	2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
,
Tanh
x"T
y"T"
Ttype:	
2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetype
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
Ttype
9
TensorArraySizeV3

handle
flow_in
size
¸
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("
tensor_array_namestring 
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.3.02v1.3.0-24-g658866597Ś'

global_step/Initializer/zerosConst*
_class
loc:@global_step*
value	B	 R *
dtype0	*
_output_shapes
: 

global_step
VariableV2*
	container *
shape: *
dtype0	*
_output_shapes
: *
shared_name *
_class
loc:@global_step
˛
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
g
traj_lengthsPlaceholder*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙*
dtype0
d
	sample_ctPlaceholder*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙*
dtype0

car2Placeholder*)
shape :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
dtype0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

car1Placeholder*
dtype0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*)
shape :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
x
car1_future_yPlaceholder*
dtype0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
shape:˙˙˙˙˙˙˙˙˙
x
car1_future_xPlaceholder*+
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
shape:˙˙˙˙˙˙˙˙˙*
dtype0

extrasPlaceholder*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ *'
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ *
dtype0
P
ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
}

ExpandDims
ExpandDimscar1_future_xExpandDims/dim*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0
R
ShapeShapecar1_future_y*
out_type0*
_output_shapes
:*
T0
]
strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ů
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask 
R
Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
R
Tile/multiples/2Const*
value	B :*
dtype0*
_output_shapes
: 
R
Tile/multiples/3Const*
value	B :*
dtype0*
_output_shapes
: 

Tile/multiplesPackstrided_sliceTile/multiples/1Tile/multiples/2Tile/multiples/3*
T0*

axis *
N*
_output_shapes
:
}
TileTile
ExpandDimsTile/multiples*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

Tmultiples0*
T0
R
ExpandDims_1/dimConst*
value	B :*
dtype0*
_output_shapes
: 

ExpandDims_1
ExpandDimscar1_future_yExpandDims_1/dim*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0
T
Shape_1Shapecar1_future_x*
T0*
out_type0*
_output_shapes
:
_
strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

strided_slice_1StridedSliceShape_1strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
T
Tile_1/multiples/0Const*
_output_shapes
: *
value	B :*
dtype0
T
Tile_1/multiples/2Const*
_output_shapes
: *
value	B :*
dtype0
T
Tile_1/multiples/3Const*
value	B :*
dtype0*
_output_shapes
: 

Tile_1/multiplesPackTile_1/multiples/0strided_slice_1Tile_1/multiples/2Tile_1/multiples/3*
_output_shapes
:*
T0*

axis *
N

Tile_1TileExpandDims_1Tile_1/multiples*

Tmultiples0*
T0*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

stackPackTileTile_1*
axis˙˙˙˙˙˙˙˙˙*
N*<
_output_shapes*
(:&˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
f
car1_future/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
t
car1_futureReshapestackcar1_future/shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
sample_ct_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
k
!sample_ct_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
k
!sample_ct_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
­
sample_ct_1/strided_sliceStridedSlice	sample_ctsample_ct_1/strided_slice/stack!sample_ct_1/strided_slice/stack_1!sample_ct_1/strided_slice/stack_2*
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask 

1features_standardization/train_mean/initial_valueConst*
_output_shapes
:*-
value$B""                        *
dtype0

#features_standardization/train_mean
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 

*features_standardization/train_mean/AssignAssign#features_standardization/train_mean1features_standardization/train_mean/initial_value*
use_locking(*
T0*6
_class,
*(loc:@features_standardization/train_mean*
validate_shape(*
_output_shapes
:
ś
(features_standardization/train_mean/readIdentity#features_standardization/train_mean*
_output_shapes
:*
T0*6
_class,
*(loc:@features_standardization/train_mean

0features_standardization/train_std/initial_valueConst*
_output_shapes
:*-
value$B""                        *
dtype0

"features_standardization/train_std
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0

)features_standardization/train_std/AssignAssign"features_standardization/train_std0features_standardization/train_std/initial_value*5
_class+
)'loc:@features_standardization/train_std*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
ł
'features_standardization/train_std/readIdentity"features_standardization/train_std*
T0*5
_class+
)'loc:@features_standardization/train_std*
_output_shapes
:
{
8features_standardization/train_extras_mean/initial_valueConst*
valueB *
dtype0*
_output_shapes
: 

*features_standardization/train_extras_mean
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
Ź
1features_standardization/train_extras_mean/AssignAssign*features_standardization/train_extras_mean8features_standardization/train_extras_mean/initial_value*=
_class3
1/loc:@features_standardization/train_extras_mean*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
É
/features_standardization/train_extras_mean/readIdentity*features_standardization/train_extras_mean*
T0*=
_class3
1/loc:@features_standardization/train_extras_mean*
_output_shapes
: 
z
7features_standardization/train_extras_std/initial_valueConst*
_output_shapes
: *
valueB *
dtype0

)features_standardization/train_extras_std
VariableV2*
_output_shapes
: *
	container *
shape: *
shared_name *
dtype0
¨
0features_standardization/train_extras_std/AssignAssign)features_standardization/train_extras_std7features_standardization/train_extras_std/initial_value*
T0*<
_class2
0.loc:@features_standardization/train_extras_std*
validate_shape(*
_output_shapes
: *
use_locking(
Ć
.features_standardization/train_extras_std/readIdentity)features_standardization/train_extras_std*
T0*<
_class2
0.loc:@features_standardization/train_extras_std*
_output_shapes
: 
v
,features_standardization/car1/Tile/multiplesConst*
valueB:*
dtype0*
_output_shapes
:
š
"features_standardization/car1/TileTile(features_standardization/train_mean/read,features_standardization/car1/Tile/multiples*

Tmultiples0*
T0*
_output_shapes
:

!features_standardization/car1/subSubcar1"features_standardization/car1/Tile*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
x
.features_standardization/car1/Tile_1/multiplesConst*
valueB:*
dtype0*
_output_shapes
:
ź
$features_standardization/car1/Tile_1Tile'features_standardization/train_std/read.features_standardization/car1/Tile_1/multiples*
_output_shapes
:*

Tmultiples0*
T0
¸
%features_standardization/car1/truedivRealDiv!features_standardization/car1/sub$features_standardization/car1/Tile_1*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
v
,features_standardization/car2/Tile/multiplesConst*
_output_shapes
:*
valueB:*
dtype0
š
"features_standardization/car2/TileTile(features_standardization/train_mean/read,features_standardization/car2/Tile/multiples*

Tmultiples0*
T0*
_output_shapes
:

!features_standardization/car2/subSubcar2"features_standardization/car2/Tile*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
x
.features_standardization/car2/Tile_1/multiplesConst*
valueB:*
dtype0*
_output_shapes
:
ź
$features_standardization/car2/Tile_1Tile'features_standardization/train_std/read.features_standardization/car2/Tile_1/multiples*
_output_shapes
:*

Tmultiples0*
T0
¸
%features_standardization/car2/truedivRealDiv!features_standardization/car2/sub$features_standardization/car2/Tile_1*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
}
3features_standardization/car1_future/Tile/multiplesConst*
valueB:*
dtype0*
_output_shapes
:
Ç
)features_standardization/car1_future/TileTile(features_standardization/train_mean/read3features_standardization/car1_future/Tile/multiples*

Tmultiples0*
T0*
_output_shapes
:

(features_standardization/car1_future/subSubcar1_future)features_standardization/car1_future/Tile*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

5features_standardization/car1_future/Tile_1/multiplesConst*
dtype0*
_output_shapes
:*
valueB:
Ę
+features_standardization/car1_future/Tile_1Tile'features_standardization/train_std/read5features_standardization/car1_future/Tile_1/multiples*

Tmultiples0*
T0*
_output_shapes
:
Ä
,features_standardization/car1_future/truedivRealDiv(features_standardization/car1_future/sub+features_standardization/car1_future/Tile_1*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

.label_standardization/train_mean/initial_valueConst*
valueB"        *
dtype0*
_output_shapes
:

 label_standardization/train_mean
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:

'label_standardization/train_mean/AssignAssign label_standardization/train_mean.label_standardization/train_mean/initial_value*3
_class)
'%loc:@label_standardization/train_mean*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
­
%label_standardization/train_mean/readIdentity label_standardization/train_mean*
_output_shapes
:*
T0*3
_class)
'%loc:@label_standardization/train_mean
~
-label_standardization/train_std/initial_valueConst*
valueB"        *
dtype0*
_output_shapes
:

label_standardization/train_std
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 

&label_standardization/train_std/AssignAssignlabel_standardization/train_std-label_standardization/train_std/initial_value*
use_locking(*
T0*2
_class(
&$loc:@label_standardization/train_std*
validate_shape(*
_output_shapes
:
Ş
$label_standardization/train_std/readIdentitylabel_standardization/train_std*
T0*2
_class(
&$loc:@label_standardization/train_std*
_output_shapes
:
X
data_rearranging/sub/yConst*
_output_shapes
: *
value	B :*
dtype0
o
data_rearranging/subSubtraj_lengthsdata_rearranging/sub/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
data_rearranging/add/yConst*
dtype0*
_output_shapes
: *
value	B : 
w
data_rearranging/addAdddata_rearranging/subdata_rearranging/add/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
data_rearranging/ShapeShape%features_standardization/car1/truediv*
T0*
out_type0*
_output_shapes
:
n
$data_rearranging/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
p
&data_rearranging/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
p
&data_rearranging/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Î
data_rearranging/strided_sliceStridedSlicedata_rearranging/Shape$data_rearranging/strided_slice/stack&data_rearranging/strided_slice/stack_1&data_rearranging/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
^
data_rearranging/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
^
data_rearranging/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ź
data_rearranging/rangeRangedata_rearranging/range/startdata_rearranging/strided_slicedata_rearranging/range/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0

data_rearranging/stackPackdata_rearranging/rangedata_rearranging/add*

axis*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ź
data_rearranging/GatherNdGatherNd%features_standardization/car1/truedivdata_rearranging/stack*
Tindices0*
Tparams0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
data_rearranging/sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
s
data_rearranging/sub_1Subtraj_lengthsdata_rearranging/sub_1/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
data_rearranging/add_1/yConst*
value	B : *
dtype0*
_output_shapes
: 
}
data_rearranging/add_1Adddata_rearranging/sub_1data_rearranging/add_1/y*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
}
data_rearranging/Shape_1Shape%features_standardization/car2/truediv*
T0*
out_type0*
_output_shapes
:
p
&data_rearranging/strided_slice_1/stackConst*
_output_shapes
:*
valueB: *
dtype0
r
(data_rearranging/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
r
(data_rearranging/strided_slice_1/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Ř
 data_rearranging/strided_slice_1StridedSlicedata_rearranging/Shape_1&data_rearranging/strided_slice_1/stack(data_rearranging/strided_slice_1/stack_1(data_rearranging/strided_slice_1/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
`
data_rearranging/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
`
data_rearranging/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
´
data_rearranging/range_1Rangedata_rearranging/range_1/start data_rearranging/strided_slice_1data_rearranging/range_1/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0

data_rearranging/stack_1Packdata_rearranging/range_1data_rearranging/add_1*
T0*

axis*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
°
data_rearranging/GatherNd_1GatherNd%features_standardization/car2/truedivdata_rearranging/stack_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tindices0*
Tparams0
Z
data_rearranging/sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
s
data_rearranging/sub_2Subtraj_lengthsdata_rearranging/sub_2/y*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Z
data_rearranging/add_2/yConst*
dtype0*
_output_shapes
: *
value	B : 
}
data_rearranging/add_2Adddata_rearranging/sub_2data_rearranging/add_2/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
data_rearranging/Shape_2Shapeextras*
T0*
out_type0*
_output_shapes
:
p
&data_rearranging/strided_slice_2/stackConst*
_output_shapes
:*
valueB: *
dtype0
r
(data_rearranging/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
r
(data_rearranging/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ř
 data_rearranging/strided_slice_2StridedSlicedata_rearranging/Shape_2&data_rearranging/strided_slice_2/stack(data_rearranging/strided_slice_2/stack_1(data_rearranging/strided_slice_2/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
`
data_rearranging/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
`
data_rearranging/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
´
data_rearranging/range_2Rangedata_rearranging/range_2/start data_rearranging/strided_slice_2data_rearranging/range_2/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0

data_rearranging/stack_2Packdata_rearranging/range_2data_rearranging/add_2*
T0*

axis*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

data_rearranging/GatherNd_2GatherNdextrasdata_rearranging/stack_2*
Tindices0*
Tparams0*%
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
w
&data_rearranging/strided_slice_3/stackConst*
dtype0*
_output_shapes
:*
valueB"       
y
(data_rearranging/strided_slice_3/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
y
(data_rearranging/strided_slice_3/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ě
 data_rearranging/strided_slice_3StridedSlicedata_rearranging/GatherNd_1&data_rearranging/strided_slice_3/stack(data_rearranging/strided_slice_3/stack_1(data_rearranging/strided_slice_3/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Index0*
T0
w
&data_rearranging/strided_slice_4/stackConst*
valueB"       *
dtype0*
_output_shapes
:
y
(data_rearranging/strided_slice_4/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
y
(data_rearranging/strided_slice_4/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ě
 data_rearranging/strided_slice_4StridedSlicedata_rearranging/GatherNd_1&data_rearranging/strided_slice_4/stack(data_rearranging/strided_slice_4/stack_1(data_rearranging/strided_slice_4/stack_2*
new_axis_mask *
end_mask*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask 
^
data_rearranging/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ě
data_rearranging/concatConcatV2 data_rearranging/strided_slice_3 data_rearranging/strided_slice_4data_rearranging/concat/axis*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0
`
data_rearranging/concat_1/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ŕ
data_rearranging/concat_1ConcatV2data_rearranging/GatherNddata_rearranging/concatdata_rearranging/concat_1/axis*
T0*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
d
"car_history_rnn/joint_history/axisConst*
_output_shapes
: *
value	B :*
dtype0
÷
car_history_rnn/joint_historyConcatV2%features_standardization/car1/truediv%features_standardization/car2/truedivextras"car_history_rnn/joint_history/axis*
T0*
N*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

Tidx0
V
car_history_rnn/RankConst*
dtype0*
_output_shapes
: *
value	B :
]
car_history_rnn/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
]
car_history_rnn/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

car_history_rnn/rangeRangecar_history_rnn/range/startcar_history_rnn/Rankcar_history_rnn/range/delta*
_output_shapes
:*

Tidx0
p
car_history_rnn/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
]
car_history_rnn/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ą
car_history_rnn/concatConcatV2car_history_rnn/concat/values_0car_history_rnn/rangecar_history_rnn/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N
Š
car_history_rnn/transpose	Transposecar_history_rnn/joint_historycar_history_rnn/concat*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
Tperm0*
T0
g
car_history_rnn/sequence_lengthIdentitytraj_lengths*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
r
car_history_rnn/rnn/ShapeShapecar_history_rnn/transpose*
T0*
out_type0*
_output_shapes
:
q
'car_history_rnn/rnn/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
s
)car_history_rnn/rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
s
)car_history_rnn/rnn/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ý
!car_history_rnn/rnn/strided_sliceStridedSlicecar_history_rnn/rnn/Shape'car_history_rnn/rnn/strided_slice/stack)car_history_rnn/rnn/strided_slice/stack_1)car_history_rnn/rnn/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0

Xcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 

Tcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims
ExpandDims!car_history_rnn/rnn/strided_sliceXcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:

Ocar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ConstConst*
valueB: *
dtype0*
_output_shapes
:

Ucar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Pcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concatConcatV2Tcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDimsOcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ConstUcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0

Zcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 

Vcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_1
ExpandDims!car_history_rnn/rnn/strided_sliceZcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes
:

Qcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

Ucar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
˛
Ocar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zerosFillPcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concatUcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros/Const*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

Zcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 

Vcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_2
ExpandDims!car_history_rnn/rnn/strided_sliceZcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_2/dim*
T0*
_output_shapes
:*

Tdim0

Qcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/Const_2Const*
valueB: *
dtype0*
_output_shapes
:

Wcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Rcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concat_1ConcatV2Vcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_2Qcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/Const_2Wcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concat_1/axis*
_output_shapes
:*

Tidx0*
T0*
N

Zcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_3/dimConst*
value	B : *
dtype0*
_output_shapes
: 

Vcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_3
ExpandDims!car_history_rnn/rnn/strided_sliceZcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_3/dim*
_output_shapes
:*

Tdim0*
T0

Qcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/Const_3Const*
valueB: *
dtype0*
_output_shapes
:

Wcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros_1/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
¸
Qcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros_1FillRcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concat_1Wcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros_1/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
z
car_history_rnn/rnn/Shape_1Shapecar_history_rnn/sequence_length*
T0*
out_type0*
_output_shapes
:
~
car_history_rnn/rnn/stackPack!car_history_rnn/rnn/strided_slice*
T0*

axis *
N*
_output_shapes
:

car_history_rnn/rnn/EqualEqualcar_history_rnn/rnn/Shape_1car_history_rnn/rnn/stack*
_output_shapes
:*
T0
c
car_history_rnn/rnn/ConstConst*
valueB: *
dtype0*
_output_shapes
:

car_history_rnn/rnn/AllAllcar_history_rnn/rnn/Equalcar_history_rnn/rnn/Const*
_output_shapes
: *

Tidx0*
	keep_dims( 
 
 car_history_rnn/rnn/Assert/ConstConst*P
valueGBE B?Expected shape for Tensor car_history_rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 
s
"car_history_rnn/rnn/Assert/Const_1Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
¨
(car_history_rnn/rnn/Assert/Assert/data_0Const*
_output_shapes
: *P
valueGBE B?Expected shape for Tensor car_history_rnn/sequence_length:0 is *
dtype0
y
(car_history_rnn/rnn/Assert/Assert/data_2Const*
_output_shapes
: *!
valueB B but saw shape: *
dtype0
đ
!car_history_rnn/rnn/Assert/AssertAssertcar_history_rnn/rnn/All(car_history_rnn/rnn/Assert/Assert/data_0car_history_rnn/rnn/stack(car_history_rnn/rnn/Assert/Assert/data_2car_history_rnn/rnn/Shape_1*
T
2*
	summarize

car_history_rnn/rnn/CheckSeqLenIdentitycar_history_rnn/sequence_length"^car_history_rnn/rnn/Assert/Assert*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
car_history_rnn/rnn/Shape_2Shapecar_history_rnn/transpose*
T0*
out_type0*
_output_shapes
:
s
)car_history_rnn/rnn/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+car_history_rnn/rnn/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+car_history_rnn/rnn/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ç
#car_history_rnn/rnn/strided_slice_1StridedSlicecar_history_rnn/rnn/Shape_2)car_history_rnn/rnn/strided_slice_1/stack+car_history_rnn/rnn/strided_slice_1/stack_1+car_history_rnn/rnn/strided_slice_1/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
t
car_history_rnn/rnn/Shape_3Shapecar_history_rnn/transpose*
out_type0*
_output_shapes
:*
T0
s
)car_history_rnn/rnn/strided_slice_2/stackConst*
dtype0*
_output_shapes
:*
valueB:
u
+car_history_rnn/rnn/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+car_history_rnn/rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
ç
#car_history_rnn/rnn/strided_slice_2StridedSlicecar_history_rnn/rnn/Shape_3)car_history_rnn/rnn/strided_slice_2/stack+car_history_rnn/rnn/strided_slice_2/stack_1+car_history_rnn/rnn/strided_slice_2/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
d
"car_history_rnn/rnn/ExpandDims/dimConst*
_output_shapes
: *
value	B : *
dtype0
Ś
car_history_rnn/rnn/ExpandDims
ExpandDims#car_history_rnn/rnn/strided_slice_2"car_history_rnn/rnn/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
e
car_history_rnn/rnn/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
a
car_history_rnn/rnn/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
ž
car_history_rnn/rnn/concatConcatV2car_history_rnn/rnn/ExpandDimscar_history_rnn/rnn/Const_1car_history_rnn/rnn/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N
d
car_history_rnn/rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

car_history_rnn/rnn/zerosFillcar_history_rnn/rnn/concatcar_history_rnn/rnn/zeros/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
e
car_history_rnn/rnn/Const_2Const*
dtype0*
_output_shapes
:*
valueB: 

car_history_rnn/rnn/MinMincar_history_rnn/rnn/CheckSeqLencar_history_rnn/rnn/Const_2*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
e
car_history_rnn/rnn/Const_3Const*
valueB: *
dtype0*
_output_shapes
:

car_history_rnn/rnn/MaxMaxcar_history_rnn/rnn/CheckSeqLencar_history_rnn/rnn/Const_3*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
Z
car_history_rnn/rnn/timeConst*
value	B : *
dtype0*
_output_shapes
: 

car_history_rnn/rnn/TensorArrayTensorArrayV3#car_history_rnn/rnn/strided_slice_1*
dynamic_size( *
clear_after_read(*?
tensor_array_name*(car_history_rnn/rnn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *
element_shape:

!car_history_rnn/rnn/TensorArray_1TensorArrayV3#car_history_rnn/rnn/strided_slice_1*
element_shape:*
dynamic_size( *
clear_after_read(*>
tensor_array_name)'car_history_rnn/rnn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: 

,car_history_rnn/rnn/TensorArrayUnstack/ShapeShapecar_history_rnn/transpose*
T0*
out_type0*
_output_shapes
:

:car_history_rnn/rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

<car_history_rnn/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

<car_history_rnn/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ź
4car_history_rnn/rnn/TensorArrayUnstack/strided_sliceStridedSlice,car_history_rnn/rnn/TensorArrayUnstack/Shape:car_history_rnn/rnn/TensorArrayUnstack/strided_slice/stack<car_history_rnn/rnn/TensorArrayUnstack/strided_slice/stack_1<car_history_rnn/rnn/TensorArrayUnstack/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
t
2car_history_rnn/rnn/TensorArrayUnstack/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
t
2car_history_rnn/rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

,car_history_rnn/rnn/TensorArrayUnstack/rangeRange2car_history_rnn/rnn/TensorArrayUnstack/range/start4car_history_rnn/rnn/TensorArrayUnstack/strided_slice2car_history_rnn/rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
Ć
Ncar_history_rnn/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3!car_history_rnn/rnn/TensorArray_1,car_history_rnn/rnn/TensorArrayUnstack/rangecar_history_rnn/transpose#car_history_rnn/rnn/TensorArray_1:1*
T0*,
_class"
 loc:@car_history_rnn/transpose*
_output_shapes
: 
×
car_history_rnn/rnn/while/EnterEntercar_history_rnn/rnn/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *D

frame_name64car_history_rnn/rnn/while/car_history_rnn/rnn/while/
â
!car_history_rnn/rnn/while/Enter_1Enter!car_history_rnn/rnn/TensorArray:1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *D

frame_name64car_history_rnn/rnn/while/car_history_rnn/rnn/while/
Ą
!car_history_rnn/rnn/while/Enter_2EnterOcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *D

frame_name64car_history_rnn/rnn/while/car_history_rnn/rnn/while/
Ł
!car_history_rnn/rnn/while/Enter_3EnterQcar_history_rnn/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros_1*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *D

frame_name64car_history_rnn/rnn/while/car_history_rnn/rnn/while/

car_history_rnn/rnn/while/MergeMergecar_history_rnn/rnn/while/Enter'car_history_rnn/rnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
¤
!car_history_rnn/rnn/while/Merge_1Merge!car_history_rnn/rnn/while/Enter_1)car_history_rnn/rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
ľ
!car_history_rnn/rnn/while/Merge_2Merge!car_history_rnn/rnn/while/Enter_2)car_history_rnn/rnn/while/NextIteration_2*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙ : *
T0
ľ
!car_history_rnn/rnn/while/Merge_3Merge!car_history_rnn/rnn/while/Enter_3)car_history_rnn/rnn/while/NextIteration_3*
T0*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙ : 
ç
$car_history_rnn/rnn/while/Less/EnterEnter#car_history_rnn/rnn/strided_slice_1*
parallel_iterations *
_output_shapes
: *D

frame_name64car_history_rnn/rnn/while/car_history_rnn/rnn/while/*
T0*
is_constant(

car_history_rnn/rnn/while/LessLesscar_history_rnn/rnn/while/Merge$car_history_rnn/rnn/while/Less/Enter*
T0*
_output_shapes
: 
f
"car_history_rnn/rnn/while/LoopCondLoopCondcar_history_rnn/rnn/while/Less*
_output_shapes
: 
Ć
 car_history_rnn/rnn/while/SwitchSwitchcar_history_rnn/rnn/while/Merge"car_history_rnn/rnn/while/LoopCond*
T0*2
_class(
&$loc:@car_history_rnn/rnn/while/Merge*
_output_shapes
: : 
Ě
"car_history_rnn/rnn/while/Switch_1Switch!car_history_rnn/rnn/while/Merge_1"car_history_rnn/rnn/while/LoopCond*
T0*4
_class*
(&loc:@car_history_rnn/rnn/while/Merge_1*
_output_shapes
: : 
î
"car_history_rnn/rnn/while/Switch_2Switch!car_history_rnn/rnn/while/Merge_2"car_history_rnn/rnn/while/LoopCond*
T0*4
_class*
(&loc:@car_history_rnn/rnn/while/Merge_2*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙ :˙˙˙˙˙˙˙˙˙ 
î
"car_history_rnn/rnn/while/Switch_3Switch!car_history_rnn/rnn/while/Merge_3"car_history_rnn/rnn/while/LoopCond*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙ :˙˙˙˙˙˙˙˙˙ *
T0*4
_class*
(&loc:@car_history_rnn/rnn/while/Merge_3
s
"car_history_rnn/rnn/while/IdentityIdentity"car_history_rnn/rnn/while/Switch:1*
T0*
_output_shapes
: 
w
$car_history_rnn/rnn/while/Identity_1Identity$car_history_rnn/rnn/while/Switch_1:1*
T0*
_output_shapes
: 

$car_history_rnn/rnn/while/Identity_2Identity$car_history_rnn/rnn/while/Switch_2:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

$car_history_rnn/rnn/while/Identity_3Identity$car_history_rnn/rnn/while/Switch_3:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ö
1car_history_rnn/rnn/while/TensorArrayReadV3/EnterEnter!car_history_rnn/rnn/TensorArray_1*
parallel_iterations *
_output_shapes
:*D

frame_name64car_history_rnn/rnn/while/car_history_rnn/rnn/while/*
T0*
is_constant(
Ą
3car_history_rnn/rnn/while/TensorArrayReadV3/Enter_1EnterNcar_history_rnn/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *D

frame_name64car_history_rnn/rnn/while/car_history_rnn/rnn/while/

+car_history_rnn/rnn/while/TensorArrayReadV3TensorArrayReadV31car_history_rnn/rnn/while/TensorArrayReadV3/Enter"car_history_rnn/rnn/while/Identity3car_history_rnn/rnn/while/TensorArrayReadV3/Enter_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0
Č
acar_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat/axisConst#^car_history_rnn/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
ĺ
\car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concatConcatV2+car_history_rnn/rnn/while/TensorArrayReadV3$car_history_rnn/rnn/while/Identity_3acar_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat/axis*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙,*

Tidx0*
T0

lcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*^
_classT
RPloc:@car_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
valueB",      *
dtype0

jcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/minConst*^
_classT
RPloc:@car_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
valueB
 *A?ž*
dtype0*
_output_shapes
: 

jcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *^
_classT
RPloc:@car_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
valueB
 *A?>*
dtype0
Ł
tcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformlcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/shape*
T0*^
_classT
RPloc:@car_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
seed2 *
dtype0*
_output_shapes
:	,*

seed 
Ę
jcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/subSubjcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/maxjcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*^
_classT
RPloc:@car_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel
Ý
jcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/mulMultcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformjcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/sub*
T0*^
_classT
RPloc:@car_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
_output_shapes
:	,
Ď
fcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniformAddjcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/muljcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/min*
_output_shapes
:	,*
T0*^
_classT
RPloc:@car_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel
Ą
Kcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel
VariableV2*^
_classT
RPloc:@car_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
	container *
shape:	,*
dtype0*
_output_shapes
:	,*
shared_name 
Ä
Rcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AssignAssignKcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelfcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform*
use_locking(*
T0*^
_classT
RPloc:@car_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes
:	,
Ó
Pcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/readIdentityKcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
T0*
_output_shapes
:	,
Ű
bcar_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/EnterEnterPcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read*
parallel_iterations *
_output_shapes
:	,*D

frame_name64car_history_rnn/rnn/while/car_history_rnn/rnn/while/*
T0*
is_constant(

\car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMulMatMul\car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concatbcar_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0

jcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/shapeConst*\
_classR
PNloc:@car_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
valueB:*
dtype0*
_output_shapes
:

hcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/minConst*\
_classR
PNloc:@car_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
valueB
 *qÄž*
dtype0*
_output_shapes
: 

hcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/maxConst*\
_classR
PNloc:@car_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
valueB
 *qÄ>*
dtype0*
_output_shapes
: 

rcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/RandomUniformRandomUniformjcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes	
:*

seed *
T0*\
_classR
PNloc:@car_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias
Â
hcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/subSubhcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/maxhcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/min*
T0*\
_classR
PNloc:@car_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
_output_shapes
: 
Ń
hcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/mulMulrcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/RandomUniformhcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/sub*
_output_shapes	
:*
T0*\
_classR
PNloc:@car_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias
Ă
dcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniformAddhcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/mulhcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/min*
T0*\
_classR
PNloc:@car_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
_output_shapes	
:

Icar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *\
_classR
PNloc:@car_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
	container *
shape:
¸
Pcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AssignAssignIcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasdcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform*
use_locking(*
T0*\
_classR
PNloc:@car_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:
Ë
Ncar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/readIdentityIcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
T0*
_output_shapes	
:
Ö
ccar_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/EnterEnterNcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read*
parallel_iterations *
_output_shapes	
:*D

frame_name64car_history_rnn/rnn/while/car_history_rnn/rnn/while/*
T0*
is_constant(
ő
]car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAddBiasAdd\car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMulccar_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Â
[car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/ConstConst#^car_history_rnn/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ě
ecar_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split/split_dimConst#^car_history_rnn/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ś
[car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/splitSplitecar_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split/split_dim]car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙ :˙˙˙˙˙˙˙˙˙ :˙˙˙˙˙˙˙˙˙ :˙˙˙˙˙˙˙˙˙ *
	num_split
ó
Zcar_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/TanhTanh]car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ĺ
[car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add/yConst#^car_history_rnn/rnn/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Î
Ycar_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/addAdd]car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:2[car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ő
]car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/SigmoidSigmoidYcar_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

Ycar_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mulMul$car_history_rnn/rnn/while/Identity_2]car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
ů
_car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_1Sigmoid[car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
Ń
[car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1Mul_car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_1Zcar_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ě
[car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1AddYcar_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul[car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ó
\car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_1Tanh[car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ű
_car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_2Sigmoid]car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ó
[car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2Mul\car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_1_car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ř
,car_history_rnn/rnn/while/GreaterEqual/EnterEntercar_history_rnn/rnn/CheckSeqLen*
T0*
is_constant(*
parallel_iterations *#
_output_shapes
:˙˙˙˙˙˙˙˙˙*D

frame_name64car_history_rnn/rnn/while/car_history_rnn/rnn/while/
ś
&car_history_rnn/rnn/while/GreaterEqualGreaterEqual"car_history_rnn/rnn/while/Identity,car_history_rnn/rnn/while/GreaterEqual/Enter*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ŕ
&car_history_rnn/rnn/while/Select/EnterEntercar_history_rnn/rnn/zeros*
T0*n
_classd
b`loc:@car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2*
parallel_iterations *
is_constant(*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *D

frame_name64car_history_rnn/rnn/while/car_history_rnn/rnn/while/
ů
 car_history_rnn/rnn/while/SelectSelect&car_history_rnn/rnn/while/GreaterEqual&car_history_rnn/rnn/while/Select/Enter[car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2*n
_classd
b`loc:@car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
¸
(car_history_rnn/rnn/while/GreaterEqual_1GreaterEqual"car_history_rnn/rnn/while/Identity,car_history_rnn/rnn/while/GreaterEqual/Enter*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ű
"car_history_rnn/rnn/while/Select_1Select(car_history_rnn/rnn/while/GreaterEqual_1$car_history_rnn/rnn/while/Identity_2[car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1*
T0*n
_classd
b`loc:@car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
¸
(car_history_rnn/rnn/while/GreaterEqual_2GreaterEqual"car_history_rnn/rnn/while/Identity,car_history_rnn/rnn/while/GreaterEqual/Enter*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ű
"car_history_rnn/rnn/while/Select_2Select(car_history_rnn/rnn/while/GreaterEqual_2$car_history_rnn/rnn/while/Identity_3[car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*n
_classd
b`loc:@car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2
ö
Ccar_history_rnn/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEntercar_history_rnn/rnn/TensorArray*
_output_shapes
:*D

frame_name64car_history_rnn/rnn/while/car_history_rnn/rnn/while/*
T0*n
_classd
b`loc:@car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2*
parallel_iterations *
is_constant(

=car_history_rnn/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Ccar_history_rnn/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter"car_history_rnn/rnn/while/Identity car_history_rnn/rnn/while/Select$car_history_rnn/rnn/while/Identity_1*
T0*n
_classd
b`loc:@car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2*
_output_shapes
: 

car_history_rnn/rnn/while/add/yConst#^car_history_rnn/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 

car_history_rnn/rnn/while/addAdd"car_history_rnn/rnn/while/Identitycar_history_rnn/rnn/while/add/y*
_output_shapes
: *
T0
x
'car_history_rnn/rnn/while/NextIterationNextIterationcar_history_rnn/rnn/while/add*
_output_shapes
: *
T0

)car_history_rnn/rnn/while/NextIteration_1NextIteration=car_history_rnn/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 

)car_history_rnn/rnn/while/NextIteration_2NextIteration"car_history_rnn/rnn/while/Select_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

)car_history_rnn/rnn/while/NextIteration_3NextIteration"car_history_rnn/rnn/while/Select_2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
i
car_history_rnn/rnn/while/ExitExit car_history_rnn/rnn/while/Switch*
_output_shapes
: *
T0
m
 car_history_rnn/rnn/while/Exit_1Exit"car_history_rnn/rnn/while/Switch_1*
T0*
_output_shapes
: 
~
 car_history_rnn/rnn/while/Exit_2Exit"car_history_rnn/rnn/while/Switch_2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
~
 car_history_rnn/rnn/while/Exit_3Exit"car_history_rnn/rnn/while/Switch_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ú
6car_history_rnn/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3car_history_rnn/rnn/TensorArray car_history_rnn/rnn/while/Exit_1*2
_class(
&$loc:@car_history_rnn/rnn/TensorArray*
_output_shapes
: 
Ś
0car_history_rnn/rnn/TensorArrayStack/range/startConst*
value	B : *2
_class(
&$loc:@car_history_rnn/rnn/TensorArray*
dtype0*
_output_shapes
: 
Ś
0car_history_rnn/rnn/TensorArrayStack/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :*2
_class(
&$loc:@car_history_rnn/rnn/TensorArray
´
*car_history_rnn/rnn/TensorArrayStack/rangeRange0car_history_rnn/rnn/TensorArrayStack/range/start6car_history_rnn/rnn/TensorArrayStack/TensorArraySizeV30car_history_rnn/rnn/TensorArrayStack/range/delta*

Tidx0*2
_class(
&$loc:@car_history_rnn/rnn/TensorArray*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ű
8car_history_rnn/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3car_history_rnn/rnn/TensorArray*car_history_rnn/rnn/TensorArrayStack/range car_history_rnn/rnn/while/Exit_1*$
element_shape:˙˙˙˙˙˙˙˙˙ *2
_class(
&$loc:@car_history_rnn/rnn/TensorArray*
dtype0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ 
e
car_history_rnn/rnn/Const_4Const*
dtype0*
_output_shapes
:*
valueB: 
Z
car_history_rnn/rnn/RankConst*
value	B :*
dtype0*
_output_shapes
: 
a
car_history_rnn/rnn/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
a
car_history_rnn/rnn/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ś
car_history_rnn/rnn/rangeRangecar_history_rnn/rnn/range/startcar_history_rnn/rnn/Rankcar_history_rnn/rnn/range/delta*
_output_shapes
:*

Tidx0
v
%car_history_rnn/rnn/concat_1/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
c
!car_history_rnn/rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ç
car_history_rnn/rnn/concat_1ConcatV2%car_history_rnn/rnn/concat_1/values_0car_history_rnn/rnn/range!car_history_rnn/rnn/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
Î
car_history_rnn/rnn/transpose	Transpose8car_history_rnn/rnn/TensorArrayStack/TensorArrayGatherV3car_history_rnn/rnn/concat_1*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ *
Tperm0*
T0
W
car_history_rnn/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
m
car_history_rnn/subSubtraj_lengthscar_history_rnn/sub/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
W
car_history_rnn/add/yConst*
value	B : *
dtype0*
_output_shapes
: 
t
car_history_rnn/addAddcar_history_rnn/subcar_history_rnn/add/y*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
r
car_history_rnn/ShapeShapecar_history_rnn/rnn/transpose*
T0*
out_type0*
_output_shapes
:
m
#car_history_rnn/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
o
%car_history_rnn/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
o
%car_history_rnn/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
É
car_history_rnn/strided_sliceStridedSlicecar_history_rnn/Shape#car_history_rnn/strided_slice/stack%car_history_rnn/strided_slice/stack_1%car_history_rnn/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
_
car_history_rnn/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
_
car_history_rnn/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ž
car_history_rnn/range_1Rangecar_history_rnn/range_1/startcar_history_rnn/strided_slicecar_history_rnn/range_1/delta*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

car_history_rnn/stackPackcar_history_rnn/range_1car_history_rnn/add*
T0*

axis*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˘
car_history_rnn/GatherNdGatherNdcar_history_rnn/rnn/transposecar_history_rnn/stack*
Tindices0*
Tparams0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
s
Shape_2Shape,features_standardization/car1_future/truediv*
_output_shapes
:*
T0*
out_type0
_
strided_slice_2/stackConst*
valueB: *
dtype0*
_output_shapes
:
a
strided_slice_2/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
a
strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

strided_slice_2StridedSliceShape_2strided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
T
Tile_2/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
w
Tile_2/multiplesPackstrided_slice_2Tile_2/multiples/1*
T0*

axis *
N*
_output_shapes
:

Tile_2Tiledata_rearranging/concat_1Tile_2/multiples*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0*
T0
s
Shape_3Shape,features_standardization/car1_future/truediv*
_output_shapes
:*
T0*
out_type0
_
strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:
a
strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

strided_slice_3StridedSliceShape_3strided_slice_3/stackstrided_slice_3/stack_1strided_slice_3/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
T
Tile_3/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
w
Tile_3/multiplesPackstrided_slice_3Tile_3/multiples/1*
T0*

axis *
N*
_output_shapes
:

Tile_3Tiledata_rearranging/GatherNdTile_3/multiples*

Tmultiples0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
Shape_4Shape,features_standardization/car1_future/truediv*
T0*
out_type0*
_output_shapes
:
_
strided_slice_4/stackConst*
valueB: *
dtype0*
_output_shapes
:
a
strided_slice_4/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_4/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

strided_slice_4StridedSliceShape_4strided_slice_4/stackstrided_slice_4/stack_1strided_slice_4/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
T
Tile_4/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
w
Tile_4/multiplesPackstrided_slice_4Tile_4/multiples/1*
T0*

axis *
N*
_output_shapes
:
~
Tile_4Tilecar_history_rnn/GatherNdTile_4/multiples*

Tmultiples0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

ecar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform/shapeConst*W
_classM
KIloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel*
valueB"       *
dtype0*
_output_shapes
:

ccar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform/minConst*W
_classM
KIloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel*
valueB
 *ťrËž*
dtype0*
_output_shapes
: 

ccar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform/maxConst*W
_classM
KIloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel*
valueB
 *ťrË>*
dtype0*
_output_shapes
: 

mcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform/RandomUniformRandomUniformecar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

: *

seed *
T0*W
_classM
KIloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel*
seed2 
Ž
ccar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform/subSubccar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform/maxccar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform/min*
T0*W
_classM
KIloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel*
_output_shapes
: 
Ŕ
ccar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform/mulMulmcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform/RandomUniformccar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform/sub*
T0*W
_classM
KIloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel*
_output_shapes

: 
˛
_car_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniformAddccar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform/mulccar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform/min*
T0*W
_classM
KIloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel*
_output_shapes

: 

Dcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel
VariableV2*
shared_name *W
_classM
KIloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel*
	container *
shape
: *
dtype0*
_output_shapes

: 
§
Kcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel/AssignAssignDcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel_car_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform*
use_locking(*
T0*W
_classM
KIloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel*
validate_shape(*
_output_shapes

: 

Icar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel/readIdentityDcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel*
T0*W
_classM
KIloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel*
_output_shapes

: 
ř
Tcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/bias/Initializer/zerosConst*U
_classK
IGloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_c/bias*
valueB *    *
dtype0*
_output_shapes
: 

Bcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/bias
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *U
_classK
IGloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_c/bias*
	container 

Icar_future_rnn/car1/initial_state_projection/cell_0/initial_c/bias/AssignAssignBcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/biasTcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/bias/Initializer/zeros*U
_classK
IGloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_c/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

Gcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/bias/readIdentityBcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/bias*
T0*U
_classK
IGloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_c/bias*
_output_shapes
: 
ů
Dcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/MatMulMatMulTile_3Icar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( *
transpose_b( 
¨
Ecar_future_rnn/car1/initial_state_projection/cell_0/initial_c/BiasAddBiasAddDcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/MatMulGcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
Ă
Bcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/TanhTanhEcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

ecar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform/shapeConst*W
_classM
KIloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel*
valueB"       *
dtype0*
_output_shapes
:

ccar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform/minConst*W
_classM
KIloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel*
valueB
 *ťrËž*
dtype0*
_output_shapes
: 

ccar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *W
_classM
KIloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel*
valueB
 *ťrË>*
dtype0

mcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform/RandomUniformRandomUniformecar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform/shape*
_output_shapes

: *

seed *
T0*W
_classM
KIloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel*
seed2 *
dtype0
Ž
ccar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform/subSubccar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform/maxccar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform/min*
T0*W
_classM
KIloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel*
_output_shapes
: 
Ŕ
ccar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform/mulMulmcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform/RandomUniformccar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform/sub*
T0*W
_classM
KIloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel*
_output_shapes

: 
˛
_car_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniformAddccar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform/mulccar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform/min*
T0*W
_classM
KIloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel*
_output_shapes

: 

Dcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel
VariableV2*
dtype0*
_output_shapes

: *
shared_name *W
_classM
KIloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel*
	container *
shape
: 
§
Kcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel/AssignAssignDcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel_car_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform*
_output_shapes

: *
use_locking(*
T0*W
_classM
KIloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel*
validate_shape(

Icar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel/readIdentityDcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel*
T0*W
_classM
KIloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel*
_output_shapes

: 
ř
Tcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/bias/Initializer/zerosConst*U
_classK
IGloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_h/bias*
valueB *    *
dtype0*
_output_shapes
: 

Bcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/bias
VariableV2*
dtype0*
_output_shapes
: *
shared_name *U
_classK
IGloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_h/bias*
	container *
shape: 

Icar_future_rnn/car1/initial_state_projection/cell_0/initial_h/bias/AssignAssignBcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/biasTcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/bias/Initializer/zeros*
use_locking(*
T0*U
_classK
IGloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_h/bias*
validate_shape(*
_output_shapes
: 

Gcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/bias/readIdentityBcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/bias*
T0*U
_classK
IGloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_h/bias*
_output_shapes
: 
ů
Dcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/MatMulMatMulTile_3Icar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( *
transpose_b( *
T0
¨
Ecar_future_rnn/car1/initial_state_projection/cell_0/initial_h/BiasAddBiasAddDcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/MatMulGcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ă
Bcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/TanhTanhEcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
o
-car_future_rnn/car1/bidirectional_rnn/fw/RankConst*
_output_shapes
: *
value	B :*
dtype0
v
4car_future_rnn/car1/bidirectional_rnn/fw/range/startConst*
_output_shapes
: *
value	B :*
dtype0
v
4car_future_rnn/car1/bidirectional_rnn/fw/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
ú
.car_future_rnn/car1/bidirectional_rnn/fw/rangeRange4car_future_rnn/car1/bidirectional_rnn/fw/range/start-car_future_rnn/car1/bidirectional_rnn/fw/Rank4car_future_rnn/car1/bidirectional_rnn/fw/range/delta*
_output_shapes
:*

Tidx0

8car_future_rnn/car1/bidirectional_rnn/fw/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
v
4car_future_rnn/car1/bidirectional_rnn/fw/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 

/car_future_rnn/car1/bidirectional_rnn/fw/concatConcatV28car_future_rnn/car1/bidirectional_rnn/fw/concat/values_0.car_future_rnn/car1/bidirectional_rnn/fw/range4car_future_rnn/car1/bidirectional_rnn/fw/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
á
2car_future_rnn/car1/bidirectional_rnn/fw/transpose	Transpose,features_standardization/car1_future/truediv/car_future_rnn/car1/bidirectional_rnn/fw/concat*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0
Ł
1car_future_rnn/car1/bidirectional_rnn/fw/fw/ShapeShape2car_future_rnn/car1/bidirectional_rnn/fw/transpose*
out_type0*
_output_shapes
:*
T0

?car_future_rnn/car1/bidirectional_rnn/fw/fw/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:

Acar_future_rnn/car1/bidirectional_rnn/fw/fw/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0

Acar_future_rnn/car1/bidirectional_rnn/fw/fw/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ő
9car_future_rnn/car1/bidirectional_rnn/fw/fw/strided_sliceStridedSlice1car_future_rnn/car1/bidirectional_rnn/fw/fw/Shape?car_future_rnn/car1/bidirectional_rnn/fw/fw/strided_slice/stackAcar_future_rnn/car1/bidirectional_rnn/fw/fw/strided_slice/stack_1Acar_future_rnn/car1/bidirectional_rnn/fw/fw/strided_slice/stack_2*
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask 
Ľ
3car_future_rnn/car1/bidirectional_rnn/fw/fw/Shape_1Shape2car_future_rnn/car1/bidirectional_rnn/fw/transpose*
T0*
out_type0*
_output_shapes
:

Acar_future_rnn/car1/bidirectional_rnn/fw/fw/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

Ccar_future_rnn/car1/bidirectional_rnn/fw/fw/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

Ccar_future_rnn/car1/bidirectional_rnn/fw/fw/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ß
;car_future_rnn/car1/bidirectional_rnn/fw/fw/strided_slice_1StridedSlice3car_future_rnn/car1/bidirectional_rnn/fw/fw/Shape_1Acar_future_rnn/car1/bidirectional_rnn/fw/fw/strided_slice_1/stackCcar_future_rnn/car1/bidirectional_rnn/fw/fw/strided_slice_1/stack_1Ccar_future_rnn/car1/bidirectional_rnn/fw/fw/strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ľ
3car_future_rnn/car1/bidirectional_rnn/fw/fw/Shape_2Shape2car_future_rnn/car1/bidirectional_rnn/fw/transpose*
T0*
out_type0*
_output_shapes
:

Acar_future_rnn/car1/bidirectional_rnn/fw/fw/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:

Ccar_future_rnn/car1/bidirectional_rnn/fw/fw/strided_slice_2/stack_1Const*
_output_shapes
:*
valueB:*
dtype0

Ccar_future_rnn/car1/bidirectional_rnn/fw/fw/strided_slice_2/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
ß
;car_future_rnn/car1/bidirectional_rnn/fw/fw/strided_slice_2StridedSlice3car_future_rnn/car1/bidirectional_rnn/fw/fw/Shape_2Acar_future_rnn/car1/bidirectional_rnn/fw/fw/strided_slice_2/stackCcar_future_rnn/car1/bidirectional_rnn/fw/fw/strided_slice_2/stack_1Ccar_future_rnn/car1/bidirectional_rnn/fw/fw/strided_slice_2/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
|
:car_future_rnn/car1/bidirectional_rnn/fw/fw/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
î
6car_future_rnn/car1/bidirectional_rnn/fw/fw/ExpandDims
ExpandDims;car_future_rnn/car1/bidirectional_rnn/fw/fw/strided_slice_2:car_future_rnn/car1/bidirectional_rnn/fw/fw/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
{
1car_future_rnn/car1/bidirectional_rnn/fw/fw/ConstConst*
valueB: *
dtype0*
_output_shapes
:
y
7car_future_rnn/car1/bidirectional_rnn/fw/fw/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

2car_future_rnn/car1/bidirectional_rnn/fw/fw/concatConcatV26car_future_rnn/car1/bidirectional_rnn/fw/fw/ExpandDims1car_future_rnn/car1/bidirectional_rnn/fw/fw/Const7car_future_rnn/car1/bidirectional_rnn/fw/fw/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
|
7car_future_rnn/car1/bidirectional_rnn/fw/fw/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ř
1car_future_rnn/car1/bidirectional_rnn/fw/fw/zerosFill2car_future_rnn/car1/bidirectional_rnn/fw/fw/concat7car_future_rnn/car1/bidirectional_rnn/fw/fw/zeros/Const*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
r
0car_future_rnn/car1/bidirectional_rnn/fw/fw/timeConst*
dtype0*
_output_shapes
: *
value	B : 
Ě
7car_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayTensorArrayV3;car_future_rnn/car1/bidirectional_rnn/fw/fw/strided_slice_1*W
tensor_array_nameB@car_future_rnn/car1/bidirectional_rnn/fw/fw/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *
element_shape:*
dynamic_size( *
clear_after_read(
Í
9car_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArray_1TensorArrayV3;car_future_rnn/car1/bidirectional_rnn/fw/fw/strided_slice_1*
dynamic_size( *
clear_after_read(*V
tensor_array_nameA?car_future_rnn/car1/bidirectional_rnn/fw/fw/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *
element_shape:
ś
Dcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayUnstack/ShapeShape2car_future_rnn/car1/bidirectional_rnn/fw/transpose*
T0*
out_type0*
_output_shapes
:

Rcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Tcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Tcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
´
Lcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_sliceStridedSliceDcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayUnstack/ShapeRcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stackTcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_1Tcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0

Jcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 

Jcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
ä
Dcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayUnstack/rangeRangeJcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayUnstack/range/startLcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_sliceJcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayUnstack/range/delta*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ř
fcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV39car_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArray_1Dcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayUnstack/range2car_future_rnn/car1/bidirectional_rnn/fw/transpose;car_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArray_1:1*
_output_shapes
: *
T0*E
_class;
97loc:@car_future_rnn/car1/bidirectional_rnn/fw/transpose
ˇ
7car_future_rnn/car1/bidirectional_rnn/fw/fw/while/EnterEnter0car_future_rnn/car1/bidirectional_rnn/fw/fw/time*
_output_shapes
: *t

frame_namefdcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/car_future_rnn/car1/bidirectional_rnn/fw/fw/while/*
T0*
is_constant( *
parallel_iterations 
Â
9car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Enter_1Enter9car_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArray:1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *t

frame_namefdcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/car_future_rnn/car1/bidirectional_rnn/fw/fw/while/
Ü
9car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Enter_2EnterBcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/Tanh*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *t

frame_namefdcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/car_future_rnn/car1/bidirectional_rnn/fw/fw/while/
Ü
9car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Enter_3EnterBcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/Tanh*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *t

frame_namefdcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/car_future_rnn/car1/bidirectional_rnn/fw/fw/while/
ć
7car_future_rnn/car1/bidirectional_rnn/fw/fw/while/MergeMerge7car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Enter?car_future_rnn/car1/bidirectional_rnn/fw/fw/while/NextIteration*
T0*
N*
_output_shapes
: : 
ě
9car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Merge_1Merge9car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Enter_1Acar_future_rnn/car1/bidirectional_rnn/fw/fw/while/NextIteration_1*
N*
_output_shapes
: : *
T0
ý
9car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Merge_2Merge9car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Enter_2Acar_future_rnn/car1/bidirectional_rnn/fw/fw/while/NextIteration_2*
T0*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙ : 
ý
9car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Merge_3Merge9car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Enter_3Acar_future_rnn/car1/bidirectional_rnn/fw/fw/while/NextIteration_3*
T0*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙ : 
Ç
<car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Less/EnterEnter;car_future_rnn/car1/bidirectional_rnn/fw/fw/strided_slice_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *t

frame_namefdcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/car_future_rnn/car1/bidirectional_rnn/fw/fw/while/
Ö
6car_future_rnn/car1/bidirectional_rnn/fw/fw/while/LessLess7car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Merge<car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Less/Enter*
_output_shapes
: *
T0

:car_future_rnn/car1/bidirectional_rnn/fw/fw/while/LoopCondLoopCond6car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Less*
_output_shapes
: 
Ś
8car_future_rnn/car1/bidirectional_rnn/fw/fw/while/SwitchSwitch7car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Merge:car_future_rnn/car1/bidirectional_rnn/fw/fw/while/LoopCond*
T0*J
_class@
><loc:@car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Merge*
_output_shapes
: : 
Ź
:car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Switch_1Switch9car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Merge_1:car_future_rnn/car1/bidirectional_rnn/fw/fw/while/LoopCond*
_output_shapes
: : *
T0*L
_classB
@>loc:@car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Merge_1
Î
:car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Switch_2Switch9car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Merge_2:car_future_rnn/car1/bidirectional_rnn/fw/fw/while/LoopCond*
T0*L
_classB
@>loc:@car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Merge_2*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙ :˙˙˙˙˙˙˙˙˙ 
Î
:car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Switch_3Switch9car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Merge_3:car_future_rnn/car1/bidirectional_rnn/fw/fw/while/LoopCond*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙ :˙˙˙˙˙˙˙˙˙ *
T0*L
_classB
@>loc:@car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Merge_3
Ł
:car_future_rnn/car1/bidirectional_rnn/fw/fw/while/IdentityIdentity:car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Switch:1*
T0*
_output_shapes
: 
§
<car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Identity_1Identity<car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Switch_1:1*
T0*
_output_shapes
: 
¸
<car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Identity_2Identity<car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Switch_2:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
¸
<car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Identity_3Identity<car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Switch_3:1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
Ö
Icar_future_rnn/car1/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/EnterEnter9car_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArray_1*
parallel_iterations *
_output_shapes
:*t

frame_namefdcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/car_future_rnn/car1/bidirectional_rnn/fw/fw/while/*
T0*
is_constant(

Kcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1Enterfcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
_output_shapes
: *t

frame_namefdcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/car_future_rnn/car1/bidirectional_rnn/fw/fw/while/*
T0*
is_constant(*
parallel_iterations 
â
Ccar_future_rnn/car1/bidirectional_rnn/fw/fw/while/TensorArrayReadV3TensorArrayReadV3Icar_future_rnn/car1/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter:car_future_rnn/car1/bidirectional_rnn/fw/fw/while/IdentityKcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
÷
xcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat/axisConst;^car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ă
scar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concatConcatV2Ccar_future_rnn/car1/bidirectional_rnn/fw/fw/while/TensorArrayReadV3<car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Identity_3xcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat/axis*

Tidx0*
T0*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙&
Č
car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/shapeConst*s
_classi
geloc:@car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
valueB"&      *
dtype0*
_output_shapes
:
š
car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/minConst*s
_classi
geloc:@car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
valueB
 *ŽBž*
dtype0*
_output_shapes
: 
š
car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *s
_classi
geloc:@car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
valueB
 *ŽB>
ä
car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformcar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	&*

seed *
T0*s
_classi
geloc:@car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
seed2 

car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/subSubcar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/maxcar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/min*
T0*s
_classi
geloc:@car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
_output_shapes
: 
˛
car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/mulMulcar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformcar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/sub*
T0*s
_classi
geloc:@car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
_output_shapes
:	&
Ł
{car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniformAddcar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/mulcar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/min*
_output_shapes
:	&*
T0*s
_classi
geloc:@car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel
Ë
`car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel
VariableV2*
shared_name *s
_classi
geloc:@car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
	container *
shape:	&*
dtype0*
_output_shapes
:	&

gcar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AssignAssign`car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel{car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform*
_output_shapes
:	&*
use_locking(*
T0*s
_classi
geloc:@car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(
ý
ecar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/readIdentity`car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
_output_shapes
:	&*
T0
ˇ
ycar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/EnterEnterecar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:	&*t

frame_namefdcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/car_future_rnn/car1/bidirectional_rnn/fw/fw/while/
Ć
scar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMulMatMulscar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concatycar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
˝
car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/shapeConst*q
_classg
ecloc:@car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
valueB:*
dtype0*
_output_shapes
:
ľ
}car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/minConst*q
_classg
ecloc:@car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
valueB
 *qÄž*
dtype0*
_output_shapes
: 
ľ
}car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/maxConst*q
_classg
ecloc:@car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
valueB
 *qÄ>*
dtype0*
_output_shapes
: 
Ů
car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/RandomUniformRandomUniformcar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/shape*q
_classg
ecloc:@car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
seed2 *
dtype0*
_output_shapes	
:*

seed *
T0

}car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/subSub}car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/max}car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/min*
T0*q
_classg
ecloc:@car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
_output_shapes
: 
Ś
}car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/mulMulcar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/RandomUniform}car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/sub*
T0*q
_classg
ecloc:@car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
_output_shapes	
:

ycar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniformAdd}car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/mul}car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/min*q
_classg
ecloc:@car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
_output_shapes	
:*
T0
ż
^car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *q
_classg
ecloc:@car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
	container *
shape:

ecar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AssignAssign^car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasycar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*q
_classg
ecloc:@car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias
ő
ccar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/readIdentity^car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
_output_shapes	
:*
T0
˛
zcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/EnterEnterccar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:*t

frame_namefdcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/car_future_rnn/car1/bidirectional_rnn/fw/fw/while/
ş
tcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAddBiasAddscar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMulzcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ń
rcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/ConstConst;^car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Identity*
dtype0*
_output_shapes
: *
value	B :
ű
|car_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split/split_dimConst;^car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
ë
rcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/splitSplit|car_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split/split_dimtcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙ :˙˙˙˙˙˙˙˙˙ :˙˙˙˙˙˙˙˙˙ :˙˙˙˙˙˙˙˙˙ *
	num_split
Ą
qcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/TanhTanhtcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
ô
rcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add/yConst;^car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 

pcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/addAddtcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:2rcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ł
tcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/SigmoidSigmoidpcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
Ý
pcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mulMul<car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Identity_2tcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
§
vcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_1Sigmoidrcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

rcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1Mulvcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_1qcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

rcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1Addpcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mulrcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ą
scar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_1Tanhrcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Š
vcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_2Sigmoidtcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:3*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

rcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2Mulscar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_1vcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
î
[car_future_rnn/car1/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter7car_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArray*
T0*
_class{
ywloc:@car_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2*
parallel_iterations *
is_constant(*
_output_shapes
:*t

frame_namefdcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/car_future_rnn/car1/bidirectional_rnn/fw/fw/while/
ß
Ucar_future_rnn/car1/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3[car_future_rnn/car1/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Identityrcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2<car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Identity_1*
T0*
_class{
ywloc:@car_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2*
_output_shapes
: 
ś
7car_future_rnn/car1/bidirectional_rnn/fw/fw/while/add/yConst;^car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ň
5car_future_rnn/car1/bidirectional_rnn/fw/fw/while/addAdd:car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Identity7car_future_rnn/car1/bidirectional_rnn/fw/fw/while/add/y*
T0*
_output_shapes
: 
¨
?car_future_rnn/car1/bidirectional_rnn/fw/fw/while/NextIterationNextIteration5car_future_rnn/car1/bidirectional_rnn/fw/fw/while/add*
T0*
_output_shapes
: 
Ę
Acar_future_rnn/car1/bidirectional_rnn/fw/fw/while/NextIteration_1NextIterationUcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
ř
Acar_future_rnn/car1/bidirectional_rnn/fw/fw/while/NextIteration_2NextIterationrcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ř
Acar_future_rnn/car1/bidirectional_rnn/fw/fw/while/NextIteration_3NextIterationrcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

6car_future_rnn/car1/bidirectional_rnn/fw/fw/while/ExitExit8car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Switch*
T0*
_output_shapes
: 

8car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Exit_1Exit:car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Switch_1*
_output_shapes
: *
T0
Ž
8car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Exit_2Exit:car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Switch_2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
Ž
8car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Exit_3Exit:car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Switch_3*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
ş
Ncar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArraySizeV3TensorArraySizeV37car_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArray8car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Exit_1*J
_class@
><loc:@car_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArray*
_output_shapes
: 
Ö
Hcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayStack/range/startConst*
value	B : *J
_class@
><loc:@car_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArray*
dtype0*
_output_shapes
: 
Ö
Hcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayStack/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :*J
_class@
><loc:@car_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArray
Ź
Bcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayStack/rangeRangeHcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayStack/range/startNcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArraySizeV3Hcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayStack/range/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*J
_class@
><loc:@car_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArray
Ę
Pcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV37car_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayBcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayStack/range8car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Exit_1*J
_class@
><loc:@car_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArray*
dtype0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
element_shape:˙˙˙˙˙˙˙˙˙ 
}
3car_future_rnn/car1/bidirectional_rnn/fw/fw/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
r
0car_future_rnn/car1/bidirectional_rnn/fw/fw/RankConst*
value	B :*
dtype0*
_output_shapes
: 
y
7car_future_rnn/car1/bidirectional_rnn/fw/fw/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
y
7car_future_rnn/car1/bidirectional_rnn/fw/fw/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :

1car_future_rnn/car1/bidirectional_rnn/fw/fw/rangeRange7car_future_rnn/car1/bidirectional_rnn/fw/fw/range/start0car_future_rnn/car1/bidirectional_rnn/fw/fw/Rank7car_future_rnn/car1/bidirectional_rnn/fw/fw/range/delta*
_output_shapes
:*

Tidx0

=car_future_rnn/car1/bidirectional_rnn/fw/fw/concat_1/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
{
9car_future_rnn/car1/bidirectional_rnn/fw/fw/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
§
4car_future_rnn/car1/bidirectional_rnn/fw/fw/concat_1ConcatV2=car_future_rnn/car1/bidirectional_rnn/fw/fw/concat_1/values_01car_future_rnn/car1/bidirectional_rnn/fw/fw/range9car_future_rnn/car1/bidirectional_rnn/fw/fw/concat_1/axis*
_output_shapes
:*

Tidx0*
T0*
N

5car_future_rnn/car1/bidirectional_rnn/fw/fw/transpose	TransposePcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV34car_future_rnn/car1/bidirectional_rnn/fw/fw/concat_1*+
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
Tperm0*
T0

7car_future_rnn/car1/bidirectional_rnn/bw/ReverseV2/axisConst*
valueB:*
dtype0*
_output_shapes
:
č
2car_future_rnn/car1/bidirectional_rnn/bw/ReverseV2	ReverseV2,features_standardization/car1_future/truediv7car_future_rnn/car1/bidirectional_rnn/bw/ReverseV2/axis*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
o
-car_future_rnn/car1/bidirectional_rnn/bw/RankConst*
value	B :*
dtype0*
_output_shapes
: 
v
4car_future_rnn/car1/bidirectional_rnn/bw/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
v
4car_future_rnn/car1/bidirectional_rnn/bw/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
ú
.car_future_rnn/car1/bidirectional_rnn/bw/rangeRange4car_future_rnn/car1/bidirectional_rnn/bw/range/start-car_future_rnn/car1/bidirectional_rnn/bw/Rank4car_future_rnn/car1/bidirectional_rnn/bw/range/delta*
_output_shapes
:*

Tidx0

8car_future_rnn/car1/bidirectional_rnn/bw/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
v
4car_future_rnn/car1/bidirectional_rnn/bw/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

/car_future_rnn/car1/bidirectional_rnn/bw/concatConcatV28car_future_rnn/car1/bidirectional_rnn/bw/concat/values_0.car_future_rnn/car1/bidirectional_rnn/bw/range4car_future_rnn/car1/bidirectional_rnn/bw/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N
ç
2car_future_rnn/car1/bidirectional_rnn/bw/transpose	Transpose2car_future_rnn/car1/bidirectional_rnn/bw/ReverseV2/car_future_rnn/car1/bidirectional_rnn/bw/concat*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0*
T0
Ł
1car_future_rnn/car1/bidirectional_rnn/bw/bw/ShapeShape2car_future_rnn/car1/bidirectional_rnn/bw/transpose*
T0*
out_type0*
_output_shapes
:

?car_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Acar_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Acar_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ő
9car_future_rnn/car1/bidirectional_rnn/bw/bw/strided_sliceStridedSlice1car_future_rnn/car1/bidirectional_rnn/bw/bw/Shape?car_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slice/stackAcar_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slice/stack_1Acar_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
˛
pcar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ř
lcar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims
ExpandDims9car_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slicepcar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
ą
gcar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ż
mcar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ô
hcar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concatConcatV2lcar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDimsgcar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/Constmcar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
´
rcar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
Ü
ncar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_1
ExpandDims9car_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slicercar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_1/dim*
_output_shapes
:*

Tdim0*
T0
ł
icar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
˛
mcar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ú
gcar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zerosFillhcar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concatmcar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
´
rcar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ü
ncar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_2
ExpandDims9car_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slicercar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_2/dim*
_output_shapes
:*

Tdim0*
T0
ł
icar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
ą
ocar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ü
jcar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concat_1ConcatV2ncar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_2icar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/Const_2ocar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
´
rcar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_3/dimConst*
dtype0*
_output_shapes
: *
value	B : 
Ü
ncar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_3
ExpandDims9car_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slicercar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_3/dim*

Tdim0*
T0*
_output_shapes
:
ł
icar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/Const_3Const*
valueB: *
dtype0*
_output_shapes
:
´
ocar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

icar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros_1Filljcar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concat_1ocar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros_1/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ľ
3car_future_rnn/car1/bidirectional_rnn/bw/bw/Shape_1Shape2car_future_rnn/car1/bidirectional_rnn/bw/transpose*
T0*
out_type0*
_output_shapes
:

Acar_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

Ccar_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

Ccar_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ß
;car_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slice_1StridedSlice3car_future_rnn/car1/bidirectional_rnn/bw/bw/Shape_1Acar_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slice_1/stackCcar_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slice_1/stack_1Ccar_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slice_1/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
Ľ
3car_future_rnn/car1/bidirectional_rnn/bw/bw/Shape_2Shape2car_future_rnn/car1/bidirectional_rnn/bw/transpose*
out_type0*
_output_shapes
:*
T0

Acar_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:

Ccar_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ccar_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ß
;car_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slice_2StridedSlice3car_future_rnn/car1/bidirectional_rnn/bw/bw/Shape_2Acar_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slice_2/stackCcar_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slice_2/stack_1Ccar_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slice_2/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
|
:car_future_rnn/car1/bidirectional_rnn/bw/bw/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
î
6car_future_rnn/car1/bidirectional_rnn/bw/bw/ExpandDims
ExpandDims;car_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slice_2:car_future_rnn/car1/bidirectional_rnn/bw/bw/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
{
1car_future_rnn/car1/bidirectional_rnn/bw/bw/ConstConst*
_output_shapes
:*
valueB: *
dtype0
y
7car_future_rnn/car1/bidirectional_rnn/bw/bw/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

2car_future_rnn/car1/bidirectional_rnn/bw/bw/concatConcatV26car_future_rnn/car1/bidirectional_rnn/bw/bw/ExpandDims1car_future_rnn/car1/bidirectional_rnn/bw/bw/Const7car_future_rnn/car1/bidirectional_rnn/bw/bw/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
|
7car_future_rnn/car1/bidirectional_rnn/bw/bw/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ř
1car_future_rnn/car1/bidirectional_rnn/bw/bw/zerosFill2car_future_rnn/car1/bidirectional_rnn/bw/bw/concat7car_future_rnn/car1/bidirectional_rnn/bw/bw/zeros/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
r
0car_future_rnn/car1/bidirectional_rnn/bw/bw/timeConst*
value	B : *
dtype0*
_output_shapes
: 
Ě
7car_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayTensorArrayV3;car_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slice_1*W
tensor_array_nameB@car_future_rnn/car1/bidirectional_rnn/bw/bw/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *
element_shape:*
dynamic_size( *
clear_after_read(
Í
9car_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArray_1TensorArrayV3;car_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slice_1*V
tensor_array_nameA?car_future_rnn/car1/bidirectional_rnn/bw/bw/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *
element_shape:*
dynamic_size( *
clear_after_read(
ś
Dcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayUnstack/ShapeShape2car_future_rnn/car1/bidirectional_rnn/bw/transpose*
T0*
out_type0*
_output_shapes
:

Rcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Tcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Tcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
´
Lcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_sliceStridedSliceDcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayUnstack/ShapeRcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stackTcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_1Tcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 

Jcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 

Jcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayUnstack/range/deltaConst*
_output_shapes
: *
value	B :*
dtype0
ä
Dcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayUnstack/rangeRangeJcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayUnstack/range/startLcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_sliceJcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayUnstack/range/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
Ř
fcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV39car_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArray_1Dcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayUnstack/range2car_future_rnn/car1/bidirectional_rnn/bw/transpose;car_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArray_1:1*
T0*E
_class;
97loc:@car_future_rnn/car1/bidirectional_rnn/bw/transpose*
_output_shapes
: 
ˇ
7car_future_rnn/car1/bidirectional_rnn/bw/bw/while/EnterEnter0car_future_rnn/car1/bidirectional_rnn/bw/bw/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *t

frame_namefdcar_future_rnn/car1/bidirectional_rnn/bw/bw/while/car_future_rnn/car1/bidirectional_rnn/bw/bw/while/
Â
9car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Enter_1Enter9car_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArray:1*
is_constant( *
parallel_iterations *
_output_shapes
: *t

frame_namefdcar_future_rnn/car1/bidirectional_rnn/bw/bw/while/car_future_rnn/car1/bidirectional_rnn/bw/bw/while/*
T0

9car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Enter_2Entergcar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *t

frame_namefdcar_future_rnn/car1/bidirectional_rnn/bw/bw/while/car_future_rnn/car1/bidirectional_rnn/bw/bw/while/*
T0*
is_constant( *
parallel_iterations 

9car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Enter_3Entericar_future_rnn/car1/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros_1*
parallel_iterations *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *t

frame_namefdcar_future_rnn/car1/bidirectional_rnn/bw/bw/while/car_future_rnn/car1/bidirectional_rnn/bw/bw/while/*
T0*
is_constant( 
ć
7car_future_rnn/car1/bidirectional_rnn/bw/bw/while/MergeMerge7car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Enter?car_future_rnn/car1/bidirectional_rnn/bw/bw/while/NextIteration*
T0*
N*
_output_shapes
: : 
ě
9car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Merge_1Merge9car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Enter_1Acar_future_rnn/car1/bidirectional_rnn/bw/bw/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
ý
9car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Merge_2Merge9car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Enter_2Acar_future_rnn/car1/bidirectional_rnn/bw/bw/while/NextIteration_2*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙ : *
T0
ý
9car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Merge_3Merge9car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Enter_3Acar_future_rnn/car1/bidirectional_rnn/bw/bw/while/NextIteration_3*
T0*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙ : 
Ç
<car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Less/EnterEnter;car_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slice_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *t

frame_namefdcar_future_rnn/car1/bidirectional_rnn/bw/bw/while/car_future_rnn/car1/bidirectional_rnn/bw/bw/while/
Ö
6car_future_rnn/car1/bidirectional_rnn/bw/bw/while/LessLess7car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Merge<car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Less/Enter*
T0*
_output_shapes
: 

:car_future_rnn/car1/bidirectional_rnn/bw/bw/while/LoopCondLoopCond6car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Less*
_output_shapes
: 
Ś
8car_future_rnn/car1/bidirectional_rnn/bw/bw/while/SwitchSwitch7car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Merge:car_future_rnn/car1/bidirectional_rnn/bw/bw/while/LoopCond*
T0*J
_class@
><loc:@car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Merge*
_output_shapes
: : 
Ź
:car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Switch_1Switch9car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Merge_1:car_future_rnn/car1/bidirectional_rnn/bw/bw/while/LoopCond*
_output_shapes
: : *
T0*L
_classB
@>loc:@car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Merge_1
Î
:car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Switch_2Switch9car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Merge_2:car_future_rnn/car1/bidirectional_rnn/bw/bw/while/LoopCond*
T0*L
_classB
@>loc:@car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Merge_2*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙ :˙˙˙˙˙˙˙˙˙ 
Î
:car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Switch_3Switch9car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Merge_3:car_future_rnn/car1/bidirectional_rnn/bw/bw/while/LoopCond*
T0*L
_classB
@>loc:@car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Merge_3*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙ :˙˙˙˙˙˙˙˙˙ 
Ł
:car_future_rnn/car1/bidirectional_rnn/bw/bw/while/IdentityIdentity:car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Switch:1*
T0*
_output_shapes
: 
§
<car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Identity_1Identity<car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Switch_1:1*
T0*
_output_shapes
: 
¸
<car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Identity_2Identity<car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Switch_2:1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
¸
<car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Identity_3Identity<car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Switch_3:1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
Ö
Icar_future_rnn/car1/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/EnterEnter9car_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*t

frame_namefdcar_future_rnn/car1/bidirectional_rnn/bw/bw/while/car_future_rnn/car1/bidirectional_rnn/bw/bw/while/

Kcar_future_rnn/car1/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1Enterfcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *t

frame_namefdcar_future_rnn/car1/bidirectional_rnn/bw/bw/while/car_future_rnn/car1/bidirectional_rnn/bw/bw/while/
â
Ccar_future_rnn/car1/bidirectional_rnn/bw/bw/while/TensorArrayReadV3TensorArrayReadV3Icar_future_rnn/car1/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter:car_future_rnn/car1/bidirectional_rnn/bw/bw/while/IdentityKcar_future_rnn/car1/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ů
zcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1/axisConst;^car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Identity*
dtype0*
_output_shapes
: *
value	B :
Ç
ucar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1ConcatV2Ccar_future_rnn/car1/bidirectional_rnn/bw/bw/while/TensorArrayReadV3<car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Identity_3zcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1/axis*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙&*

Tidx0*
T0
š
{car_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1/EnterEnterecar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:	&*t

frame_namefdcar_future_rnn/car1/bidirectional_rnn/bw/bw/while/car_future_rnn/car1/bidirectional_rnn/bw/bw/while/
Ě
ucar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1MatMulucar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1{car_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1/Enter*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
´
|car_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1/EnterEnterccar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read*
parallel_iterations *
_output_shapes	
:*t

frame_namefdcar_future_rnn/car1/bidirectional_rnn/bw/bw/while/car_future_rnn/car1/bidirectional_rnn/bw/bw/while/*
T0*
is_constant(
Ŕ
vcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1BiasAdducar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1|car_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1/Enter*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ó
tcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const_1Const;^car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
ý
~car_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1/split_dimConst;^car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
ń
tcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1Split~car_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1/split_dimvcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙ :˙˙˙˙˙˙˙˙˙ :˙˙˙˙˙˙˙˙˙ :˙˙˙˙˙˙˙˙˙ *
	num_split
Ľ
scar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_2Tanhvcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ö
tcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2/yConst;^car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 

rcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2Addvcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1:2tcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
§
vcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_3Sigmoidrcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
á
rcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3Mul<car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Identity_2vcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_3*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
Š
vcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_4Sigmoidtcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

rcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4Mulvcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_4scar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

rcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3Addrcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3rcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ą
scar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_3Tanhrcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
Ť
vcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_5Sigmoidvcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

rcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5Mulscar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_3vcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_5*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
î
[car_future_rnn/car1/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter7car_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArray*
_class{
ywloc:@car_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5*
parallel_iterations *
is_constant(*
_output_shapes
:*t

frame_namefdcar_future_rnn/car1/bidirectional_rnn/bw/bw/while/car_future_rnn/car1/bidirectional_rnn/bw/bw/while/*
T0
ß
Ucar_future_rnn/car1/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3[car_future_rnn/car1/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Identityrcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5<car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Identity_1*
T0*
_class{
ywloc:@car_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5*
_output_shapes
: 
ś
7car_future_rnn/car1/bidirectional_rnn/bw/bw/while/add/yConst;^car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Identity*
_output_shapes
: *
value	B :*
dtype0
Ň
5car_future_rnn/car1/bidirectional_rnn/bw/bw/while/addAdd:car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Identity7car_future_rnn/car1/bidirectional_rnn/bw/bw/while/add/y*
T0*
_output_shapes
: 
¨
?car_future_rnn/car1/bidirectional_rnn/bw/bw/while/NextIterationNextIteration5car_future_rnn/car1/bidirectional_rnn/bw/bw/while/add*
T0*
_output_shapes
: 
Ę
Acar_future_rnn/car1/bidirectional_rnn/bw/bw/while/NextIteration_1NextIterationUcar_future_rnn/car1/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
ř
Acar_future_rnn/car1/bidirectional_rnn/bw/bw/while/NextIteration_2NextIterationrcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ř
Acar_future_rnn/car1/bidirectional_rnn/bw/bw/while/NextIteration_3NextIterationrcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

6car_future_rnn/car1/bidirectional_rnn/bw/bw/while/ExitExit8car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Switch*
T0*
_output_shapes
: 

8car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Exit_1Exit:car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Switch_1*
_output_shapes
: *
T0
Ž
8car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Exit_2Exit:car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Switch_2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ž
8car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Exit_3Exit:car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Switch_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ş
Ncar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArraySizeV3TensorArraySizeV37car_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArray8car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Exit_1*J
_class@
><loc:@car_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArray*
_output_shapes
: 
Ö
Hcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayStack/range/startConst*
value	B : *J
_class@
><loc:@car_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArray*
dtype0*
_output_shapes
: 
Ö
Hcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayStack/range/deltaConst*
value	B :*J
_class@
><loc:@car_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArray*
dtype0*
_output_shapes
: 
Ź
Bcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayStack/rangeRangeHcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayStack/range/startNcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArraySizeV3Hcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayStack/range/delta*J
_class@
><loc:@car_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArray*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
Ę
Pcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV37car_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayBcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayStack/range8car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Exit_1*+
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
element_shape:˙˙˙˙˙˙˙˙˙ *J
_class@
><loc:@car_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArray*
dtype0
}
3car_future_rnn/car1/bidirectional_rnn/bw/bw/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
r
0car_future_rnn/car1/bidirectional_rnn/bw/bw/RankConst*
value	B :*
dtype0*
_output_shapes
: 
y
7car_future_rnn/car1/bidirectional_rnn/bw/bw/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
y
7car_future_rnn/car1/bidirectional_rnn/bw/bw/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

1car_future_rnn/car1/bidirectional_rnn/bw/bw/rangeRange7car_future_rnn/car1/bidirectional_rnn/bw/bw/range/start0car_future_rnn/car1/bidirectional_rnn/bw/bw/Rank7car_future_rnn/car1/bidirectional_rnn/bw/bw/range/delta*

Tidx0*
_output_shapes
:

=car_future_rnn/car1/bidirectional_rnn/bw/bw/concat_1/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
{
9car_future_rnn/car1/bidirectional_rnn/bw/bw/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
§
4car_future_rnn/car1/bidirectional_rnn/bw/bw/concat_1ConcatV2=car_future_rnn/car1/bidirectional_rnn/bw/bw/concat_1/values_01car_future_rnn/car1/bidirectional_rnn/bw/bw/range9car_future_rnn/car1/bidirectional_rnn/bw/bw/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:

5car_future_rnn/car1/bidirectional_rnn/bw/bw/transpose	TransposePcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV34car_future_rnn/car1/bidirectional_rnn/bw/bw/concat_1*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
Tperm0
l
"car_future_rnn/car1/ReverseV2/axisConst*
valueB:*
dtype0*
_output_shapes
:
Ç
car_future_rnn/car1/ReverseV2	ReverseV25car_future_rnn/car1/bidirectional_rnn/bw/bw/transpose"car_future_rnn/car1/ReverseV2/axis*

Tidx0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
a
car_future_rnn/car1/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 

car_future_rnn/car1/concatConcatV28car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Exit_28car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Exit_3car_future_rnn/car1/concat/axis*

Tidx0*
T0*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
i
'car_future_rnn/car1/concat_1/concat_dimConst*
dtype0*
_output_shapes
: *
value	B :
v
car_future_rnn/car1/concat_1Identitycar_future_rnn/car1/concat*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
c
!car_future_rnn/car1/concat_2/axisConst*
dtype0*
_output_shapes
: *
value	B :

car_future_rnn/car1/concat_2ConcatV28car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Exit_28car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Exit_3!car_future_rnn/car1/concat_2/axis*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*

Tidx0*
T0
i
'car_future_rnn/car1/concat_3/concat_dimConst*
dtype0*
_output_shapes
: *
value	B :
x
car_future_rnn/car1/concat_3Identitycar_future_rnn/car1/concat_2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
c
!car_future_rnn/car1/concat_4/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ď
car_future_rnn/car1/concat_4ConcatV2car_future_rnn/car1/concat_1car_future_rnn/car1/concat_3!car_future_rnn/car1/concat_4/axis*

Tidx0*
T0*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
M
concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 

concatConcatV2Tile_4car_future_rnn/car1/concat_4concat/axis*

Tidx0*
T0*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
˝
<encoder/p_z_x/dense0/kernel/Initializer/random_uniform/shapeConst*.
_class$
" loc:@encoder/p_z_x/dense0/kernel*
valueB"       *
dtype0*
_output_shapes
:
Ż
:encoder/p_z_x/dense0/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *.
_class$
" loc:@encoder/p_z_x/dense0/kernel*
valueB
 *=ž
Ż
:encoder/p_z_x/dense0/kernel/Initializer/random_uniform/maxConst*.
_class$
" loc:@encoder/p_z_x/dense0/kernel*
valueB
 *=>*
dtype0*
_output_shapes
: 

Dencoder/p_z_x/dense0/kernel/Initializer/random_uniform/RandomUniformRandomUniform<encoder/p_z_x/dense0/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	 *

seed *
T0*.
_class$
" loc:@encoder/p_z_x/dense0/kernel*
seed2 

:encoder/p_z_x/dense0/kernel/Initializer/random_uniform/subSub:encoder/p_z_x/dense0/kernel/Initializer/random_uniform/max:encoder/p_z_x/dense0/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*.
_class$
" loc:@encoder/p_z_x/dense0/kernel

:encoder/p_z_x/dense0/kernel/Initializer/random_uniform/mulMulDencoder/p_z_x/dense0/kernel/Initializer/random_uniform/RandomUniform:encoder/p_z_x/dense0/kernel/Initializer/random_uniform/sub*.
_class$
" loc:@encoder/p_z_x/dense0/kernel*
_output_shapes
:	 *
T0

6encoder/p_z_x/dense0/kernel/Initializer/random_uniformAdd:encoder/p_z_x/dense0/kernel/Initializer/random_uniform/mul:encoder/p_z_x/dense0/kernel/Initializer/random_uniform/min*
T0*.
_class$
" loc:@encoder/p_z_x/dense0/kernel*
_output_shapes
:	 
Á
encoder/p_z_x/dense0/kernel
VariableV2*
shared_name *.
_class$
" loc:@encoder/p_z_x/dense0/kernel*
	container *
shape:	 *
dtype0*
_output_shapes
:	 

"encoder/p_z_x/dense0/kernel/AssignAssignencoder/p_z_x/dense0/kernel6encoder/p_z_x/dense0/kernel/Initializer/random_uniform*
T0*.
_class$
" loc:@encoder/p_z_x/dense0/kernel*
validate_shape(*
_output_shapes
:	 *
use_locking(
Ł
 encoder/p_z_x/dense0/kernel/readIdentityencoder/p_z_x/dense0/kernel*
_output_shapes
:	 *
T0*.
_class$
" loc:@encoder/p_z_x/dense0/kernel
Ś
+encoder/p_z_x/dense0/bias/Initializer/zerosConst*,
_class"
 loc:@encoder/p_z_x/dense0/bias*
valueB*    *
dtype0*
_output_shapes
:
ł
encoder/p_z_x/dense0/bias
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *,
_class"
 loc:@encoder/p_z_x/dense0/bias*
	container 
î
 encoder/p_z_x/dense0/bias/AssignAssignencoder/p_z_x/dense0/bias+encoder/p_z_x/dense0/bias/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@encoder/p_z_x/dense0/bias*
validate_shape(*
_output_shapes
:

encoder/p_z_x/dense0/bias/readIdentityencoder/p_z_x/dense0/bias*,
_class"
 loc:@encoder/p_z_x/dense0/bias*
_output_shapes
:*
T0
§
encoder/p_z_x/dense0/MatMulMatMulconcat encoder/p_z_x/dense0/kernel/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
­
encoder/p_z_x/dense0/BiasAddBiasAddencoder/p_z_x/dense0/MatMulencoder/p_z_x/dense0/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
encoder/p_z_x/dense0/ReluReluencoder/p_z_x/dense0/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
encoder/p_z_x/dropout0/IdentityIdentityencoder/p_z_x/dense0/Relu*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
@encoder/p_z_x/projection/kernel/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@encoder/p_z_x/projection/kernel*
valueB"   
   *
dtype0*
_output_shapes
:
ˇ
>encoder/p_z_x/projection/kernel/Initializer/random_uniform/minConst*2
_class(
&$loc:@encoder/p_z_x/projection/kernel*
valueB
 *ôôőž*
dtype0*
_output_shapes
: 
ˇ
>encoder/p_z_x/projection/kernel/Initializer/random_uniform/maxConst*2
_class(
&$loc:@encoder/p_z_x/projection/kernel*
valueB
 *ôôő>*
dtype0*
_output_shapes
: 

Hencoder/p_z_x/projection/kernel/Initializer/random_uniform/RandomUniformRandomUniform@encoder/p_z_x/projection/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes

:
*

seed *
T0*2
_class(
&$loc:@encoder/p_z_x/projection/kernel

>encoder/p_z_x/projection/kernel/Initializer/random_uniform/subSub>encoder/p_z_x/projection/kernel/Initializer/random_uniform/max>encoder/p_z_x/projection/kernel/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@encoder/p_z_x/projection/kernel*
_output_shapes
: 
Ź
>encoder/p_z_x/projection/kernel/Initializer/random_uniform/mulMulHencoder/p_z_x/projection/kernel/Initializer/random_uniform/RandomUniform>encoder/p_z_x/projection/kernel/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@encoder/p_z_x/projection/kernel*
_output_shapes

:


:encoder/p_z_x/projection/kernel/Initializer/random_uniformAdd>encoder/p_z_x/projection/kernel/Initializer/random_uniform/mul>encoder/p_z_x/projection/kernel/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@encoder/p_z_x/projection/kernel*
_output_shapes

:

Ç
encoder/p_z_x/projection/kernel
VariableV2*
dtype0*
_output_shapes

:
*
shared_name *2
_class(
&$loc:@encoder/p_z_x/projection/kernel*
	container *
shape
:


&encoder/p_z_x/projection/kernel/AssignAssignencoder/p_z_x/projection/kernel:encoder/p_z_x/projection/kernel/Initializer/random_uniform*
validate_shape(*
_output_shapes

:
*
use_locking(*
T0*2
_class(
&$loc:@encoder/p_z_x/projection/kernel
Ž
$encoder/p_z_x/projection/kernel/readIdentityencoder/p_z_x/projection/kernel*
T0*2
_class(
&$loc:@encoder/p_z_x/projection/kernel*
_output_shapes

:

Ž
/encoder/p_z_x/projection/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:
*0
_class&
$"loc:@encoder/p_z_x/projection/bias*
valueB
*    
ť
encoder/p_z_x/projection/bias
VariableV2*
shared_name *0
_class&
$"loc:@encoder/p_z_x/projection/bias*
	container *
shape:
*
dtype0*
_output_shapes
:

ţ
$encoder/p_z_x/projection/bias/AssignAssignencoder/p_z_x/projection/bias/encoder/p_z_x/projection/bias/Initializer/zeros*0
_class&
$"loc:@encoder/p_z_x/projection/bias*
validate_shape(*
_output_shapes
:
*
use_locking(*
T0
¤
"encoder/p_z_x/projection/bias/readIdentityencoder/p_z_x/projection/bias*0
_class&
$"loc:@encoder/p_z_x/projection/bias*
_output_shapes
:
*
T0
Č
encoder/p_z_x/projection/MatMulMatMulencoder/p_z_x/dropout0/Identity$encoder/p_z_x/projection/kernel/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
transpose_a( *
transpose_b( *
T0
š
 encoder/p_z_x/projection/BiasAddBiasAddencoder/p_z_x/projection/MatMul"encoder/p_z_x/projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

p
encoder/p_z_x/Reshape/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
Ł
encoder/p_z_x/ReshapeReshape encoder/p_z_x/projection/BiasAddencoder/p_z_x/Reshape/shape*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
o
$encoder/p_z_x/Mean/reduction_indicesConst*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0
Ş
encoder/p_z_x/MeanMeanencoder/p_z_x/Reshape$encoder/p_z_x/Mean/reduction_indices*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0
y
encoder/p_z_x/subSubencoder/p_z_x/Reshapeencoder/p_z_x/Mean*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

7encoder/p_z_x/OneHotCategorical/OneHotCategorical/ShapeShapeencoder/p_z_x/sub*
out_type0*
_output_shapes
:*
T0
x
6encoder/p_z_x/OneHotCategorical/OneHotCategorical/RankConst*
value	B :*
dtype0*
_output_shapes
: 

9encoder/p_z_x/OneHotCategorical/OneHotCategorical/Shape_1Shapeencoder/p_z_x/sub*
T0*
out_type0*
_output_shapes
:
y
7encoder/p_z_x/OneHotCategorical/OneHotCategorical/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
Î
5encoder/p_z_x/OneHotCategorical/OneHotCategorical/SubSub6encoder/p_z_x/OneHotCategorical/OneHotCategorical/Rank7encoder/p_z_x/OneHotCategorical/OneHotCategorical/Sub/y*
T0*
_output_shapes
: 
ś
=encoder/p_z_x/OneHotCategorical/OneHotCategorical/Slice/beginPack5encoder/p_z_x/OneHotCategorical/OneHotCategorical/Sub*

axis *
N*
_output_shapes
:*
T0

<encoder/p_z_x/OneHotCategorical/OneHotCategorical/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Ş
7encoder/p_z_x/OneHotCategorical/OneHotCategorical/SliceSlice9encoder/p_z_x/OneHotCategorical/OneHotCategorical/Shape_1=encoder/p_z_x/OneHotCategorical/OneHotCategorical/Slice/begin<encoder/p_z_x/OneHotCategorical/OneHotCategorical/Slice/size*
Index0*
T0*
_output_shapes
:

Aencoder/p_z_x/OneHotCategorical/OneHotCategorical/concat/values_0Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

=encoder/p_z_x/OneHotCategorical/OneHotCategorical/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
š
8encoder/p_z_x/OneHotCategorical/OneHotCategorical/concatConcatV2Aencoder/p_z_x/OneHotCategorical/OneHotCategorical/concat/values_07encoder/p_z_x/OneHotCategorical/OneHotCategorical/Slice=encoder/p_z_x/OneHotCategorical/OneHotCategorical/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
Ú
9encoder/p_z_x/OneHotCategorical/OneHotCategorical/ReshapeReshapeencoder/p_z_x/sub8encoder/p_z_x/OneHotCategorical/OneHotCategorical/concat*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
ş
9encoder/p_z_x/OneHotCategorical/OneHotCategorical/SoftmaxSoftmax9encoder/p_z_x/OneHotCategorical/OneHotCategorical/Reshape*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ú
7encoder/p_z_x/OneHotCategorical/OneHotCategorical/probsReshape9encoder/p_z_x/OneHotCategorical/OneHotCategorical/Softmax7encoder/p_z_x/OneHotCategorical/OneHotCategorical/Shape*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
l
*encoder/p_z_x/OneHotCategorical/batch_rankConst*
value	B :*
dtype0*
_output_shapes
: 

0encoder/p_z_x/OneHotCategorical/event_size/ShapeShapeencoder/p_z_x/sub*
T0*
out_type0*
_output_shapes
:

>encoder/p_z_x/OneHotCategorical/event_size/strided_slice/stackConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

@encoder/p_z_x/OneHotCategorical/event_size/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

@encoder/p_z_x/OneHotCategorical/event_size/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Đ
8encoder/p_z_x/OneHotCategorical/event_size/strided_sliceStridedSlice0encoder/p_z_x/OneHotCategorical/event_size/Shape>encoder/p_z_x/OneHotCategorical/event_size/strided_slice/stack@encoder/p_z_x/OneHotCategorical/event_size/strided_slice/stack_1@encoder/p_z_x/OneHotCategorical/event_size/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
~
Shape_5Shape7encoder/p_z_x/OneHotCategorical/OneHotCategorical/probs*
_output_shapes
:*
T0*
out_type0
_
strided_slice_5/stackConst*
_output_shapes
:*
valueB: *
dtype0
a
strided_slice_5/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
a
strided_slice_5/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

strided_slice_5StridedSliceShape_5strided_slice_5/stackstrided_slice_5/stack_1strided_slice_5/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
I
Equal/yConst*
value	B : *
dtype0*
_output_shapes
: 
S
EqualEqualsample_ct_1/strided_sliceEqual/y*
T0*
_output_shapes
: 
F
cond/SwitchSwitchEqualEqual*
T0
*
_output_shapes
: : 
I
cond/switch_tIdentitycond/Switch:1*
T0
*
_output_shapes
: 
G
cond/switch_fIdentitycond/Switch*
T0
*
_output_shapes
: 
@
cond/pred_idIdentityEqual*
_output_shapes
: *
T0

Ü
cond/Tile/inputConst^cond/switch_t*
valueúB÷
"č  ?                  ?                  ?                      ?              ?                          ?          ?                              ?      ?                                  ?      ?              ?                      ?                  ?                  ?                      ?              ?                          ?          ?                              ?          ?          ?                          ?              ?                      ?                  ?                  ?                      ?              ?                          ?              ?      ?                              ?          ?                          ?              ?                      ?                  ?                  ?                      ?                  ?  ?                                  ?      ?                              ?          ?                          ?              ?                      ?                  ?*
dtype0*
_output_shapes

:

g
cond/Tile/multiples/0Const^cond/switch_t*
value	B :*
dtype0*
_output_shapes
: 

cond/Tile/multiples/SwitchSwitchstrided_slice_5cond/pred_id*
T0*"
_class
loc:@strided_slice_5*
_output_shapes
: : 

cond/Tile/multiplesPackcond/Tile/multiples/0cond/Tile/multiples/Switch:1*
T0*

axis *
N*
_output_shapes
:
{
	cond/TileTilecond/Tile/inputcond/Tile/multiples*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0*
T0
v
#cond/OneHotCategorical/sample/ConstConst^cond/switch_f*
_output_shapes
: *
valueB *
dtype0
­
)cond/OneHotCategorical/sample/Prod/SwitchSwitchsample_ct_1/strided_slicecond/pred_id*
T0*,
_class"
 loc:@sample_ct_1/strided_slice*
_output_shapes
: : 
¸
"cond/OneHotCategorical/sample/ProdProd)cond/OneHotCategorical/sample/Prod/Switch#cond/OneHotCategorical/sample/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

+cond/OneHotCategorical/sample/Reshape/shapeConst^cond/switch_f*
valueB:*
dtype0*
_output_shapes
:
ť
%cond/OneHotCategorical/sample/ReshapeReshape)cond/OneHotCategorical/sample/Prod/Switch+cond/OneHotCategorical/sample/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
Č
*cond/OneHotCategorical/sample/Shape/SwitchSwitchencoder/p_z_x/subcond/pred_id*$
_class
loc:@encoder/p_z_x/sub*B
_output_shapes0
.:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0

#cond/OneHotCategorical/sample/ShapeShape*cond/OneHotCategorical/sample/Shape/Switch*
T0*
out_type0*
_output_shapes
:

-cond/OneHotCategorical/sample/concat/values_0Pack"cond/OneHotCategorical/sample/Prod*
_output_shapes
:*
T0*

axis *
N
{
)cond/OneHotCategorical/sample/concat/axisConst^cond/switch_f*
value	B : *
dtype0*
_output_shapes
: 
é
$cond/OneHotCategorical/sample/concatConcatV2-cond/OneHotCategorical/sample/concat/values_0#cond/OneHotCategorical/sample/Shape)cond/OneHotCategorical/sample/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N

/cond/OneHotCategorical/sample/Reshape_1/shape/0Const^cond/switch_f*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ö
4cond/OneHotCategorical/sample/Reshape_1/shape/SwitchSwitch8encoder/p_z_x/OneHotCategorical/event_size/strided_slicecond/pred_id*
T0*K
_classA
?=loc:@encoder/p_z_x/OneHotCategorical/event_size/strided_slice*
_output_shapes
: : 
Ö
-cond/OneHotCategorical/sample/Reshape_1/shapePack/cond/OneHotCategorical/sample/Reshape_1/shape/04cond/OneHotCategorical/sample/Reshape_1/shape/Switch*
T0*

axis *
N*
_output_shapes
:
Ö
'cond/OneHotCategorical/sample/Reshape_1Reshape*cond/OneHotCategorical/sample/Shape/Switch-cond/OneHotCategorical/sample/Reshape_1/shape*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
ĺ
5cond/OneHotCategorical/sample/multinomial/MultinomialMultinomial'cond/OneHotCategorical/sample/Reshape_1"cond/OneHotCategorical/sample/Prod*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
seed2 *

seed *
T0

,cond/OneHotCategorical/sample/transpose/RankRank5cond/OneHotCategorical/sample/multinomial/Multinomial*
T0	*
_output_shapes
: 

-cond/OneHotCategorical/sample/transpose/sub/yConst^cond/switch_f*
value	B :*
dtype0*
_output_shapes
: 
°
+cond/OneHotCategorical/sample/transpose/subSub,cond/OneHotCategorical/sample/transpose/Rank-cond/OneHotCategorical/sample/transpose/sub/y*
_output_shapes
: *
T0

3cond/OneHotCategorical/sample/transpose/Range/startConst^cond/switch_f*
_output_shapes
: *
value	B : *
dtype0

3cond/OneHotCategorical/sample/transpose/Range/deltaConst^cond/switch_f*
dtype0*
_output_shapes
: *
value	B :
ö
-cond/OneHotCategorical/sample/transpose/RangeRange3cond/OneHotCategorical/sample/transpose/Range/start,cond/OneHotCategorical/sample/transpose/Rank3cond/OneHotCategorical/sample/transpose/Range/delta*
_output_shapes
:*

Tidx0
ľ
-cond/OneHotCategorical/sample/transpose/sub_1Sub+cond/OneHotCategorical/sample/transpose/sub-cond/OneHotCategorical/sample/transpose/Range*
T0*
_output_shapes
:
â
'cond/OneHotCategorical/sample/transpose	Transpose5cond/OneHotCategorical/sample/multinomial/Multinomial-cond/OneHotCategorical/sample/transpose/sub_1*
T0	*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
Tperm0

.cond/OneHotCategorical/sample/one_hot/on_valueConst^cond/switch_f*
value	B :*
dtype0*
_output_shapes
: 

/cond/OneHotCategorical/sample/one_hot/off_valueConst^cond/switch_f*
value	B : *
dtype0*
_output_shapes
: 
Ö
%cond/OneHotCategorical/sample/one_hotOneHot'cond/OneHotCategorical/sample/transpose4cond/OneHotCategorical/sample/Reshape_1/shape/Switch.cond/OneHotCategorical/sample/one_hot/on_value/cond/OneHotCategorical/sample/one_hot/off_value*
TI0	*
axis˙˙˙˙˙˙˙˙˙*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
Đ
'cond/OneHotCategorical/sample/Reshape_2Reshape%cond/OneHotCategorical/sample/one_hot$cond/OneHotCategorical/sample/concat*
T0*
Tshape0*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

%cond/OneHotCategorical/sample/Shape_1Shape'cond/OneHotCategorical/sample/Reshape_2*
T0*
out_type0*
_output_shapes
:

1cond/OneHotCategorical/sample/strided_slice/stackConst^cond/switch_f*
dtype0*
_output_shapes
:*
valueB:

3cond/OneHotCategorical/sample/strided_slice/stack_1Const^cond/switch_f*
valueB: *
dtype0*
_output_shapes
:

3cond/OneHotCategorical/sample/strided_slice/stack_2Const^cond/switch_f*
valueB:*
dtype0*
_output_shapes
:

+cond/OneHotCategorical/sample/strided_sliceStridedSlice%cond/OneHotCategorical/sample/Shape_11cond/OneHotCategorical/sample/strided_slice/stack3cond/OneHotCategorical/sample/strided_slice/stack_13cond/OneHotCategorical/sample/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
}
+cond/OneHotCategorical/sample/concat_1/axisConst^cond/switch_f*
value	B : *
dtype0*
_output_shapes
: 
í
&cond/OneHotCategorical/sample/concat_1ConcatV2%cond/OneHotCategorical/sample/Reshape+cond/OneHotCategorical/sample/strided_slice+cond/OneHotCategorical/sample/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ô
'cond/OneHotCategorical/sample/Reshape_3Reshape'cond/OneHotCategorical/sample/Reshape_2&cond/OneHotCategorical/sample/concat_1*
T0*
Tshape0*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

cond/ToFloatCast'cond/OneHotCategorical/sample/Reshape_3*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0
Z

cond/MergeMergecond/ToFloat	cond/Tile*
_output_shapes
:: *
T0*
N
K
	Equal_1/yConst*
_output_shapes
: *
value	B : *
dtype0
W
Equal_1Equalsample_ct_1/strided_slice	Equal_1/y*
_output_shapes
: *
T0
L
cond_1/SwitchSwitchEqual_1Equal_1*
_output_shapes
: : *
T0

M
cond_1/switch_tIdentitycond_1/Switch:1*
_output_shapes
: *
T0

K
cond_1/switch_fIdentitycond_1/Switch*
_output_shapes
: *
T0

D
cond_1/pred_idIdentityEqual_1*
_output_shapes
: *
T0

`
cond_1/ConstConst^cond_1/switch_t*
value	B :*
dtype0*
_output_shapes
: 

cond_1/Switch_1Switchsample_ct_1/strided_slicecond_1/pred_id*
T0*,
_class"
 loc:@sample_ct_1/strided_slice*
_output_shapes
: : 
`
cond_1/MergeMergecond_1/Switch_1cond_1/Const*
_output_shapes
: : *
T0*
N
Z
Reshape/shape/1Const*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Q
Reshape/shape/2Const*
value	B :
*
dtype0*
_output_shapes
: 

Reshape/shapePackcond_1/MergeReshape/shape/1Reshape/shape/2*
N*
_output_shapes
:*
T0*

axis 
z
ReshapeReshape
cond/MergeReshape/shape*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
*
T0*
Tshape0
m
decoder/p_y_xz/Reshape/shapeConst*
valueB"˙˙˙˙
   *
dtype0*
_output_shapes
:

decoder/p_y_xz/ReshapeReshapeReshapedecoder/p_y_xz/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

a
decoder/p_y_xz/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 

decoder/p_y_xz/Tile/multiplesPacksample_ct_1/strided_slicedecoder/p_y_xz/Tile/multiples/1*
T0*

axis *
N*
_output_shapes
:

decoder/p_y_xz/TileTileconcatdecoder/p_y_xz/Tile/multiples*

Tmultiples0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
\
decoder/p_y_xz/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
˛
decoder/p_y_xz/concatConcatV2decoder/p_y_xz/Reshapedecoder/p_y_xz/Tiledecoder/p_y_xz/concat/axis*
T0*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ş*

Tidx0

`decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*R
_classH
FDloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel*
valueB"Ş      
÷
^decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform/minConst*R
_classH
FDloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel*
valueB
 *őLž*
dtype0*
_output_shapes
: 
÷
^decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform/maxConst*R
_classH
FDloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel*
valueB
 *őL>*
dtype0*
_output_shapes
: 

hdecoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform/RandomUniformRandomUniform`decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
Ş*

seed *
T0*R
_classH
FDloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel*
seed2 *
dtype0

^decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform/subSub^decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform/max^decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform/min*
T0*R
_classH
FDloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel*
_output_shapes
: 
Ž
^decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform/mulMulhdecoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform/RandomUniform^decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
Ş*
T0*R
_classH
FDloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel
 
Zdecoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniformAdd^decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform/mul^decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform/min* 
_output_shapes
:
Ş*
T0*R
_classH
FDloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel

?decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel
VariableV2*
dtype0* 
_output_shapes
:
Ş*
shared_name *R
_classH
FDloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel*
	container *
shape:
Ş

Fdecoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel/AssignAssign?decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernelZdecoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel/Initializer/random_uniform*R
_classH
FDloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel*
validate_shape(* 
_output_shapes
:
Ş*
use_locking(*
T0

Ddecoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel/readIdentity?decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel*
T0*R
_classH
FDloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel* 
_output_shapes
:
Ş
đ
Odecoder/p_y_xz/initial_state_projection/cell_0/initial_c/bias/Initializer/zerosConst*P
_classF
DBloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_c/bias*
valueB*    *
dtype0*
_output_shapes	
:
ý
=decoder/p_y_xz/initial_state_projection/cell_0/initial_c/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *P
_classF
DBloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_c/bias
˙
Ddecoder/p_y_xz/initial_state_projection/cell_0/initial_c/bias/AssignAssign=decoder/p_y_xz/initial_state_projection/cell_0/initial_c/biasOdecoder/p_y_xz/initial_state_projection/cell_0/initial_c/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*P
_classF
DBloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_c/bias

Bdecoder/p_y_xz/initial_state_projection/cell_0/initial_c/bias/readIdentity=decoder/p_y_xz/initial_state_projection/cell_0/initial_c/bias*
_output_shapes	
:*
T0*P
_classF
DBloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_c/bias
˙
?decoder/p_y_xz/initial_state_projection/cell_0/initial_c/MatMulMatMuldecoder/p_y_xz/concatDdecoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 

@decoder/p_y_xz/initial_state_projection/cell_0/initial_c/BiasAddBiasAdd?decoder/p_y_xz/initial_state_projection/cell_0/initial_c/MatMulBdecoder/p_y_xz/initial_state_projection/cell_0/initial_c/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ş
=decoder/p_y_xz/initial_state_projection/cell_0/initial_c/TanhTanh@decoder/p_y_xz/initial_state_projection/cell_0/initial_c/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

`decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*R
_classH
FDloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel*
valueB"Ş      
÷
^decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform/minConst*R
_classH
FDloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel*
valueB
 *őLž*
dtype0*
_output_shapes
: 
÷
^decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform/maxConst*R
_classH
FDloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel*
valueB
 *őL>*
dtype0*
_output_shapes
: 

hdecoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform/RandomUniformRandomUniform`decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
Ş*

seed *
T0*R
_classH
FDloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel*
seed2 

^decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform/subSub^decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform/max^decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*R
_classH
FDloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel
Ž
^decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform/mulMulhdecoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform/RandomUniform^decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform/sub*
T0*R
_classH
FDloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel* 
_output_shapes
:
Ş
 
Zdecoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniformAdd^decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform/mul^decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform/min* 
_output_shapes
:
Ş*
T0*R
_classH
FDloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel

?decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel
VariableV2*
dtype0* 
_output_shapes
:
Ş*
shared_name *R
_classH
FDloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel*
	container *
shape:
Ş

Fdecoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel/AssignAssign?decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernelZdecoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel/Initializer/random_uniform* 
_output_shapes
:
Ş*
use_locking(*
T0*R
_classH
FDloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel*
validate_shape(

Ddecoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel/readIdentity?decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel*R
_classH
FDloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel* 
_output_shapes
:
Ş*
T0
đ
Odecoder/p_y_xz/initial_state_projection/cell_0/initial_h/bias/Initializer/zerosConst*P
_classF
DBloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_h/bias*
valueB*    *
dtype0*
_output_shapes	
:
ý
=decoder/p_y_xz/initial_state_projection/cell_0/initial_h/bias
VariableV2*
shared_name *P
_classF
DBloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_h/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
˙
Ddecoder/p_y_xz/initial_state_projection/cell_0/initial_h/bias/AssignAssign=decoder/p_y_xz/initial_state_projection/cell_0/initial_h/biasOdecoder/p_y_xz/initial_state_projection/cell_0/initial_h/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*P
_classF
DBloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_h/bias

Bdecoder/p_y_xz/initial_state_projection/cell_0/initial_h/bias/readIdentity=decoder/p_y_xz/initial_state_projection/cell_0/initial_h/bias*P
_classF
DBloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_h/bias*
_output_shapes	
:*
T0
˙
?decoder/p_y_xz/initial_state_projection/cell_0/initial_h/MatMulMatMuldecoder/p_y_xz/concatDdecoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0

@decoder/p_y_xz/initial_state_projection/cell_0/initial_h/BiasAddBiasAdd?decoder/p_y_xz/initial_state_projection/cell_0/initial_h/MatMulBdecoder/p_y_xz/initial_state_projection/cell_0/initial_h/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ş
=decoder/p_y_xz/initial_state_projection/cell_0/initial_h/TanhTanh@decoder/p_y_xz/initial_state_projection/cell_0/initial_h/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
!decoder/p_y_xz/Tile_1/multiples/1Const*
dtype0*
_output_shapes
: *
value	B :

decoder/p_y_xz/Tile_1/multiplesPacksample_ct_1/strided_slice!decoder/p_y_xz/Tile_1/multiples/1*
T0*

axis *
N*
_output_shapes
:

decoder/p_y_xz/Tile_1TileTile_2decoder/p_y_xz/Tile_1/multiples*

Tmultiples0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
decoder/p_y_xz/concat_1/axisConst*
value	B :*
dtype0*
_output_shapes
: 
ˇ
decoder/p_y_xz/concat_1ConcatV2decoder/p_y_xz/concatdecoder/p_y_xz/Tile_1decoder/p_y_xz/concat_1/axis*

Tidx0*
T0*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛

Zdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
Ý
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concatConcatV2decoder/p_y_xz/concat_1=decoder/p_y_xz/initial_state_projection/cell_0/initial_h/TanhZdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat/axis*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛*

Tidx0*
T0

kdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/shapeConst*]
_classS
QOloc:@decoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
valueB"2     *
dtype0*
_output_shapes
:

idecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *]
_classS
QOloc:@decoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
valueB
 *UfŻ˝*
dtype0

idecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/maxConst*]
_classS
QOloc:@decoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
valueB
 *UfŻ=*
dtype0*
_output_shapes
: 
Ą
sdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformkdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
˛*

seed *
T0*]
_classS
QOloc:@decoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
seed2 
Ć
idecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/subSubidecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/maxidecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/min*
T0*]
_classS
QOloc:@decoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
_output_shapes
: 
Ú
idecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/mulMulsdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformidecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/sub*
T0*]
_classS
QOloc:@decoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel* 
_output_shapes
:
˛
Ě
edecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniformAddidecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/mulidecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/min* 
_output_shapes
:
˛*
T0*]
_classS
QOloc:@decoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel
Ą
Jdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel
VariableV2*
shared_name *]
_classS
QOloc:@decoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
	container *
shape:
˛*
dtype0* 
_output_shapes
:
˛
Á
Qdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AssignAssignJdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kerneledecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform*]
_classS
QOloc:@decoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
˛*
use_locking(*
T0
ą
Odecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/readIdentityJdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
T0*]
_classS
QOloc:@decoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel* 
_output_shapes
:
˛
ŕ
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concatOdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0

idecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/shapeConst*[
_classQ
OMloc:@decoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
valueB:*
dtype0*
_output_shapes
:

gdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/minConst*[
_classQ
OMloc:@decoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
valueB
 *qÄ˝*
dtype0*
_output_shapes
: 

gdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *[
_classQ
OMloc:@decoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
valueB
 *qÄ=

qdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/RandomUniformRandomUniformidecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/shape*
dtype0*
_output_shapes	
:*

seed *
T0*[
_classQ
OMloc:@decoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
seed2 
ž
gdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/subSubgdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/maxgdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/min*
T0*[
_classQ
OMloc:@decoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
_output_shapes
: 
Í
gdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/mulMulqdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/RandomUniformgdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/sub*
T0*[
_classQ
OMloc:@decoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
_output_shapes	
:
ż
cdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniformAddgdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/mulgdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/min*
T0*[
_classQ
OMloc:@decoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
_output_shapes	
:

Hdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name *[
_classQ
OMloc:@decoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
	container 
´
Odecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AssignAssignHdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biascdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform*[
_classQ
OMloc:@decoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ś
Mdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/readIdentityHdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
T0*[
_classQ
OMloc:@decoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
_output_shapes	
:
Ń
Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAddBiasAddUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMulMdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
 
^decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split/split_dimConst*
_output_shapes
: *
value	B :*
dtype0

Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/splitSplit^decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split/split_dimVdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
ć
Sdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/TanhTanhVdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ş
Rdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/addAddVdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:2Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add/y*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
č
Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/SigmoidSigmoidRdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ł
Rdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mulMul=decoder/p_y_xz/initial_state_projection/cell_0/initial_c/TanhVdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ě
Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_1SigmoidTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
˝
Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1MulXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_1Sdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
¸
Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1AddRdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mulTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ć
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_1TanhTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
î
Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_2SigmoidVdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:3*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ż
Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2MulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_1Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ý
Ldecoder/p_y_xz/rnn/log_pi_projection/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*>
_class4
20loc:@decoder/p_y_xz/rnn/log_pi_projection/kernel*
valueB"      *
dtype0
Ď
Jdecoder/p_y_xz/rnn/log_pi_projection/kernel/Initializer/random_uniform/minConst*>
_class4
20loc:@decoder/p_y_xz/rnn/log_pi_projection/kernel*
valueB
 *ěQž*
dtype0*
_output_shapes
: 
Ď
Jdecoder/p_y_xz/rnn/log_pi_projection/kernel/Initializer/random_uniform/maxConst*>
_class4
20loc:@decoder/p_y_xz/rnn/log_pi_projection/kernel*
valueB
 *ěQ>*
dtype0*
_output_shapes
: 
Ă
Tdecoder/p_y_xz/rnn/log_pi_projection/kernel/Initializer/random_uniform/RandomUniformRandomUniformLdecoder/p_y_xz/rnn/log_pi_projection/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	*

seed *
T0*>
_class4
20loc:@decoder/p_y_xz/rnn/log_pi_projection/kernel*
seed2 
Ę
Jdecoder/p_y_xz/rnn/log_pi_projection/kernel/Initializer/random_uniform/subSubJdecoder/p_y_xz/rnn/log_pi_projection/kernel/Initializer/random_uniform/maxJdecoder/p_y_xz/rnn/log_pi_projection/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*>
_class4
20loc:@decoder/p_y_xz/rnn/log_pi_projection/kernel
Ý
Jdecoder/p_y_xz/rnn/log_pi_projection/kernel/Initializer/random_uniform/mulMulTdecoder/p_y_xz/rnn/log_pi_projection/kernel/Initializer/random_uniform/RandomUniformJdecoder/p_y_xz/rnn/log_pi_projection/kernel/Initializer/random_uniform/sub*
_output_shapes
:	*
T0*>
_class4
20loc:@decoder/p_y_xz/rnn/log_pi_projection/kernel
Ď
Fdecoder/p_y_xz/rnn/log_pi_projection/kernel/Initializer/random_uniformAddJdecoder/p_y_xz/rnn/log_pi_projection/kernel/Initializer/random_uniform/mulJdecoder/p_y_xz/rnn/log_pi_projection/kernel/Initializer/random_uniform/min*>
_class4
20loc:@decoder/p_y_xz/rnn/log_pi_projection/kernel*
_output_shapes
:	*
T0
á
+decoder/p_y_xz/rnn/log_pi_projection/kernel
VariableV2*
dtype0*
_output_shapes
:	*
shared_name *>
_class4
20loc:@decoder/p_y_xz/rnn/log_pi_projection/kernel*
	container *
shape:	
Ä
2decoder/p_y_xz/rnn/log_pi_projection/kernel/AssignAssign+decoder/p_y_xz/rnn/log_pi_projection/kernelFdecoder/p_y_xz/rnn/log_pi_projection/kernel/Initializer/random_uniform*
use_locking(*
T0*>
_class4
20loc:@decoder/p_y_xz/rnn/log_pi_projection/kernel*
validate_shape(*
_output_shapes
:	
Ó
0decoder/p_y_xz/rnn/log_pi_projection/kernel/readIdentity+decoder/p_y_xz/rnn/log_pi_projection/kernel*
_output_shapes
:	*
T0*>
_class4
20loc:@decoder/p_y_xz/rnn/log_pi_projection/kernel
Ć
;decoder/p_y_xz/rnn/log_pi_projection/bias/Initializer/zerosConst*<
_class2
0.loc:@decoder/p_y_xz/rnn/log_pi_projection/bias*
valueB*    *
dtype0*
_output_shapes
:
Ó
)decoder/p_y_xz/rnn/log_pi_projection/bias
VariableV2*
shared_name *<
_class2
0.loc:@decoder/p_y_xz/rnn/log_pi_projection/bias*
	container *
shape:*
dtype0*
_output_shapes
:
Ž
0decoder/p_y_xz/rnn/log_pi_projection/bias/AssignAssign)decoder/p_y_xz/rnn/log_pi_projection/bias;decoder/p_y_xz/rnn/log_pi_projection/bias/Initializer/zeros*
T0*<
_class2
0.loc:@decoder/p_y_xz/rnn/log_pi_projection/bias*
validate_shape(*
_output_shapes
:*
use_locking(
Č
.decoder/p_y_xz/rnn/log_pi_projection/bias/readIdentity)decoder/p_y_xz/rnn/log_pi_projection/bias*
T0*<
_class2
0.loc:@decoder/p_y_xz/rnn/log_pi_projection/bias*
_output_shapes
:

+decoder/p_y_xz/rnn/log_pi_projection/MatMulMatMulTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_20decoder/p_y_xz/rnn/log_pi_projection/kernel/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
Ý
,decoder/p_y_xz/rnn/log_pi_projection/BiasAddBiasAdd+decoder/p_y_xz/rnn/log_pi_projection/MatMul.decoder/p_y_xz/rnn/log_pi_projection/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ő
Hdecoder/p_y_xz/rnn/mu_projection/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*:
_class0
.,loc:@decoder/p_y_xz/rnn/mu_projection/kernel*
valueB"       
Ç
Fdecoder/p_y_xz/rnn/mu_projection/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *:
_class0
.,loc:@decoder/p_y_xz/rnn/mu_projection/kernel*
valueB
 *řKFž
Ç
Fdecoder/p_y_xz/rnn/mu_projection/kernel/Initializer/random_uniform/maxConst*:
_class0
.,loc:@decoder/p_y_xz/rnn/mu_projection/kernel*
valueB
 *řKF>*
dtype0*
_output_shapes
: 
ˇ
Pdecoder/p_y_xz/rnn/mu_projection/kernel/Initializer/random_uniform/RandomUniformRandomUniformHdecoder/p_y_xz/rnn/mu_projection/kernel/Initializer/random_uniform/shape*

seed *
T0*:
_class0
.,loc:@decoder/p_y_xz/rnn/mu_projection/kernel*
seed2 *
dtype0*
_output_shapes
:	 
ş
Fdecoder/p_y_xz/rnn/mu_projection/kernel/Initializer/random_uniform/subSubFdecoder/p_y_xz/rnn/mu_projection/kernel/Initializer/random_uniform/maxFdecoder/p_y_xz/rnn/mu_projection/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*:
_class0
.,loc:@decoder/p_y_xz/rnn/mu_projection/kernel
Í
Fdecoder/p_y_xz/rnn/mu_projection/kernel/Initializer/random_uniform/mulMulPdecoder/p_y_xz/rnn/mu_projection/kernel/Initializer/random_uniform/RandomUniformFdecoder/p_y_xz/rnn/mu_projection/kernel/Initializer/random_uniform/sub*
T0*:
_class0
.,loc:@decoder/p_y_xz/rnn/mu_projection/kernel*
_output_shapes
:	 
ż
Bdecoder/p_y_xz/rnn/mu_projection/kernel/Initializer/random_uniformAddFdecoder/p_y_xz/rnn/mu_projection/kernel/Initializer/random_uniform/mulFdecoder/p_y_xz/rnn/mu_projection/kernel/Initializer/random_uniform/min*
T0*:
_class0
.,loc:@decoder/p_y_xz/rnn/mu_projection/kernel*
_output_shapes
:	 
Ů
'decoder/p_y_xz/rnn/mu_projection/kernel
VariableV2*
dtype0*
_output_shapes
:	 *
shared_name *:
_class0
.,loc:@decoder/p_y_xz/rnn/mu_projection/kernel*
	container *
shape:	 
´
.decoder/p_y_xz/rnn/mu_projection/kernel/AssignAssign'decoder/p_y_xz/rnn/mu_projection/kernelBdecoder/p_y_xz/rnn/mu_projection/kernel/Initializer/random_uniform*
validate_shape(*
_output_shapes
:	 *
use_locking(*
T0*:
_class0
.,loc:@decoder/p_y_xz/rnn/mu_projection/kernel
Ç
,decoder/p_y_xz/rnn/mu_projection/kernel/readIdentity'decoder/p_y_xz/rnn/mu_projection/kernel*
T0*:
_class0
.,loc:@decoder/p_y_xz/rnn/mu_projection/kernel*
_output_shapes
:	 
ž
7decoder/p_y_xz/rnn/mu_projection/bias/Initializer/zerosConst*8
_class.
,*loc:@decoder/p_y_xz/rnn/mu_projection/bias*
valueB *    *
dtype0*
_output_shapes
: 
Ë
%decoder/p_y_xz/rnn/mu_projection/bias
VariableV2*
shared_name *8
_class.
,*loc:@decoder/p_y_xz/rnn/mu_projection/bias*
	container *
shape: *
dtype0*
_output_shapes
: 

,decoder/p_y_xz/rnn/mu_projection/bias/AssignAssign%decoder/p_y_xz/rnn/mu_projection/bias7decoder/p_y_xz/rnn/mu_projection/bias/Initializer/zeros*8
_class.
,*loc:@decoder/p_y_xz/rnn/mu_projection/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
ź
*decoder/p_y_xz/rnn/mu_projection/bias/readIdentity%decoder/p_y_xz/rnn/mu_projection/bias*
_output_shapes
: *
T0*8
_class.
,*loc:@decoder/p_y_xz/rnn/mu_projection/bias

'decoder/p_y_xz/rnn/mu_projection/MatMulMatMulTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2,decoder/p_y_xz/rnn/mu_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( *
transpose_b( 
Ń
(decoder/p_y_xz/rnn/mu_projection/BiasAddBiasAdd'decoder/p_y_xz/rnn/mu_projection/MatMul*decoder/p_y_xz/rnn/mu_projection/bias/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*
data_formatNHWC
ă
Odecoder/p_y_xz/rnn/log_sigma_projection/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*A
_class7
53loc:@decoder/p_y_xz/rnn/log_sigma_projection/kernel*
valueB"       *
dtype0
Ő
Mdecoder/p_y_xz/rnn/log_sigma_projection/kernel/Initializer/random_uniform/minConst*A
_class7
53loc:@decoder/p_y_xz/rnn/log_sigma_projection/kernel*
valueB
 *řKFž*
dtype0*
_output_shapes
: 
Ő
Mdecoder/p_y_xz/rnn/log_sigma_projection/kernel/Initializer/random_uniform/maxConst*A
_class7
53loc:@decoder/p_y_xz/rnn/log_sigma_projection/kernel*
valueB
 *řKF>*
dtype0*
_output_shapes
: 
Ě
Wdecoder/p_y_xz/rnn/log_sigma_projection/kernel/Initializer/random_uniform/RandomUniformRandomUniformOdecoder/p_y_xz/rnn/log_sigma_projection/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	 *

seed *
T0*A
_class7
53loc:@decoder/p_y_xz/rnn/log_sigma_projection/kernel*
seed2 
Ö
Mdecoder/p_y_xz/rnn/log_sigma_projection/kernel/Initializer/random_uniform/subSubMdecoder/p_y_xz/rnn/log_sigma_projection/kernel/Initializer/random_uniform/maxMdecoder/p_y_xz/rnn/log_sigma_projection/kernel/Initializer/random_uniform/min*
T0*A
_class7
53loc:@decoder/p_y_xz/rnn/log_sigma_projection/kernel*
_output_shapes
: 
é
Mdecoder/p_y_xz/rnn/log_sigma_projection/kernel/Initializer/random_uniform/mulMulWdecoder/p_y_xz/rnn/log_sigma_projection/kernel/Initializer/random_uniform/RandomUniformMdecoder/p_y_xz/rnn/log_sigma_projection/kernel/Initializer/random_uniform/sub*
T0*A
_class7
53loc:@decoder/p_y_xz/rnn/log_sigma_projection/kernel*
_output_shapes
:	 
Ű
Idecoder/p_y_xz/rnn/log_sigma_projection/kernel/Initializer/random_uniformAddMdecoder/p_y_xz/rnn/log_sigma_projection/kernel/Initializer/random_uniform/mulMdecoder/p_y_xz/rnn/log_sigma_projection/kernel/Initializer/random_uniform/min*
T0*A
_class7
53loc:@decoder/p_y_xz/rnn/log_sigma_projection/kernel*
_output_shapes
:	 
ç
.decoder/p_y_xz/rnn/log_sigma_projection/kernel
VariableV2*
shared_name *A
_class7
53loc:@decoder/p_y_xz/rnn/log_sigma_projection/kernel*
	container *
shape:	 *
dtype0*
_output_shapes
:	 
Đ
5decoder/p_y_xz/rnn/log_sigma_projection/kernel/AssignAssign.decoder/p_y_xz/rnn/log_sigma_projection/kernelIdecoder/p_y_xz/rnn/log_sigma_projection/kernel/Initializer/random_uniform*A
_class7
53loc:@decoder/p_y_xz/rnn/log_sigma_projection/kernel*
validate_shape(*
_output_shapes
:	 *
use_locking(*
T0
Ü
3decoder/p_y_xz/rnn/log_sigma_projection/kernel/readIdentity.decoder/p_y_xz/rnn/log_sigma_projection/kernel*
T0*A
_class7
53loc:@decoder/p_y_xz/rnn/log_sigma_projection/kernel*
_output_shapes
:	 
Ě
>decoder/p_y_xz/rnn/log_sigma_projection/bias/Initializer/zerosConst*
_output_shapes
: *?
_class5
31loc:@decoder/p_y_xz/rnn/log_sigma_projection/bias*
valueB *    *
dtype0
Ů
,decoder/p_y_xz/rnn/log_sigma_projection/bias
VariableV2*
dtype0*
_output_shapes
: *
shared_name *?
_class5
31loc:@decoder/p_y_xz/rnn/log_sigma_projection/bias*
	container *
shape: 
ş
3decoder/p_y_xz/rnn/log_sigma_projection/bias/AssignAssign,decoder/p_y_xz/rnn/log_sigma_projection/bias>decoder/p_y_xz/rnn/log_sigma_projection/bias/Initializer/zeros*
use_locking(*
T0*?
_class5
31loc:@decoder/p_y_xz/rnn/log_sigma_projection/bias*
validate_shape(*
_output_shapes
: 
Ń
1decoder/p_y_xz/rnn/log_sigma_projection/bias/readIdentity,decoder/p_y_xz/rnn/log_sigma_projection/bias*
_output_shapes
: *
T0*?
_class5
31loc:@decoder/p_y_xz/rnn/log_sigma_projection/bias

.decoder/p_y_xz/rnn/log_sigma_projection/MatMulMatMulTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_23decoder/p_y_xz/rnn/log_sigma_projection/kernel/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( *
transpose_b( *
T0
ć
/decoder/p_y_xz/rnn/log_sigma_projection/BiasAddBiasAdd.decoder/p_y_xz/rnn/log_sigma_projection/MatMul1decoder/p_y_xz/rnn/log_sigma_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ů
Jdecoder/p_y_xz/rnn/corr_projection/kernel/Initializer/random_uniform/shapeConst*<
_class2
0.loc:@decoder/p_y_xz/rnn/corr_projection/kernel*
valueB"      *
dtype0*
_output_shapes
:
Ë
Hdecoder/p_y_xz/rnn/corr_projection/kernel/Initializer/random_uniform/minConst*<
_class2
0.loc:@decoder/p_y_xz/rnn/corr_projection/kernel*
valueB
 *ěQž*
dtype0*
_output_shapes
: 
Ë
Hdecoder/p_y_xz/rnn/corr_projection/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *<
_class2
0.loc:@decoder/p_y_xz/rnn/corr_projection/kernel*
valueB
 *ěQ>
˝
Rdecoder/p_y_xz/rnn/corr_projection/kernel/Initializer/random_uniform/RandomUniformRandomUniformJdecoder/p_y_xz/rnn/corr_projection/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes
:	*

seed *
T0*<
_class2
0.loc:@decoder/p_y_xz/rnn/corr_projection/kernel
Â
Hdecoder/p_y_xz/rnn/corr_projection/kernel/Initializer/random_uniform/subSubHdecoder/p_y_xz/rnn/corr_projection/kernel/Initializer/random_uniform/maxHdecoder/p_y_xz/rnn/corr_projection/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*<
_class2
0.loc:@decoder/p_y_xz/rnn/corr_projection/kernel
Ő
Hdecoder/p_y_xz/rnn/corr_projection/kernel/Initializer/random_uniform/mulMulRdecoder/p_y_xz/rnn/corr_projection/kernel/Initializer/random_uniform/RandomUniformHdecoder/p_y_xz/rnn/corr_projection/kernel/Initializer/random_uniform/sub*
T0*<
_class2
0.loc:@decoder/p_y_xz/rnn/corr_projection/kernel*
_output_shapes
:	
Ç
Ddecoder/p_y_xz/rnn/corr_projection/kernel/Initializer/random_uniformAddHdecoder/p_y_xz/rnn/corr_projection/kernel/Initializer/random_uniform/mulHdecoder/p_y_xz/rnn/corr_projection/kernel/Initializer/random_uniform/min*
T0*<
_class2
0.loc:@decoder/p_y_xz/rnn/corr_projection/kernel*
_output_shapes
:	
Ý
)decoder/p_y_xz/rnn/corr_projection/kernel
VariableV2*
	container *
shape:	*
dtype0*
_output_shapes
:	*
shared_name *<
_class2
0.loc:@decoder/p_y_xz/rnn/corr_projection/kernel
ź
0decoder/p_y_xz/rnn/corr_projection/kernel/AssignAssign)decoder/p_y_xz/rnn/corr_projection/kernelDdecoder/p_y_xz/rnn/corr_projection/kernel/Initializer/random_uniform*
use_locking(*
T0*<
_class2
0.loc:@decoder/p_y_xz/rnn/corr_projection/kernel*
validate_shape(*
_output_shapes
:	
Í
.decoder/p_y_xz/rnn/corr_projection/kernel/readIdentity)decoder/p_y_xz/rnn/corr_projection/kernel*
T0*<
_class2
0.loc:@decoder/p_y_xz/rnn/corr_projection/kernel*
_output_shapes
:	
Â
9decoder/p_y_xz/rnn/corr_projection/bias/Initializer/zerosConst*:
_class0
.,loc:@decoder/p_y_xz/rnn/corr_projection/bias*
valueB*    *
dtype0*
_output_shapes
:
Ď
'decoder/p_y_xz/rnn/corr_projection/bias
VariableV2*:
_class0
.,loc:@decoder/p_y_xz/rnn/corr_projection/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
Ś
.decoder/p_y_xz/rnn/corr_projection/bias/AssignAssign'decoder/p_y_xz/rnn/corr_projection/bias9decoder/p_y_xz/rnn/corr_projection/bias/Initializer/zeros*
T0*:
_class0
.,loc:@decoder/p_y_xz/rnn/corr_projection/bias*
validate_shape(*
_output_shapes
:*
use_locking(
Â
,decoder/p_y_xz/rnn/corr_projection/bias/readIdentity'decoder/p_y_xz/rnn/corr_projection/bias*
_output_shapes
:*
T0*:
_class0
.,loc:@decoder/p_y_xz/rnn/corr_projection/bias

)decoder/p_y_xz/rnn/corr_projection/MatMulMatMulTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2.decoder/p_y_xz/rnn/corr_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
×
*decoder/p_y_xz/rnn/corr_projection/BiasAddBiasAdd)decoder/p_y_xz/rnn/corr_projection/MatMul,decoder/p_y_xz/rnn/corr_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
}
decoder/p_y_xz/rnn/TanhTanh*decoder/p_y_xz/rnn/corr_projection/BiasAdd*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

8decoder/p_y_xz/rnn/ReduceLogSumExp/Max/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ä
&decoder/p_y_xz/rnn/ReduceLogSumExp/MaxMax,decoder/p_y_xz/rnn/log_pi_projection/BiasAdd8decoder/p_y_xz/rnn/ReduceLogSumExp/Max/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0

/decoder/p_y_xz/rnn/ReduceLogSumExp/StopGradientStopGradient&decoder/p_y_xz/rnn/ReduceLogSumExp/Max*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ž
&decoder/p_y_xz/rnn/ReduceLogSumExp/subSub,decoder/p_y_xz/rnn/log_pi_projection/BiasAdd/decoder/p_y_xz/rnn/ReduceLogSumExp/StopGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

&decoder/p_y_xz/rnn/ReduceLogSumExp/ExpExp&decoder/p_y_xz/rnn/ReduceLogSumExp/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

8decoder/p_y_xz/rnn/ReduceLogSumExp/Sum/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ţ
&decoder/p_y_xz/rnn/ReduceLogSumExp/SumSum&decoder/p_y_xz/rnn/ReduceLogSumExp/Exp8decoder/p_y_xz/rnn/ReduceLogSumExp/Sum/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0

&decoder/p_y_xz/rnn/ReduceLogSumExp/LogLog&decoder/p_y_xz/rnn/ReduceLogSumExp/Sum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
¸
&decoder/p_y_xz/rnn/ReduceLogSumExp/addAdd&decoder/p_y_xz/rnn/ReduceLogSumExp/Log/decoder/p_y_xz/rnn/ReduceLogSumExp/StopGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
decoder/p_y_xz/rnn/subSub,decoder/p_y_xz/rnn/log_pi_projection/BiasAdd&decoder/p_y_xz/rnn/ReduceLogSumExp/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
 decoder/p_y_xz/rnn/Reshape/shapeConst*
_output_shapes
:*!
valueB"˙˙˙˙      *
dtype0
ľ
decoder/p_y_xz/rnn/ReshapeReshape(decoder/p_y_xz/rnn/mu_projection/BiasAdd decoder/p_y_xz/rnn/Reshape/shape*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
o
*decoder/p_y_xz/rnn/clip_by_value/Minimum/yConst*
valueB
 *   A*
dtype0*
_output_shapes
: 
Â
(decoder/p_y_xz/rnn/clip_by_value/MinimumMinimum/decoder/p_y_xz/rnn/log_sigma_projection/BiasAdd*decoder/p_y_xz/rnn/clip_by_value/Minimum/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
g
"decoder/p_y_xz/rnn/clip_by_value/yConst*
_output_shapes
: *
valueB
 *   Á*
dtype0
Ť
 decoder/p_y_xz/rnn/clip_by_valueMaximum(decoder/p_y_xz/rnn/clip_by_value/Minimum"decoder/p_y_xz/rnn/clip_by_value/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
w
"decoder/p_y_xz/rnn/Reshape_1/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ą
decoder/p_y_xz/rnn/Reshape_1Reshape decoder/p_y_xz/rnn/clip_by_value"decoder/p_y_xz/rnn/Reshape_1/shape*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
q
decoder/p_y_xz/rnn/ExpExpdecoder/p_y_xz/rnn/Reshape_1*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
n
decoder/p_y_xz/rnn/SquareSquaredecoder/p_y_xz/rnn/Tanh*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
decoder/p_y_xz/rnn/sub_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?

decoder/p_y_xz/rnn/sub_1Subdecoder/p_y_xz/rnn/sub_1/xdecoder/p_y_xz/rnn/Square*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
"decoder/p_y_xz/rnn/ones_like/ShapeShapedecoder/p_y_xz/rnn/Tanh*
_output_shapes
:*
T0*
out_type0
g
"decoder/p_y_xz/rnn/ones_like/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

decoder/p_y_xz/rnn/ones_likeFill"decoder/p_y_xz/rnn/ones_like/Shape"decoder/p_y_xz/rnn/ones_like/Const*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ť
decoder/p_y_xz/rnn/stackPackdecoder/p_y_xz/rnn/ones_likedecoder/p_y_xz/rnn/Tanh*
T0*
axis˙˙˙˙˙˙˙˙˙*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mulMuldecoder/p_y_xz/rnn/Expdecoder/p_y_xz/rnn/stack*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
decoder/p_y_xz/rnn/zeros_like	ZerosLikedecoder/p_y_xz/rnn/Tanh*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
k
decoder/p_y_xz/rnn/SqrtSqrtdecoder/p_y_xz/rnn/sub_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ž
decoder/p_y_xz/rnn/stack_1Packdecoder/p_y_xz/rnn/zeros_likedecoder/p_y_xz/rnn/Sqrt*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
axis˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_1Muldecoder/p_y_xz/rnn/Expdecoder/p_y_xz/rnn/stack_1*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

0decoder/p_y_xz/rnn/Categorical/Categorical/probsSoftmaxdecoder/p_y_xz/rnn/sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
k
)decoder/p_y_xz/rnn/Categorical/batch_rankConst*
value	B :*
dtype0*
_output_shapes
: 

+decoder/p_y_xz/rnn/Categorical/logits_shapeShapedecoder/p_y_xz/rnn/sub*
T0*
out_type0*
_output_shapes
:
k
)decoder/p_y_xz/rnn/Categorical/event_sizeConst*
value	B :*
dtype0*
_output_shapes
: 

>decoder/p_y_xz/rnn/Categorical/batch_shape/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0

@decoder/p_y_xz/rnn/Categorical/batch_shape/strided_slice/stack_1Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

@decoder/p_y_xz/rnn/Categorical/batch_shape/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ď
8decoder/p_y_xz/rnn/Categorical/batch_shape/strided_sliceStridedSlice+decoder/p_y_xz/rnn/Categorical/logits_shape>decoder/p_y_xz/rnn/Categorical/batch_shape/strided_slice/stack@decoder/p_y_xz/rnn/Categorical/batch_shape/strided_slice/stack_1@decoder/p_y_xz/rnn/Categorical/batch_shape/strided_slice/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0
o
decoder/p_y_xz/rnn/ShapeShapedecoder/p_y_xz/rnn/Tanh*
_output_shapes
:*
T0*
out_type0
j
%decoder/p_y_xz/rnn/random_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
l
'decoder/p_y_xz/rnn/random_normal/stddevConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
ż
5decoder/p_y_xz/rnn/random_normal/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed *
T0
˝
$decoder/p_y_xz/rnn/random_normal/mulMul5decoder/p_y_xz/rnn/random_normal/RandomStandardNormal'decoder/p_y_xz/rnn/random_normal/stddev*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ś
 decoder/p_y_xz/rnn/random_normalAdd$decoder/p_y_xz/rnn/random_normal/mul%decoder/p_y_xz/rnn/random_normal/mean*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
l
!decoder/p_y_xz/rnn/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
˛
decoder/p_y_xz/rnn/ExpandDims
ExpandDims decoder/p_y_xz/rnn/random_normal!decoder/p_y_xz/rnn/ExpandDims/dim*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0

decoder/p_y_xz/rnn/mul_2Muldecoder/p_y_xz/rnn/muldecoder/p_y_xz/rnn/ExpandDims*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
q
decoder/p_y_xz/rnn/Shape_1Shapedecoder/p_y_xz/rnn/Tanh*
out_type0*
_output_shapes
:*
T0
l
'decoder/p_y_xz/rnn/random_normal_1/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n
)decoder/p_y_xz/rnn/random_normal_1/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ă
7decoder/p_y_xz/rnn/random_normal_1/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed *
T0*
dtype0
Ă
&decoder/p_y_xz/rnn/random_normal_1/mulMul7decoder/p_y_xz/rnn/random_normal_1/RandomStandardNormal)decoder/p_y_xz/rnn/random_normal_1/stddev*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
"decoder/p_y_xz/rnn/random_normal_1Add&decoder/p_y_xz/rnn/random_normal_1/mul'decoder/p_y_xz/rnn/random_normal_1/mean*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
n
#decoder/p_y_xz/rnn/ExpandDims_1/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
¸
decoder/p_y_xz/rnn/ExpandDims_1
ExpandDims"decoder/p_y_xz/rnn/random_normal_1#decoder/p_y_xz/rnn/ExpandDims_1/dim*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0

decoder/p_y_xz/rnn/mul_3Muldecoder/p_y_xz/rnn/mul_1decoder/p_y_xz/rnn/ExpandDims_1*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/addAdddecoder/p_y_xz/rnn/mul_2decoder/p_y_xz/rnn/mul_3*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

decoder/p_y_xz/rnn/add_1Adddecoder/p_y_xz/rnn/Reshapedecoder/p_y_xz/rnn/add*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
w
4decoder/p_y_xz/rnn/Categorical_1/sample/sample_shapeConst*
valueB *
dtype0*
_output_shapes
: 

Kdecoder/p_y_xz/rnn/Categorical_1/sample/multinomial/Multinomial/num_samplesConst*
value	B :*
dtype0*
_output_shapes
: 
ţ
?decoder/p_y_xz/rnn/Categorical_1/sample/multinomial/MultinomialMultinomialdecoder/p_y_xz/rnn/subKdecoder/p_y_xz/rnn/Categorical_1/sample/multinomial/Multinomial/num_samples*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed 
 
6decoder/p_y_xz/rnn/Categorical_1/sample/transpose/RankRank?decoder/p_y_xz/rnn/Categorical_1/sample/multinomial/Multinomial*
_output_shapes
: *
T0	
y
7decoder/p_y_xz/rnn/Categorical_1/sample/transpose/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
Î
5decoder/p_y_xz/rnn/Categorical_1/sample/transpose/subSub6decoder/p_y_xz/rnn/Categorical_1/sample/transpose/Rank7decoder/p_y_xz/rnn/Categorical_1/sample/transpose/sub/y*
T0*
_output_shapes
: 

=decoder/p_y_xz/rnn/Categorical_1/sample/transpose/Range/startConst*
_output_shapes
: *
value	B : *
dtype0

=decoder/p_y_xz/rnn/Categorical_1/sample/transpose/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

7decoder/p_y_xz/rnn/Categorical_1/sample/transpose/RangeRange=decoder/p_y_xz/rnn/Categorical_1/sample/transpose/Range/start6decoder/p_y_xz/rnn/Categorical_1/sample/transpose/Rank=decoder/p_y_xz/rnn/Categorical_1/sample/transpose/Range/delta*
_output_shapes
:*

Tidx0
Ó
7decoder/p_y_xz/rnn/Categorical_1/sample/transpose/sub_1Sub5decoder/p_y_xz/rnn/Categorical_1/sample/transpose/sub7decoder/p_y_xz/rnn/Categorical_1/sample/transpose/Range*
_output_shapes
:*
T0
÷
1decoder/p_y_xz/rnn/Categorical_1/sample/transpose	Transpose?decoder/p_y_xz/rnn/Categorical_1/sample/multinomial/Multinomial7decoder/p_y_xz/rnn/Categorical_1/sample/transpose/sub_1*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0
ş
Odecoder/p_y_xz/rnn/Categorical_1/sample/Categorical/batch_shape_tensor/IdentityIdentity8decoder/p_y_xz/rnn/Categorical/batch_shape/strided_slice*
T0*
_output_shapes
:

7decoder/p_y_xz/rnn/Categorical_1/sample/concat/values_0Const*
valueB:*
dtype0*
_output_shapes
:
u
3decoder/p_y_xz/rnn/Categorical_1/sample/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ł
.decoder/p_y_xz/rnn/Categorical_1/sample/concatConcatV27decoder/p_y_xz/rnn/Categorical_1/sample/concat/values_0Odecoder/p_y_xz/rnn/Categorical_1/sample/Categorical/batch_shape_tensor/Identity3decoder/p_y_xz/rnn/Categorical_1/sample/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
Ý
/decoder/p_y_xz/rnn/Categorical_1/sample/ReshapeReshape1decoder/p_y_xz/rnn/Categorical_1/sample/transpose.decoder/p_y_xz/rnn/Categorical_1/sample/concat*
T0	*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ś
,decoder/p_y_xz/rnn/Categorical_1/sample/CastCast/decoder/p_y_xz/rnn/Categorical_1/sample/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0	

-decoder/p_y_xz/rnn/Categorical_1/sample/ShapeShape,decoder/p_y_xz/rnn/Categorical_1/sample/Cast*
_output_shapes
:*
T0*
out_type0

;decoder/p_y_xz/rnn/Categorical_1/sample/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

=decoder/p_y_xz/rnn/Categorical_1/sample/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

=decoder/p_y_xz/rnn/Categorical_1/sample/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Ĺ
5decoder/p_y_xz/rnn/Categorical_1/sample/strided_sliceStridedSlice-decoder/p_y_xz/rnn/Categorical_1/sample/Shape;decoder/p_y_xz/rnn/Categorical_1/sample/strided_slice/stack=decoder/p_y_xz/rnn/Categorical_1/sample/strided_slice/stack_1=decoder/p_y_xz/rnn/Categorical_1/sample/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
w
5decoder/p_y_xz/rnn/Categorical_1/sample/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

0decoder/p_y_xz/rnn/Categorical_1/sample/concat_1ConcatV24decoder/p_y_xz/rnn/Categorical_1/sample/sample_shape5decoder/p_y_xz/rnn/Categorical_1/sample/strided_slice5decoder/p_y_xz/rnn/Categorical_1/sample/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ř
1decoder/p_y_xz/rnn/Categorical_1/sample/Reshape_1Reshape,decoder/p_y_xz/rnn/Categorical_1/sample/Cast0decoder/p_y_xz/rnn/Categorical_1/sample/concat_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
h
#decoder/p_y_xz/rnn/one_hot/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
i
$decoder/p_y_xz/rnn/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
b
 decoder/p_y_xz/rnn/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 

decoder/p_y_xz/rnn/one_hotOneHot1decoder/p_y_xz/rnn/Categorical_1/sample/Reshape_1 decoder/p_y_xz/rnn/one_hot/depth#decoder/p_y_xz/rnn/one_hot/on_value$decoder/p_y_xz/rnn/one_hot/off_value*
T0*
TI0*
axis˙˙˙˙˙˙˙˙˙*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
#decoder/p_y_xz/rnn/ExpandDims_2/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
°
decoder/p_y_xz/rnn/ExpandDims_2
ExpandDimsdecoder/p_y_xz/rnn/one_hot#decoder/p_y_xz/rnn/ExpandDims_2/dim*

Tdim0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_4Muldecoder/p_y_xz/rnn/add_1decoder/p_y_xz/rnn/ExpandDims_2*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
(decoder/p_y_xz/rnn/Sum/reduction_indicesConst*
valueB :
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
°
decoder/p_y_xz/rnn/SumSumdecoder/p_y_xz/rnn/mul_4(decoder/p_y_xz/rnn/Sum/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims( *

Tidx0
{
&decoder/p_y_xz/rnn/strided_slice/stackConst*!
valueB"            *
dtype0*
_output_shapes
:
}
(decoder/p_y_xz/rnn/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*!
valueB"           
}
(decoder/p_y_xz/rnn/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*!
valueB"         
ý
 decoder/p_y_xz/rnn/strided_sliceStridedSlice,features_standardization/car1_future/truediv&decoder/p_y_xz/rnn/strided_slice/stack(decoder/p_y_xz/rnn/strided_slice/stack_1(decoder/p_y_xz/rnn/strided_slice/stack_2*
end_mask*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Index0*
T0*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask 
e
#decoder/p_y_xz/rnn/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ł
!decoder/p_y_xz/rnn/Tile/multiplesPacksample_ct_1/strided_slice#decoder/p_y_xz/rnn/Tile/multiples/1*
T0*

axis *
N*
_output_shapes
:
¨
decoder/p_y_xz/rnn/TileTile decoder/p_y_xz/rnn/strided_slice!decoder/p_y_xz/rnn/Tile/multiples*

Tmultiples0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
decoder/p_y_xz/rnn/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
˝
decoder/p_y_xz/rnn/concatConcatV2decoder/p_y_xz/rnn/Tiledecoder/p_y_xz/rnn/Sumdecoder/p_y_xz/rnn/concat/axis*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0
b
 decoder/p_y_xz/rnn/concat_1/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ă
decoder/p_y_xz/rnn/concat_1ConcatV2decoder/p_y_xz/concatdecoder/p_y_xz/rnn/concat decoder/p_y_xz/rnn/concat_1/axis*

Tidx0*
T0*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛

\decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1/axisConst*
value	B :*
dtype0*
_output_shapes
: 
ü
Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1ConcatV2decoder/p_y_xz/rnn/concat_1Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2\decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1/axis*

Tidx0*
T0*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛
ä
Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1MatMulWdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1Odecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
Ő
Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1BiasAddWdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1Mdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const_1Const*
value	B :*
dtype0*
_output_shapes
: 
˘
`decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1/split_dimConst*
dtype0*
_output_shapes
: *
value	B :

Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1Split`decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1/split_dimXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
ę
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_2TanhXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1:1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ŕ
Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2AddXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1:2Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2/y*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ě
Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_3SigmoidTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3MulTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_3*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
î
Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_4SigmoidVdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ż
Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4MulXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_4Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ş
Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3AddTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ć
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_3TanhTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
đ
Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_5SigmoidXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ż
Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5MulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_3Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_5*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

-decoder/p_y_xz/rnn/log_pi_projection_2/MatMulMatMulTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_50decoder/p_y_xz/rnn/log_pi_projection/kernel/read*
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
á
.decoder/p_y_xz/rnn/log_pi_projection_2/BiasAddBiasAdd-decoder/p_y_xz/rnn/log_pi_projection_2/MatMul.decoder/p_y_xz/rnn/log_pi_projection/bias/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC

)decoder/p_y_xz/rnn/mu_projection_2/MatMulMatMulTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5,decoder/p_y_xz/rnn/mu_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( *
transpose_b( 
Ő
*decoder/p_y_xz/rnn/mu_projection_2/BiasAddBiasAdd)decoder/p_y_xz/rnn/mu_projection_2/MatMul*decoder/p_y_xz/rnn/mu_projection/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

0decoder/p_y_xz/rnn/log_sigma_projection_2/MatMulMatMulTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_53decoder/p_y_xz/rnn/log_sigma_projection/kernel/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( *
transpose_b( *
T0
ę
1decoder/p_y_xz/rnn/log_sigma_projection_2/BiasAddBiasAdd0decoder/p_y_xz/rnn/log_sigma_projection_2/MatMul1decoder/p_y_xz/rnn/log_sigma_projection/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

+decoder/p_y_xz/rnn/corr_projection_2/MatMulMatMulTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5.decoder/p_y_xz/rnn/corr_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
Ű
,decoder/p_y_xz/rnn/corr_projection_2/BiasAddBiasAdd+decoder/p_y_xz/rnn/corr_projection_2/MatMul,decoder/p_y_xz/rnn/corr_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/Tanh_1Tanh,decoder/p_y_xz/rnn/corr_projection_2/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

:decoder/p_y_xz/rnn/ReduceLogSumExp_1/Max/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙
ę
(decoder/p_y_xz/rnn/ReduceLogSumExp_1/MaxMax.decoder/p_y_xz/rnn/log_pi_projection_2/BiasAdd:decoder/p_y_xz/rnn/ReduceLogSumExp_1/Max/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0

1decoder/p_y_xz/rnn/ReduceLogSumExp_1/StopGradientStopGradient(decoder/p_y_xz/rnn/ReduceLogSumExp_1/Max*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
(decoder/p_y_xz/rnn/ReduceLogSumExp_1/subSub.decoder/p_y_xz/rnn/log_pi_projection_2/BiasAdd1decoder/p_y_xz/rnn/ReduceLogSumExp_1/StopGradient*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

(decoder/p_y_xz/rnn/ReduceLogSumExp_1/ExpExp(decoder/p_y_xz/rnn/ReduceLogSumExp_1/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

:decoder/p_y_xz/rnn/ReduceLogSumExp_1/Sum/reduction_indicesConst*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0
ä
(decoder/p_y_xz/rnn/ReduceLogSumExp_1/SumSum(decoder/p_y_xz/rnn/ReduceLogSumExp_1/Exp:decoder/p_y_xz/rnn/ReduceLogSumExp_1/Sum/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0

(decoder/p_y_xz/rnn/ReduceLogSumExp_1/LogLog(decoder/p_y_xz/rnn/ReduceLogSumExp_1/Sum*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
(decoder/p_y_xz/rnn/ReduceLogSumExp_1/addAdd(decoder/p_y_xz/rnn/ReduceLogSumExp_1/Log1decoder/p_y_xz/rnn/ReduceLogSumExp_1/StopGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
decoder/p_y_xz/rnn/sub_2Sub.decoder/p_y_xz/rnn/log_pi_projection_2/BiasAdd(decoder/p_y_xz/rnn/ReduceLogSumExp_1/add*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
w
"decoder/p_y_xz/rnn/Reshape_2/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ť
decoder/p_y_xz/rnn/Reshape_2Reshape*decoder/p_y_xz/rnn/mu_projection_2/BiasAdd"decoder/p_y_xz/rnn/Reshape_2/shape*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
q
,decoder/p_y_xz/rnn/clip_by_value_1/Minimum/yConst*
valueB
 *   A*
dtype0*
_output_shapes
: 
Č
*decoder/p_y_xz/rnn/clip_by_value_1/MinimumMinimum1decoder/p_y_xz/rnn/log_sigma_projection_2/BiasAdd,decoder/p_y_xz/rnn/clip_by_value_1/Minimum/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
i
$decoder/p_y_xz/rnn/clip_by_value_1/yConst*
_output_shapes
: *
valueB
 *   Á*
dtype0
ą
"decoder/p_y_xz/rnn/clip_by_value_1Maximum*decoder/p_y_xz/rnn/clip_by_value_1/Minimum$decoder/p_y_xz/rnn/clip_by_value_1/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
w
"decoder/p_y_xz/rnn/Reshape_3/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ł
decoder/p_y_xz/rnn/Reshape_3Reshape"decoder/p_y_xz/rnn/clip_by_value_1"decoder/p_y_xz/rnn/Reshape_3/shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
decoder/p_y_xz/rnn/Exp_1Expdecoder/p_y_xz/rnn/Reshape_3*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
decoder/p_y_xz/rnn/Square_1Squaredecoder/p_y_xz/rnn/Tanh_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
decoder/p_y_xz/rnn/sub_3/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

decoder/p_y_xz/rnn/sub_3Subdecoder/p_y_xz/rnn/sub_3/xdecoder/p_y_xz/rnn/Square_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
}
$decoder/p_y_xz/rnn/ones_like_1/ShapeShapedecoder/p_y_xz/rnn/Tanh_1*
T0*
out_type0*
_output_shapes
:
i
$decoder/p_y_xz/rnn/ones_like_1/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¤
decoder/p_y_xz/rnn/ones_like_1Fill$decoder/p_y_xz/rnn/ones_like_1/Shape$decoder/p_y_xz/rnn/ones_like_1/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ą
decoder/p_y_xz/rnn/stack_2Packdecoder/p_y_xz/rnn/ones_like_1decoder/p_y_xz/rnn/Tanh_1*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
axis˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_5Muldecoder/p_y_xz/rnn/Exp_1decoder/p_y_xz/rnn/stack_2*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
decoder/p_y_xz/rnn/zeros_like_1	ZerosLikedecoder/p_y_xz/rnn/Tanh_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
m
decoder/p_y_xz/rnn/Sqrt_1Sqrtdecoder/p_y_xz/rnn/sub_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˛
decoder/p_y_xz/rnn/stack_3Packdecoder/p_y_xz/rnn/zeros_like_1decoder/p_y_xz/rnn/Sqrt_1*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
axis˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_6Muldecoder/p_y_xz/rnn/Exp_1decoder/p_y_xz/rnn/stack_3*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

2decoder/p_y_xz/rnn/Categorical_2/Categorical/probsSoftmaxdecoder/p_y_xz/rnn/sub_2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
m
+decoder/p_y_xz/rnn/Categorical_2/batch_rankConst*
_output_shapes
: *
value	B :*
dtype0

-decoder/p_y_xz/rnn/Categorical_2/logits_shapeShapedecoder/p_y_xz/rnn/sub_2*
_output_shapes
:*
T0*
out_type0
m
+decoder/p_y_xz/rnn/Categorical_2/event_sizeConst*
value	B :*
dtype0*
_output_shapes
: 

@decoder/p_y_xz/rnn/Categorical_2/batch_shape/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0

Bdecoder/p_y_xz/rnn/Categorical_2/batch_shape/strided_slice/stack_1Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

Bdecoder/p_y_xz/rnn/Categorical_2/batch_shape/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ů
:decoder/p_y_xz/rnn/Categorical_2/batch_shape/strided_sliceStridedSlice-decoder/p_y_xz/rnn/Categorical_2/logits_shape@decoder/p_y_xz/rnn/Categorical_2/batch_shape/strided_slice/stackBdecoder/p_y_xz/rnn/Categorical_2/batch_shape/strided_slice/stack_1Bdecoder/p_y_xz/rnn/Categorical_2/batch_shape/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
s
decoder/p_y_xz/rnn/Shape_2Shapedecoder/p_y_xz/rnn/Tanh_1*
T0*
out_type0*
_output_shapes
:
l
'decoder/p_y_xz/rnn/random_normal_2/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
n
)decoder/p_y_xz/rnn/random_normal_2/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ă
7decoder/p_y_xz/rnn/random_normal_2/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_2*

seed *
T0*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 
Ă
&decoder/p_y_xz/rnn/random_normal_2/mulMul7decoder/p_y_xz/rnn/random_normal_2/RandomStandardNormal)decoder/p_y_xz/rnn/random_normal_2/stddev*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ź
"decoder/p_y_xz/rnn/random_normal_2Add&decoder/p_y_xz/rnn/random_normal_2/mul'decoder/p_y_xz/rnn/random_normal_2/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
#decoder/p_y_xz/rnn/ExpandDims_3/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
¸
decoder/p_y_xz/rnn/ExpandDims_3
ExpandDims"decoder/p_y_xz/rnn/random_normal_2#decoder/p_y_xz/rnn/ExpandDims_3/dim*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0

decoder/p_y_xz/rnn/mul_7Muldecoder/p_y_xz/rnn/mul_5decoder/p_y_xz/rnn/ExpandDims_3*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
s
decoder/p_y_xz/rnn/Shape_3Shapedecoder/p_y_xz/rnn/Tanh_1*
T0*
out_type0*
_output_shapes
:
l
'decoder/p_y_xz/rnn/random_normal_3/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n
)decoder/p_y_xz/rnn/random_normal_3/stddevConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
Ă
7decoder/p_y_xz/rnn/random_normal_3/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_3*
T0*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed 
Ă
&decoder/p_y_xz/rnn/random_normal_3/mulMul7decoder/p_y_xz/rnn/random_normal_3/RandomStandardNormal)decoder/p_y_xz/rnn/random_normal_3/stddev*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
"decoder/p_y_xz/rnn/random_normal_3Add&decoder/p_y_xz/rnn/random_normal_3/mul'decoder/p_y_xz/rnn/random_normal_3/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
#decoder/p_y_xz/rnn/ExpandDims_4/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
¸
decoder/p_y_xz/rnn/ExpandDims_4
ExpandDims"decoder/p_y_xz/rnn/random_normal_3#decoder/p_y_xz/rnn/ExpandDims_4/dim*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0

decoder/p_y_xz/rnn/mul_8Muldecoder/p_y_xz/rnn/mul_6decoder/p_y_xz/rnn/ExpandDims_4*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

decoder/p_y_xz/rnn/add_2Adddecoder/p_y_xz/rnn/mul_7decoder/p_y_xz/rnn/mul_8*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/add_3Adddecoder/p_y_xz/rnn/Reshape_2decoder/p_y_xz/rnn/add_2*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
4decoder/p_y_xz/rnn/Categorical_3/sample/sample_shapeConst*
_output_shapes
: *
valueB *
dtype0

Kdecoder/p_y_xz/rnn/Categorical_3/sample/multinomial/Multinomial/num_samplesConst*
value	B :*
dtype0*
_output_shapes
: 

?decoder/p_y_xz/rnn/Categorical_3/sample/multinomial/MultinomialMultinomialdecoder/p_y_xz/rnn/sub_2Kdecoder/p_y_xz/rnn/Categorical_3/sample/multinomial/Multinomial/num_samples*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed *
T0
 
6decoder/p_y_xz/rnn/Categorical_3/sample/transpose/RankRank?decoder/p_y_xz/rnn/Categorical_3/sample/multinomial/Multinomial*
T0	*
_output_shapes
: 
y
7decoder/p_y_xz/rnn/Categorical_3/sample/transpose/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
Î
5decoder/p_y_xz/rnn/Categorical_3/sample/transpose/subSub6decoder/p_y_xz/rnn/Categorical_3/sample/transpose/Rank7decoder/p_y_xz/rnn/Categorical_3/sample/transpose/sub/y*
T0*
_output_shapes
: 

=decoder/p_y_xz/rnn/Categorical_3/sample/transpose/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 

=decoder/p_y_xz/rnn/Categorical_3/sample/transpose/Range/deltaConst*
_output_shapes
: *
value	B :*
dtype0

7decoder/p_y_xz/rnn/Categorical_3/sample/transpose/RangeRange=decoder/p_y_xz/rnn/Categorical_3/sample/transpose/Range/start6decoder/p_y_xz/rnn/Categorical_3/sample/transpose/Rank=decoder/p_y_xz/rnn/Categorical_3/sample/transpose/Range/delta*
_output_shapes
:*

Tidx0
Ó
7decoder/p_y_xz/rnn/Categorical_3/sample/transpose/sub_1Sub5decoder/p_y_xz/rnn/Categorical_3/sample/transpose/sub7decoder/p_y_xz/rnn/Categorical_3/sample/transpose/Range*
T0*
_output_shapes
:
÷
1decoder/p_y_xz/rnn/Categorical_3/sample/transpose	Transpose?decoder/p_y_xz/rnn/Categorical_3/sample/multinomial/Multinomial7decoder/p_y_xz/rnn/Categorical_3/sample/transpose/sub_1*
Tperm0*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ź
Odecoder/p_y_xz/rnn/Categorical_3/sample/Categorical/batch_shape_tensor/IdentityIdentity:decoder/p_y_xz/rnn/Categorical_2/batch_shape/strided_slice*
T0*
_output_shapes
:

7decoder/p_y_xz/rnn/Categorical_3/sample/concat/values_0Const*
valueB:*
dtype0*
_output_shapes
:
u
3decoder/p_y_xz/rnn/Categorical_3/sample/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ł
.decoder/p_y_xz/rnn/Categorical_3/sample/concatConcatV27decoder/p_y_xz/rnn/Categorical_3/sample/concat/values_0Odecoder/p_y_xz/rnn/Categorical_3/sample/Categorical/batch_shape_tensor/Identity3decoder/p_y_xz/rnn/Categorical_3/sample/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
Ý
/decoder/p_y_xz/rnn/Categorical_3/sample/ReshapeReshape1decoder/p_y_xz/rnn/Categorical_3/sample/transpose.decoder/p_y_xz/rnn/Categorical_3/sample/concat*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0	
Ś
,decoder/p_y_xz/rnn/Categorical_3/sample/CastCast/decoder/p_y_xz/rnn/Categorical_3/sample/Reshape*

SrcT0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0

-decoder/p_y_xz/rnn/Categorical_3/sample/ShapeShape,decoder/p_y_xz/rnn/Categorical_3/sample/Cast*
T0*
out_type0*
_output_shapes
:

;decoder/p_y_xz/rnn/Categorical_3/sample/strided_slice/stackConst*
_output_shapes
:*
valueB:*
dtype0

=decoder/p_y_xz/rnn/Categorical_3/sample/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 

=decoder/p_y_xz/rnn/Categorical_3/sample/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ĺ
5decoder/p_y_xz/rnn/Categorical_3/sample/strided_sliceStridedSlice-decoder/p_y_xz/rnn/Categorical_3/sample/Shape;decoder/p_y_xz/rnn/Categorical_3/sample/strided_slice/stack=decoder/p_y_xz/rnn/Categorical_3/sample/strided_slice/stack_1=decoder/p_y_xz/rnn/Categorical_3/sample/strided_slice/stack_2*
_output_shapes
:*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask
w
5decoder/p_y_xz/rnn/Categorical_3/sample/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

0decoder/p_y_xz/rnn/Categorical_3/sample/concat_1ConcatV24decoder/p_y_xz/rnn/Categorical_3/sample/sample_shape5decoder/p_y_xz/rnn/Categorical_3/sample/strided_slice5decoder/p_y_xz/rnn/Categorical_3/sample/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ř
1decoder/p_y_xz/rnn/Categorical_3/sample/Reshape_1Reshape,decoder/p_y_xz/rnn/Categorical_3/sample/Cast0decoder/p_y_xz/rnn/Categorical_3/sample/concat_1*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
j
%decoder/p_y_xz/rnn/one_hot_1/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
k
&decoder/p_y_xz/rnn/one_hot_1/off_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
d
"decoder/p_y_xz/rnn/one_hot_1/depthConst*
value	B :*
dtype0*
_output_shapes
: 

decoder/p_y_xz/rnn/one_hot_1OneHot1decoder/p_y_xz/rnn/Categorical_3/sample/Reshape_1"decoder/p_y_xz/rnn/one_hot_1/depth%decoder/p_y_xz/rnn/one_hot_1/on_value&decoder/p_y_xz/rnn/one_hot_1/off_value*
T0*
TI0*
axis˙˙˙˙˙˙˙˙˙*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
#decoder/p_y_xz/rnn/ExpandDims_5/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
˛
decoder/p_y_xz/rnn/ExpandDims_5
ExpandDimsdecoder/p_y_xz/rnn/one_hot_1#decoder/p_y_xz/rnn/ExpandDims_5/dim*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0

decoder/p_y_xz/rnn/mul_9Muldecoder/p_y_xz/rnn/add_3decoder/p_y_xz/rnn/ExpandDims_5*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
*decoder/p_y_xz/rnn/Sum_1/reduction_indicesConst*
valueB :
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
´
decoder/p_y_xz/rnn/Sum_1Sumdecoder/p_y_xz/rnn/mul_9*decoder/p_y_xz/rnn/Sum_1/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims( *

Tidx0
}
(decoder/p_y_xz/rnn/strided_slice_1/stackConst*!
valueB"           *
dtype0*
_output_shapes
:

*decoder/p_y_xz/rnn/strided_slice_1/stack_1Const*!
valueB"           *
dtype0*
_output_shapes
:

*decoder/p_y_xz/rnn/strided_slice_1/stack_2Const*!
valueB"         *
dtype0*
_output_shapes
:

"decoder/p_y_xz/rnn/strided_slice_1StridedSlice,features_standardization/car1_future/truediv(decoder/p_y_xz/rnn/strided_slice_1/stack*decoder/p_y_xz/rnn/strided_slice_1/stack_1*decoder/p_y_xz/rnn/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
g
%decoder/p_y_xz/rnn/Tile_1/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
§
#decoder/p_y_xz/rnn/Tile_1/multiplesPacksample_ct_1/strided_slice%decoder/p_y_xz/rnn/Tile_1/multiples/1*
T0*

axis *
N*
_output_shapes
:
Ž
decoder/p_y_xz/rnn/Tile_1Tile"decoder/p_y_xz/rnn/strided_slice_1#decoder/p_y_xz/rnn/Tile_1/multiples*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0
b
 decoder/p_y_xz/rnn/concat_2/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ĺ
decoder/p_y_xz/rnn/concat_2ConcatV2decoder/p_y_xz/rnn/Tile_1decoder/p_y_xz/rnn/Sum_1 decoder/p_y_xz/rnn/concat_2/axis*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0
b
 decoder/p_y_xz/rnn/concat_3/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ĺ
decoder/p_y_xz/rnn/concat_3ConcatV2decoder/p_y_xz/concatdecoder/p_y_xz/rnn/concat_2 decoder/p_y_xz/rnn/concat_3/axis*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛*

Tidx0*
T0

\decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2/axisConst*
value	B :*
dtype0*
_output_shapes
: 
ü
Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2ConcatV2decoder/p_y_xz/rnn/concat_3Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5\decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2/axis*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛*

Tidx0*
T0
ä
Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2MatMulWdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2Odecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
Ő
Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2BiasAddWdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2Mdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const_2Const*
value	B :*
dtype0*
_output_shapes
: 
˘
`decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2/split_dimConst*
value	B :*
dtype0*
_output_shapes
: 

Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2Split`decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2/split_dimXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
ę
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_4TanhXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4/yConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ŕ
Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4AddXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2:2Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4/y*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ě
Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_6SigmoidTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6MulTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_6*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
î
Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_7SigmoidVdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ż
Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7MulXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_7Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ş
Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5AddTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ć
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_5TanhTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
đ
Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_8SigmoidXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ż
Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8MulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_5Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_8*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

-decoder/p_y_xz/rnn/log_pi_projection_4/MatMulMatMulTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_80decoder/p_y_xz/rnn/log_pi_projection/kernel/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
á
.decoder/p_y_xz/rnn/log_pi_projection_4/BiasAddBiasAdd-decoder/p_y_xz/rnn/log_pi_projection_4/MatMul.decoder/p_y_xz/rnn/log_pi_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

)decoder/p_y_xz/rnn/mu_projection_4/MatMulMatMulTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8,decoder/p_y_xz/rnn/mu_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( *
transpose_b( 
Ő
*decoder/p_y_xz/rnn/mu_projection_4/BiasAddBiasAdd)decoder/p_y_xz/rnn/mu_projection_4/MatMul*decoder/p_y_xz/rnn/mu_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

0decoder/p_y_xz/rnn/log_sigma_projection_4/MatMulMatMulTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_83decoder/p_y_xz/rnn/log_sigma_projection/kernel/read*
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( 
ę
1decoder/p_y_xz/rnn/log_sigma_projection_4/BiasAddBiasAdd0decoder/p_y_xz/rnn/log_sigma_projection_4/MatMul1decoder/p_y_xz/rnn/log_sigma_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

+decoder/p_y_xz/rnn/corr_projection_4/MatMulMatMulTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8.decoder/p_y_xz/rnn/corr_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
Ű
,decoder/p_y_xz/rnn/corr_projection_4/BiasAddBiasAdd+decoder/p_y_xz/rnn/corr_projection_4/MatMul,decoder/p_y_xz/rnn/corr_projection/bias/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC

decoder/p_y_xz/rnn/Tanh_2Tanh,decoder/p_y_xz/rnn/corr_projection_4/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

:decoder/p_y_xz/rnn/ReduceLogSumExp_2/Max/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ę
(decoder/p_y_xz/rnn/ReduceLogSumExp_2/MaxMax.decoder/p_y_xz/rnn/log_pi_projection_4/BiasAdd:decoder/p_y_xz/rnn/ReduceLogSumExp_2/Max/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0

1decoder/p_y_xz/rnn/ReduceLogSumExp_2/StopGradientStopGradient(decoder/p_y_xz/rnn/ReduceLogSumExp_2/Max*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
(decoder/p_y_xz/rnn/ReduceLogSumExp_2/subSub.decoder/p_y_xz/rnn/log_pi_projection_4/BiasAdd1decoder/p_y_xz/rnn/ReduceLogSumExp_2/StopGradient*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

(decoder/p_y_xz/rnn/ReduceLogSumExp_2/ExpExp(decoder/p_y_xz/rnn/ReduceLogSumExp_2/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

:decoder/p_y_xz/rnn/ReduceLogSumExp_2/Sum/reduction_indicesConst*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0
ä
(decoder/p_y_xz/rnn/ReduceLogSumExp_2/SumSum(decoder/p_y_xz/rnn/ReduceLogSumExp_2/Exp:decoder/p_y_xz/rnn/ReduceLogSumExp_2/Sum/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0

(decoder/p_y_xz/rnn/ReduceLogSumExp_2/LogLog(decoder/p_y_xz/rnn/ReduceLogSumExp_2/Sum*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
(decoder/p_y_xz/rnn/ReduceLogSumExp_2/addAdd(decoder/p_y_xz/rnn/ReduceLogSumExp_2/Log1decoder/p_y_xz/rnn/ReduceLogSumExp_2/StopGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
decoder/p_y_xz/rnn/sub_4Sub.decoder/p_y_xz/rnn/log_pi_projection_4/BiasAdd(decoder/p_y_xz/rnn/ReduceLogSumExp_2/add*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
w
"decoder/p_y_xz/rnn/Reshape_4/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ť
decoder/p_y_xz/rnn/Reshape_4Reshape*decoder/p_y_xz/rnn/mu_projection_4/BiasAdd"decoder/p_y_xz/rnn/Reshape_4/shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
,decoder/p_y_xz/rnn/clip_by_value_2/Minimum/yConst*
valueB
 *   A*
dtype0*
_output_shapes
: 
Č
*decoder/p_y_xz/rnn/clip_by_value_2/MinimumMinimum1decoder/p_y_xz/rnn/log_sigma_projection_4/BiasAdd,decoder/p_y_xz/rnn/clip_by_value_2/Minimum/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
i
$decoder/p_y_xz/rnn/clip_by_value_2/yConst*
valueB
 *   Á*
dtype0*
_output_shapes
: 
ą
"decoder/p_y_xz/rnn/clip_by_value_2Maximum*decoder/p_y_xz/rnn/clip_by_value_2/Minimum$decoder/p_y_xz/rnn/clip_by_value_2/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
w
"decoder/p_y_xz/rnn/Reshape_5/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ł
decoder/p_y_xz/rnn/Reshape_5Reshape"decoder/p_y_xz/rnn/clip_by_value_2"decoder/p_y_xz/rnn/Reshape_5/shape*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
s
decoder/p_y_xz/rnn/Exp_2Expdecoder/p_y_xz/rnn/Reshape_5*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
decoder/p_y_xz/rnn/Square_2Squaredecoder/p_y_xz/rnn/Tanh_2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
_
decoder/p_y_xz/rnn/sub_5/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

decoder/p_y_xz/rnn/sub_5Subdecoder/p_y_xz/rnn/sub_5/xdecoder/p_y_xz/rnn/Square_2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
}
$decoder/p_y_xz/rnn/ones_like_2/ShapeShapedecoder/p_y_xz/rnn/Tanh_2*
_output_shapes
:*
T0*
out_type0
i
$decoder/p_y_xz/rnn/ones_like_2/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¤
decoder/p_y_xz/rnn/ones_like_2Fill$decoder/p_y_xz/rnn/ones_like_2/Shape$decoder/p_y_xz/rnn/ones_like_2/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ą
decoder/p_y_xz/rnn/stack_4Packdecoder/p_y_xz/rnn/ones_like_2decoder/p_y_xz/rnn/Tanh_2*
axis˙˙˙˙˙˙˙˙˙*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

decoder/p_y_xz/rnn/mul_10Muldecoder/p_y_xz/rnn/Exp_2decoder/p_y_xz/rnn/stack_4*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
decoder/p_y_xz/rnn/zeros_like_2	ZerosLikedecoder/p_y_xz/rnn/Tanh_2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
m
decoder/p_y_xz/rnn/Sqrt_2Sqrtdecoder/p_y_xz/rnn/sub_5*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˛
decoder/p_y_xz/rnn/stack_5Packdecoder/p_y_xz/rnn/zeros_like_2decoder/p_y_xz/rnn/Sqrt_2*
T0*
axis˙˙˙˙˙˙˙˙˙*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_11Muldecoder/p_y_xz/rnn/Exp_2decoder/p_y_xz/rnn/stack_5*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

2decoder/p_y_xz/rnn/Categorical_4/Categorical/probsSoftmaxdecoder/p_y_xz/rnn/sub_4*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
m
+decoder/p_y_xz/rnn/Categorical_4/batch_rankConst*
value	B :*
dtype0*
_output_shapes
: 

-decoder/p_y_xz/rnn/Categorical_4/logits_shapeShapedecoder/p_y_xz/rnn/sub_4*
T0*
out_type0*
_output_shapes
:
m
+decoder/p_y_xz/rnn/Categorical_4/event_sizeConst*
dtype0*
_output_shapes
: *
value	B :

@decoder/p_y_xz/rnn/Categorical_4/batch_shape/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Bdecoder/p_y_xz/rnn/Categorical_4/batch_shape/strided_slice/stack_1Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

Bdecoder/p_y_xz/rnn/Categorical_4/batch_shape/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ů
:decoder/p_y_xz/rnn/Categorical_4/batch_shape/strided_sliceStridedSlice-decoder/p_y_xz/rnn/Categorical_4/logits_shape@decoder/p_y_xz/rnn/Categorical_4/batch_shape/strided_slice/stackBdecoder/p_y_xz/rnn/Categorical_4/batch_shape/strided_slice/stack_1Bdecoder/p_y_xz/rnn/Categorical_4/batch_shape/strided_slice/stack_2*
_output_shapes
:*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask 
s
decoder/p_y_xz/rnn/Shape_4Shapedecoder/p_y_xz/rnn/Tanh_2*
_output_shapes
:*
T0*
out_type0
l
'decoder/p_y_xz/rnn/random_normal_4/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
n
)decoder/p_y_xz/rnn/random_normal_4/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ă
7decoder/p_y_xz/rnn/random_normal_4/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_4*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed *
T0*
dtype0
Ă
&decoder/p_y_xz/rnn/random_normal_4/mulMul7decoder/p_y_xz/rnn/random_normal_4/RandomStandardNormal)decoder/p_y_xz/rnn/random_normal_4/stddev*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ź
"decoder/p_y_xz/rnn/random_normal_4Add&decoder/p_y_xz/rnn/random_normal_4/mul'decoder/p_y_xz/rnn/random_normal_4/mean*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
n
#decoder/p_y_xz/rnn/ExpandDims_6/dimConst*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0
¸
decoder/p_y_xz/rnn/ExpandDims_6
ExpandDims"decoder/p_y_xz/rnn/random_normal_4#decoder/p_y_xz/rnn/ExpandDims_6/dim*

Tdim0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_12Muldecoder/p_y_xz/rnn/mul_10decoder/p_y_xz/rnn/ExpandDims_6*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
decoder/p_y_xz/rnn/Shape_5Shapedecoder/p_y_xz/rnn/Tanh_2*
T0*
out_type0*
_output_shapes
:
l
'decoder/p_y_xz/rnn/random_normal_5/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n
)decoder/p_y_xz/rnn/random_normal_5/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ă
7decoder/p_y_xz/rnn/random_normal_5/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_5*

seed *
T0*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 
Ă
&decoder/p_y_xz/rnn/random_normal_5/mulMul7decoder/p_y_xz/rnn/random_normal_5/RandomStandardNormal)decoder/p_y_xz/rnn/random_normal_5/stddev*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ź
"decoder/p_y_xz/rnn/random_normal_5Add&decoder/p_y_xz/rnn/random_normal_5/mul'decoder/p_y_xz/rnn/random_normal_5/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
#decoder/p_y_xz/rnn/ExpandDims_7/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
¸
decoder/p_y_xz/rnn/ExpandDims_7
ExpandDims"decoder/p_y_xz/rnn/random_normal_5#decoder/p_y_xz/rnn/ExpandDims_7/dim*

Tdim0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_13Muldecoder/p_y_xz/rnn/mul_11decoder/p_y_xz/rnn/ExpandDims_7*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

decoder/p_y_xz/rnn/add_4Adddecoder/p_y_xz/rnn/mul_12decoder/p_y_xz/rnn/mul_13*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

decoder/p_y_xz/rnn/add_5Adddecoder/p_y_xz/rnn/Reshape_4decoder/p_y_xz/rnn/add_4*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
4decoder/p_y_xz/rnn/Categorical_5/sample/sample_shapeConst*
valueB *
dtype0*
_output_shapes
: 

Kdecoder/p_y_xz/rnn/Categorical_5/sample/multinomial/Multinomial/num_samplesConst*
value	B :*
dtype0*
_output_shapes
: 

?decoder/p_y_xz/rnn/Categorical_5/sample/multinomial/MultinomialMultinomialdecoder/p_y_xz/rnn/sub_4Kdecoder/p_y_xz/rnn/Categorical_5/sample/multinomial/Multinomial/num_samples*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed *
T0
 
6decoder/p_y_xz/rnn/Categorical_5/sample/transpose/RankRank?decoder/p_y_xz/rnn/Categorical_5/sample/multinomial/Multinomial*
T0	*
_output_shapes
: 
y
7decoder/p_y_xz/rnn/Categorical_5/sample/transpose/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
Î
5decoder/p_y_xz/rnn/Categorical_5/sample/transpose/subSub6decoder/p_y_xz/rnn/Categorical_5/sample/transpose/Rank7decoder/p_y_xz/rnn/Categorical_5/sample/transpose/sub/y*
_output_shapes
: *
T0

=decoder/p_y_xz/rnn/Categorical_5/sample/transpose/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 

=decoder/p_y_xz/rnn/Categorical_5/sample/transpose/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

7decoder/p_y_xz/rnn/Categorical_5/sample/transpose/RangeRange=decoder/p_y_xz/rnn/Categorical_5/sample/transpose/Range/start6decoder/p_y_xz/rnn/Categorical_5/sample/transpose/Rank=decoder/p_y_xz/rnn/Categorical_5/sample/transpose/Range/delta*

Tidx0*
_output_shapes
:
Ó
7decoder/p_y_xz/rnn/Categorical_5/sample/transpose/sub_1Sub5decoder/p_y_xz/rnn/Categorical_5/sample/transpose/sub7decoder/p_y_xz/rnn/Categorical_5/sample/transpose/Range*
T0*
_output_shapes
:
÷
1decoder/p_y_xz/rnn/Categorical_5/sample/transpose	Transpose?decoder/p_y_xz/rnn/Categorical_5/sample/multinomial/Multinomial7decoder/p_y_xz/rnn/Categorical_5/sample/transpose/sub_1*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0
ź
Odecoder/p_y_xz/rnn/Categorical_5/sample/Categorical/batch_shape_tensor/IdentityIdentity:decoder/p_y_xz/rnn/Categorical_4/batch_shape/strided_slice*
T0*
_output_shapes
:

7decoder/p_y_xz/rnn/Categorical_5/sample/concat/values_0Const*
valueB:*
dtype0*
_output_shapes
:
u
3decoder/p_y_xz/rnn/Categorical_5/sample/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
ł
.decoder/p_y_xz/rnn/Categorical_5/sample/concatConcatV27decoder/p_y_xz/rnn/Categorical_5/sample/concat/values_0Odecoder/p_y_xz/rnn/Categorical_5/sample/Categorical/batch_shape_tensor/Identity3decoder/p_y_xz/rnn/Categorical_5/sample/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
Ý
/decoder/p_y_xz/rnn/Categorical_5/sample/ReshapeReshape1decoder/p_y_xz/rnn/Categorical_5/sample/transpose.decoder/p_y_xz/rnn/Categorical_5/sample/concat*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0	*
Tshape0
Ś
,decoder/p_y_xz/rnn/Categorical_5/sample/CastCast/decoder/p_y_xz/rnn/Categorical_5/sample/Reshape*

SrcT0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0

-decoder/p_y_xz/rnn/Categorical_5/sample/ShapeShape,decoder/p_y_xz/rnn/Categorical_5/sample/Cast*
T0*
out_type0*
_output_shapes
:

;decoder/p_y_xz/rnn/Categorical_5/sample/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

=decoder/p_y_xz/rnn/Categorical_5/sample/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

=decoder/p_y_xz/rnn/Categorical_5/sample/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ĺ
5decoder/p_y_xz/rnn/Categorical_5/sample/strided_sliceStridedSlice-decoder/p_y_xz/rnn/Categorical_5/sample/Shape;decoder/p_y_xz/rnn/Categorical_5/sample/strided_slice/stack=decoder/p_y_xz/rnn/Categorical_5/sample/strided_slice/stack_1=decoder/p_y_xz/rnn/Categorical_5/sample/strided_slice/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0
w
5decoder/p_y_xz/rnn/Categorical_5/sample/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

0decoder/p_y_xz/rnn/Categorical_5/sample/concat_1ConcatV24decoder/p_y_xz/rnn/Categorical_5/sample/sample_shape5decoder/p_y_xz/rnn/Categorical_5/sample/strided_slice5decoder/p_y_xz/rnn/Categorical_5/sample/concat_1/axis*
N*
_output_shapes
:*

Tidx0*
T0
Ř
1decoder/p_y_xz/rnn/Categorical_5/sample/Reshape_1Reshape,decoder/p_y_xz/rnn/Categorical_5/sample/Cast0decoder/p_y_xz/rnn/Categorical_5/sample/concat_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
j
%decoder/p_y_xz/rnn/one_hot_2/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
k
&decoder/p_y_xz/rnn/one_hot_2/off_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
d
"decoder/p_y_xz/rnn/one_hot_2/depthConst*
value	B :*
dtype0*
_output_shapes
: 

decoder/p_y_xz/rnn/one_hot_2OneHot1decoder/p_y_xz/rnn/Categorical_5/sample/Reshape_1"decoder/p_y_xz/rnn/one_hot_2/depth%decoder/p_y_xz/rnn/one_hot_2/on_value&decoder/p_y_xz/rnn/one_hot_2/off_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
TI0*
axis˙˙˙˙˙˙˙˙˙
n
#decoder/p_y_xz/rnn/ExpandDims_8/dimConst*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0
˛
decoder/p_y_xz/rnn/ExpandDims_8
ExpandDimsdecoder/p_y_xz/rnn/one_hot_2#decoder/p_y_xz/rnn/ExpandDims_8/dim*

Tdim0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_14Muldecoder/p_y_xz/rnn/add_5decoder/p_y_xz/rnn/ExpandDims_8*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
*decoder/p_y_xz/rnn/Sum_2/reduction_indicesConst*
valueB :
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ľ
decoder/p_y_xz/rnn/Sum_2Sumdecoder/p_y_xz/rnn/mul_14*decoder/p_y_xz/rnn/Sum_2/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims( *

Tidx0
}
(decoder/p_y_xz/rnn/strided_slice_2/stackConst*!
valueB"           *
dtype0*
_output_shapes
:

*decoder/p_y_xz/rnn/strided_slice_2/stack_1Const*!
valueB"           *
dtype0*
_output_shapes
:

*decoder/p_y_xz/rnn/strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*!
valueB"         

"decoder/p_y_xz/rnn/strided_slice_2StridedSlice,features_standardization/car1_future/truediv(decoder/p_y_xz/rnn/strided_slice_2/stack*decoder/p_y_xz/rnn/strided_slice_2/stack_1*decoder/p_y_xz/rnn/strided_slice_2/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
g
%decoder/p_y_xz/rnn/Tile_2/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
§
#decoder/p_y_xz/rnn/Tile_2/multiplesPacksample_ct_1/strided_slice%decoder/p_y_xz/rnn/Tile_2/multiples/1*
T0*

axis *
N*
_output_shapes
:
Ž
decoder/p_y_xz/rnn/Tile_2Tile"decoder/p_y_xz/rnn/strided_slice_2#decoder/p_y_xz/rnn/Tile_2/multiples*

Tmultiples0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
b
 decoder/p_y_xz/rnn/concat_4/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ĺ
decoder/p_y_xz/rnn/concat_4ConcatV2decoder/p_y_xz/rnn/Tile_2decoder/p_y_xz/rnn/Sum_2 decoder/p_y_xz/rnn/concat_4/axis*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0
b
 decoder/p_y_xz/rnn/concat_5/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ĺ
decoder/p_y_xz/rnn/concat_5ConcatV2decoder/p_y_xz/concatdecoder/p_y_xz/rnn/concat_4 decoder/p_y_xz/rnn/concat_5/axis*
T0*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛*

Tidx0

\decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_3/axisConst*
dtype0*
_output_shapes
: *
value	B :
ü
Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_3ConcatV2decoder/p_y_xz/rnn/concat_5Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8\decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_3/axis*
T0*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛*

Tidx0
ä
Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_3MatMulWdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_3Odecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read*
transpose_b( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
Ő
Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_3BiasAddWdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_3Mdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const_3Const*
value	B :*
dtype0*
_output_shapes
: 
˘
`decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_3/split_dimConst*
value	B :*
dtype0*
_output_shapes
: 

Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_3Split`decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_3/split_dimXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_3*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
ę
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_6TanhXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_3:1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_6/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ŕ
Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_6AddXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_3:2Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_6/y*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ě
Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_9SigmoidTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_6*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_9MulTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_9*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ď
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_10SigmoidVdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_10MulYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_10Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_6*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ť
Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_7AddTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_9Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_10*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ć
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_7TanhTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_7*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ń
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_11SigmoidXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_3:3*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Á
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_11MulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_7Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_11*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

-decoder/p_y_xz/rnn/log_pi_projection_6/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_110decoder/p_y_xz/rnn/log_pi_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
á
.decoder/p_y_xz/rnn/log_pi_projection_6/BiasAddBiasAdd-decoder/p_y_xz/rnn/log_pi_projection_6/MatMul.decoder/p_y_xz/rnn/log_pi_projection/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

)decoder/p_y_xz/rnn/mu_projection_6/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_11,decoder/p_y_xz/rnn/mu_projection/kernel/read*
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( 
Ő
*decoder/p_y_xz/rnn/mu_projection_6/BiasAddBiasAdd)decoder/p_y_xz/rnn/mu_projection_6/MatMul*decoder/p_y_xz/rnn/mu_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

0decoder/p_y_xz/rnn/log_sigma_projection_6/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_113decoder/p_y_xz/rnn/log_sigma_projection/kernel/read*
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( 
ę
1decoder/p_y_xz/rnn/log_sigma_projection_6/BiasAddBiasAdd0decoder/p_y_xz/rnn/log_sigma_projection_6/MatMul1decoder/p_y_xz/rnn/log_sigma_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

+decoder/p_y_xz/rnn/corr_projection_6/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_11.decoder/p_y_xz/rnn/corr_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
Ű
,decoder/p_y_xz/rnn/corr_projection_6/BiasAddBiasAdd+decoder/p_y_xz/rnn/corr_projection_6/MatMul,decoder/p_y_xz/rnn/corr_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/Tanh_3Tanh,decoder/p_y_xz/rnn/corr_projection_6/BiasAdd*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

:decoder/p_y_xz/rnn/ReduceLogSumExp_3/Max/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ę
(decoder/p_y_xz/rnn/ReduceLogSumExp_3/MaxMax.decoder/p_y_xz/rnn/log_pi_projection_6/BiasAdd:decoder/p_y_xz/rnn/ReduceLogSumExp_3/Max/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0

1decoder/p_y_xz/rnn/ReduceLogSumExp_3/StopGradientStopGradient(decoder/p_y_xz/rnn/ReduceLogSumExp_3/Max*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ä
(decoder/p_y_xz/rnn/ReduceLogSumExp_3/subSub.decoder/p_y_xz/rnn/log_pi_projection_6/BiasAdd1decoder/p_y_xz/rnn/ReduceLogSumExp_3/StopGradient*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

(decoder/p_y_xz/rnn/ReduceLogSumExp_3/ExpExp(decoder/p_y_xz/rnn/ReduceLogSumExp_3/sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

:decoder/p_y_xz/rnn/ReduceLogSumExp_3/Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙
ä
(decoder/p_y_xz/rnn/ReduceLogSumExp_3/SumSum(decoder/p_y_xz/rnn/ReduceLogSumExp_3/Exp:decoder/p_y_xz/rnn/ReduceLogSumExp_3/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

(decoder/p_y_xz/rnn/ReduceLogSumExp_3/LogLog(decoder/p_y_xz/rnn/ReduceLogSumExp_3/Sum*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
(decoder/p_y_xz/rnn/ReduceLogSumExp_3/addAdd(decoder/p_y_xz/rnn/ReduceLogSumExp_3/Log1decoder/p_y_xz/rnn/ReduceLogSumExp_3/StopGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
decoder/p_y_xz/rnn/sub_6Sub.decoder/p_y_xz/rnn/log_pi_projection_6/BiasAdd(decoder/p_y_xz/rnn/ReduceLogSumExp_3/add*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
w
"decoder/p_y_xz/rnn/Reshape_6/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ť
decoder/p_y_xz/rnn/Reshape_6Reshape*decoder/p_y_xz/rnn/mu_projection_6/BiasAdd"decoder/p_y_xz/rnn/Reshape_6/shape*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
q
,decoder/p_y_xz/rnn/clip_by_value_3/Minimum/yConst*
valueB
 *   A*
dtype0*
_output_shapes
: 
Č
*decoder/p_y_xz/rnn/clip_by_value_3/MinimumMinimum1decoder/p_y_xz/rnn/log_sigma_projection_6/BiasAdd,decoder/p_y_xz/rnn/clip_by_value_3/Minimum/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
i
$decoder/p_y_xz/rnn/clip_by_value_3/yConst*
valueB
 *   Á*
dtype0*
_output_shapes
: 
ą
"decoder/p_y_xz/rnn/clip_by_value_3Maximum*decoder/p_y_xz/rnn/clip_by_value_3/Minimum$decoder/p_y_xz/rnn/clip_by_value_3/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
w
"decoder/p_y_xz/rnn/Reshape_7/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ł
decoder/p_y_xz/rnn/Reshape_7Reshape"decoder/p_y_xz/rnn/clip_by_value_3"decoder/p_y_xz/rnn/Reshape_7/shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
decoder/p_y_xz/rnn/Exp_3Expdecoder/p_y_xz/rnn/Reshape_7*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
r
decoder/p_y_xz/rnn/Square_3Squaredecoder/p_y_xz/rnn/Tanh_3*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
_
decoder/p_y_xz/rnn/sub_7/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?

decoder/p_y_xz/rnn/sub_7Subdecoder/p_y_xz/rnn/sub_7/xdecoder/p_y_xz/rnn/Square_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
}
$decoder/p_y_xz/rnn/ones_like_3/ShapeShapedecoder/p_y_xz/rnn/Tanh_3*
_output_shapes
:*
T0*
out_type0
i
$decoder/p_y_xz/rnn/ones_like_3/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
¤
decoder/p_y_xz/rnn/ones_like_3Fill$decoder/p_y_xz/rnn/ones_like_3/Shape$decoder/p_y_xz/rnn/ones_like_3/Const*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ą
decoder/p_y_xz/rnn/stack_6Packdecoder/p_y_xz/rnn/ones_like_3decoder/p_y_xz/rnn/Tanh_3*
T0*
axis˙˙˙˙˙˙˙˙˙*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_15Muldecoder/p_y_xz/rnn/Exp_3decoder/p_y_xz/rnn/stack_6*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
decoder/p_y_xz/rnn/zeros_like_3	ZerosLikedecoder/p_y_xz/rnn/Tanh_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
m
decoder/p_y_xz/rnn/Sqrt_3Sqrtdecoder/p_y_xz/rnn/sub_7*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
˛
decoder/p_y_xz/rnn/stack_7Packdecoder/p_y_xz/rnn/zeros_like_3decoder/p_y_xz/rnn/Sqrt_3*
T0*
axis˙˙˙˙˙˙˙˙˙*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_16Muldecoder/p_y_xz/rnn/Exp_3decoder/p_y_xz/rnn/stack_7*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

2decoder/p_y_xz/rnn/Categorical_6/Categorical/probsSoftmaxdecoder/p_y_xz/rnn/sub_6*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
m
+decoder/p_y_xz/rnn/Categorical_6/batch_rankConst*
value	B :*
dtype0*
_output_shapes
: 

-decoder/p_y_xz/rnn/Categorical_6/logits_shapeShapedecoder/p_y_xz/rnn/sub_6*
T0*
out_type0*
_output_shapes
:
m
+decoder/p_y_xz/rnn/Categorical_6/event_sizeConst*
value	B :*
dtype0*
_output_shapes
: 

@decoder/p_y_xz/rnn/Categorical_6/batch_shape/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

Bdecoder/p_y_xz/rnn/Categorical_6/batch_shape/strided_slice/stack_1Const*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0

Bdecoder/p_y_xz/rnn/Categorical_6/batch_shape/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ů
:decoder/p_y_xz/rnn/Categorical_6/batch_shape/strided_sliceStridedSlice-decoder/p_y_xz/rnn/Categorical_6/logits_shape@decoder/p_y_xz/rnn/Categorical_6/batch_shape/strided_slice/stackBdecoder/p_y_xz/rnn/Categorical_6/batch_shape/strided_slice/stack_1Bdecoder/p_y_xz/rnn/Categorical_6/batch_shape/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
:
s
decoder/p_y_xz/rnn/Shape_6Shapedecoder/p_y_xz/rnn/Tanh_3*
T0*
out_type0*
_output_shapes
:
l
'decoder/p_y_xz/rnn/random_normal_6/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n
)decoder/p_y_xz/rnn/random_normal_6/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ă
7decoder/p_y_xz/rnn/random_normal_6/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_6*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed *
T0
Ă
&decoder/p_y_xz/rnn/random_normal_6/mulMul7decoder/p_y_xz/rnn/random_normal_6/RandomStandardNormal)decoder/p_y_xz/rnn/random_normal_6/stddev*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ź
"decoder/p_y_xz/rnn/random_normal_6Add&decoder/p_y_xz/rnn/random_normal_6/mul'decoder/p_y_xz/rnn/random_normal_6/mean*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
n
#decoder/p_y_xz/rnn/ExpandDims_9/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
¸
decoder/p_y_xz/rnn/ExpandDims_9
ExpandDims"decoder/p_y_xz/rnn/random_normal_6#decoder/p_y_xz/rnn/ExpandDims_9/dim*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0

decoder/p_y_xz/rnn/mul_17Muldecoder/p_y_xz/rnn/mul_15decoder/p_y_xz/rnn/ExpandDims_9*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
decoder/p_y_xz/rnn/Shape_7Shapedecoder/p_y_xz/rnn/Tanh_3*
_output_shapes
:*
T0*
out_type0
l
'decoder/p_y_xz/rnn/random_normal_7/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
n
)decoder/p_y_xz/rnn/random_normal_7/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ă
7decoder/p_y_xz/rnn/random_normal_7/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_7*
T0*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed 
Ă
&decoder/p_y_xz/rnn/random_normal_7/mulMul7decoder/p_y_xz/rnn/random_normal_7/RandomStandardNormal)decoder/p_y_xz/rnn/random_normal_7/stddev*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ź
"decoder/p_y_xz/rnn/random_normal_7Add&decoder/p_y_xz/rnn/random_normal_7/mul'decoder/p_y_xz/rnn/random_normal_7/mean*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
o
$decoder/p_y_xz/rnn/ExpandDims_10/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ş
 decoder/p_y_xz/rnn/ExpandDims_10
ExpandDims"decoder/p_y_xz/rnn/random_normal_7$decoder/p_y_xz/rnn/ExpandDims_10/dim*

Tdim0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_18Muldecoder/p_y_xz/rnn/mul_16 decoder/p_y_xz/rnn/ExpandDims_10*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/add_6Adddecoder/p_y_xz/rnn/mul_17decoder/p_y_xz/rnn/mul_18*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/add_7Adddecoder/p_y_xz/rnn/Reshape_6decoder/p_y_xz/rnn/add_6*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
4decoder/p_y_xz/rnn/Categorical_7/sample/sample_shapeConst*
valueB *
dtype0*
_output_shapes
: 

Kdecoder/p_y_xz/rnn/Categorical_7/sample/multinomial/Multinomial/num_samplesConst*
dtype0*
_output_shapes
: *
value	B :

?decoder/p_y_xz/rnn/Categorical_7/sample/multinomial/MultinomialMultinomialdecoder/p_y_xz/rnn/sub_6Kdecoder/p_y_xz/rnn/Categorical_7/sample/multinomial/Multinomial/num_samples*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed 
 
6decoder/p_y_xz/rnn/Categorical_7/sample/transpose/RankRank?decoder/p_y_xz/rnn/Categorical_7/sample/multinomial/Multinomial*
T0	*
_output_shapes
: 
y
7decoder/p_y_xz/rnn/Categorical_7/sample/transpose/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
Î
5decoder/p_y_xz/rnn/Categorical_7/sample/transpose/subSub6decoder/p_y_xz/rnn/Categorical_7/sample/transpose/Rank7decoder/p_y_xz/rnn/Categorical_7/sample/transpose/sub/y*
_output_shapes
: *
T0

=decoder/p_y_xz/rnn/Categorical_7/sample/transpose/Range/startConst*
_output_shapes
: *
value	B : *
dtype0

=decoder/p_y_xz/rnn/Categorical_7/sample/transpose/Range/deltaConst*
dtype0*
_output_shapes
: *
value	B :

7decoder/p_y_xz/rnn/Categorical_7/sample/transpose/RangeRange=decoder/p_y_xz/rnn/Categorical_7/sample/transpose/Range/start6decoder/p_y_xz/rnn/Categorical_7/sample/transpose/Rank=decoder/p_y_xz/rnn/Categorical_7/sample/transpose/Range/delta*

Tidx0*
_output_shapes
:
Ó
7decoder/p_y_xz/rnn/Categorical_7/sample/transpose/sub_1Sub5decoder/p_y_xz/rnn/Categorical_7/sample/transpose/sub7decoder/p_y_xz/rnn/Categorical_7/sample/transpose/Range*
T0*
_output_shapes
:
÷
1decoder/p_y_xz/rnn/Categorical_7/sample/transpose	Transpose?decoder/p_y_xz/rnn/Categorical_7/sample/multinomial/Multinomial7decoder/p_y_xz/rnn/Categorical_7/sample/transpose/sub_1*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0
ź
Odecoder/p_y_xz/rnn/Categorical_7/sample/Categorical/batch_shape_tensor/IdentityIdentity:decoder/p_y_xz/rnn/Categorical_6/batch_shape/strided_slice*
T0*
_output_shapes
:

7decoder/p_y_xz/rnn/Categorical_7/sample/concat/values_0Const*
valueB:*
dtype0*
_output_shapes
:
u
3decoder/p_y_xz/rnn/Categorical_7/sample/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ł
.decoder/p_y_xz/rnn/Categorical_7/sample/concatConcatV27decoder/p_y_xz/rnn/Categorical_7/sample/concat/values_0Odecoder/p_y_xz/rnn/Categorical_7/sample/Categorical/batch_shape_tensor/Identity3decoder/p_y_xz/rnn/Categorical_7/sample/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ý
/decoder/p_y_xz/rnn/Categorical_7/sample/ReshapeReshape1decoder/p_y_xz/rnn/Categorical_7/sample/transpose.decoder/p_y_xz/rnn/Categorical_7/sample/concat*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0	
Ś
,decoder/p_y_xz/rnn/Categorical_7/sample/CastCast/decoder/p_y_xz/rnn/Categorical_7/sample/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0	

-decoder/p_y_xz/rnn/Categorical_7/sample/ShapeShape,decoder/p_y_xz/rnn/Categorical_7/sample/Cast*
_output_shapes
:*
T0*
out_type0

;decoder/p_y_xz/rnn/Categorical_7/sample/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

=decoder/p_y_xz/rnn/Categorical_7/sample/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

=decoder/p_y_xz/rnn/Categorical_7/sample/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ĺ
5decoder/p_y_xz/rnn/Categorical_7/sample/strided_sliceStridedSlice-decoder/p_y_xz/rnn/Categorical_7/sample/Shape;decoder/p_y_xz/rnn/Categorical_7/sample/strided_slice/stack=decoder/p_y_xz/rnn/Categorical_7/sample/strided_slice/stack_1=decoder/p_y_xz/rnn/Categorical_7/sample/strided_slice/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0
w
5decoder/p_y_xz/rnn/Categorical_7/sample/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 

0decoder/p_y_xz/rnn/Categorical_7/sample/concat_1ConcatV24decoder/p_y_xz/rnn/Categorical_7/sample/sample_shape5decoder/p_y_xz/rnn/Categorical_7/sample/strided_slice5decoder/p_y_xz/rnn/Categorical_7/sample/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ř
1decoder/p_y_xz/rnn/Categorical_7/sample/Reshape_1Reshape,decoder/p_y_xz/rnn/Categorical_7/sample/Cast0decoder/p_y_xz/rnn/Categorical_7/sample/concat_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
%decoder/p_y_xz/rnn/one_hot_3/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
k
&decoder/p_y_xz/rnn/one_hot_3/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
d
"decoder/p_y_xz/rnn/one_hot_3/depthConst*
value	B :*
dtype0*
_output_shapes
: 

decoder/p_y_xz/rnn/one_hot_3OneHot1decoder/p_y_xz/rnn/Categorical_7/sample/Reshape_1"decoder/p_y_xz/rnn/one_hot_3/depth%decoder/p_y_xz/rnn/one_hot_3/on_value&decoder/p_y_xz/rnn/one_hot_3/off_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
TI0*
axis˙˙˙˙˙˙˙˙˙
o
$decoder/p_y_xz/rnn/ExpandDims_11/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
´
 decoder/p_y_xz/rnn/ExpandDims_11
ExpandDimsdecoder/p_y_xz/rnn/one_hot_3$decoder/p_y_xz/rnn/ExpandDims_11/dim*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0

decoder/p_y_xz/rnn/mul_19Muldecoder/p_y_xz/rnn/add_7 decoder/p_y_xz/rnn/ExpandDims_11*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
*decoder/p_y_xz/rnn/Sum_3/reduction_indicesConst*
valueB :
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ľ
decoder/p_y_xz/rnn/Sum_3Sumdecoder/p_y_xz/rnn/mul_19*decoder/p_y_xz/rnn/Sum_3/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims( *

Tidx0
}
(decoder/p_y_xz/rnn/strided_slice_3/stackConst*
dtype0*
_output_shapes
:*!
valueB"           

*decoder/p_y_xz/rnn/strided_slice_3/stack_1Const*!
valueB"           *
dtype0*
_output_shapes
:

*decoder/p_y_xz/rnn/strided_slice_3/stack_2Const*!
valueB"         *
dtype0*
_output_shapes
:

"decoder/p_y_xz/rnn/strided_slice_3StridedSlice,features_standardization/car1_future/truediv(decoder/p_y_xz/rnn/strided_slice_3/stack*decoder/p_y_xz/rnn/strided_slice_3/stack_1*decoder/p_y_xz/rnn/strided_slice_3/stack_2*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Index0*
T0
g
%decoder/p_y_xz/rnn/Tile_3/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
§
#decoder/p_y_xz/rnn/Tile_3/multiplesPacksample_ct_1/strided_slice%decoder/p_y_xz/rnn/Tile_3/multiples/1*
T0*

axis *
N*
_output_shapes
:
Ž
decoder/p_y_xz/rnn/Tile_3Tile"decoder/p_y_xz/rnn/strided_slice_3#decoder/p_y_xz/rnn/Tile_3/multiples*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0*
T0
b
 decoder/p_y_xz/rnn/concat_6/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ĺ
decoder/p_y_xz/rnn/concat_6ConcatV2decoder/p_y_xz/rnn/Tile_3decoder/p_y_xz/rnn/Sum_3 decoder/p_y_xz/rnn/concat_6/axis*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0
b
 decoder/p_y_xz/rnn/concat_7/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ĺ
decoder/p_y_xz/rnn/concat_7ConcatV2decoder/p_y_xz/concatdecoder/p_y_xz/rnn/concat_6 decoder/p_y_xz/rnn/concat_7/axis*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛*

Tidx0*
T0*
N

\decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_4/axisConst*
value	B :*
dtype0*
_output_shapes
: 
ý
Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_4ConcatV2decoder/p_y_xz/rnn/concat_7Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_11\decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_4/axis*
T0*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛*

Tidx0
ä
Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_4MatMulWdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_4Odecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
Ő
Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_4BiasAddWdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_4Mdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const_4Const*
value	B :*
dtype0*
_output_shapes
: 
˘
`decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_4/split_dimConst*
value	B :*
dtype0*
_output_shapes
: 

Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_4Split`decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_4/split_dimXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_4*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
ę
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_8TanhXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_4:1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_8/yConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ŕ
Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_8AddXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_4:2Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_8/y*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
í
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_12SigmoidTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_8*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŕ
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_12MulTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_7Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_12*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ď
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_13SigmoidVdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_13MulYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_13Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_8*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ź
Tdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_9AddUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_12Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_13*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ć
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_9TanhTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_9*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ń
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_14SigmoidXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_4:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_14MulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_9Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_14*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

-decoder/p_y_xz/rnn/log_pi_projection_8/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_140decoder/p_y_xz/rnn/log_pi_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
á
.decoder/p_y_xz/rnn/log_pi_projection_8/BiasAddBiasAdd-decoder/p_y_xz/rnn/log_pi_projection_8/MatMul.decoder/p_y_xz/rnn/log_pi_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

)decoder/p_y_xz/rnn/mu_projection_8/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_14,decoder/p_y_xz/rnn/mu_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( *
transpose_b( 
Ő
*decoder/p_y_xz/rnn/mu_projection_8/BiasAddBiasAdd)decoder/p_y_xz/rnn/mu_projection_8/MatMul*decoder/p_y_xz/rnn/mu_projection/bias/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*
data_formatNHWC

0decoder/p_y_xz/rnn/log_sigma_projection_8/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_143decoder/p_y_xz/rnn/log_sigma_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( *
transpose_b( 
ę
1decoder/p_y_xz/rnn/log_sigma_projection_8/BiasAddBiasAdd0decoder/p_y_xz/rnn/log_sigma_projection_8/MatMul1decoder/p_y_xz/rnn/log_sigma_projection/bias/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*
data_formatNHWC

+decoder/p_y_xz/rnn/corr_projection_8/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_14.decoder/p_y_xz/rnn/corr_projection/kernel/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
Ű
,decoder/p_y_xz/rnn/corr_projection_8/BiasAddBiasAdd+decoder/p_y_xz/rnn/corr_projection_8/MatMul,decoder/p_y_xz/rnn/corr_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/Tanh_4Tanh,decoder/p_y_xz/rnn/corr_projection_8/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

:decoder/p_y_xz/rnn/ReduceLogSumExp_4/Max/reduction_indicesConst*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0
ę
(decoder/p_y_xz/rnn/ReduceLogSumExp_4/MaxMax.decoder/p_y_xz/rnn/log_pi_projection_8/BiasAdd:decoder/p_y_xz/rnn/ReduceLogSumExp_4/Max/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0

1decoder/p_y_xz/rnn/ReduceLogSumExp_4/StopGradientStopGradient(decoder/p_y_xz/rnn/ReduceLogSumExp_4/Max*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
(decoder/p_y_xz/rnn/ReduceLogSumExp_4/subSub.decoder/p_y_xz/rnn/log_pi_projection_8/BiasAdd1decoder/p_y_xz/rnn/ReduceLogSumExp_4/StopGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

(decoder/p_y_xz/rnn/ReduceLogSumExp_4/ExpExp(decoder/p_y_xz/rnn/ReduceLogSumExp_4/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

:decoder/p_y_xz/rnn/ReduceLogSumExp_4/Sum/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ä
(decoder/p_y_xz/rnn/ReduceLogSumExp_4/SumSum(decoder/p_y_xz/rnn/ReduceLogSumExp_4/Exp:decoder/p_y_xz/rnn/ReduceLogSumExp_4/Sum/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0

(decoder/p_y_xz/rnn/ReduceLogSumExp_4/LogLog(decoder/p_y_xz/rnn/ReduceLogSumExp_4/Sum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ž
(decoder/p_y_xz/rnn/ReduceLogSumExp_4/addAdd(decoder/p_y_xz/rnn/ReduceLogSumExp_4/Log1decoder/p_y_xz/rnn/ReduceLogSumExp_4/StopGradient*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ť
decoder/p_y_xz/rnn/sub_8Sub.decoder/p_y_xz/rnn/log_pi_projection_8/BiasAdd(decoder/p_y_xz/rnn/ReduceLogSumExp_4/add*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
w
"decoder/p_y_xz/rnn/Reshape_8/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ť
decoder/p_y_xz/rnn/Reshape_8Reshape*decoder/p_y_xz/rnn/mu_projection_8/BiasAdd"decoder/p_y_xz/rnn/Reshape_8/shape*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
q
,decoder/p_y_xz/rnn/clip_by_value_4/Minimum/yConst*
valueB
 *   A*
dtype0*
_output_shapes
: 
Č
*decoder/p_y_xz/rnn/clip_by_value_4/MinimumMinimum1decoder/p_y_xz/rnn/log_sigma_projection_8/BiasAdd,decoder/p_y_xz/rnn/clip_by_value_4/Minimum/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
i
$decoder/p_y_xz/rnn/clip_by_value_4/yConst*
valueB
 *   Á*
dtype0*
_output_shapes
: 
ą
"decoder/p_y_xz/rnn/clip_by_value_4Maximum*decoder/p_y_xz/rnn/clip_by_value_4/Minimum$decoder/p_y_xz/rnn/clip_by_value_4/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
w
"decoder/p_y_xz/rnn/Reshape_9/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ł
decoder/p_y_xz/rnn/Reshape_9Reshape"decoder/p_y_xz/rnn/clip_by_value_4"decoder/p_y_xz/rnn/Reshape_9/shape*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
s
decoder/p_y_xz/rnn/Exp_4Expdecoder/p_y_xz/rnn/Reshape_9*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
decoder/p_y_xz/rnn/Square_4Squaredecoder/p_y_xz/rnn/Tanh_4*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
_
decoder/p_y_xz/rnn/sub_9/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?

decoder/p_y_xz/rnn/sub_9Subdecoder/p_y_xz/rnn/sub_9/xdecoder/p_y_xz/rnn/Square_4*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
}
$decoder/p_y_xz/rnn/ones_like_4/ShapeShapedecoder/p_y_xz/rnn/Tanh_4*
T0*
out_type0*
_output_shapes
:
i
$decoder/p_y_xz/rnn/ones_like_4/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¤
decoder/p_y_xz/rnn/ones_like_4Fill$decoder/p_y_xz/rnn/ones_like_4/Shape$decoder/p_y_xz/rnn/ones_like_4/Const*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ą
decoder/p_y_xz/rnn/stack_8Packdecoder/p_y_xz/rnn/ones_like_4decoder/p_y_xz/rnn/Tanh_4*
T0*
axis˙˙˙˙˙˙˙˙˙*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_20Muldecoder/p_y_xz/rnn/Exp_4decoder/p_y_xz/rnn/stack_8*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
decoder/p_y_xz/rnn/zeros_like_4	ZerosLikedecoder/p_y_xz/rnn/Tanh_4*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
m
decoder/p_y_xz/rnn/Sqrt_4Sqrtdecoder/p_y_xz/rnn/sub_9*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˛
decoder/p_y_xz/rnn/stack_9Packdecoder/p_y_xz/rnn/zeros_like_4decoder/p_y_xz/rnn/Sqrt_4*
axis˙˙˙˙˙˙˙˙˙*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

decoder/p_y_xz/rnn/mul_21Muldecoder/p_y_xz/rnn/Exp_4decoder/p_y_xz/rnn/stack_9*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

2decoder/p_y_xz/rnn/Categorical_8/Categorical/probsSoftmaxdecoder/p_y_xz/rnn/sub_8*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
m
+decoder/p_y_xz/rnn/Categorical_8/batch_rankConst*
value	B :*
dtype0*
_output_shapes
: 

-decoder/p_y_xz/rnn/Categorical_8/logits_shapeShapedecoder/p_y_xz/rnn/sub_8*
T0*
out_type0*
_output_shapes
:
m
+decoder/p_y_xz/rnn/Categorical_8/event_sizeConst*
dtype0*
_output_shapes
: *
value	B :

@decoder/p_y_xz/rnn/Categorical_8/batch_shape/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Bdecoder/p_y_xz/rnn/Categorical_8/batch_shape/strided_slice/stack_1Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

Bdecoder/p_y_xz/rnn/Categorical_8/batch_shape/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ů
:decoder/p_y_xz/rnn/Categorical_8/batch_shape/strided_sliceStridedSlice-decoder/p_y_xz/rnn/Categorical_8/logits_shape@decoder/p_y_xz/rnn/Categorical_8/batch_shape/strided_slice/stackBdecoder/p_y_xz/rnn/Categorical_8/batch_shape/strided_slice/stack_1Bdecoder/p_y_xz/rnn/Categorical_8/batch_shape/strided_slice/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0
s
decoder/p_y_xz/rnn/Shape_8Shapedecoder/p_y_xz/rnn/Tanh_4*
out_type0*
_output_shapes
:*
T0
l
'decoder/p_y_xz/rnn/random_normal_8/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n
)decoder/p_y_xz/rnn/random_normal_8/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ă
7decoder/p_y_xz/rnn/random_normal_8/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_8*

seed *
T0*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 
Ă
&decoder/p_y_xz/rnn/random_normal_8/mulMul7decoder/p_y_xz/rnn/random_normal_8/RandomStandardNormal)decoder/p_y_xz/rnn/random_normal_8/stddev*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
"decoder/p_y_xz/rnn/random_normal_8Add&decoder/p_y_xz/rnn/random_normal_8/mul'decoder/p_y_xz/rnn/random_normal_8/mean*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
o
$decoder/p_y_xz/rnn/ExpandDims_12/dimConst*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0
ş
 decoder/p_y_xz/rnn/ExpandDims_12
ExpandDims"decoder/p_y_xz/rnn/random_normal_8$decoder/p_y_xz/rnn/ExpandDims_12/dim*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0

decoder/p_y_xz/rnn/mul_22Muldecoder/p_y_xz/rnn/mul_20 decoder/p_y_xz/rnn/ExpandDims_12*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
decoder/p_y_xz/rnn/Shape_9Shapedecoder/p_y_xz/rnn/Tanh_4*
_output_shapes
:*
T0*
out_type0
l
'decoder/p_y_xz/rnn/random_normal_9/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n
)decoder/p_y_xz/rnn/random_normal_9/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ă
7decoder/p_y_xz/rnn/random_normal_9/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_9*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed *
T0
Ă
&decoder/p_y_xz/rnn/random_normal_9/mulMul7decoder/p_y_xz/rnn/random_normal_9/RandomStandardNormal)decoder/p_y_xz/rnn/random_normal_9/stddev*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
"decoder/p_y_xz/rnn/random_normal_9Add&decoder/p_y_xz/rnn/random_normal_9/mul'decoder/p_y_xz/rnn/random_normal_9/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
$decoder/p_y_xz/rnn/ExpandDims_13/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ş
 decoder/p_y_xz/rnn/ExpandDims_13
ExpandDims"decoder/p_y_xz/rnn/random_normal_9$decoder/p_y_xz/rnn/ExpandDims_13/dim*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0

decoder/p_y_xz/rnn/mul_23Muldecoder/p_y_xz/rnn/mul_21 decoder/p_y_xz/rnn/ExpandDims_13*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/add_8Adddecoder/p_y_xz/rnn/mul_22decoder/p_y_xz/rnn/mul_23*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

decoder/p_y_xz/rnn/add_9Adddecoder/p_y_xz/rnn/Reshape_8decoder/p_y_xz/rnn/add_8*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
w
4decoder/p_y_xz/rnn/Categorical_9/sample/sample_shapeConst*
valueB *
dtype0*
_output_shapes
: 

Kdecoder/p_y_xz/rnn/Categorical_9/sample/multinomial/Multinomial/num_samplesConst*
_output_shapes
: *
value	B :*
dtype0

?decoder/p_y_xz/rnn/Categorical_9/sample/multinomial/MultinomialMultinomialdecoder/p_y_xz/rnn/sub_8Kdecoder/p_y_xz/rnn/Categorical_9/sample/multinomial/Multinomial/num_samples*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed 
 
6decoder/p_y_xz/rnn/Categorical_9/sample/transpose/RankRank?decoder/p_y_xz/rnn/Categorical_9/sample/multinomial/Multinomial*
_output_shapes
: *
T0	
y
7decoder/p_y_xz/rnn/Categorical_9/sample/transpose/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
Î
5decoder/p_y_xz/rnn/Categorical_9/sample/transpose/subSub6decoder/p_y_xz/rnn/Categorical_9/sample/transpose/Rank7decoder/p_y_xz/rnn/Categorical_9/sample/transpose/sub/y*
_output_shapes
: *
T0

=decoder/p_y_xz/rnn/Categorical_9/sample/transpose/Range/startConst*
_output_shapes
: *
value	B : *
dtype0

=decoder/p_y_xz/rnn/Categorical_9/sample/transpose/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

7decoder/p_y_xz/rnn/Categorical_9/sample/transpose/RangeRange=decoder/p_y_xz/rnn/Categorical_9/sample/transpose/Range/start6decoder/p_y_xz/rnn/Categorical_9/sample/transpose/Rank=decoder/p_y_xz/rnn/Categorical_9/sample/transpose/Range/delta*
_output_shapes
:*

Tidx0
Ó
7decoder/p_y_xz/rnn/Categorical_9/sample/transpose/sub_1Sub5decoder/p_y_xz/rnn/Categorical_9/sample/transpose/sub7decoder/p_y_xz/rnn/Categorical_9/sample/transpose/Range*
_output_shapes
:*
T0
÷
1decoder/p_y_xz/rnn/Categorical_9/sample/transpose	Transpose?decoder/p_y_xz/rnn/Categorical_9/sample/multinomial/Multinomial7decoder/p_y_xz/rnn/Categorical_9/sample/transpose/sub_1*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0
ź
Odecoder/p_y_xz/rnn/Categorical_9/sample/Categorical/batch_shape_tensor/IdentityIdentity:decoder/p_y_xz/rnn/Categorical_8/batch_shape/strided_slice*
T0*
_output_shapes
:

7decoder/p_y_xz/rnn/Categorical_9/sample/concat/values_0Const*
valueB:*
dtype0*
_output_shapes
:
u
3decoder/p_y_xz/rnn/Categorical_9/sample/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ł
.decoder/p_y_xz/rnn/Categorical_9/sample/concatConcatV27decoder/p_y_xz/rnn/Categorical_9/sample/concat/values_0Odecoder/p_y_xz/rnn/Categorical_9/sample/Categorical/batch_shape_tensor/Identity3decoder/p_y_xz/rnn/Categorical_9/sample/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ý
/decoder/p_y_xz/rnn/Categorical_9/sample/ReshapeReshape1decoder/p_y_xz/rnn/Categorical_9/sample/transpose.decoder/p_y_xz/rnn/Categorical_9/sample/concat*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0	*
Tshape0
Ś
,decoder/p_y_xz/rnn/Categorical_9/sample/CastCast/decoder/p_y_xz/rnn/Categorical_9/sample/Reshape*

SrcT0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0

-decoder/p_y_xz/rnn/Categorical_9/sample/ShapeShape,decoder/p_y_xz/rnn/Categorical_9/sample/Cast*
T0*
out_type0*
_output_shapes
:

;decoder/p_y_xz/rnn/Categorical_9/sample/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

=decoder/p_y_xz/rnn/Categorical_9/sample/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 

=decoder/p_y_xz/rnn/Categorical_9/sample/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ĺ
5decoder/p_y_xz/rnn/Categorical_9/sample/strided_sliceStridedSlice-decoder/p_y_xz/rnn/Categorical_9/sample/Shape;decoder/p_y_xz/rnn/Categorical_9/sample/strided_slice/stack=decoder/p_y_xz/rnn/Categorical_9/sample/strided_slice/stack_1=decoder/p_y_xz/rnn/Categorical_9/sample/strided_slice/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0
w
5decoder/p_y_xz/rnn/Categorical_9/sample/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0

0decoder/p_y_xz/rnn/Categorical_9/sample/concat_1ConcatV24decoder/p_y_xz/rnn/Categorical_9/sample/sample_shape5decoder/p_y_xz/rnn/Categorical_9/sample/strided_slice5decoder/p_y_xz/rnn/Categorical_9/sample/concat_1/axis*
_output_shapes
:*

Tidx0*
T0*
N
Ř
1decoder/p_y_xz/rnn/Categorical_9/sample/Reshape_1Reshape,decoder/p_y_xz/rnn/Categorical_9/sample/Cast0decoder/p_y_xz/rnn/Categorical_9/sample/concat_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
%decoder/p_y_xz/rnn/one_hot_4/on_valueConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
k
&decoder/p_y_xz/rnn/one_hot_4/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
d
"decoder/p_y_xz/rnn/one_hot_4/depthConst*
value	B :*
dtype0*
_output_shapes
: 

decoder/p_y_xz/rnn/one_hot_4OneHot1decoder/p_y_xz/rnn/Categorical_9/sample/Reshape_1"decoder/p_y_xz/rnn/one_hot_4/depth%decoder/p_y_xz/rnn/one_hot_4/on_value&decoder/p_y_xz/rnn/one_hot_4/off_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
TI0*
axis˙˙˙˙˙˙˙˙˙
o
$decoder/p_y_xz/rnn/ExpandDims_14/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
´
 decoder/p_y_xz/rnn/ExpandDims_14
ExpandDimsdecoder/p_y_xz/rnn/one_hot_4$decoder/p_y_xz/rnn/ExpandDims_14/dim*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0

decoder/p_y_xz/rnn/mul_24Muldecoder/p_y_xz/rnn/add_9 decoder/p_y_xz/rnn/ExpandDims_14*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
*decoder/p_y_xz/rnn/Sum_4/reduction_indicesConst*
valueB :
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ľ
decoder/p_y_xz/rnn/Sum_4Sumdecoder/p_y_xz/rnn/mul_24*decoder/p_y_xz/rnn/Sum_4/reduction_indices*
	keep_dims( *

Tidx0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
}
(decoder/p_y_xz/rnn/strided_slice_4/stackConst*
dtype0*
_output_shapes
:*!
valueB"           

*decoder/p_y_xz/rnn/strided_slice_4/stack_1Const*!
valueB"           *
dtype0*
_output_shapes
:

*decoder/p_y_xz/rnn/strided_slice_4/stack_2Const*
_output_shapes
:*!
valueB"         *
dtype0

"decoder/p_y_xz/rnn/strided_slice_4StridedSlice,features_standardization/car1_future/truediv(decoder/p_y_xz/rnn/strided_slice_4/stack*decoder/p_y_xz/rnn/strided_slice_4/stack_1*decoder/p_y_xz/rnn/strided_slice_4/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
g
%decoder/p_y_xz/rnn/Tile_4/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
§
#decoder/p_y_xz/rnn/Tile_4/multiplesPacksample_ct_1/strided_slice%decoder/p_y_xz/rnn/Tile_4/multiples/1*
T0*

axis *
N*
_output_shapes
:
Ž
decoder/p_y_xz/rnn/Tile_4Tile"decoder/p_y_xz/rnn/strided_slice_4#decoder/p_y_xz/rnn/Tile_4/multiples*

Tmultiples0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
b
 decoder/p_y_xz/rnn/concat_8/axisConst*
dtype0*
_output_shapes
: *
value	B :
Ĺ
decoder/p_y_xz/rnn/concat_8ConcatV2decoder/p_y_xz/rnn/Tile_4decoder/p_y_xz/rnn/Sum_4 decoder/p_y_xz/rnn/concat_8/axis*
T0*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
b
 decoder/p_y_xz/rnn/concat_9/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ĺ
decoder/p_y_xz/rnn/concat_9ConcatV2decoder/p_y_xz/concatdecoder/p_y_xz/rnn/concat_8 decoder/p_y_xz/rnn/concat_9/axis*
T0*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛*

Tidx0

\decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_5/axisConst*
_output_shapes
: *
value	B :*
dtype0
ý
Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_5ConcatV2decoder/p_y_xz/rnn/concat_9Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_14\decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_5/axis*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛*

Tidx0*
T0
ä
Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_5MatMulWdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_5Odecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
Ő
Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_5BiasAddWdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_5Mdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const_5Const*
value	B :*
dtype0*
_output_shapes
: 
˘
`decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_5/split_dimConst*
value	B :*
dtype0*
_output_shapes
: 

Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_5Split`decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_5/split_dimXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_5*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
ë
Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_10TanhXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_5:1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_10/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Â
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_10AddXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_5:2Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_10/y*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
î
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_15SigmoidUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_10*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ŕ
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_15MulTdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_9Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_15*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ď
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_16SigmoidVdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_5*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Â
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_16MulYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_16Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_10*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
˝
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_11AddUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_15Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_16*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
č
Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_11TanhUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_11*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ń
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_17SigmoidXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_5:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Â
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_17MulVdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_11Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_17*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

.decoder/p_y_xz/rnn/log_pi_projection_10/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_170decoder/p_y_xz/rnn/log_pi_projection/kernel/read*
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
ă
/decoder/p_y_xz/rnn/log_pi_projection_10/BiasAddBiasAdd.decoder/p_y_xz/rnn/log_pi_projection_10/MatMul.decoder/p_y_xz/rnn/log_pi_projection/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

*decoder/p_y_xz/rnn/mu_projection_10/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_17,decoder/p_y_xz/rnn/mu_projection/kernel/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( *
transpose_b( *
T0
×
+decoder/p_y_xz/rnn/mu_projection_10/BiasAddBiasAdd*decoder/p_y_xz/rnn/mu_projection_10/MatMul*decoder/p_y_xz/rnn/mu_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

1decoder/p_y_xz/rnn/log_sigma_projection_10/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_173decoder/p_y_xz/rnn/log_sigma_projection/kernel/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( *
transpose_b( *
T0
ě
2decoder/p_y_xz/rnn/log_sigma_projection_10/BiasAddBiasAdd1decoder/p_y_xz/rnn/log_sigma_projection_10/MatMul1decoder/p_y_xz/rnn/log_sigma_projection/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

,decoder/p_y_xz/rnn/corr_projection_10/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_17.decoder/p_y_xz/rnn/corr_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
Ý
-decoder/p_y_xz/rnn/corr_projection_10/BiasAddBiasAdd,decoder/p_y_xz/rnn/corr_projection_10/MatMul,decoder/p_y_xz/rnn/corr_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/Tanh_5Tanh-decoder/p_y_xz/rnn/corr_projection_10/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

:decoder/p_y_xz/rnn/ReduceLogSumExp_5/Max/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙
ë
(decoder/p_y_xz/rnn/ReduceLogSumExp_5/MaxMax/decoder/p_y_xz/rnn/log_pi_projection_10/BiasAdd:decoder/p_y_xz/rnn/ReduceLogSumExp_5/Max/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0

1decoder/p_y_xz/rnn/ReduceLogSumExp_5/StopGradientStopGradient(decoder/p_y_xz/rnn/ReduceLogSumExp_5/Max*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
(decoder/p_y_xz/rnn/ReduceLogSumExp_5/subSub/decoder/p_y_xz/rnn/log_pi_projection_10/BiasAdd1decoder/p_y_xz/rnn/ReduceLogSumExp_5/StopGradient*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

(decoder/p_y_xz/rnn/ReduceLogSumExp_5/ExpExp(decoder/p_y_xz/rnn/ReduceLogSumExp_5/sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

:decoder/p_y_xz/rnn/ReduceLogSumExp_5/Sum/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ä
(decoder/p_y_xz/rnn/ReduceLogSumExp_5/SumSum(decoder/p_y_xz/rnn/ReduceLogSumExp_5/Exp:decoder/p_y_xz/rnn/ReduceLogSumExp_5/Sum/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0

(decoder/p_y_xz/rnn/ReduceLogSumExp_5/LogLog(decoder/p_y_xz/rnn/ReduceLogSumExp_5/Sum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ž
(decoder/p_y_xz/rnn/ReduceLogSumExp_5/addAdd(decoder/p_y_xz/rnn/ReduceLogSumExp_5/Log1decoder/p_y_xz/rnn/ReduceLogSumExp_5/StopGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
­
decoder/p_y_xz/rnn/sub_10Sub/decoder/p_y_xz/rnn/log_pi_projection_10/BiasAdd(decoder/p_y_xz/rnn/ReduceLogSumExp_5/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
#decoder/p_y_xz/rnn/Reshape_10/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ž
decoder/p_y_xz/rnn/Reshape_10Reshape+decoder/p_y_xz/rnn/mu_projection_10/BiasAdd#decoder/p_y_xz/rnn/Reshape_10/shape*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
q
,decoder/p_y_xz/rnn/clip_by_value_5/Minimum/yConst*
_output_shapes
: *
valueB
 *   A*
dtype0
É
*decoder/p_y_xz/rnn/clip_by_value_5/MinimumMinimum2decoder/p_y_xz/rnn/log_sigma_projection_10/BiasAdd,decoder/p_y_xz/rnn/clip_by_value_5/Minimum/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
i
$decoder/p_y_xz/rnn/clip_by_value_5/yConst*
valueB
 *   Á*
dtype0*
_output_shapes
: 
ą
"decoder/p_y_xz/rnn/clip_by_value_5Maximum*decoder/p_y_xz/rnn/clip_by_value_5/Minimum$decoder/p_y_xz/rnn/clip_by_value_5/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
x
#decoder/p_y_xz/rnn/Reshape_11/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ľ
decoder/p_y_xz/rnn/Reshape_11Reshape"decoder/p_y_xz/rnn/clip_by_value_5#decoder/p_y_xz/rnn/Reshape_11/shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
decoder/p_y_xz/rnn/Exp_5Expdecoder/p_y_xz/rnn/Reshape_11*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
r
decoder/p_y_xz/rnn/Square_5Squaredecoder/p_y_xz/rnn/Tanh_5*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
decoder/p_y_xz/rnn/sub_11/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?

decoder/p_y_xz/rnn/sub_11Subdecoder/p_y_xz/rnn/sub_11/xdecoder/p_y_xz/rnn/Square_5*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
}
$decoder/p_y_xz/rnn/ones_like_5/ShapeShapedecoder/p_y_xz/rnn/Tanh_5*
_output_shapes
:*
T0*
out_type0
i
$decoder/p_y_xz/rnn/ones_like_5/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¤
decoder/p_y_xz/rnn/ones_like_5Fill$decoder/p_y_xz/rnn/ones_like_5/Shape$decoder/p_y_xz/rnn/ones_like_5/Const*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
˛
decoder/p_y_xz/rnn/stack_10Packdecoder/p_y_xz/rnn/ones_like_5decoder/p_y_xz/rnn/Tanh_5*
T0*
axis˙˙˙˙˙˙˙˙˙*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_25Muldecoder/p_y_xz/rnn/Exp_5decoder/p_y_xz/rnn/stack_10*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
y
decoder/p_y_xz/rnn/zeros_like_5	ZerosLikedecoder/p_y_xz/rnn/Tanh_5*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
decoder/p_y_xz/rnn/Sqrt_5Sqrtdecoder/p_y_xz/rnn/sub_11*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ł
decoder/p_y_xz/rnn/stack_11Packdecoder/p_y_xz/rnn/zeros_like_5decoder/p_y_xz/rnn/Sqrt_5*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
axis˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_26Muldecoder/p_y_xz/rnn/Exp_5decoder/p_y_xz/rnn/stack_11*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

3decoder/p_y_xz/rnn/Categorical_10/Categorical/probsSoftmaxdecoder/p_y_xz/rnn/sub_10*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
,decoder/p_y_xz/rnn/Categorical_10/batch_rankConst*
value	B :*
dtype0*
_output_shapes
: 

.decoder/p_y_xz/rnn/Categorical_10/logits_shapeShapedecoder/p_y_xz/rnn/sub_10*
T0*
out_type0*
_output_shapes
:
n
,decoder/p_y_xz/rnn/Categorical_10/event_sizeConst*
value	B :*
dtype0*
_output_shapes
: 

Adecoder/p_y_xz/rnn/Categorical_10/batch_shape/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Cdecoder/p_y_xz/rnn/Categorical_10/batch_shape/strided_slice/stack_1Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

Cdecoder/p_y_xz/rnn/Categorical_10/batch_shape/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ţ
;decoder/p_y_xz/rnn/Categorical_10/batch_shape/strided_sliceStridedSlice.decoder/p_y_xz/rnn/Categorical_10/logits_shapeAdecoder/p_y_xz/rnn/Categorical_10/batch_shape/strided_slice/stackCdecoder/p_y_xz/rnn/Categorical_10/batch_shape/strided_slice/stack_1Cdecoder/p_y_xz/rnn/Categorical_10/batch_shape/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
:
t
decoder/p_y_xz/rnn/Shape_10Shapedecoder/p_y_xz/rnn/Tanh_5*
T0*
out_type0*
_output_shapes
:
m
(decoder/p_y_xz/rnn/random_normal_10/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
*decoder/p_y_xz/rnn/random_normal_10/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ĺ
8decoder/p_y_xz/rnn/random_normal_10/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_10*
T0*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed 
Ć
'decoder/p_y_xz/rnn/random_normal_10/mulMul8decoder/p_y_xz/rnn/random_normal_10/RandomStandardNormal*decoder/p_y_xz/rnn/random_normal_10/stddev*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
#decoder/p_y_xz/rnn/random_normal_10Add'decoder/p_y_xz/rnn/random_normal_10/mul(decoder/p_y_xz/rnn/random_normal_10/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
$decoder/p_y_xz/rnn/ExpandDims_15/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ť
 decoder/p_y_xz/rnn/ExpandDims_15
ExpandDims#decoder/p_y_xz/rnn/random_normal_10$decoder/p_y_xz/rnn/ExpandDims_15/dim*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0

decoder/p_y_xz/rnn/mul_27Muldecoder/p_y_xz/rnn/mul_25 decoder/p_y_xz/rnn/ExpandDims_15*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
decoder/p_y_xz/rnn/Shape_11Shapedecoder/p_y_xz/rnn/Tanh_5*
_output_shapes
:*
T0*
out_type0
m
(decoder/p_y_xz/rnn/random_normal_11/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
*decoder/p_y_xz/rnn/random_normal_11/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ĺ
8decoder/p_y_xz/rnn/random_normal_11/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_11*
T0*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed 
Ć
'decoder/p_y_xz/rnn/random_normal_11/mulMul8decoder/p_y_xz/rnn/random_normal_11/RandomStandardNormal*decoder/p_y_xz/rnn/random_normal_11/stddev*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
#decoder/p_y_xz/rnn/random_normal_11Add'decoder/p_y_xz/rnn/random_normal_11/mul(decoder/p_y_xz/rnn/random_normal_11/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
$decoder/p_y_xz/rnn/ExpandDims_16/dimConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙
ť
 decoder/p_y_xz/rnn/ExpandDims_16
ExpandDims#decoder/p_y_xz/rnn/random_normal_11$decoder/p_y_xz/rnn/ExpandDims_16/dim*

Tdim0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_28Muldecoder/p_y_xz/rnn/mul_26 decoder/p_y_xz/rnn/ExpandDims_16*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

decoder/p_y_xz/rnn/add_10Adddecoder/p_y_xz/rnn/mul_27decoder/p_y_xz/rnn/mul_28*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/add_11Adddecoder/p_y_xz/rnn/Reshape_10decoder/p_y_xz/rnn/add_10*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
5decoder/p_y_xz/rnn/Categorical_11/sample/sample_shapeConst*
valueB *
dtype0*
_output_shapes
: 

Ldecoder/p_y_xz/rnn/Categorical_11/sample/multinomial/Multinomial/num_samplesConst*
dtype0*
_output_shapes
: *
value	B :

@decoder/p_y_xz/rnn/Categorical_11/sample/multinomial/MultinomialMultinomialdecoder/p_y_xz/rnn/sub_10Ldecoder/p_y_xz/rnn/Categorical_11/sample/multinomial/Multinomial/num_samples*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed 
˘
7decoder/p_y_xz/rnn/Categorical_11/sample/transpose/RankRank@decoder/p_y_xz/rnn/Categorical_11/sample/multinomial/Multinomial*
_output_shapes
: *
T0	
z
8decoder/p_y_xz/rnn/Categorical_11/sample/transpose/sub/yConst*
dtype0*
_output_shapes
: *
value	B :
Ń
6decoder/p_y_xz/rnn/Categorical_11/sample/transpose/subSub7decoder/p_y_xz/rnn/Categorical_11/sample/transpose/Rank8decoder/p_y_xz/rnn/Categorical_11/sample/transpose/sub/y*
T0*
_output_shapes
: 

>decoder/p_y_xz/rnn/Categorical_11/sample/transpose/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 

>decoder/p_y_xz/rnn/Categorical_11/sample/transpose/Range/deltaConst*
_output_shapes
: *
value	B :*
dtype0
˘
8decoder/p_y_xz/rnn/Categorical_11/sample/transpose/RangeRange>decoder/p_y_xz/rnn/Categorical_11/sample/transpose/Range/start7decoder/p_y_xz/rnn/Categorical_11/sample/transpose/Rank>decoder/p_y_xz/rnn/Categorical_11/sample/transpose/Range/delta*

Tidx0*
_output_shapes
:
Ö
8decoder/p_y_xz/rnn/Categorical_11/sample/transpose/sub_1Sub6decoder/p_y_xz/rnn/Categorical_11/sample/transpose/sub8decoder/p_y_xz/rnn/Categorical_11/sample/transpose/Range*
T0*
_output_shapes
:
ú
2decoder/p_y_xz/rnn/Categorical_11/sample/transpose	Transpose@decoder/p_y_xz/rnn/Categorical_11/sample/multinomial/Multinomial8decoder/p_y_xz/rnn/Categorical_11/sample/transpose/sub_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0*
T0	
ž
Pdecoder/p_y_xz/rnn/Categorical_11/sample/Categorical/batch_shape_tensor/IdentityIdentity;decoder/p_y_xz/rnn/Categorical_10/batch_shape/strided_slice*
T0*
_output_shapes
:

8decoder/p_y_xz/rnn/Categorical_11/sample/concat/values_0Const*
_output_shapes
:*
valueB:*
dtype0
v
4decoder/p_y_xz/rnn/Categorical_11/sample/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ˇ
/decoder/p_y_xz/rnn/Categorical_11/sample/concatConcatV28decoder/p_y_xz/rnn/Categorical_11/sample/concat/values_0Pdecoder/p_y_xz/rnn/Categorical_11/sample/Categorical/batch_shape_tensor/Identity4decoder/p_y_xz/rnn/Categorical_11/sample/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N
ŕ
0decoder/p_y_xz/rnn/Categorical_11/sample/ReshapeReshape2decoder/p_y_xz/rnn/Categorical_11/sample/transpose/decoder/p_y_xz/rnn/Categorical_11/sample/concat*
T0	*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
-decoder/p_y_xz/rnn/Categorical_11/sample/CastCast0decoder/p_y_xz/rnn/Categorical_11/sample/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0	

.decoder/p_y_xz/rnn/Categorical_11/sample/ShapeShape-decoder/p_y_xz/rnn/Categorical_11/sample/Cast*
_output_shapes
:*
T0*
out_type0

<decoder/p_y_xz/rnn/Categorical_11/sample/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

>decoder/p_y_xz/rnn/Categorical_11/sample/strided_slice/stack_1Const*
_output_shapes
:*
valueB: *
dtype0

>decoder/p_y_xz/rnn/Categorical_11/sample/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ę
6decoder/p_y_xz/rnn/Categorical_11/sample/strided_sliceStridedSlice.decoder/p_y_xz/rnn/Categorical_11/sample/Shape<decoder/p_y_xz/rnn/Categorical_11/sample/strided_slice/stack>decoder/p_y_xz/rnn/Categorical_11/sample/strided_slice/stack_1>decoder/p_y_xz/rnn/Categorical_11/sample/strided_slice/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0
x
6decoder/p_y_xz/rnn/Categorical_11/sample/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 

1decoder/p_y_xz/rnn/Categorical_11/sample/concat_1ConcatV25decoder/p_y_xz/rnn/Categorical_11/sample/sample_shape6decoder/p_y_xz/rnn/Categorical_11/sample/strided_slice6decoder/p_y_xz/rnn/Categorical_11/sample/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
Ű
2decoder/p_y_xz/rnn/Categorical_11/sample/Reshape_1Reshape-decoder/p_y_xz/rnn/Categorical_11/sample/Cast1decoder/p_y_xz/rnn/Categorical_11/sample/concat_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
%decoder/p_y_xz/rnn/one_hot_5/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
k
&decoder/p_y_xz/rnn/one_hot_5/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
d
"decoder/p_y_xz/rnn/one_hot_5/depthConst*
value	B :*
dtype0*
_output_shapes
: 

decoder/p_y_xz/rnn/one_hot_5OneHot2decoder/p_y_xz/rnn/Categorical_11/sample/Reshape_1"decoder/p_y_xz/rnn/one_hot_5/depth%decoder/p_y_xz/rnn/one_hot_5/on_value&decoder/p_y_xz/rnn/one_hot_5/off_value*
T0*
TI0*
axis˙˙˙˙˙˙˙˙˙*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
$decoder/p_y_xz/rnn/ExpandDims_17/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
´
 decoder/p_y_xz/rnn/ExpandDims_17
ExpandDimsdecoder/p_y_xz/rnn/one_hot_5$decoder/p_y_xz/rnn/ExpandDims_17/dim*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0

decoder/p_y_xz/rnn/mul_29Muldecoder/p_y_xz/rnn/add_11 decoder/p_y_xz/rnn/ExpandDims_17*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
u
*decoder/p_y_xz/rnn/Sum_5/reduction_indicesConst*
valueB :
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ľ
decoder/p_y_xz/rnn/Sum_5Sumdecoder/p_y_xz/rnn/mul_29*decoder/p_y_xz/rnn/Sum_5/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims( *

Tidx0*
T0
}
(decoder/p_y_xz/rnn/strided_slice_5/stackConst*!
valueB"           *
dtype0*
_output_shapes
:

*decoder/p_y_xz/rnn/strided_slice_5/stack_1Const*!
valueB"           *
dtype0*
_output_shapes
:

*decoder/p_y_xz/rnn/strided_slice_5/stack_2Const*!
valueB"         *
dtype0*
_output_shapes
:

"decoder/p_y_xz/rnn/strided_slice_5StridedSlice,features_standardization/car1_future/truediv(decoder/p_y_xz/rnn/strided_slice_5/stack*decoder/p_y_xz/rnn/strided_slice_5/stack_1*decoder/p_y_xz/rnn/strided_slice_5/stack_2*
end_mask*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Index0*
T0*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask 
g
%decoder/p_y_xz/rnn/Tile_5/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
§
#decoder/p_y_xz/rnn/Tile_5/multiplesPacksample_ct_1/strided_slice%decoder/p_y_xz/rnn/Tile_5/multiples/1*
T0*

axis *
N*
_output_shapes
:
Ž
decoder/p_y_xz/rnn/Tile_5Tile"decoder/p_y_xz/rnn/strided_slice_5#decoder/p_y_xz/rnn/Tile_5/multiples*

Tmultiples0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
!decoder/p_y_xz/rnn/concat_10/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ç
decoder/p_y_xz/rnn/concat_10ConcatV2decoder/p_y_xz/rnn/Tile_5decoder/p_y_xz/rnn/Sum_5!decoder/p_y_xz/rnn/concat_10/axis*
T0*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
c
!decoder/p_y_xz/rnn/concat_11/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Č
decoder/p_y_xz/rnn/concat_11ConcatV2decoder/p_y_xz/concatdecoder/p_y_xz/rnn/concat_10!decoder/p_y_xz/rnn/concat_11/axis*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛*

Tidx0*
T0

\decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_6/axisConst*
value	B :*
dtype0*
_output_shapes
: 
ţ
Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_6ConcatV2decoder/p_y_xz/rnn/concat_11Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_17\decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_6/axis*
T0*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛*

Tidx0
ä
Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_6MatMulWdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_6Odecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
Ő
Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_6BiasAddWdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_6Mdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const_6Const*
value	B :*
dtype0*
_output_shapes
: 
˘
`decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_6/split_dimConst*
value	B :*
dtype0*
_output_shapes
: 

Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_6Split`decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_6/split_dimXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_6*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split*
T0
ë
Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_12TanhXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_6:1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_12/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Â
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_12AddXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_6:2Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_12/y*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
î
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_18SigmoidUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_12*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_18MulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_11Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_18*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ď
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_19SigmoidVdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_6*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Â
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_19MulYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_19Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_12*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
˝
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_13AddUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_18Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_19*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
č
Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_13TanhUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_13*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ń
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_20SigmoidXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_6:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Â
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_20MulVdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_13Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_20*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

.decoder/p_y_xz/rnn/log_pi_projection_12/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_200decoder/p_y_xz/rnn/log_pi_projection/kernel/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
ă
/decoder/p_y_xz/rnn/log_pi_projection_12/BiasAddBiasAdd.decoder/p_y_xz/rnn/log_pi_projection_12/MatMul.decoder/p_y_xz/rnn/log_pi_projection/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

*decoder/p_y_xz/rnn/mu_projection_12/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_20,decoder/p_y_xz/rnn/mu_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( *
transpose_b( 
×
+decoder/p_y_xz/rnn/mu_projection_12/BiasAddBiasAdd*decoder/p_y_xz/rnn/mu_projection_12/MatMul*decoder/p_y_xz/rnn/mu_projection/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

1decoder/p_y_xz/rnn/log_sigma_projection_12/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_203decoder/p_y_xz/rnn/log_sigma_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( *
transpose_b( 
ě
2decoder/p_y_xz/rnn/log_sigma_projection_12/BiasAddBiasAdd1decoder/p_y_xz/rnn/log_sigma_projection_12/MatMul1decoder/p_y_xz/rnn/log_sigma_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

,decoder/p_y_xz/rnn/corr_projection_12/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_20.decoder/p_y_xz/rnn/corr_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
Ý
-decoder/p_y_xz/rnn/corr_projection_12/BiasAddBiasAdd,decoder/p_y_xz/rnn/corr_projection_12/MatMul,decoder/p_y_xz/rnn/corr_projection/bias/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC

decoder/p_y_xz/rnn/Tanh_6Tanh-decoder/p_y_xz/rnn/corr_projection_12/BiasAdd*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

:decoder/p_y_xz/rnn/ReduceLogSumExp_6/Max/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ë
(decoder/p_y_xz/rnn/ReduceLogSumExp_6/MaxMax/decoder/p_y_xz/rnn/log_pi_projection_12/BiasAdd:decoder/p_y_xz/rnn/ReduceLogSumExp_6/Max/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0

1decoder/p_y_xz/rnn/ReduceLogSumExp_6/StopGradientStopGradient(decoder/p_y_xz/rnn/ReduceLogSumExp_6/Max*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
(decoder/p_y_xz/rnn/ReduceLogSumExp_6/subSub/decoder/p_y_xz/rnn/log_pi_projection_12/BiasAdd1decoder/p_y_xz/rnn/ReduceLogSumExp_6/StopGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

(decoder/p_y_xz/rnn/ReduceLogSumExp_6/ExpExp(decoder/p_y_xz/rnn/ReduceLogSumExp_6/sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

:decoder/p_y_xz/rnn/ReduceLogSumExp_6/Sum/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ä
(decoder/p_y_xz/rnn/ReduceLogSumExp_6/SumSum(decoder/p_y_xz/rnn/ReduceLogSumExp_6/Exp:decoder/p_y_xz/rnn/ReduceLogSumExp_6/Sum/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0

(decoder/p_y_xz/rnn/ReduceLogSumExp_6/LogLog(decoder/p_y_xz/rnn/ReduceLogSumExp_6/Sum*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
(decoder/p_y_xz/rnn/ReduceLogSumExp_6/addAdd(decoder/p_y_xz/rnn/ReduceLogSumExp_6/Log1decoder/p_y_xz/rnn/ReduceLogSumExp_6/StopGradient*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
­
decoder/p_y_xz/rnn/sub_12Sub/decoder/p_y_xz/rnn/log_pi_projection_12/BiasAdd(decoder/p_y_xz/rnn/ReduceLogSumExp_6/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
#decoder/p_y_xz/rnn/Reshape_12/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ž
decoder/p_y_xz/rnn/Reshape_12Reshape+decoder/p_y_xz/rnn/mu_projection_12/BiasAdd#decoder/p_y_xz/rnn/Reshape_12/shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
,decoder/p_y_xz/rnn/clip_by_value_6/Minimum/yConst*
valueB
 *   A*
dtype0*
_output_shapes
: 
É
*decoder/p_y_xz/rnn/clip_by_value_6/MinimumMinimum2decoder/p_y_xz/rnn/log_sigma_projection_12/BiasAdd,decoder/p_y_xz/rnn/clip_by_value_6/Minimum/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
i
$decoder/p_y_xz/rnn/clip_by_value_6/yConst*
valueB
 *   Á*
dtype0*
_output_shapes
: 
ą
"decoder/p_y_xz/rnn/clip_by_value_6Maximum*decoder/p_y_xz/rnn/clip_by_value_6/Minimum$decoder/p_y_xz/rnn/clip_by_value_6/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
x
#decoder/p_y_xz/rnn/Reshape_13/shapeConst*
dtype0*
_output_shapes
:*!
valueB"˙˙˙˙      
ľ
decoder/p_y_xz/rnn/Reshape_13Reshape"decoder/p_y_xz/rnn/clip_by_value_6#decoder/p_y_xz/rnn/Reshape_13/shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
decoder/p_y_xz/rnn/Exp_6Expdecoder/p_y_xz/rnn/Reshape_13*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
r
decoder/p_y_xz/rnn/Square_6Squaredecoder/p_y_xz/rnn/Tanh_6*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
decoder/p_y_xz/rnn/sub_13/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

decoder/p_y_xz/rnn/sub_13Subdecoder/p_y_xz/rnn/sub_13/xdecoder/p_y_xz/rnn/Square_6*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
}
$decoder/p_y_xz/rnn/ones_like_6/ShapeShapedecoder/p_y_xz/rnn/Tanh_6*
T0*
out_type0*
_output_shapes
:
i
$decoder/p_y_xz/rnn/ones_like_6/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
¤
decoder/p_y_xz/rnn/ones_like_6Fill$decoder/p_y_xz/rnn/ones_like_6/Shape$decoder/p_y_xz/rnn/ones_like_6/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˛
decoder/p_y_xz/rnn/stack_12Packdecoder/p_y_xz/rnn/ones_like_6decoder/p_y_xz/rnn/Tanh_6*
T0*
axis˙˙˙˙˙˙˙˙˙*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_30Muldecoder/p_y_xz/rnn/Exp_6decoder/p_y_xz/rnn/stack_12*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
y
decoder/p_y_xz/rnn/zeros_like_6	ZerosLikedecoder/p_y_xz/rnn/Tanh_6*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
n
decoder/p_y_xz/rnn/Sqrt_6Sqrtdecoder/p_y_xz/rnn/sub_13*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ł
decoder/p_y_xz/rnn/stack_13Packdecoder/p_y_xz/rnn/zeros_like_6decoder/p_y_xz/rnn/Sqrt_6*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
axis˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_31Muldecoder/p_y_xz/rnn/Exp_6decoder/p_y_xz/rnn/stack_13*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

3decoder/p_y_xz/rnn/Categorical_12/Categorical/probsSoftmaxdecoder/p_y_xz/rnn/sub_12*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
,decoder/p_y_xz/rnn/Categorical_12/batch_rankConst*
value	B :*
dtype0*
_output_shapes
: 

.decoder/p_y_xz/rnn/Categorical_12/logits_shapeShapedecoder/p_y_xz/rnn/sub_12*
T0*
out_type0*
_output_shapes
:
n
,decoder/p_y_xz/rnn/Categorical_12/event_sizeConst*
value	B :*
dtype0*
_output_shapes
: 

Adecoder/p_y_xz/rnn/Categorical_12/batch_shape/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

Cdecoder/p_y_xz/rnn/Categorical_12/batch_shape/strided_slice/stack_1Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

Cdecoder/p_y_xz/rnn/Categorical_12/batch_shape/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ţ
;decoder/p_y_xz/rnn/Categorical_12/batch_shape/strided_sliceStridedSlice.decoder/p_y_xz/rnn/Categorical_12/logits_shapeAdecoder/p_y_xz/rnn/Categorical_12/batch_shape/strided_slice/stackCdecoder/p_y_xz/rnn/Categorical_12/batch_shape/strided_slice/stack_1Cdecoder/p_y_xz/rnn/Categorical_12/batch_shape/strided_slice/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0
t
decoder/p_y_xz/rnn/Shape_12Shapedecoder/p_y_xz/rnn/Tanh_6*
_output_shapes
:*
T0*
out_type0
m
(decoder/p_y_xz/rnn/random_normal_12/meanConst*
_output_shapes
: *
valueB
 *    *
dtype0
o
*decoder/p_y_xz/rnn/random_normal_12/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ĺ
8decoder/p_y_xz/rnn/random_normal_12/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_12*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed *
T0
Ć
'decoder/p_y_xz/rnn/random_normal_12/mulMul8decoder/p_y_xz/rnn/random_normal_12/RandomStandardNormal*decoder/p_y_xz/rnn/random_normal_12/stddev*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
#decoder/p_y_xz/rnn/random_normal_12Add'decoder/p_y_xz/rnn/random_normal_12/mul(decoder/p_y_xz/rnn/random_normal_12/mean*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
o
$decoder/p_y_xz/rnn/ExpandDims_18/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ť
 decoder/p_y_xz/rnn/ExpandDims_18
ExpandDims#decoder/p_y_xz/rnn/random_normal_12$decoder/p_y_xz/rnn/ExpandDims_18/dim*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0

decoder/p_y_xz/rnn/mul_32Muldecoder/p_y_xz/rnn/mul_30 decoder/p_y_xz/rnn/ExpandDims_18*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
t
decoder/p_y_xz/rnn/Shape_13Shapedecoder/p_y_xz/rnn/Tanh_6*
T0*
out_type0*
_output_shapes
:
m
(decoder/p_y_xz/rnn/random_normal_13/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
*decoder/p_y_xz/rnn/random_normal_13/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ĺ
8decoder/p_y_xz/rnn/random_normal_13/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_13*
T0*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed 
Ć
'decoder/p_y_xz/rnn/random_normal_13/mulMul8decoder/p_y_xz/rnn/random_normal_13/RandomStandardNormal*decoder/p_y_xz/rnn/random_normal_13/stddev*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
#decoder/p_y_xz/rnn/random_normal_13Add'decoder/p_y_xz/rnn/random_normal_13/mul(decoder/p_y_xz/rnn/random_normal_13/mean*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
o
$decoder/p_y_xz/rnn/ExpandDims_19/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ť
 decoder/p_y_xz/rnn/ExpandDims_19
ExpandDims#decoder/p_y_xz/rnn/random_normal_13$decoder/p_y_xz/rnn/ExpandDims_19/dim*

Tdim0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_33Muldecoder/p_y_xz/rnn/mul_31 decoder/p_y_xz/rnn/ExpandDims_19*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

decoder/p_y_xz/rnn/add_12Adddecoder/p_y_xz/rnn/mul_32decoder/p_y_xz/rnn/mul_33*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/add_13Adddecoder/p_y_xz/rnn/Reshape_12decoder/p_y_xz/rnn/add_12*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
5decoder/p_y_xz/rnn/Categorical_13/sample/sample_shapeConst*
valueB *
dtype0*
_output_shapes
: 

Ldecoder/p_y_xz/rnn/Categorical_13/sample/multinomial/Multinomial/num_samplesConst*
value	B :*
dtype0*
_output_shapes
: 

@decoder/p_y_xz/rnn/Categorical_13/sample/multinomial/MultinomialMultinomialdecoder/p_y_xz/rnn/sub_12Ldecoder/p_y_xz/rnn/Categorical_13/sample/multinomial/Multinomial/num_samples*

seed *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 
˘
7decoder/p_y_xz/rnn/Categorical_13/sample/transpose/RankRank@decoder/p_y_xz/rnn/Categorical_13/sample/multinomial/Multinomial*
T0	*
_output_shapes
: 
z
8decoder/p_y_xz/rnn/Categorical_13/sample/transpose/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
Ń
6decoder/p_y_xz/rnn/Categorical_13/sample/transpose/subSub7decoder/p_y_xz/rnn/Categorical_13/sample/transpose/Rank8decoder/p_y_xz/rnn/Categorical_13/sample/transpose/sub/y*
T0*
_output_shapes
: 

>decoder/p_y_xz/rnn/Categorical_13/sample/transpose/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 

>decoder/p_y_xz/rnn/Categorical_13/sample/transpose/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
˘
8decoder/p_y_xz/rnn/Categorical_13/sample/transpose/RangeRange>decoder/p_y_xz/rnn/Categorical_13/sample/transpose/Range/start7decoder/p_y_xz/rnn/Categorical_13/sample/transpose/Rank>decoder/p_y_xz/rnn/Categorical_13/sample/transpose/Range/delta*
_output_shapes
:*

Tidx0
Ö
8decoder/p_y_xz/rnn/Categorical_13/sample/transpose/sub_1Sub6decoder/p_y_xz/rnn/Categorical_13/sample/transpose/sub8decoder/p_y_xz/rnn/Categorical_13/sample/transpose/Range*
T0*
_output_shapes
:
ú
2decoder/p_y_xz/rnn/Categorical_13/sample/transpose	Transpose@decoder/p_y_xz/rnn/Categorical_13/sample/multinomial/Multinomial8decoder/p_y_xz/rnn/Categorical_13/sample/transpose/sub_1*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0
ž
Pdecoder/p_y_xz/rnn/Categorical_13/sample/Categorical/batch_shape_tensor/IdentityIdentity;decoder/p_y_xz/rnn/Categorical_12/batch_shape/strided_slice*
T0*
_output_shapes
:

8decoder/p_y_xz/rnn/Categorical_13/sample/concat/values_0Const*
valueB:*
dtype0*
_output_shapes
:
v
4decoder/p_y_xz/rnn/Categorical_13/sample/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ˇ
/decoder/p_y_xz/rnn/Categorical_13/sample/concatConcatV28decoder/p_y_xz/rnn/Categorical_13/sample/concat/values_0Pdecoder/p_y_xz/rnn/Categorical_13/sample/Categorical/batch_shape_tensor/Identity4decoder/p_y_xz/rnn/Categorical_13/sample/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
ŕ
0decoder/p_y_xz/rnn/Categorical_13/sample/ReshapeReshape2decoder/p_y_xz/rnn/Categorical_13/sample/transpose/decoder/p_y_xz/rnn/Categorical_13/sample/concat*
T0	*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
-decoder/p_y_xz/rnn/Categorical_13/sample/CastCast0decoder/p_y_xz/rnn/Categorical_13/sample/Reshape*

SrcT0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0

.decoder/p_y_xz/rnn/Categorical_13/sample/ShapeShape-decoder/p_y_xz/rnn/Categorical_13/sample/Cast*
_output_shapes
:*
T0*
out_type0

<decoder/p_y_xz/rnn/Categorical_13/sample/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

>decoder/p_y_xz/rnn/Categorical_13/sample/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 

>decoder/p_y_xz/rnn/Categorical_13/sample/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ę
6decoder/p_y_xz/rnn/Categorical_13/sample/strided_sliceStridedSlice.decoder/p_y_xz/rnn/Categorical_13/sample/Shape<decoder/p_y_xz/rnn/Categorical_13/sample/strided_slice/stack>decoder/p_y_xz/rnn/Categorical_13/sample/strided_slice/stack_1>decoder/p_y_xz/rnn/Categorical_13/sample/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
x
6decoder/p_y_xz/rnn/Categorical_13/sample/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0

1decoder/p_y_xz/rnn/Categorical_13/sample/concat_1ConcatV25decoder/p_y_xz/rnn/Categorical_13/sample/sample_shape6decoder/p_y_xz/rnn/Categorical_13/sample/strided_slice6decoder/p_y_xz/rnn/Categorical_13/sample/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ű
2decoder/p_y_xz/rnn/Categorical_13/sample/Reshape_1Reshape-decoder/p_y_xz/rnn/Categorical_13/sample/Cast1decoder/p_y_xz/rnn/Categorical_13/sample/concat_1*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
j
%decoder/p_y_xz/rnn/one_hot_6/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
k
&decoder/p_y_xz/rnn/one_hot_6/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
d
"decoder/p_y_xz/rnn/one_hot_6/depthConst*
value	B :*
dtype0*
_output_shapes
: 

decoder/p_y_xz/rnn/one_hot_6OneHot2decoder/p_y_xz/rnn/Categorical_13/sample/Reshape_1"decoder/p_y_xz/rnn/one_hot_6/depth%decoder/p_y_xz/rnn/one_hot_6/on_value&decoder/p_y_xz/rnn/one_hot_6/off_value*
T0*
TI0*
axis˙˙˙˙˙˙˙˙˙*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
$decoder/p_y_xz/rnn/ExpandDims_20/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
´
 decoder/p_y_xz/rnn/ExpandDims_20
ExpandDimsdecoder/p_y_xz/rnn/one_hot_6$decoder/p_y_xz/rnn/ExpandDims_20/dim*

Tdim0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_34Muldecoder/p_y_xz/rnn/add_13 decoder/p_y_xz/rnn/ExpandDims_20*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
*decoder/p_y_xz/rnn/Sum_6/reduction_indicesConst*
valueB :
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ľ
decoder/p_y_xz/rnn/Sum_6Sumdecoder/p_y_xz/rnn/mul_34*decoder/p_y_xz/rnn/Sum_6/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims( *

Tidx0*
T0
}
(decoder/p_y_xz/rnn/strided_slice_6/stackConst*!
valueB"           *
dtype0*
_output_shapes
:

*decoder/p_y_xz/rnn/strided_slice_6/stack_1Const*!
valueB"           *
dtype0*
_output_shapes
:

*decoder/p_y_xz/rnn/strided_slice_6/stack_2Const*!
valueB"         *
dtype0*
_output_shapes
:

"decoder/p_y_xz/rnn/strided_slice_6StridedSlice,features_standardization/car1_future/truediv(decoder/p_y_xz/rnn/strided_slice_6/stack*decoder/p_y_xz/rnn/strided_slice_6/stack_1*decoder/p_y_xz/rnn/strided_slice_6/stack_2*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Index0
g
%decoder/p_y_xz/rnn/Tile_6/multiples/1Const*
_output_shapes
: *
value	B :*
dtype0
§
#decoder/p_y_xz/rnn/Tile_6/multiplesPacksample_ct_1/strided_slice%decoder/p_y_xz/rnn/Tile_6/multiples/1*
T0*

axis *
N*
_output_shapes
:
Ž
decoder/p_y_xz/rnn/Tile_6Tile"decoder/p_y_xz/rnn/strided_slice_6#decoder/p_y_xz/rnn/Tile_6/multiples*

Tmultiples0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
!decoder/p_y_xz/rnn/concat_12/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ç
decoder/p_y_xz/rnn/concat_12ConcatV2decoder/p_y_xz/rnn/Tile_6decoder/p_y_xz/rnn/Sum_6!decoder/p_y_xz/rnn/concat_12/axis*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0
c
!decoder/p_y_xz/rnn/concat_13/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Č
decoder/p_y_xz/rnn/concat_13ConcatV2decoder/p_y_xz/concatdecoder/p_y_xz/rnn/concat_12!decoder/p_y_xz/rnn/concat_13/axis*
T0*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛*

Tidx0

\decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_7/axisConst*
value	B :*
dtype0*
_output_shapes
: 
ţ
Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_7ConcatV2decoder/p_y_xz/rnn/concat_13Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_20\decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_7/axis*

Tidx0*
T0*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛
ä
Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_7MatMulWdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_7Odecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
Ő
Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_7BiasAddWdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_7Mdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC

Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const_7Const*
value	B :*
dtype0*
_output_shapes
: 
˘
`decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_7/split_dimConst*
value	B :*
dtype0*
_output_shapes
: 

Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_7Split`decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_7/split_dimXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_7*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split*
T0
ë
Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_14TanhXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_7:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_14/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Â
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_14AddXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_7:2Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_14/y*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
î
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_21SigmoidUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_14*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_21MulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_13Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_21*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ď
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_22SigmoidVdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_7*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Â
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_22MulYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_22Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_14*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
˝
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_15AddUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_21Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_22*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
č
Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_15TanhUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_15*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ń
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_23SigmoidXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_7:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Â
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_23MulVdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_15Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_23*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

.decoder/p_y_xz/rnn/log_pi_projection_14/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_230decoder/p_y_xz/rnn/log_pi_projection/kernel/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
ă
/decoder/p_y_xz/rnn/log_pi_projection_14/BiasAddBiasAdd.decoder/p_y_xz/rnn/log_pi_projection_14/MatMul.decoder/p_y_xz/rnn/log_pi_projection/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

*decoder/p_y_xz/rnn/mu_projection_14/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_23,decoder/p_y_xz/rnn/mu_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( *
transpose_b( 
×
+decoder/p_y_xz/rnn/mu_projection_14/BiasAddBiasAdd*decoder/p_y_xz/rnn/mu_projection_14/MatMul*decoder/p_y_xz/rnn/mu_projection/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

1decoder/p_y_xz/rnn/log_sigma_projection_14/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_233decoder/p_y_xz/rnn/log_sigma_projection/kernel/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( *
transpose_b( *
T0
ě
2decoder/p_y_xz/rnn/log_sigma_projection_14/BiasAddBiasAdd1decoder/p_y_xz/rnn/log_sigma_projection_14/MatMul1decoder/p_y_xz/rnn/log_sigma_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

,decoder/p_y_xz/rnn/corr_projection_14/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_23.decoder/p_y_xz/rnn/corr_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
Ý
-decoder/p_y_xz/rnn/corr_projection_14/BiasAddBiasAdd,decoder/p_y_xz/rnn/corr_projection_14/MatMul,decoder/p_y_xz/rnn/corr_projection/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

decoder/p_y_xz/rnn/Tanh_7Tanh-decoder/p_y_xz/rnn/corr_projection_14/BiasAdd*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

:decoder/p_y_xz/rnn/ReduceLogSumExp_7/Max/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ë
(decoder/p_y_xz/rnn/ReduceLogSumExp_7/MaxMax/decoder/p_y_xz/rnn/log_pi_projection_14/BiasAdd:decoder/p_y_xz/rnn/ReduceLogSumExp_7/Max/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0

1decoder/p_y_xz/rnn/ReduceLogSumExp_7/StopGradientStopGradient(decoder/p_y_xz/rnn/ReduceLogSumExp_7/Max*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
(decoder/p_y_xz/rnn/ReduceLogSumExp_7/subSub/decoder/p_y_xz/rnn/log_pi_projection_14/BiasAdd1decoder/p_y_xz/rnn/ReduceLogSumExp_7/StopGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

(decoder/p_y_xz/rnn/ReduceLogSumExp_7/ExpExp(decoder/p_y_xz/rnn/ReduceLogSumExp_7/sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

:decoder/p_y_xz/rnn/ReduceLogSumExp_7/Sum/reduction_indicesConst*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0
ä
(decoder/p_y_xz/rnn/ReduceLogSumExp_7/SumSum(decoder/p_y_xz/rnn/ReduceLogSumExp_7/Exp:decoder/p_y_xz/rnn/ReduceLogSumExp_7/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

(decoder/p_y_xz/rnn/ReduceLogSumExp_7/LogLog(decoder/p_y_xz/rnn/ReduceLogSumExp_7/Sum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ž
(decoder/p_y_xz/rnn/ReduceLogSumExp_7/addAdd(decoder/p_y_xz/rnn/ReduceLogSumExp_7/Log1decoder/p_y_xz/rnn/ReduceLogSumExp_7/StopGradient*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
­
decoder/p_y_xz/rnn/sub_14Sub/decoder/p_y_xz/rnn/log_pi_projection_14/BiasAdd(decoder/p_y_xz/rnn/ReduceLogSumExp_7/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
#decoder/p_y_xz/rnn/Reshape_14/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ž
decoder/p_y_xz/rnn/Reshape_14Reshape+decoder/p_y_xz/rnn/mu_projection_14/BiasAdd#decoder/p_y_xz/rnn/Reshape_14/shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
,decoder/p_y_xz/rnn/clip_by_value_7/Minimum/yConst*
dtype0*
_output_shapes
: *
valueB
 *   A
É
*decoder/p_y_xz/rnn/clip_by_value_7/MinimumMinimum2decoder/p_y_xz/rnn/log_sigma_projection_14/BiasAdd,decoder/p_y_xz/rnn/clip_by_value_7/Minimum/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
i
$decoder/p_y_xz/rnn/clip_by_value_7/yConst*
valueB
 *   Á*
dtype0*
_output_shapes
: 
ą
"decoder/p_y_xz/rnn/clip_by_value_7Maximum*decoder/p_y_xz/rnn/clip_by_value_7/Minimum$decoder/p_y_xz/rnn/clip_by_value_7/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
x
#decoder/p_y_xz/rnn/Reshape_15/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ľ
decoder/p_y_xz/rnn/Reshape_15Reshape"decoder/p_y_xz/rnn/clip_by_value_7#decoder/p_y_xz/rnn/Reshape_15/shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
decoder/p_y_xz/rnn/Exp_7Expdecoder/p_y_xz/rnn/Reshape_15*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
r
decoder/p_y_xz/rnn/Square_7Squaredecoder/p_y_xz/rnn/Tanh_7*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
`
decoder/p_y_xz/rnn/sub_15/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

decoder/p_y_xz/rnn/sub_15Subdecoder/p_y_xz/rnn/sub_15/xdecoder/p_y_xz/rnn/Square_7*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
}
$decoder/p_y_xz/rnn/ones_like_7/ShapeShapedecoder/p_y_xz/rnn/Tanh_7*
T0*
out_type0*
_output_shapes
:
i
$decoder/p_y_xz/rnn/ones_like_7/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¤
decoder/p_y_xz/rnn/ones_like_7Fill$decoder/p_y_xz/rnn/ones_like_7/Shape$decoder/p_y_xz/rnn/ones_like_7/Const*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
˛
decoder/p_y_xz/rnn/stack_14Packdecoder/p_y_xz/rnn/ones_like_7decoder/p_y_xz/rnn/Tanh_7*
T0*
axis˙˙˙˙˙˙˙˙˙*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_35Muldecoder/p_y_xz/rnn/Exp_7decoder/p_y_xz/rnn/stack_14*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
y
decoder/p_y_xz/rnn/zeros_like_7	ZerosLikedecoder/p_y_xz/rnn/Tanh_7*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
n
decoder/p_y_xz/rnn/Sqrt_7Sqrtdecoder/p_y_xz/rnn/sub_15*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ł
decoder/p_y_xz/rnn/stack_15Packdecoder/p_y_xz/rnn/zeros_like_7decoder/p_y_xz/rnn/Sqrt_7*
axis˙˙˙˙˙˙˙˙˙*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

decoder/p_y_xz/rnn/mul_36Muldecoder/p_y_xz/rnn/Exp_7decoder/p_y_xz/rnn/stack_15*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

3decoder/p_y_xz/rnn/Categorical_14/Categorical/probsSoftmaxdecoder/p_y_xz/rnn/sub_14*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
n
,decoder/p_y_xz/rnn/Categorical_14/batch_rankConst*
value	B :*
dtype0*
_output_shapes
: 

.decoder/p_y_xz/rnn/Categorical_14/logits_shapeShapedecoder/p_y_xz/rnn/sub_14*
T0*
out_type0*
_output_shapes
:
n
,decoder/p_y_xz/rnn/Categorical_14/event_sizeConst*
value	B :*
dtype0*
_output_shapes
: 

Adecoder/p_y_xz/rnn/Categorical_14/batch_shape/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Cdecoder/p_y_xz/rnn/Categorical_14/batch_shape/strided_slice/stack_1Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

Cdecoder/p_y_xz/rnn/Categorical_14/batch_shape/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ţ
;decoder/p_y_xz/rnn/Categorical_14/batch_shape/strided_sliceStridedSlice.decoder/p_y_xz/rnn/Categorical_14/logits_shapeAdecoder/p_y_xz/rnn/Categorical_14/batch_shape/strided_slice/stackCdecoder/p_y_xz/rnn/Categorical_14/batch_shape/strided_slice/stack_1Cdecoder/p_y_xz/rnn/Categorical_14/batch_shape/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
t
decoder/p_y_xz/rnn/Shape_14Shapedecoder/p_y_xz/rnn/Tanh_7*
T0*
out_type0*
_output_shapes
:
m
(decoder/p_y_xz/rnn/random_normal_14/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
*decoder/p_y_xz/rnn/random_normal_14/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ĺ
8decoder/p_y_xz/rnn/random_normal_14/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_14*
T0*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed 
Ć
'decoder/p_y_xz/rnn/random_normal_14/mulMul8decoder/p_y_xz/rnn/random_normal_14/RandomStandardNormal*decoder/p_y_xz/rnn/random_normal_14/stddev*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
#decoder/p_y_xz/rnn/random_normal_14Add'decoder/p_y_xz/rnn/random_normal_14/mul(decoder/p_y_xz/rnn/random_normal_14/mean*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
o
$decoder/p_y_xz/rnn/ExpandDims_21/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ť
 decoder/p_y_xz/rnn/ExpandDims_21
ExpandDims#decoder/p_y_xz/rnn/random_normal_14$decoder/p_y_xz/rnn/ExpandDims_21/dim*

Tdim0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_37Muldecoder/p_y_xz/rnn/mul_35 decoder/p_y_xz/rnn/ExpandDims_21*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
decoder/p_y_xz/rnn/Shape_15Shapedecoder/p_y_xz/rnn/Tanh_7*
T0*
out_type0*
_output_shapes
:
m
(decoder/p_y_xz/rnn/random_normal_15/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
o
*decoder/p_y_xz/rnn/random_normal_15/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ĺ
8decoder/p_y_xz/rnn/random_normal_15/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_15*
T0*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed 
Ć
'decoder/p_y_xz/rnn/random_normal_15/mulMul8decoder/p_y_xz/rnn/random_normal_15/RandomStandardNormal*decoder/p_y_xz/rnn/random_normal_15/stddev*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ż
#decoder/p_y_xz/rnn/random_normal_15Add'decoder/p_y_xz/rnn/random_normal_15/mul(decoder/p_y_xz/rnn/random_normal_15/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
$decoder/p_y_xz/rnn/ExpandDims_22/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ť
 decoder/p_y_xz/rnn/ExpandDims_22
ExpandDims#decoder/p_y_xz/rnn/random_normal_15$decoder/p_y_xz/rnn/ExpandDims_22/dim*

Tdim0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_38Muldecoder/p_y_xz/rnn/mul_36 decoder/p_y_xz/rnn/ExpandDims_22*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/add_14Adddecoder/p_y_xz/rnn/mul_37decoder/p_y_xz/rnn/mul_38*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/add_15Adddecoder/p_y_xz/rnn/Reshape_14decoder/p_y_xz/rnn/add_14*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
5decoder/p_y_xz/rnn/Categorical_15/sample/sample_shapeConst*
valueB *
dtype0*
_output_shapes
: 

Ldecoder/p_y_xz/rnn/Categorical_15/sample/multinomial/Multinomial/num_samplesConst*
value	B :*
dtype0*
_output_shapes
: 

@decoder/p_y_xz/rnn/Categorical_15/sample/multinomial/MultinomialMultinomialdecoder/p_y_xz/rnn/sub_14Ldecoder/p_y_xz/rnn/Categorical_15/sample/multinomial/Multinomial/num_samples*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed *
T0
˘
7decoder/p_y_xz/rnn/Categorical_15/sample/transpose/RankRank@decoder/p_y_xz/rnn/Categorical_15/sample/multinomial/Multinomial*
T0	*
_output_shapes
: 
z
8decoder/p_y_xz/rnn/Categorical_15/sample/transpose/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
Ń
6decoder/p_y_xz/rnn/Categorical_15/sample/transpose/subSub7decoder/p_y_xz/rnn/Categorical_15/sample/transpose/Rank8decoder/p_y_xz/rnn/Categorical_15/sample/transpose/sub/y*
_output_shapes
: *
T0

>decoder/p_y_xz/rnn/Categorical_15/sample/transpose/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 

>decoder/p_y_xz/rnn/Categorical_15/sample/transpose/Range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
˘
8decoder/p_y_xz/rnn/Categorical_15/sample/transpose/RangeRange>decoder/p_y_xz/rnn/Categorical_15/sample/transpose/Range/start7decoder/p_y_xz/rnn/Categorical_15/sample/transpose/Rank>decoder/p_y_xz/rnn/Categorical_15/sample/transpose/Range/delta*
_output_shapes
:*

Tidx0
Ö
8decoder/p_y_xz/rnn/Categorical_15/sample/transpose/sub_1Sub6decoder/p_y_xz/rnn/Categorical_15/sample/transpose/sub8decoder/p_y_xz/rnn/Categorical_15/sample/transpose/Range*
_output_shapes
:*
T0
ú
2decoder/p_y_xz/rnn/Categorical_15/sample/transpose	Transpose@decoder/p_y_xz/rnn/Categorical_15/sample/multinomial/Multinomial8decoder/p_y_xz/rnn/Categorical_15/sample/transpose/sub_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0*
T0	
ž
Pdecoder/p_y_xz/rnn/Categorical_15/sample/Categorical/batch_shape_tensor/IdentityIdentity;decoder/p_y_xz/rnn/Categorical_14/batch_shape/strided_slice*
T0*
_output_shapes
:

8decoder/p_y_xz/rnn/Categorical_15/sample/concat/values_0Const*
valueB:*
dtype0*
_output_shapes
:
v
4decoder/p_y_xz/rnn/Categorical_15/sample/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ˇ
/decoder/p_y_xz/rnn/Categorical_15/sample/concatConcatV28decoder/p_y_xz/rnn/Categorical_15/sample/concat/values_0Pdecoder/p_y_xz/rnn/Categorical_15/sample/Categorical/batch_shape_tensor/Identity4decoder/p_y_xz/rnn/Categorical_15/sample/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
ŕ
0decoder/p_y_xz/rnn/Categorical_15/sample/ReshapeReshape2decoder/p_y_xz/rnn/Categorical_15/sample/transpose/decoder/p_y_xz/rnn/Categorical_15/sample/concat*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0	*
Tshape0
¨
-decoder/p_y_xz/rnn/Categorical_15/sample/CastCast0decoder/p_y_xz/rnn/Categorical_15/sample/Reshape*

SrcT0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0

.decoder/p_y_xz/rnn/Categorical_15/sample/ShapeShape-decoder/p_y_xz/rnn/Categorical_15/sample/Cast*
T0*
out_type0*
_output_shapes
:

<decoder/p_y_xz/rnn/Categorical_15/sample/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

>decoder/p_y_xz/rnn/Categorical_15/sample/strided_slice/stack_1Const*
_output_shapes
:*
valueB: *
dtype0

>decoder/p_y_xz/rnn/Categorical_15/sample/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ę
6decoder/p_y_xz/rnn/Categorical_15/sample/strided_sliceStridedSlice.decoder/p_y_xz/rnn/Categorical_15/sample/Shape<decoder/p_y_xz/rnn/Categorical_15/sample/strided_slice/stack>decoder/p_y_xz/rnn/Categorical_15/sample/strided_slice/stack_1>decoder/p_y_xz/rnn/Categorical_15/sample/strided_slice/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0
x
6decoder/p_y_xz/rnn/Categorical_15/sample/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

1decoder/p_y_xz/rnn/Categorical_15/sample/concat_1ConcatV25decoder/p_y_xz/rnn/Categorical_15/sample/sample_shape6decoder/p_y_xz/rnn/Categorical_15/sample/strided_slice6decoder/p_y_xz/rnn/Categorical_15/sample/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
Ű
2decoder/p_y_xz/rnn/Categorical_15/sample/Reshape_1Reshape-decoder/p_y_xz/rnn/Categorical_15/sample/Cast1decoder/p_y_xz/rnn/Categorical_15/sample/concat_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
%decoder/p_y_xz/rnn/one_hot_7/on_valueConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
k
&decoder/p_y_xz/rnn/one_hot_7/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
d
"decoder/p_y_xz/rnn/one_hot_7/depthConst*
value	B :*
dtype0*
_output_shapes
: 

decoder/p_y_xz/rnn/one_hot_7OneHot2decoder/p_y_xz/rnn/Categorical_15/sample/Reshape_1"decoder/p_y_xz/rnn/one_hot_7/depth%decoder/p_y_xz/rnn/one_hot_7/on_value&decoder/p_y_xz/rnn/one_hot_7/off_value*
T0*
TI0*
axis˙˙˙˙˙˙˙˙˙*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
$decoder/p_y_xz/rnn/ExpandDims_23/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
´
 decoder/p_y_xz/rnn/ExpandDims_23
ExpandDimsdecoder/p_y_xz/rnn/one_hot_7$decoder/p_y_xz/rnn/ExpandDims_23/dim*

Tdim0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_39Muldecoder/p_y_xz/rnn/add_15 decoder/p_y_xz/rnn/ExpandDims_23*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
*decoder/p_y_xz/rnn/Sum_7/reduction_indicesConst*
valueB :
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ľ
decoder/p_y_xz/rnn/Sum_7Sumdecoder/p_y_xz/rnn/mul_39*decoder/p_y_xz/rnn/Sum_7/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims( *

Tidx0*
T0
}
(decoder/p_y_xz/rnn/strided_slice_7/stackConst*!
valueB"           *
dtype0*
_output_shapes
:

*decoder/p_y_xz/rnn/strided_slice_7/stack_1Const*
dtype0*
_output_shapes
:*!
valueB"           

*decoder/p_y_xz/rnn/strided_slice_7/stack_2Const*!
valueB"         *
dtype0*
_output_shapes
:

"decoder/p_y_xz/rnn/strided_slice_7StridedSlice,features_standardization/car1_future/truediv(decoder/p_y_xz/rnn/strided_slice_7/stack*decoder/p_y_xz/rnn/strided_slice_7/stack_1*decoder/p_y_xz/rnn/strided_slice_7/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
g
%decoder/p_y_xz/rnn/Tile_7/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
§
#decoder/p_y_xz/rnn/Tile_7/multiplesPacksample_ct_1/strided_slice%decoder/p_y_xz/rnn/Tile_7/multiples/1*
N*
_output_shapes
:*
T0*

axis 
Ž
decoder/p_y_xz/rnn/Tile_7Tile"decoder/p_y_xz/rnn/strided_slice_7#decoder/p_y_xz/rnn/Tile_7/multiples*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0*
T0
c
!decoder/p_y_xz/rnn/concat_14/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ç
decoder/p_y_xz/rnn/concat_14ConcatV2decoder/p_y_xz/rnn/Tile_7decoder/p_y_xz/rnn/Sum_7!decoder/p_y_xz/rnn/concat_14/axis*
T0*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
c
!decoder/p_y_xz/rnn/concat_15/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Č
decoder/p_y_xz/rnn/concat_15ConcatV2decoder/p_y_xz/concatdecoder/p_y_xz/rnn/concat_14!decoder/p_y_xz/rnn/concat_15/axis*

Tidx0*
T0*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛

\decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_8/axisConst*
value	B :*
dtype0*
_output_shapes
: 
ţ
Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_8ConcatV2decoder/p_y_xz/rnn/concat_15Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_23\decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_8/axis*
T0*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛*

Tidx0
ä
Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_8MatMulWdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_8Odecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
Ő
Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_8BiasAddWdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_8Mdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const_8Const*
_output_shapes
: *
value	B :*
dtype0
˘
`decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_8/split_dimConst*
value	B :*
dtype0*
_output_shapes
: 

Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_8Split`decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_8/split_dimXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_8*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
ë
Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_16TanhXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_8:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_16/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Â
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_16AddXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_8:2Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_16/y*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
î
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_24SigmoidUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_16*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Á
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_24MulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_15Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_24*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ď
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_25SigmoidVdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_8*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Â
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_25MulYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_25Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_16*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
˝
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_17AddUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_24Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_25*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
č
Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_17TanhUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_17*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ń
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_26SigmoidXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_8:3*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Â
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_26MulVdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_17Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_26*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

.decoder/p_y_xz/rnn/log_pi_projection_16/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_260decoder/p_y_xz/rnn/log_pi_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
ă
/decoder/p_y_xz/rnn/log_pi_projection_16/BiasAddBiasAdd.decoder/p_y_xz/rnn/log_pi_projection_16/MatMul.decoder/p_y_xz/rnn/log_pi_projection/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

*decoder/p_y_xz/rnn/mu_projection_16/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_26,decoder/p_y_xz/rnn/mu_projection/kernel/read*
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( 
×
+decoder/p_y_xz/rnn/mu_projection_16/BiasAddBiasAdd*decoder/p_y_xz/rnn/mu_projection_16/MatMul*decoder/p_y_xz/rnn/mu_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

1decoder/p_y_xz/rnn/log_sigma_projection_16/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_263decoder/p_y_xz/rnn/log_sigma_projection/kernel/read*
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( 
ě
2decoder/p_y_xz/rnn/log_sigma_projection_16/BiasAddBiasAdd1decoder/p_y_xz/rnn/log_sigma_projection_16/MatMul1decoder/p_y_xz/rnn/log_sigma_projection/bias/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*
data_formatNHWC

,decoder/p_y_xz/rnn/corr_projection_16/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_26.decoder/p_y_xz/rnn/corr_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
Ý
-decoder/p_y_xz/rnn/corr_projection_16/BiasAddBiasAdd,decoder/p_y_xz/rnn/corr_projection_16/MatMul,decoder/p_y_xz/rnn/corr_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/Tanh_8Tanh-decoder/p_y_xz/rnn/corr_projection_16/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

:decoder/p_y_xz/rnn/ReduceLogSumExp_8/Max/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙
ë
(decoder/p_y_xz/rnn/ReduceLogSumExp_8/MaxMax/decoder/p_y_xz/rnn/log_pi_projection_16/BiasAdd:decoder/p_y_xz/rnn/ReduceLogSumExp_8/Max/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0

1decoder/p_y_xz/rnn/ReduceLogSumExp_8/StopGradientStopGradient(decoder/p_y_xz/rnn/ReduceLogSumExp_8/Max*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ĺ
(decoder/p_y_xz/rnn/ReduceLogSumExp_8/subSub/decoder/p_y_xz/rnn/log_pi_projection_16/BiasAdd1decoder/p_y_xz/rnn/ReduceLogSumExp_8/StopGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

(decoder/p_y_xz/rnn/ReduceLogSumExp_8/ExpExp(decoder/p_y_xz/rnn/ReduceLogSumExp_8/sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

:decoder/p_y_xz/rnn/ReduceLogSumExp_8/Sum/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ä
(decoder/p_y_xz/rnn/ReduceLogSumExp_8/SumSum(decoder/p_y_xz/rnn/ReduceLogSumExp_8/Exp:decoder/p_y_xz/rnn/ReduceLogSumExp_8/Sum/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0

(decoder/p_y_xz/rnn/ReduceLogSumExp_8/LogLog(decoder/p_y_xz/rnn/ReduceLogSumExp_8/Sum*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
(decoder/p_y_xz/rnn/ReduceLogSumExp_8/addAdd(decoder/p_y_xz/rnn/ReduceLogSumExp_8/Log1decoder/p_y_xz/rnn/ReduceLogSumExp_8/StopGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
­
decoder/p_y_xz/rnn/sub_16Sub/decoder/p_y_xz/rnn/log_pi_projection_16/BiasAdd(decoder/p_y_xz/rnn/ReduceLogSumExp_8/add*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
x
#decoder/p_y_xz/rnn/Reshape_16/shapeConst*
dtype0*
_output_shapes
:*!
valueB"˙˙˙˙      
ž
decoder/p_y_xz/rnn/Reshape_16Reshape+decoder/p_y_xz/rnn/mu_projection_16/BiasAdd#decoder/p_y_xz/rnn/Reshape_16/shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
,decoder/p_y_xz/rnn/clip_by_value_8/Minimum/yConst*
valueB
 *   A*
dtype0*
_output_shapes
: 
É
*decoder/p_y_xz/rnn/clip_by_value_8/MinimumMinimum2decoder/p_y_xz/rnn/log_sigma_projection_16/BiasAdd,decoder/p_y_xz/rnn/clip_by_value_8/Minimum/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
i
$decoder/p_y_xz/rnn/clip_by_value_8/yConst*
_output_shapes
: *
valueB
 *   Á*
dtype0
ą
"decoder/p_y_xz/rnn/clip_by_value_8Maximum*decoder/p_y_xz/rnn/clip_by_value_8/Minimum$decoder/p_y_xz/rnn/clip_by_value_8/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
x
#decoder/p_y_xz/rnn/Reshape_17/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ľ
decoder/p_y_xz/rnn/Reshape_17Reshape"decoder/p_y_xz/rnn/clip_by_value_8#decoder/p_y_xz/rnn/Reshape_17/shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
decoder/p_y_xz/rnn/Exp_8Expdecoder/p_y_xz/rnn/Reshape_17*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
decoder/p_y_xz/rnn/Square_8Squaredecoder/p_y_xz/rnn/Tanh_8*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
decoder/p_y_xz/rnn/sub_17/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

decoder/p_y_xz/rnn/sub_17Subdecoder/p_y_xz/rnn/sub_17/xdecoder/p_y_xz/rnn/Square_8*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
}
$decoder/p_y_xz/rnn/ones_like_8/ShapeShapedecoder/p_y_xz/rnn/Tanh_8*
T0*
out_type0*
_output_shapes
:
i
$decoder/p_y_xz/rnn/ones_like_8/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¤
decoder/p_y_xz/rnn/ones_like_8Fill$decoder/p_y_xz/rnn/ones_like_8/Shape$decoder/p_y_xz/rnn/ones_like_8/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˛
decoder/p_y_xz/rnn/stack_16Packdecoder/p_y_xz/rnn/ones_like_8decoder/p_y_xz/rnn/Tanh_8*
T0*
axis˙˙˙˙˙˙˙˙˙*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_40Muldecoder/p_y_xz/rnn/Exp_8decoder/p_y_xz/rnn/stack_16*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
decoder/p_y_xz/rnn/zeros_like_8	ZerosLikedecoder/p_y_xz/rnn/Tanh_8*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
decoder/p_y_xz/rnn/Sqrt_8Sqrtdecoder/p_y_xz/rnn/sub_17*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ł
decoder/p_y_xz/rnn/stack_17Packdecoder/p_y_xz/rnn/zeros_like_8decoder/p_y_xz/rnn/Sqrt_8*
T0*
axis˙˙˙˙˙˙˙˙˙*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_41Muldecoder/p_y_xz/rnn/Exp_8decoder/p_y_xz/rnn/stack_17*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

3decoder/p_y_xz/rnn/Categorical_16/Categorical/probsSoftmaxdecoder/p_y_xz/rnn/sub_16*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
,decoder/p_y_xz/rnn/Categorical_16/batch_rankConst*
value	B :*
dtype0*
_output_shapes
: 

.decoder/p_y_xz/rnn/Categorical_16/logits_shapeShapedecoder/p_y_xz/rnn/sub_16*
T0*
out_type0*
_output_shapes
:
n
,decoder/p_y_xz/rnn/Categorical_16/event_sizeConst*
_output_shapes
: *
value	B :*
dtype0

Adecoder/p_y_xz/rnn/Categorical_16/batch_shape/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0

Cdecoder/p_y_xz/rnn/Categorical_16/batch_shape/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙

Cdecoder/p_y_xz/rnn/Categorical_16/batch_shape/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ţ
;decoder/p_y_xz/rnn/Categorical_16/batch_shape/strided_sliceStridedSlice.decoder/p_y_xz/rnn/Categorical_16/logits_shapeAdecoder/p_y_xz/rnn/Categorical_16/batch_shape/strided_slice/stackCdecoder/p_y_xz/rnn/Categorical_16/batch_shape/strided_slice/stack_1Cdecoder/p_y_xz/rnn/Categorical_16/batch_shape/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
t
decoder/p_y_xz/rnn/Shape_16Shapedecoder/p_y_xz/rnn/Tanh_8*
out_type0*
_output_shapes
:*
T0
m
(decoder/p_y_xz/rnn/random_normal_16/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
*decoder/p_y_xz/rnn/random_normal_16/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ĺ
8decoder/p_y_xz/rnn/random_normal_16/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_16*
T0*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed 
Ć
'decoder/p_y_xz/rnn/random_normal_16/mulMul8decoder/p_y_xz/rnn/random_normal_16/RandomStandardNormal*decoder/p_y_xz/rnn/random_normal_16/stddev*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
#decoder/p_y_xz/rnn/random_normal_16Add'decoder/p_y_xz/rnn/random_normal_16/mul(decoder/p_y_xz/rnn/random_normal_16/mean*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
o
$decoder/p_y_xz/rnn/ExpandDims_24/dimConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙
ť
 decoder/p_y_xz/rnn/ExpandDims_24
ExpandDims#decoder/p_y_xz/rnn/random_normal_16$decoder/p_y_xz/rnn/ExpandDims_24/dim*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0

decoder/p_y_xz/rnn/mul_42Muldecoder/p_y_xz/rnn/mul_40 decoder/p_y_xz/rnn/ExpandDims_24*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
t
decoder/p_y_xz/rnn/Shape_17Shapedecoder/p_y_xz/rnn/Tanh_8*
T0*
out_type0*
_output_shapes
:
m
(decoder/p_y_xz/rnn/random_normal_17/meanConst*
_output_shapes
: *
valueB
 *    *
dtype0
o
*decoder/p_y_xz/rnn/random_normal_17/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ĺ
8decoder/p_y_xz/rnn/random_normal_17/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_17*

seed *
T0*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 
Ć
'decoder/p_y_xz/rnn/random_normal_17/mulMul8decoder/p_y_xz/rnn/random_normal_17/RandomStandardNormal*decoder/p_y_xz/rnn/random_normal_17/stddev*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ż
#decoder/p_y_xz/rnn/random_normal_17Add'decoder/p_y_xz/rnn/random_normal_17/mul(decoder/p_y_xz/rnn/random_normal_17/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
$decoder/p_y_xz/rnn/ExpandDims_25/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ť
 decoder/p_y_xz/rnn/ExpandDims_25
ExpandDims#decoder/p_y_xz/rnn/random_normal_17$decoder/p_y_xz/rnn/ExpandDims_25/dim*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0

decoder/p_y_xz/rnn/mul_43Muldecoder/p_y_xz/rnn/mul_41 decoder/p_y_xz/rnn/ExpandDims_25*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/add_16Adddecoder/p_y_xz/rnn/mul_42decoder/p_y_xz/rnn/mul_43*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

decoder/p_y_xz/rnn/add_17Adddecoder/p_y_xz/rnn/Reshape_16decoder/p_y_xz/rnn/add_16*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
x
5decoder/p_y_xz/rnn/Categorical_17/sample/sample_shapeConst*
_output_shapes
: *
valueB *
dtype0

Ldecoder/p_y_xz/rnn/Categorical_17/sample/multinomial/Multinomial/num_samplesConst*
dtype0*
_output_shapes
: *
value	B :

@decoder/p_y_xz/rnn/Categorical_17/sample/multinomial/MultinomialMultinomialdecoder/p_y_xz/rnn/sub_16Ldecoder/p_y_xz/rnn/Categorical_17/sample/multinomial/Multinomial/num_samples*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed 
˘
7decoder/p_y_xz/rnn/Categorical_17/sample/transpose/RankRank@decoder/p_y_xz/rnn/Categorical_17/sample/multinomial/Multinomial*
T0	*
_output_shapes
: 
z
8decoder/p_y_xz/rnn/Categorical_17/sample/transpose/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
Ń
6decoder/p_y_xz/rnn/Categorical_17/sample/transpose/subSub7decoder/p_y_xz/rnn/Categorical_17/sample/transpose/Rank8decoder/p_y_xz/rnn/Categorical_17/sample/transpose/sub/y*
T0*
_output_shapes
: 

>decoder/p_y_xz/rnn/Categorical_17/sample/transpose/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 

>decoder/p_y_xz/rnn/Categorical_17/sample/transpose/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
˘
8decoder/p_y_xz/rnn/Categorical_17/sample/transpose/RangeRange>decoder/p_y_xz/rnn/Categorical_17/sample/transpose/Range/start7decoder/p_y_xz/rnn/Categorical_17/sample/transpose/Rank>decoder/p_y_xz/rnn/Categorical_17/sample/transpose/Range/delta*
_output_shapes
:*

Tidx0
Ö
8decoder/p_y_xz/rnn/Categorical_17/sample/transpose/sub_1Sub6decoder/p_y_xz/rnn/Categorical_17/sample/transpose/sub8decoder/p_y_xz/rnn/Categorical_17/sample/transpose/Range*
T0*
_output_shapes
:
ú
2decoder/p_y_xz/rnn/Categorical_17/sample/transpose	Transpose@decoder/p_y_xz/rnn/Categorical_17/sample/multinomial/Multinomial8decoder/p_y_xz/rnn/Categorical_17/sample/transpose/sub_1*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0
ž
Pdecoder/p_y_xz/rnn/Categorical_17/sample/Categorical/batch_shape_tensor/IdentityIdentity;decoder/p_y_xz/rnn/Categorical_16/batch_shape/strided_slice*
T0*
_output_shapes
:

8decoder/p_y_xz/rnn/Categorical_17/sample/concat/values_0Const*
valueB:*
dtype0*
_output_shapes
:
v
4decoder/p_y_xz/rnn/Categorical_17/sample/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ˇ
/decoder/p_y_xz/rnn/Categorical_17/sample/concatConcatV28decoder/p_y_xz/rnn/Categorical_17/sample/concat/values_0Pdecoder/p_y_xz/rnn/Categorical_17/sample/Categorical/batch_shape_tensor/Identity4decoder/p_y_xz/rnn/Categorical_17/sample/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
ŕ
0decoder/p_y_xz/rnn/Categorical_17/sample/ReshapeReshape2decoder/p_y_xz/rnn/Categorical_17/sample/transpose/decoder/p_y_xz/rnn/Categorical_17/sample/concat*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0	*
Tshape0
¨
-decoder/p_y_xz/rnn/Categorical_17/sample/CastCast0decoder/p_y_xz/rnn/Categorical_17/sample/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0	

.decoder/p_y_xz/rnn/Categorical_17/sample/ShapeShape-decoder/p_y_xz/rnn/Categorical_17/sample/Cast*
T0*
out_type0*
_output_shapes
:

<decoder/p_y_xz/rnn/Categorical_17/sample/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

>decoder/p_y_xz/rnn/Categorical_17/sample/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

>decoder/p_y_xz/rnn/Categorical_17/sample/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ę
6decoder/p_y_xz/rnn/Categorical_17/sample/strided_sliceStridedSlice.decoder/p_y_xz/rnn/Categorical_17/sample/Shape<decoder/p_y_xz/rnn/Categorical_17/sample/strided_slice/stack>decoder/p_y_xz/rnn/Categorical_17/sample/strided_slice/stack_1>decoder/p_y_xz/rnn/Categorical_17/sample/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0*
shrink_axis_mask 
x
6decoder/p_y_xz/rnn/Categorical_17/sample/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0

1decoder/p_y_xz/rnn/Categorical_17/sample/concat_1ConcatV25decoder/p_y_xz/rnn/Categorical_17/sample/sample_shape6decoder/p_y_xz/rnn/Categorical_17/sample/strided_slice6decoder/p_y_xz/rnn/Categorical_17/sample/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
Ű
2decoder/p_y_xz/rnn/Categorical_17/sample/Reshape_1Reshape-decoder/p_y_xz/rnn/Categorical_17/sample/Cast1decoder/p_y_xz/rnn/Categorical_17/sample/concat_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
j
%decoder/p_y_xz/rnn/one_hot_8/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
k
&decoder/p_y_xz/rnn/one_hot_8/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
d
"decoder/p_y_xz/rnn/one_hot_8/depthConst*
value	B :*
dtype0*
_output_shapes
: 

decoder/p_y_xz/rnn/one_hot_8OneHot2decoder/p_y_xz/rnn/Categorical_17/sample/Reshape_1"decoder/p_y_xz/rnn/one_hot_8/depth%decoder/p_y_xz/rnn/one_hot_8/on_value&decoder/p_y_xz/rnn/one_hot_8/off_value*
T0*
TI0*
axis˙˙˙˙˙˙˙˙˙*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
$decoder/p_y_xz/rnn/ExpandDims_26/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
´
 decoder/p_y_xz/rnn/ExpandDims_26
ExpandDimsdecoder/p_y_xz/rnn/one_hot_8$decoder/p_y_xz/rnn/ExpandDims_26/dim*

Tdim0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_44Muldecoder/p_y_xz/rnn/add_17 decoder/p_y_xz/rnn/ExpandDims_26*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
u
*decoder/p_y_xz/rnn/Sum_8/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
ţ˙˙˙˙˙˙˙˙
ľ
decoder/p_y_xz/rnn/Sum_8Sumdecoder/p_y_xz/rnn/mul_44*decoder/p_y_xz/rnn/Sum_8/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims( *

Tidx0*
T0
}
(decoder/p_y_xz/rnn/strided_slice_8/stackConst*!
valueB"           *
dtype0*
_output_shapes
:

*decoder/p_y_xz/rnn/strided_slice_8/stack_1Const*
_output_shapes
:*!
valueB"    	       *
dtype0

*decoder/p_y_xz/rnn/strided_slice_8/stack_2Const*!
valueB"         *
dtype0*
_output_shapes
:

"decoder/p_y_xz/rnn/strided_slice_8StridedSlice,features_standardization/car1_future/truediv(decoder/p_y_xz/rnn/strided_slice_8/stack*decoder/p_y_xz/rnn/strided_slice_8/stack_1*decoder/p_y_xz/rnn/strided_slice_8/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Index0
g
%decoder/p_y_xz/rnn/Tile_8/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
§
#decoder/p_y_xz/rnn/Tile_8/multiplesPacksample_ct_1/strided_slice%decoder/p_y_xz/rnn/Tile_8/multiples/1*
T0*

axis *
N*
_output_shapes
:
Ž
decoder/p_y_xz/rnn/Tile_8Tile"decoder/p_y_xz/rnn/strided_slice_8#decoder/p_y_xz/rnn/Tile_8/multiples*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0
c
!decoder/p_y_xz/rnn/concat_16/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ç
decoder/p_y_xz/rnn/concat_16ConcatV2decoder/p_y_xz/rnn/Tile_8decoder/p_y_xz/rnn/Sum_8!decoder/p_y_xz/rnn/concat_16/axis*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0
c
!decoder/p_y_xz/rnn/concat_17/axisConst*
_output_shapes
: *
value	B :*
dtype0
Č
decoder/p_y_xz/rnn/concat_17ConcatV2decoder/p_y_xz/concatdecoder/p_y_xz/rnn/concat_16!decoder/p_y_xz/rnn/concat_17/axis*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛*

Tidx0*
T0

\decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_9/axisConst*
value	B :*
dtype0*
_output_shapes
: 
ţ
Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_9ConcatV2decoder/p_y_xz/rnn/concat_17Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_26\decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_9/axis*
T0*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛*

Tidx0
ä
Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_9MatMulWdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_9Odecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
Ő
Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_9BiasAddWdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_9Mdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const_9Const*
value	B :*
dtype0*
_output_shapes
: 
˘
`decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_9/split_dimConst*
value	B :*
dtype0*
_output_shapes
: 

Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_9Split`decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_9/split_dimXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_9*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
ë
Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_18TanhXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_9:1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_18/yConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
Â
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_18AddXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_9:2Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_18/y*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
î
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_27SigmoidUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_18*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_27MulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_17Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_27*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ď
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_28SigmoidVdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_9*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Â
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_28MulYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_28Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_18*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
˝
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_19AddUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_27Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_28*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
č
Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_19TanhUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_19*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ń
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_29SigmoidXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_9:3*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Â
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_29MulVdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_19Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_29*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

.decoder/p_y_xz/rnn/log_pi_projection_18/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_290decoder/p_y_xz/rnn/log_pi_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
ă
/decoder/p_y_xz/rnn/log_pi_projection_18/BiasAddBiasAdd.decoder/p_y_xz/rnn/log_pi_projection_18/MatMul.decoder/p_y_xz/rnn/log_pi_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

*decoder/p_y_xz/rnn/mu_projection_18/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_29,decoder/p_y_xz/rnn/mu_projection/kernel/read*
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( 
×
+decoder/p_y_xz/rnn/mu_projection_18/BiasAddBiasAdd*decoder/p_y_xz/rnn/mu_projection_18/MatMul*decoder/p_y_xz/rnn/mu_projection/bias/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*
data_formatNHWC

1decoder/p_y_xz/rnn/log_sigma_projection_18/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_293decoder/p_y_xz/rnn/log_sigma_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( *
transpose_b( 
ě
2decoder/p_y_xz/rnn/log_sigma_projection_18/BiasAddBiasAdd1decoder/p_y_xz/rnn/log_sigma_projection_18/MatMul1decoder/p_y_xz/rnn/log_sigma_projection/bias/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*
data_formatNHWC

,decoder/p_y_xz/rnn/corr_projection_18/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_29.decoder/p_y_xz/rnn/corr_projection/kernel/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
Ý
-decoder/p_y_xz/rnn/corr_projection_18/BiasAddBiasAdd,decoder/p_y_xz/rnn/corr_projection_18/MatMul,decoder/p_y_xz/rnn/corr_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/Tanh_9Tanh-decoder/p_y_xz/rnn/corr_projection_18/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

:decoder/p_y_xz/rnn/ReduceLogSumExp_9/Max/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ë
(decoder/p_y_xz/rnn/ReduceLogSumExp_9/MaxMax/decoder/p_y_xz/rnn/log_pi_projection_18/BiasAdd:decoder/p_y_xz/rnn/ReduceLogSumExp_9/Max/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0

1decoder/p_y_xz/rnn/ReduceLogSumExp_9/StopGradientStopGradient(decoder/p_y_xz/rnn/ReduceLogSumExp_9/Max*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ĺ
(decoder/p_y_xz/rnn/ReduceLogSumExp_9/subSub/decoder/p_y_xz/rnn/log_pi_projection_18/BiasAdd1decoder/p_y_xz/rnn/ReduceLogSumExp_9/StopGradient*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

(decoder/p_y_xz/rnn/ReduceLogSumExp_9/ExpExp(decoder/p_y_xz/rnn/ReduceLogSumExp_9/sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

:decoder/p_y_xz/rnn/ReduceLogSumExp_9/Sum/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ä
(decoder/p_y_xz/rnn/ReduceLogSumExp_9/SumSum(decoder/p_y_xz/rnn/ReduceLogSumExp_9/Exp:decoder/p_y_xz/rnn/ReduceLogSumExp_9/Sum/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0

(decoder/p_y_xz/rnn/ReduceLogSumExp_9/LogLog(decoder/p_y_xz/rnn/ReduceLogSumExp_9/Sum*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
(decoder/p_y_xz/rnn/ReduceLogSumExp_9/addAdd(decoder/p_y_xz/rnn/ReduceLogSumExp_9/Log1decoder/p_y_xz/rnn/ReduceLogSumExp_9/StopGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
­
decoder/p_y_xz/rnn/sub_18Sub/decoder/p_y_xz/rnn/log_pi_projection_18/BiasAdd(decoder/p_y_xz/rnn/ReduceLogSumExp_9/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
#decoder/p_y_xz/rnn/Reshape_18/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ž
decoder/p_y_xz/rnn/Reshape_18Reshape+decoder/p_y_xz/rnn/mu_projection_18/BiasAdd#decoder/p_y_xz/rnn/Reshape_18/shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
,decoder/p_y_xz/rnn/clip_by_value_9/Minimum/yConst*
valueB
 *   A*
dtype0*
_output_shapes
: 
É
*decoder/p_y_xz/rnn/clip_by_value_9/MinimumMinimum2decoder/p_y_xz/rnn/log_sigma_projection_18/BiasAdd,decoder/p_y_xz/rnn/clip_by_value_9/Minimum/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
i
$decoder/p_y_xz/rnn/clip_by_value_9/yConst*
valueB
 *   Á*
dtype0*
_output_shapes
: 
ą
"decoder/p_y_xz/rnn/clip_by_value_9Maximum*decoder/p_y_xz/rnn/clip_by_value_9/Minimum$decoder/p_y_xz/rnn/clip_by_value_9/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
x
#decoder/p_y_xz/rnn/Reshape_19/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ľ
decoder/p_y_xz/rnn/Reshape_19Reshape"decoder/p_y_xz/rnn/clip_by_value_9#decoder/p_y_xz/rnn/Reshape_19/shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
decoder/p_y_xz/rnn/Exp_9Expdecoder/p_y_xz/rnn/Reshape_19*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
r
decoder/p_y_xz/rnn/Square_9Squaredecoder/p_y_xz/rnn/Tanh_9*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
`
decoder/p_y_xz/rnn/sub_19/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0

decoder/p_y_xz/rnn/sub_19Subdecoder/p_y_xz/rnn/sub_19/xdecoder/p_y_xz/rnn/Square_9*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
}
$decoder/p_y_xz/rnn/ones_like_9/ShapeShapedecoder/p_y_xz/rnn/Tanh_9*
T0*
out_type0*
_output_shapes
:
i
$decoder/p_y_xz/rnn/ones_like_9/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¤
decoder/p_y_xz/rnn/ones_like_9Fill$decoder/p_y_xz/rnn/ones_like_9/Shape$decoder/p_y_xz/rnn/ones_like_9/Const*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
˛
decoder/p_y_xz/rnn/stack_18Packdecoder/p_y_xz/rnn/ones_like_9decoder/p_y_xz/rnn/Tanh_9*
T0*
axis˙˙˙˙˙˙˙˙˙*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_45Muldecoder/p_y_xz/rnn/Exp_9decoder/p_y_xz/rnn/stack_18*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
y
decoder/p_y_xz/rnn/zeros_like_9	ZerosLikedecoder/p_y_xz/rnn/Tanh_9*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
decoder/p_y_xz/rnn/Sqrt_9Sqrtdecoder/p_y_xz/rnn/sub_19*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ł
decoder/p_y_xz/rnn/stack_19Packdecoder/p_y_xz/rnn/zeros_like_9decoder/p_y_xz/rnn/Sqrt_9*
T0*
axis˙˙˙˙˙˙˙˙˙*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_46Muldecoder/p_y_xz/rnn/Exp_9decoder/p_y_xz/rnn/stack_19*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

3decoder/p_y_xz/rnn/Categorical_18/Categorical/probsSoftmaxdecoder/p_y_xz/rnn/sub_18*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
n
,decoder/p_y_xz/rnn/Categorical_18/batch_rankConst*
value	B :*
dtype0*
_output_shapes
: 

.decoder/p_y_xz/rnn/Categorical_18/logits_shapeShapedecoder/p_y_xz/rnn/sub_18*
_output_shapes
:*
T0*
out_type0
n
,decoder/p_y_xz/rnn/Categorical_18/event_sizeConst*
dtype0*
_output_shapes
: *
value	B :

Adecoder/p_y_xz/rnn/Categorical_18/batch_shape/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0

Cdecoder/p_y_xz/rnn/Categorical_18/batch_shape/strided_slice/stack_1Const*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0

Cdecoder/p_y_xz/rnn/Categorical_18/batch_shape/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ţ
;decoder/p_y_xz/rnn/Categorical_18/batch_shape/strided_sliceStridedSlice.decoder/p_y_xz/rnn/Categorical_18/logits_shapeAdecoder/p_y_xz/rnn/Categorical_18/batch_shape/strided_slice/stackCdecoder/p_y_xz/rnn/Categorical_18/batch_shape/strided_slice/stack_1Cdecoder/p_y_xz/rnn/Categorical_18/batch_shape/strided_slice/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0
t
decoder/p_y_xz/rnn/Shape_18Shapedecoder/p_y_xz/rnn/Tanh_9*
T0*
out_type0*
_output_shapes
:
m
(decoder/p_y_xz/rnn/random_normal_18/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
*decoder/p_y_xz/rnn/random_normal_18/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ĺ
8decoder/p_y_xz/rnn/random_normal_18/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_18*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed *
T0
Ć
'decoder/p_y_xz/rnn/random_normal_18/mulMul8decoder/p_y_xz/rnn/random_normal_18/RandomStandardNormal*decoder/p_y_xz/rnn/random_normal_18/stddev*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
#decoder/p_y_xz/rnn/random_normal_18Add'decoder/p_y_xz/rnn/random_normal_18/mul(decoder/p_y_xz/rnn/random_normal_18/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
$decoder/p_y_xz/rnn/ExpandDims_27/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ť
 decoder/p_y_xz/rnn/ExpandDims_27
ExpandDims#decoder/p_y_xz/rnn/random_normal_18$decoder/p_y_xz/rnn/ExpandDims_27/dim*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0

decoder/p_y_xz/rnn/mul_47Muldecoder/p_y_xz/rnn/mul_45 decoder/p_y_xz/rnn/ExpandDims_27*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
t
decoder/p_y_xz/rnn/Shape_19Shapedecoder/p_y_xz/rnn/Tanh_9*
_output_shapes
:*
T0*
out_type0
m
(decoder/p_y_xz/rnn/random_normal_19/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
*decoder/p_y_xz/rnn/random_normal_19/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ĺ
8decoder/p_y_xz/rnn/random_normal_19/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_19*

seed *
T0*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 
Ć
'decoder/p_y_xz/rnn/random_normal_19/mulMul8decoder/p_y_xz/rnn/random_normal_19/RandomStandardNormal*decoder/p_y_xz/rnn/random_normal_19/stddev*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
#decoder/p_y_xz/rnn/random_normal_19Add'decoder/p_y_xz/rnn/random_normal_19/mul(decoder/p_y_xz/rnn/random_normal_19/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
$decoder/p_y_xz/rnn/ExpandDims_28/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ť
 decoder/p_y_xz/rnn/ExpandDims_28
ExpandDims#decoder/p_y_xz/rnn/random_normal_19$decoder/p_y_xz/rnn/ExpandDims_28/dim*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0

decoder/p_y_xz/rnn/mul_48Muldecoder/p_y_xz/rnn/mul_46 decoder/p_y_xz/rnn/ExpandDims_28*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

decoder/p_y_xz/rnn/add_18Adddecoder/p_y_xz/rnn/mul_47decoder/p_y_xz/rnn/mul_48*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/add_19Adddecoder/p_y_xz/rnn/Reshape_18decoder/p_y_xz/rnn/add_18*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
5decoder/p_y_xz/rnn/Categorical_19/sample/sample_shapeConst*
valueB *
dtype0*
_output_shapes
: 

Ldecoder/p_y_xz/rnn/Categorical_19/sample/multinomial/Multinomial/num_samplesConst*
value	B :*
dtype0*
_output_shapes
: 

@decoder/p_y_xz/rnn/Categorical_19/sample/multinomial/MultinomialMultinomialdecoder/p_y_xz/rnn/sub_18Ldecoder/p_y_xz/rnn/Categorical_19/sample/multinomial/Multinomial/num_samples*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed 
˘
7decoder/p_y_xz/rnn/Categorical_19/sample/transpose/RankRank@decoder/p_y_xz/rnn/Categorical_19/sample/multinomial/Multinomial*
T0	*
_output_shapes
: 
z
8decoder/p_y_xz/rnn/Categorical_19/sample/transpose/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
Ń
6decoder/p_y_xz/rnn/Categorical_19/sample/transpose/subSub7decoder/p_y_xz/rnn/Categorical_19/sample/transpose/Rank8decoder/p_y_xz/rnn/Categorical_19/sample/transpose/sub/y*
_output_shapes
: *
T0

>decoder/p_y_xz/rnn/Categorical_19/sample/transpose/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 

>decoder/p_y_xz/rnn/Categorical_19/sample/transpose/Range/deltaConst*
_output_shapes
: *
value	B :*
dtype0
˘
8decoder/p_y_xz/rnn/Categorical_19/sample/transpose/RangeRange>decoder/p_y_xz/rnn/Categorical_19/sample/transpose/Range/start7decoder/p_y_xz/rnn/Categorical_19/sample/transpose/Rank>decoder/p_y_xz/rnn/Categorical_19/sample/transpose/Range/delta*

Tidx0*
_output_shapes
:
Ö
8decoder/p_y_xz/rnn/Categorical_19/sample/transpose/sub_1Sub6decoder/p_y_xz/rnn/Categorical_19/sample/transpose/sub8decoder/p_y_xz/rnn/Categorical_19/sample/transpose/Range*
T0*
_output_shapes
:
ú
2decoder/p_y_xz/rnn/Categorical_19/sample/transpose	Transpose@decoder/p_y_xz/rnn/Categorical_19/sample/multinomial/Multinomial8decoder/p_y_xz/rnn/Categorical_19/sample/transpose/sub_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0*
T0	
ž
Pdecoder/p_y_xz/rnn/Categorical_19/sample/Categorical/batch_shape_tensor/IdentityIdentity;decoder/p_y_xz/rnn/Categorical_18/batch_shape/strided_slice*
T0*
_output_shapes
:

8decoder/p_y_xz/rnn/Categorical_19/sample/concat/values_0Const*
valueB:*
dtype0*
_output_shapes
:
v
4decoder/p_y_xz/rnn/Categorical_19/sample/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ˇ
/decoder/p_y_xz/rnn/Categorical_19/sample/concatConcatV28decoder/p_y_xz/rnn/Categorical_19/sample/concat/values_0Pdecoder/p_y_xz/rnn/Categorical_19/sample/Categorical/batch_shape_tensor/Identity4decoder/p_y_xz/rnn/Categorical_19/sample/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N
ŕ
0decoder/p_y_xz/rnn/Categorical_19/sample/ReshapeReshape2decoder/p_y_xz/rnn/Categorical_19/sample/transpose/decoder/p_y_xz/rnn/Categorical_19/sample/concat*
T0	*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
-decoder/p_y_xz/rnn/Categorical_19/sample/CastCast0decoder/p_y_xz/rnn/Categorical_19/sample/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0	

.decoder/p_y_xz/rnn/Categorical_19/sample/ShapeShape-decoder/p_y_xz/rnn/Categorical_19/sample/Cast*
_output_shapes
:*
T0*
out_type0

<decoder/p_y_xz/rnn/Categorical_19/sample/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:

>decoder/p_y_xz/rnn/Categorical_19/sample/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

>decoder/p_y_xz/rnn/Categorical_19/sample/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ę
6decoder/p_y_xz/rnn/Categorical_19/sample/strided_sliceStridedSlice.decoder/p_y_xz/rnn/Categorical_19/sample/Shape<decoder/p_y_xz/rnn/Categorical_19/sample/strided_slice/stack>decoder/p_y_xz/rnn/Categorical_19/sample/strided_slice/stack_1>decoder/p_y_xz/rnn/Categorical_19/sample/strided_slice/stack_2*
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask 
x
6decoder/p_y_xz/rnn/Categorical_19/sample/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

1decoder/p_y_xz/rnn/Categorical_19/sample/concat_1ConcatV25decoder/p_y_xz/rnn/Categorical_19/sample/sample_shape6decoder/p_y_xz/rnn/Categorical_19/sample/strided_slice6decoder/p_y_xz/rnn/Categorical_19/sample/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
Ű
2decoder/p_y_xz/rnn/Categorical_19/sample/Reshape_1Reshape-decoder/p_y_xz/rnn/Categorical_19/sample/Cast1decoder/p_y_xz/rnn/Categorical_19/sample/concat_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
%decoder/p_y_xz/rnn/one_hot_9/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
k
&decoder/p_y_xz/rnn/one_hot_9/off_valueConst*
_output_shapes
: *
valueB
 *    *
dtype0
d
"decoder/p_y_xz/rnn/one_hot_9/depthConst*
value	B :*
dtype0*
_output_shapes
: 

decoder/p_y_xz/rnn/one_hot_9OneHot2decoder/p_y_xz/rnn/Categorical_19/sample/Reshape_1"decoder/p_y_xz/rnn/one_hot_9/depth%decoder/p_y_xz/rnn/one_hot_9/on_value&decoder/p_y_xz/rnn/one_hot_9/off_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
TI0*
axis˙˙˙˙˙˙˙˙˙
o
$decoder/p_y_xz/rnn/ExpandDims_29/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
´
 decoder/p_y_xz/rnn/ExpandDims_29
ExpandDimsdecoder/p_y_xz/rnn/one_hot_9$decoder/p_y_xz/rnn/ExpandDims_29/dim*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0

decoder/p_y_xz/rnn/mul_49Muldecoder/p_y_xz/rnn/add_19 decoder/p_y_xz/rnn/ExpandDims_29*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
*decoder/p_y_xz/rnn/Sum_9/reduction_indicesConst*
valueB :
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ľ
decoder/p_y_xz/rnn/Sum_9Sumdecoder/p_y_xz/rnn/mul_49*decoder/p_y_xz/rnn/Sum_9/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims( *

Tidx0*
T0
}
(decoder/p_y_xz/rnn/strided_slice_9/stackConst*
_output_shapes
:*!
valueB"    	       *
dtype0

*decoder/p_y_xz/rnn/strided_slice_9/stack_1Const*!
valueB"    
       *
dtype0*
_output_shapes
:

*decoder/p_y_xz/rnn/strided_slice_9/stack_2Const*
_output_shapes
:*!
valueB"         *
dtype0

"decoder/p_y_xz/rnn/strided_slice_9StridedSlice,features_standardization/car1_future/truediv(decoder/p_y_xz/rnn/strided_slice_9/stack*decoder/p_y_xz/rnn/strided_slice_9/stack_1*decoder/p_y_xz/rnn/strided_slice_9/stack_2*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Index0*
T0
g
%decoder/p_y_xz/rnn/Tile_9/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
§
#decoder/p_y_xz/rnn/Tile_9/multiplesPacksample_ct_1/strided_slice%decoder/p_y_xz/rnn/Tile_9/multiples/1*
T0*

axis *
N*
_output_shapes
:
Ž
decoder/p_y_xz/rnn/Tile_9Tile"decoder/p_y_xz/rnn/strided_slice_9#decoder/p_y_xz/rnn/Tile_9/multiples*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0*
T0
c
!decoder/p_y_xz/rnn/concat_18/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ç
decoder/p_y_xz/rnn/concat_18ConcatV2decoder/p_y_xz/rnn/Tile_9decoder/p_y_xz/rnn/Sum_9!decoder/p_y_xz/rnn/concat_18/axis*
T0*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
c
!decoder/p_y_xz/rnn/concat_19/axisConst*
_output_shapes
: *
value	B :*
dtype0
Č
decoder/p_y_xz/rnn/concat_19ConcatV2decoder/p_y_xz/concatdecoder/p_y_xz/rnn/concat_18!decoder/p_y_xz/rnn/concat_19/axis*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛*

Tidx0*
T0

]decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_10/axisConst*
value	B :*
dtype0*
_output_shapes
: 

Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_10ConcatV2decoder/p_y_xz/rnn/concat_19Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_29]decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_10/axis*

Tidx0*
T0*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛
ć
Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_10MatMulXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_10Odecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
×
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_10BiasAddXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_10Mdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const_10Const*
value	B :*
dtype0*
_output_shapes
: 
Ł
adecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_10/split_dimConst*
value	B :*
dtype0*
_output_shapes
: 

Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_10Splitadecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_10/split_dimYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_10*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
ě
Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_20TanhYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_10:1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_20/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ă
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_20AddYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_10:2Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_20/y*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
î
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_30SigmoidUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_20*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_30MulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_19Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_30*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
đ
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_31SigmoidWdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_10*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Â
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_31MulYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_31Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_20*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
˝
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_21AddUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_30Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_31*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
č
Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_21TanhUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_21*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ň
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_32SigmoidYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_10:3*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Â
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_32MulVdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_21Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_32*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

.decoder/p_y_xz/rnn/log_pi_projection_20/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_320decoder/p_y_xz/rnn/log_pi_projection/kernel/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
ă
/decoder/p_y_xz/rnn/log_pi_projection_20/BiasAddBiasAdd.decoder/p_y_xz/rnn/log_pi_projection_20/MatMul.decoder/p_y_xz/rnn/log_pi_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

*decoder/p_y_xz/rnn/mu_projection_20/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_32,decoder/p_y_xz/rnn/mu_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( *
transpose_b( 
×
+decoder/p_y_xz/rnn/mu_projection_20/BiasAddBiasAdd*decoder/p_y_xz/rnn/mu_projection_20/MatMul*decoder/p_y_xz/rnn/mu_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

1decoder/p_y_xz/rnn/log_sigma_projection_20/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_323decoder/p_y_xz/rnn/log_sigma_projection/kernel/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( *
transpose_b( *
T0
ě
2decoder/p_y_xz/rnn/log_sigma_projection_20/BiasAddBiasAdd1decoder/p_y_xz/rnn/log_sigma_projection_20/MatMul1decoder/p_y_xz/rnn/log_sigma_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

,decoder/p_y_xz/rnn/corr_projection_20/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_32.decoder/p_y_xz/rnn/corr_projection/kernel/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
Ý
-decoder/p_y_xz/rnn/corr_projection_20/BiasAddBiasAdd,decoder/p_y_xz/rnn/corr_projection_20/MatMul,decoder/p_y_xz/rnn/corr_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/Tanh_10Tanh-decoder/p_y_xz/rnn/corr_projection_20/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

;decoder/p_y_xz/rnn/ReduceLogSumExp_10/Max/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
í
)decoder/p_y_xz/rnn/ReduceLogSumExp_10/MaxMax/decoder/p_y_xz/rnn/log_pi_projection_20/BiasAdd;decoder/p_y_xz/rnn/ReduceLogSumExp_10/Max/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

2decoder/p_y_xz/rnn/ReduceLogSumExp_10/StopGradientStopGradient)decoder/p_y_xz/rnn/ReduceLogSumExp_10/Max*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ç
)decoder/p_y_xz/rnn/ReduceLogSumExp_10/subSub/decoder/p_y_xz/rnn/log_pi_projection_20/BiasAdd2decoder/p_y_xz/rnn/ReduceLogSumExp_10/StopGradient*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

)decoder/p_y_xz/rnn/ReduceLogSumExp_10/ExpExp)decoder/p_y_xz/rnn/ReduceLogSumExp_10/sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

;decoder/p_y_xz/rnn/ReduceLogSumExp_10/Sum/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ç
)decoder/p_y_xz/rnn/ReduceLogSumExp_10/SumSum)decoder/p_y_xz/rnn/ReduceLogSumExp_10/Exp;decoder/p_y_xz/rnn/ReduceLogSumExp_10/Sum/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0

)decoder/p_y_xz/rnn/ReduceLogSumExp_10/LogLog)decoder/p_y_xz/rnn/ReduceLogSumExp_10/Sum*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
)decoder/p_y_xz/rnn/ReduceLogSumExp_10/addAdd)decoder/p_y_xz/rnn/ReduceLogSumExp_10/Log2decoder/p_y_xz/rnn/ReduceLogSumExp_10/StopGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ž
decoder/p_y_xz/rnn/sub_20Sub/decoder/p_y_xz/rnn/log_pi_projection_20/BiasAdd)decoder/p_y_xz/rnn/ReduceLogSumExp_10/add*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
x
#decoder/p_y_xz/rnn/Reshape_20/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ž
decoder/p_y_xz/rnn/Reshape_20Reshape+decoder/p_y_xz/rnn/mu_projection_20/BiasAdd#decoder/p_y_xz/rnn/Reshape_20/shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
-decoder/p_y_xz/rnn/clip_by_value_10/Minimum/yConst*
_output_shapes
: *
valueB
 *   A*
dtype0
Ë
+decoder/p_y_xz/rnn/clip_by_value_10/MinimumMinimum2decoder/p_y_xz/rnn/log_sigma_projection_20/BiasAdd-decoder/p_y_xz/rnn/clip_by_value_10/Minimum/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
j
%decoder/p_y_xz/rnn/clip_by_value_10/yConst*
valueB
 *   Á*
dtype0*
_output_shapes
: 
´
#decoder/p_y_xz/rnn/clip_by_value_10Maximum+decoder/p_y_xz/rnn/clip_by_value_10/Minimum%decoder/p_y_xz/rnn/clip_by_value_10/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
x
#decoder/p_y_xz/rnn/Reshape_21/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ś
decoder/p_y_xz/rnn/Reshape_21Reshape#decoder/p_y_xz/rnn/clip_by_value_10#decoder/p_y_xz/rnn/Reshape_21/shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
decoder/p_y_xz/rnn/Exp_10Expdecoder/p_y_xz/rnn/Reshape_21*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
decoder/p_y_xz/rnn/Square_10Squaredecoder/p_y_xz/rnn/Tanh_10*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
decoder/p_y_xz/rnn/sub_21/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

decoder/p_y_xz/rnn/sub_21Subdecoder/p_y_xz/rnn/sub_21/xdecoder/p_y_xz/rnn/Square_10*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

%decoder/p_y_xz/rnn/ones_like_10/ShapeShapedecoder/p_y_xz/rnn/Tanh_10*
T0*
out_type0*
_output_shapes
:
j
%decoder/p_y_xz/rnn/ones_like_10/ConstConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
§
decoder/p_y_xz/rnn/ones_like_10Fill%decoder/p_y_xz/rnn/ones_like_10/Shape%decoder/p_y_xz/rnn/ones_like_10/Const*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
´
decoder/p_y_xz/rnn/stack_20Packdecoder/p_y_xz/rnn/ones_like_10decoder/p_y_xz/rnn/Tanh_10*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
axis˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_50Muldecoder/p_y_xz/rnn/Exp_10decoder/p_y_xz/rnn/stack_20*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
{
 decoder/p_y_xz/rnn/zeros_like_10	ZerosLikedecoder/p_y_xz/rnn/Tanh_10*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
decoder/p_y_xz/rnn/Sqrt_10Sqrtdecoder/p_y_xz/rnn/sub_21*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ľ
decoder/p_y_xz/rnn/stack_21Pack decoder/p_y_xz/rnn/zeros_like_10decoder/p_y_xz/rnn/Sqrt_10*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
axis˙˙˙˙˙˙˙˙˙*
N

decoder/p_y_xz/rnn/mul_51Muldecoder/p_y_xz/rnn/Exp_10decoder/p_y_xz/rnn/stack_21*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

3decoder/p_y_xz/rnn/Categorical_20/Categorical/probsSoftmaxdecoder/p_y_xz/rnn/sub_20*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
,decoder/p_y_xz/rnn/Categorical_20/batch_rankConst*
dtype0*
_output_shapes
: *
value	B :

.decoder/p_y_xz/rnn/Categorical_20/logits_shapeShapedecoder/p_y_xz/rnn/sub_20*
out_type0*
_output_shapes
:*
T0
n
,decoder/p_y_xz/rnn/Categorical_20/event_sizeConst*
value	B :*
dtype0*
_output_shapes
: 

Adecoder/p_y_xz/rnn/Categorical_20/batch_shape/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Cdecoder/p_y_xz/rnn/Categorical_20/batch_shape/strided_slice/stack_1Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

Cdecoder/p_y_xz/rnn/Categorical_20/batch_shape/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ţ
;decoder/p_y_xz/rnn/Categorical_20/batch_shape/strided_sliceStridedSlice.decoder/p_y_xz/rnn/Categorical_20/logits_shapeAdecoder/p_y_xz/rnn/Categorical_20/batch_shape/strided_slice/stackCdecoder/p_y_xz/rnn/Categorical_20/batch_shape/strided_slice/stack_1Cdecoder/p_y_xz/rnn/Categorical_20/batch_shape/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
u
decoder/p_y_xz/rnn/Shape_20Shapedecoder/p_y_xz/rnn/Tanh_10*
T0*
out_type0*
_output_shapes
:
m
(decoder/p_y_xz/rnn/random_normal_20/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
*decoder/p_y_xz/rnn/random_normal_20/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ĺ
8decoder/p_y_xz/rnn/random_normal_20/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_20*

seed *
T0*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 
Ć
'decoder/p_y_xz/rnn/random_normal_20/mulMul8decoder/p_y_xz/rnn/random_normal_20/RandomStandardNormal*decoder/p_y_xz/rnn/random_normal_20/stddev*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
#decoder/p_y_xz/rnn/random_normal_20Add'decoder/p_y_xz/rnn/random_normal_20/mul(decoder/p_y_xz/rnn/random_normal_20/mean*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
o
$decoder/p_y_xz/rnn/ExpandDims_30/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ť
 decoder/p_y_xz/rnn/ExpandDims_30
ExpandDims#decoder/p_y_xz/rnn/random_normal_20$decoder/p_y_xz/rnn/ExpandDims_30/dim*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0

decoder/p_y_xz/rnn/mul_52Muldecoder/p_y_xz/rnn/mul_50 decoder/p_y_xz/rnn/ExpandDims_30*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
decoder/p_y_xz/rnn/Shape_21Shapedecoder/p_y_xz/rnn/Tanh_10*
T0*
out_type0*
_output_shapes
:
m
(decoder/p_y_xz/rnn/random_normal_21/meanConst*
_output_shapes
: *
valueB
 *    *
dtype0
o
*decoder/p_y_xz/rnn/random_normal_21/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ĺ
8decoder/p_y_xz/rnn/random_normal_21/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_21*
T0*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed 
Ć
'decoder/p_y_xz/rnn/random_normal_21/mulMul8decoder/p_y_xz/rnn/random_normal_21/RandomStandardNormal*decoder/p_y_xz/rnn/random_normal_21/stddev*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
#decoder/p_y_xz/rnn/random_normal_21Add'decoder/p_y_xz/rnn/random_normal_21/mul(decoder/p_y_xz/rnn/random_normal_21/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
$decoder/p_y_xz/rnn/ExpandDims_31/dimConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙
ť
 decoder/p_y_xz/rnn/ExpandDims_31
ExpandDims#decoder/p_y_xz/rnn/random_normal_21$decoder/p_y_xz/rnn/ExpandDims_31/dim*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0

decoder/p_y_xz/rnn/mul_53Muldecoder/p_y_xz/rnn/mul_51 decoder/p_y_xz/rnn/ExpandDims_31*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

decoder/p_y_xz/rnn/add_20Adddecoder/p_y_xz/rnn/mul_52decoder/p_y_xz/rnn/mul_53*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/add_21Adddecoder/p_y_xz/rnn/Reshape_20decoder/p_y_xz/rnn/add_20*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
5decoder/p_y_xz/rnn/Categorical_21/sample/sample_shapeConst*
_output_shapes
: *
valueB *
dtype0

Ldecoder/p_y_xz/rnn/Categorical_21/sample/multinomial/Multinomial/num_samplesConst*
value	B :*
dtype0*
_output_shapes
: 

@decoder/p_y_xz/rnn/Categorical_21/sample/multinomial/MultinomialMultinomialdecoder/p_y_xz/rnn/sub_20Ldecoder/p_y_xz/rnn/Categorical_21/sample/multinomial/Multinomial/num_samples*

seed *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 
˘
7decoder/p_y_xz/rnn/Categorical_21/sample/transpose/RankRank@decoder/p_y_xz/rnn/Categorical_21/sample/multinomial/Multinomial*
_output_shapes
: *
T0	
z
8decoder/p_y_xz/rnn/Categorical_21/sample/transpose/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
Ń
6decoder/p_y_xz/rnn/Categorical_21/sample/transpose/subSub7decoder/p_y_xz/rnn/Categorical_21/sample/transpose/Rank8decoder/p_y_xz/rnn/Categorical_21/sample/transpose/sub/y*
_output_shapes
: *
T0

>decoder/p_y_xz/rnn/Categorical_21/sample/transpose/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 

>decoder/p_y_xz/rnn/Categorical_21/sample/transpose/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
˘
8decoder/p_y_xz/rnn/Categorical_21/sample/transpose/RangeRange>decoder/p_y_xz/rnn/Categorical_21/sample/transpose/Range/start7decoder/p_y_xz/rnn/Categorical_21/sample/transpose/Rank>decoder/p_y_xz/rnn/Categorical_21/sample/transpose/Range/delta*
_output_shapes
:*

Tidx0
Ö
8decoder/p_y_xz/rnn/Categorical_21/sample/transpose/sub_1Sub6decoder/p_y_xz/rnn/Categorical_21/sample/transpose/sub8decoder/p_y_xz/rnn/Categorical_21/sample/transpose/Range*
_output_shapes
:*
T0
ú
2decoder/p_y_xz/rnn/Categorical_21/sample/transpose	Transpose@decoder/p_y_xz/rnn/Categorical_21/sample/multinomial/Multinomial8decoder/p_y_xz/rnn/Categorical_21/sample/transpose/sub_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0*
T0	
ž
Pdecoder/p_y_xz/rnn/Categorical_21/sample/Categorical/batch_shape_tensor/IdentityIdentity;decoder/p_y_xz/rnn/Categorical_20/batch_shape/strided_slice*
_output_shapes
:*
T0

8decoder/p_y_xz/rnn/Categorical_21/sample/concat/values_0Const*
_output_shapes
:*
valueB:*
dtype0
v
4decoder/p_y_xz/rnn/Categorical_21/sample/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ˇ
/decoder/p_y_xz/rnn/Categorical_21/sample/concatConcatV28decoder/p_y_xz/rnn/Categorical_21/sample/concat/values_0Pdecoder/p_y_xz/rnn/Categorical_21/sample/Categorical/batch_shape_tensor/Identity4decoder/p_y_xz/rnn/Categorical_21/sample/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
ŕ
0decoder/p_y_xz/rnn/Categorical_21/sample/ReshapeReshape2decoder/p_y_xz/rnn/Categorical_21/sample/transpose/decoder/p_y_xz/rnn/Categorical_21/sample/concat*
T0	*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
-decoder/p_y_xz/rnn/Categorical_21/sample/CastCast0decoder/p_y_xz/rnn/Categorical_21/sample/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0	

.decoder/p_y_xz/rnn/Categorical_21/sample/ShapeShape-decoder/p_y_xz/rnn/Categorical_21/sample/Cast*
T0*
out_type0*
_output_shapes
:

<decoder/p_y_xz/rnn/Categorical_21/sample/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

>decoder/p_y_xz/rnn/Categorical_21/sample/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

>decoder/p_y_xz/rnn/Categorical_21/sample/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ę
6decoder/p_y_xz/rnn/Categorical_21/sample/strided_sliceStridedSlice.decoder/p_y_xz/rnn/Categorical_21/sample/Shape<decoder/p_y_xz/rnn/Categorical_21/sample/strided_slice/stack>decoder/p_y_xz/rnn/Categorical_21/sample/strided_slice/stack_1>decoder/p_y_xz/rnn/Categorical_21/sample/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
x
6decoder/p_y_xz/rnn/Categorical_21/sample/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

1decoder/p_y_xz/rnn/Categorical_21/sample/concat_1ConcatV25decoder/p_y_xz/rnn/Categorical_21/sample/sample_shape6decoder/p_y_xz/rnn/Categorical_21/sample/strided_slice6decoder/p_y_xz/rnn/Categorical_21/sample/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
Ű
2decoder/p_y_xz/rnn/Categorical_21/sample/Reshape_1Reshape-decoder/p_y_xz/rnn/Categorical_21/sample/Cast1decoder/p_y_xz/rnn/Categorical_21/sample/concat_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
k
&decoder/p_y_xz/rnn/one_hot_10/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
l
'decoder/p_y_xz/rnn/one_hot_10/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
e
#decoder/p_y_xz/rnn/one_hot_10/depthConst*
value	B :*
dtype0*
_output_shapes
: 
˘
decoder/p_y_xz/rnn/one_hot_10OneHot2decoder/p_y_xz/rnn/Categorical_21/sample/Reshape_1#decoder/p_y_xz/rnn/one_hot_10/depth&decoder/p_y_xz/rnn/one_hot_10/on_value'decoder/p_y_xz/rnn/one_hot_10/off_value*
TI0*
axis˙˙˙˙˙˙˙˙˙*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
o
$decoder/p_y_xz/rnn/ExpandDims_32/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ľ
 decoder/p_y_xz/rnn/ExpandDims_32
ExpandDimsdecoder/p_y_xz/rnn/one_hot_10$decoder/p_y_xz/rnn/ExpandDims_32/dim*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0

decoder/p_y_xz/rnn/mul_54Muldecoder/p_y_xz/rnn/add_21 decoder/p_y_xz/rnn/ExpandDims_32*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
v
+decoder/p_y_xz/rnn/Sum_10/reduction_indicesConst*
valueB :
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ˇ
decoder/p_y_xz/rnn/Sum_10Sumdecoder/p_y_xz/rnn/mul_54+decoder/p_y_xz/rnn/Sum_10/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims( *

Tidx0*
T0
~
)decoder/p_y_xz/rnn/strided_slice_10/stackConst*
_output_shapes
:*!
valueB"    
       *
dtype0

+decoder/p_y_xz/rnn/strided_slice_10/stack_1Const*!
valueB"           *
dtype0*
_output_shapes
:

+decoder/p_y_xz/rnn/strided_slice_10/stack_2Const*!
valueB"         *
dtype0*
_output_shapes
:

#decoder/p_y_xz/rnn/strided_slice_10StridedSlice,features_standardization/car1_future/truediv)decoder/p_y_xz/rnn/strided_slice_10/stack+decoder/p_y_xz/rnn/strided_slice_10/stack_1+decoder/p_y_xz/rnn/strided_slice_10/stack_2*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Index0*
T0
h
&decoder/p_y_xz/rnn/Tile_10/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
Š
$decoder/p_y_xz/rnn/Tile_10/multiplesPacksample_ct_1/strided_slice&decoder/p_y_xz/rnn/Tile_10/multiples/1*
T0*

axis *
N*
_output_shapes
:
ą
decoder/p_y_xz/rnn/Tile_10Tile#decoder/p_y_xz/rnn/strided_slice_10$decoder/p_y_xz/rnn/Tile_10/multiples*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0*
T0
c
!decoder/p_y_xz/rnn/concat_20/axisConst*
dtype0*
_output_shapes
: *
value	B :
É
decoder/p_y_xz/rnn/concat_20ConcatV2decoder/p_y_xz/rnn/Tile_10decoder/p_y_xz/rnn/Sum_10!decoder/p_y_xz/rnn/concat_20/axis*

Tidx0*
T0*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
!decoder/p_y_xz/rnn/concat_21/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Č
decoder/p_y_xz/rnn/concat_21ConcatV2decoder/p_y_xz/concatdecoder/p_y_xz/rnn/concat_20!decoder/p_y_xz/rnn/concat_21/axis*
T0*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛*

Tidx0

]decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_11/axisConst*
value	B :*
dtype0*
_output_shapes
: 

Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_11ConcatV2decoder/p_y_xz/rnn/concat_21Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_32]decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_11/axis*
T0*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛*

Tidx0
ć
Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_11MatMulXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_11Odecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
×
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_11BiasAddXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_11Mdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const_11Const*
dtype0*
_output_shapes
: *
value	B :
Ł
adecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_11/split_dimConst*
value	B :*
dtype0*
_output_shapes
: 

Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_11Splitadecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_11/split_dimYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_11*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
ě
Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_22TanhYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_11:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_22/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ă
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_22AddYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_11:2Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_22/y*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
î
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_33SigmoidUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_22*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_33MulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_21Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_33*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
đ
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_34SigmoidWdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_11*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Â
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_34MulYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_34Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_22*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
˝
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_23AddUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_33Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_34*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
č
Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_23TanhUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_23*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ň
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_35SigmoidYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_11:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Â
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_35MulVdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_23Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_35*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

.decoder/p_y_xz/rnn/log_pi_projection_22/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_350decoder/p_y_xz/rnn/log_pi_projection/kernel/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
ă
/decoder/p_y_xz/rnn/log_pi_projection_22/BiasAddBiasAdd.decoder/p_y_xz/rnn/log_pi_projection_22/MatMul.decoder/p_y_xz/rnn/log_pi_projection/bias/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC

*decoder/p_y_xz/rnn/mu_projection_22/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_35,decoder/p_y_xz/rnn/mu_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( *
transpose_b( 
×
+decoder/p_y_xz/rnn/mu_projection_22/BiasAddBiasAdd*decoder/p_y_xz/rnn/mu_projection_22/MatMul*decoder/p_y_xz/rnn/mu_projection/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

1decoder/p_y_xz/rnn/log_sigma_projection_22/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_353decoder/p_y_xz/rnn/log_sigma_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( *
transpose_b( 
ě
2decoder/p_y_xz/rnn/log_sigma_projection_22/BiasAddBiasAdd1decoder/p_y_xz/rnn/log_sigma_projection_22/MatMul1decoder/p_y_xz/rnn/log_sigma_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

,decoder/p_y_xz/rnn/corr_projection_22/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_35.decoder/p_y_xz/rnn/corr_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
Ý
-decoder/p_y_xz/rnn/corr_projection_22/BiasAddBiasAdd,decoder/p_y_xz/rnn/corr_projection_22/MatMul,decoder/p_y_xz/rnn/corr_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/Tanh_11Tanh-decoder/p_y_xz/rnn/corr_projection_22/BiasAdd*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

;decoder/p_y_xz/rnn/ReduceLogSumExp_11/Max/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
í
)decoder/p_y_xz/rnn/ReduceLogSumExp_11/MaxMax/decoder/p_y_xz/rnn/log_pi_projection_22/BiasAdd;decoder/p_y_xz/rnn/ReduceLogSumExp_11/Max/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0

2decoder/p_y_xz/rnn/ReduceLogSumExp_11/StopGradientStopGradient)decoder/p_y_xz/rnn/ReduceLogSumExp_11/Max*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ç
)decoder/p_y_xz/rnn/ReduceLogSumExp_11/subSub/decoder/p_y_xz/rnn/log_pi_projection_22/BiasAdd2decoder/p_y_xz/rnn/ReduceLogSumExp_11/StopGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

)decoder/p_y_xz/rnn/ReduceLogSumExp_11/ExpExp)decoder/p_y_xz/rnn/ReduceLogSumExp_11/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

;decoder/p_y_xz/rnn/ReduceLogSumExp_11/Sum/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ç
)decoder/p_y_xz/rnn/ReduceLogSumExp_11/SumSum)decoder/p_y_xz/rnn/ReduceLogSumExp_11/Exp;decoder/p_y_xz/rnn/ReduceLogSumExp_11/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

)decoder/p_y_xz/rnn/ReduceLogSumExp_11/LogLog)decoder/p_y_xz/rnn/ReduceLogSumExp_11/Sum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Á
)decoder/p_y_xz/rnn/ReduceLogSumExp_11/addAdd)decoder/p_y_xz/rnn/ReduceLogSumExp_11/Log2decoder/p_y_xz/rnn/ReduceLogSumExp_11/StopGradient*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ž
decoder/p_y_xz/rnn/sub_22Sub/decoder/p_y_xz/rnn/log_pi_projection_22/BiasAdd)decoder/p_y_xz/rnn/ReduceLogSumExp_11/add*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
x
#decoder/p_y_xz/rnn/Reshape_22/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ž
decoder/p_y_xz/rnn/Reshape_22Reshape+decoder/p_y_xz/rnn/mu_projection_22/BiasAdd#decoder/p_y_xz/rnn/Reshape_22/shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
-decoder/p_y_xz/rnn/clip_by_value_11/Minimum/yConst*
valueB
 *   A*
dtype0*
_output_shapes
: 
Ë
+decoder/p_y_xz/rnn/clip_by_value_11/MinimumMinimum2decoder/p_y_xz/rnn/log_sigma_projection_22/BiasAdd-decoder/p_y_xz/rnn/clip_by_value_11/Minimum/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
j
%decoder/p_y_xz/rnn/clip_by_value_11/yConst*
valueB
 *   Á*
dtype0*
_output_shapes
: 
´
#decoder/p_y_xz/rnn/clip_by_value_11Maximum+decoder/p_y_xz/rnn/clip_by_value_11/Minimum%decoder/p_y_xz/rnn/clip_by_value_11/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
x
#decoder/p_y_xz/rnn/Reshape_23/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ś
decoder/p_y_xz/rnn/Reshape_23Reshape#decoder/p_y_xz/rnn/clip_by_value_11#decoder/p_y_xz/rnn/Reshape_23/shape*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
u
decoder/p_y_xz/rnn/Exp_11Expdecoder/p_y_xz/rnn/Reshape_23*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
t
decoder/p_y_xz/rnn/Square_11Squaredecoder/p_y_xz/rnn/Tanh_11*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
`
decoder/p_y_xz/rnn/sub_23/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

decoder/p_y_xz/rnn/sub_23Subdecoder/p_y_xz/rnn/sub_23/xdecoder/p_y_xz/rnn/Square_11*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

%decoder/p_y_xz/rnn/ones_like_11/ShapeShapedecoder/p_y_xz/rnn/Tanh_11*
T0*
out_type0*
_output_shapes
:
j
%decoder/p_y_xz/rnn/ones_like_11/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
§
decoder/p_y_xz/rnn/ones_like_11Fill%decoder/p_y_xz/rnn/ones_like_11/Shape%decoder/p_y_xz/rnn/ones_like_11/Const*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
´
decoder/p_y_xz/rnn/stack_22Packdecoder/p_y_xz/rnn/ones_like_11decoder/p_y_xz/rnn/Tanh_11*
T0*
axis˙˙˙˙˙˙˙˙˙*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_55Muldecoder/p_y_xz/rnn/Exp_11decoder/p_y_xz/rnn/stack_22*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
 decoder/p_y_xz/rnn/zeros_like_11	ZerosLikedecoder/p_y_xz/rnn/Tanh_11*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
decoder/p_y_xz/rnn/Sqrt_11Sqrtdecoder/p_y_xz/rnn/sub_23*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ľ
decoder/p_y_xz/rnn/stack_23Pack decoder/p_y_xz/rnn/zeros_like_11decoder/p_y_xz/rnn/Sqrt_11*
T0*
axis˙˙˙˙˙˙˙˙˙*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_56Muldecoder/p_y_xz/rnn/Exp_11decoder/p_y_xz/rnn/stack_23*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

3decoder/p_y_xz/rnn/Categorical_22/Categorical/probsSoftmaxdecoder/p_y_xz/rnn/sub_22*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
,decoder/p_y_xz/rnn/Categorical_22/batch_rankConst*
value	B :*
dtype0*
_output_shapes
: 

.decoder/p_y_xz/rnn/Categorical_22/logits_shapeShapedecoder/p_y_xz/rnn/sub_22*
T0*
out_type0*
_output_shapes
:
n
,decoder/p_y_xz/rnn/Categorical_22/event_sizeConst*
_output_shapes
: *
value	B :*
dtype0

Adecoder/p_y_xz/rnn/Categorical_22/batch_shape/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0

Cdecoder/p_y_xz/rnn/Categorical_22/batch_shape/strided_slice/stack_1Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

Cdecoder/p_y_xz/rnn/Categorical_22/batch_shape/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Ţ
;decoder/p_y_xz/rnn/Categorical_22/batch_shape/strided_sliceStridedSlice.decoder/p_y_xz/rnn/Categorical_22/logits_shapeAdecoder/p_y_xz/rnn/Categorical_22/batch_shape/strided_slice/stackCdecoder/p_y_xz/rnn/Categorical_22/batch_shape/strided_slice/stack_1Cdecoder/p_y_xz/rnn/Categorical_22/batch_shape/strided_slice/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0
u
decoder/p_y_xz/rnn/Shape_22Shapedecoder/p_y_xz/rnn/Tanh_11*
T0*
out_type0*
_output_shapes
:
m
(decoder/p_y_xz/rnn/random_normal_22/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
*decoder/p_y_xz/rnn/random_normal_22/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ĺ
8decoder/p_y_xz/rnn/random_normal_22/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_22*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed *
T0*
dtype0
Ć
'decoder/p_y_xz/rnn/random_normal_22/mulMul8decoder/p_y_xz/rnn/random_normal_22/RandomStandardNormal*decoder/p_y_xz/rnn/random_normal_22/stddev*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ż
#decoder/p_y_xz/rnn/random_normal_22Add'decoder/p_y_xz/rnn/random_normal_22/mul(decoder/p_y_xz/rnn/random_normal_22/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
$decoder/p_y_xz/rnn/ExpandDims_33/dimConst*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0
ť
 decoder/p_y_xz/rnn/ExpandDims_33
ExpandDims#decoder/p_y_xz/rnn/random_normal_22$decoder/p_y_xz/rnn/ExpandDims_33/dim*

Tdim0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_57Muldecoder/p_y_xz/rnn/mul_55 decoder/p_y_xz/rnn/ExpandDims_33*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
decoder/p_y_xz/rnn/Shape_23Shapedecoder/p_y_xz/rnn/Tanh_11*
T0*
out_type0*
_output_shapes
:
m
(decoder/p_y_xz/rnn/random_normal_23/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
*decoder/p_y_xz/rnn/random_normal_23/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ĺ
8decoder/p_y_xz/rnn/random_normal_23/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_23*
T0*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed 
Ć
'decoder/p_y_xz/rnn/random_normal_23/mulMul8decoder/p_y_xz/rnn/random_normal_23/RandomStandardNormal*decoder/p_y_xz/rnn/random_normal_23/stddev*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ż
#decoder/p_y_xz/rnn/random_normal_23Add'decoder/p_y_xz/rnn/random_normal_23/mul(decoder/p_y_xz/rnn/random_normal_23/mean*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
o
$decoder/p_y_xz/rnn/ExpandDims_34/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ť
 decoder/p_y_xz/rnn/ExpandDims_34
ExpandDims#decoder/p_y_xz/rnn/random_normal_23$decoder/p_y_xz/rnn/ExpandDims_34/dim*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0

decoder/p_y_xz/rnn/mul_58Muldecoder/p_y_xz/rnn/mul_56 decoder/p_y_xz/rnn/ExpandDims_34*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/add_22Adddecoder/p_y_xz/rnn/mul_57decoder/p_y_xz/rnn/mul_58*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

decoder/p_y_xz/rnn/add_23Adddecoder/p_y_xz/rnn/Reshape_22decoder/p_y_xz/rnn/add_22*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
5decoder/p_y_xz/rnn/Categorical_23/sample/sample_shapeConst*
valueB *
dtype0*
_output_shapes
: 

Ldecoder/p_y_xz/rnn/Categorical_23/sample/multinomial/Multinomial/num_samplesConst*
value	B :*
dtype0*
_output_shapes
: 

@decoder/p_y_xz/rnn/Categorical_23/sample/multinomial/MultinomialMultinomialdecoder/p_y_xz/rnn/sub_22Ldecoder/p_y_xz/rnn/Categorical_23/sample/multinomial/Multinomial/num_samples*

seed *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 
˘
7decoder/p_y_xz/rnn/Categorical_23/sample/transpose/RankRank@decoder/p_y_xz/rnn/Categorical_23/sample/multinomial/Multinomial*
_output_shapes
: *
T0	
z
8decoder/p_y_xz/rnn/Categorical_23/sample/transpose/sub/yConst*
dtype0*
_output_shapes
: *
value	B :
Ń
6decoder/p_y_xz/rnn/Categorical_23/sample/transpose/subSub7decoder/p_y_xz/rnn/Categorical_23/sample/transpose/Rank8decoder/p_y_xz/rnn/Categorical_23/sample/transpose/sub/y*
_output_shapes
: *
T0

>decoder/p_y_xz/rnn/Categorical_23/sample/transpose/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 

>decoder/p_y_xz/rnn/Categorical_23/sample/transpose/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
˘
8decoder/p_y_xz/rnn/Categorical_23/sample/transpose/RangeRange>decoder/p_y_xz/rnn/Categorical_23/sample/transpose/Range/start7decoder/p_y_xz/rnn/Categorical_23/sample/transpose/Rank>decoder/p_y_xz/rnn/Categorical_23/sample/transpose/Range/delta*
_output_shapes
:*

Tidx0
Ö
8decoder/p_y_xz/rnn/Categorical_23/sample/transpose/sub_1Sub6decoder/p_y_xz/rnn/Categorical_23/sample/transpose/sub8decoder/p_y_xz/rnn/Categorical_23/sample/transpose/Range*
T0*
_output_shapes
:
ú
2decoder/p_y_xz/rnn/Categorical_23/sample/transpose	Transpose@decoder/p_y_xz/rnn/Categorical_23/sample/multinomial/Multinomial8decoder/p_y_xz/rnn/Categorical_23/sample/transpose/sub_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0*
T0	
ž
Pdecoder/p_y_xz/rnn/Categorical_23/sample/Categorical/batch_shape_tensor/IdentityIdentity;decoder/p_y_xz/rnn/Categorical_22/batch_shape/strided_slice*
T0*
_output_shapes
:

8decoder/p_y_xz/rnn/Categorical_23/sample/concat/values_0Const*
valueB:*
dtype0*
_output_shapes
:
v
4decoder/p_y_xz/rnn/Categorical_23/sample/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ˇ
/decoder/p_y_xz/rnn/Categorical_23/sample/concatConcatV28decoder/p_y_xz/rnn/Categorical_23/sample/concat/values_0Pdecoder/p_y_xz/rnn/Categorical_23/sample/Categorical/batch_shape_tensor/Identity4decoder/p_y_xz/rnn/Categorical_23/sample/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
ŕ
0decoder/p_y_xz/rnn/Categorical_23/sample/ReshapeReshape2decoder/p_y_xz/rnn/Categorical_23/sample/transpose/decoder/p_y_xz/rnn/Categorical_23/sample/concat*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0	*
Tshape0
¨
-decoder/p_y_xz/rnn/Categorical_23/sample/CastCast0decoder/p_y_xz/rnn/Categorical_23/sample/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0	

.decoder/p_y_xz/rnn/Categorical_23/sample/ShapeShape-decoder/p_y_xz/rnn/Categorical_23/sample/Cast*
T0*
out_type0*
_output_shapes
:

<decoder/p_y_xz/rnn/Categorical_23/sample/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

>decoder/p_y_xz/rnn/Categorical_23/sample/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

>decoder/p_y_xz/rnn/Categorical_23/sample/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ę
6decoder/p_y_xz/rnn/Categorical_23/sample/strided_sliceStridedSlice.decoder/p_y_xz/rnn/Categorical_23/sample/Shape<decoder/p_y_xz/rnn/Categorical_23/sample/strided_slice/stack>decoder/p_y_xz/rnn/Categorical_23/sample/strided_slice/stack_1>decoder/p_y_xz/rnn/Categorical_23/sample/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0*
shrink_axis_mask 
x
6decoder/p_y_xz/rnn/Categorical_23/sample/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

1decoder/p_y_xz/rnn/Categorical_23/sample/concat_1ConcatV25decoder/p_y_xz/rnn/Categorical_23/sample/sample_shape6decoder/p_y_xz/rnn/Categorical_23/sample/strided_slice6decoder/p_y_xz/rnn/Categorical_23/sample/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ű
2decoder/p_y_xz/rnn/Categorical_23/sample/Reshape_1Reshape-decoder/p_y_xz/rnn/Categorical_23/sample/Cast1decoder/p_y_xz/rnn/Categorical_23/sample/concat_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
k
&decoder/p_y_xz/rnn/one_hot_11/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
l
'decoder/p_y_xz/rnn/one_hot_11/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
e
#decoder/p_y_xz/rnn/one_hot_11/depthConst*
dtype0*
_output_shapes
: *
value	B :
˘
decoder/p_y_xz/rnn/one_hot_11OneHot2decoder/p_y_xz/rnn/Categorical_23/sample/Reshape_1#decoder/p_y_xz/rnn/one_hot_11/depth&decoder/p_y_xz/rnn/one_hot_11/on_value'decoder/p_y_xz/rnn/one_hot_11/off_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
TI0*
axis˙˙˙˙˙˙˙˙˙
o
$decoder/p_y_xz/rnn/ExpandDims_35/dimConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙
ľ
 decoder/p_y_xz/rnn/ExpandDims_35
ExpandDimsdecoder/p_y_xz/rnn/one_hot_11$decoder/p_y_xz/rnn/ExpandDims_35/dim*

Tdim0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_59Muldecoder/p_y_xz/rnn/add_23 decoder/p_y_xz/rnn/ExpandDims_35*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
v
+decoder/p_y_xz/rnn/Sum_11/reduction_indicesConst*
valueB :
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ˇ
decoder/p_y_xz/rnn/Sum_11Sumdecoder/p_y_xz/rnn/mul_59+decoder/p_y_xz/rnn/Sum_11/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims( *

Tidx0
~
)decoder/p_y_xz/rnn/strided_slice_11/stackConst*!
valueB"           *
dtype0*
_output_shapes
:

+decoder/p_y_xz/rnn/strided_slice_11/stack_1Const*!
valueB"           *
dtype0*
_output_shapes
:

+decoder/p_y_xz/rnn/strided_slice_11/stack_2Const*
dtype0*
_output_shapes
:*!
valueB"         

#decoder/p_y_xz/rnn/strided_slice_11StridedSlice,features_standardization/car1_future/truediv)decoder/p_y_xz/rnn/strided_slice_11/stack+decoder/p_y_xz/rnn/strided_slice_11/stack_1+decoder/p_y_xz/rnn/strided_slice_11/stack_2*
end_mask*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Index0*
T0*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask 
h
&decoder/p_y_xz/rnn/Tile_11/multiples/1Const*
_output_shapes
: *
value	B :*
dtype0
Š
$decoder/p_y_xz/rnn/Tile_11/multiplesPacksample_ct_1/strided_slice&decoder/p_y_xz/rnn/Tile_11/multiples/1*

axis *
N*
_output_shapes
:*
T0
ą
decoder/p_y_xz/rnn/Tile_11Tile#decoder/p_y_xz/rnn/strided_slice_11$decoder/p_y_xz/rnn/Tile_11/multiples*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0*
T0
c
!decoder/p_y_xz/rnn/concat_22/axisConst*
value	B :*
dtype0*
_output_shapes
: 
É
decoder/p_y_xz/rnn/concat_22ConcatV2decoder/p_y_xz/rnn/Tile_11decoder/p_y_xz/rnn/Sum_11!decoder/p_y_xz/rnn/concat_22/axis*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0
c
!decoder/p_y_xz/rnn/concat_23/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Č
decoder/p_y_xz/rnn/concat_23ConcatV2decoder/p_y_xz/concatdecoder/p_y_xz/rnn/concat_22!decoder/p_y_xz/rnn/concat_23/axis*
T0*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛*

Tidx0

]decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_12/axisConst*
value	B :*
dtype0*
_output_shapes
: 

Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_12ConcatV2decoder/p_y_xz/rnn/concat_23Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_35]decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_12/axis*
T0*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛*

Tidx0
ć
Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_12MatMulXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_12Odecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
×
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_12BiasAddXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_12Mdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const_12Const*
dtype0*
_output_shapes
: *
value	B :
Ł
adecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_12/split_dimConst*
value	B :*
dtype0*
_output_shapes
: 

Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_12Splitadecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_12/split_dimYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_12*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
ě
Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_24TanhYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_12:1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_24/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ă
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_24AddYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_12:2Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_24/y*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
î
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_36SigmoidUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_24*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Á
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_36MulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_23Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_36*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
đ
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_37SigmoidWdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_12*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Â
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_37MulYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_37Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_24*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
˝
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_25AddUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_36Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_37*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
č
Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_25TanhUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_25*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ň
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_38SigmoidYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_12:3*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Â
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_38MulVdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_25Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_38*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

.decoder/p_y_xz/rnn/log_pi_projection_24/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_380decoder/p_y_xz/rnn/log_pi_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
ă
/decoder/p_y_xz/rnn/log_pi_projection_24/BiasAddBiasAdd.decoder/p_y_xz/rnn/log_pi_projection_24/MatMul.decoder/p_y_xz/rnn/log_pi_projection/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

*decoder/p_y_xz/rnn/mu_projection_24/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_38,decoder/p_y_xz/rnn/mu_projection/kernel/read*
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( 
×
+decoder/p_y_xz/rnn/mu_projection_24/BiasAddBiasAdd*decoder/p_y_xz/rnn/mu_projection_24/MatMul*decoder/p_y_xz/rnn/mu_projection/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

1decoder/p_y_xz/rnn/log_sigma_projection_24/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_383decoder/p_y_xz/rnn/log_sigma_projection/kernel/read*
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( 
ě
2decoder/p_y_xz/rnn/log_sigma_projection_24/BiasAddBiasAdd1decoder/p_y_xz/rnn/log_sigma_projection_24/MatMul1decoder/p_y_xz/rnn/log_sigma_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

,decoder/p_y_xz/rnn/corr_projection_24/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_38.decoder/p_y_xz/rnn/corr_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
Ý
-decoder/p_y_xz/rnn/corr_projection_24/BiasAddBiasAdd,decoder/p_y_xz/rnn/corr_projection_24/MatMul,decoder/p_y_xz/rnn/corr_projection/bias/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC

decoder/p_y_xz/rnn/Tanh_12Tanh-decoder/p_y_xz/rnn/corr_projection_24/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

;decoder/p_y_xz/rnn/ReduceLogSumExp_12/Max/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
í
)decoder/p_y_xz/rnn/ReduceLogSumExp_12/MaxMax/decoder/p_y_xz/rnn/log_pi_projection_24/BiasAdd;decoder/p_y_xz/rnn/ReduceLogSumExp_12/Max/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0

2decoder/p_y_xz/rnn/ReduceLogSumExp_12/StopGradientStopGradient)decoder/p_y_xz/rnn/ReduceLogSumExp_12/Max*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ç
)decoder/p_y_xz/rnn/ReduceLogSumExp_12/subSub/decoder/p_y_xz/rnn/log_pi_projection_24/BiasAdd2decoder/p_y_xz/rnn/ReduceLogSumExp_12/StopGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

)decoder/p_y_xz/rnn/ReduceLogSumExp_12/ExpExp)decoder/p_y_xz/rnn/ReduceLogSumExp_12/sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

;decoder/p_y_xz/rnn/ReduceLogSumExp_12/Sum/reduction_indicesConst*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0
ç
)decoder/p_y_xz/rnn/ReduceLogSumExp_12/SumSum)decoder/p_y_xz/rnn/ReduceLogSumExp_12/Exp;decoder/p_y_xz/rnn/ReduceLogSumExp_12/Sum/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0

)decoder/p_y_xz/rnn/ReduceLogSumExp_12/LogLog)decoder/p_y_xz/rnn/ReduceLogSumExp_12/Sum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Á
)decoder/p_y_xz/rnn/ReduceLogSumExp_12/addAdd)decoder/p_y_xz/rnn/ReduceLogSumExp_12/Log2decoder/p_y_xz/rnn/ReduceLogSumExp_12/StopGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ž
decoder/p_y_xz/rnn/sub_24Sub/decoder/p_y_xz/rnn/log_pi_projection_24/BiasAdd)decoder/p_y_xz/rnn/ReduceLogSumExp_12/add*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
x
#decoder/p_y_xz/rnn/Reshape_24/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ž
decoder/p_y_xz/rnn/Reshape_24Reshape+decoder/p_y_xz/rnn/mu_projection_24/BiasAdd#decoder/p_y_xz/rnn/Reshape_24/shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
-decoder/p_y_xz/rnn/clip_by_value_12/Minimum/yConst*
valueB
 *   A*
dtype0*
_output_shapes
: 
Ë
+decoder/p_y_xz/rnn/clip_by_value_12/MinimumMinimum2decoder/p_y_xz/rnn/log_sigma_projection_24/BiasAdd-decoder/p_y_xz/rnn/clip_by_value_12/Minimum/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
j
%decoder/p_y_xz/rnn/clip_by_value_12/yConst*
valueB
 *   Á*
dtype0*
_output_shapes
: 
´
#decoder/p_y_xz/rnn/clip_by_value_12Maximum+decoder/p_y_xz/rnn/clip_by_value_12/Minimum%decoder/p_y_xz/rnn/clip_by_value_12/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
x
#decoder/p_y_xz/rnn/Reshape_25/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ś
decoder/p_y_xz/rnn/Reshape_25Reshape#decoder/p_y_xz/rnn/clip_by_value_12#decoder/p_y_xz/rnn/Reshape_25/shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
decoder/p_y_xz/rnn/Exp_12Expdecoder/p_y_xz/rnn/Reshape_25*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
t
decoder/p_y_xz/rnn/Square_12Squaredecoder/p_y_xz/rnn/Tanh_12*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
decoder/p_y_xz/rnn/sub_25/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

decoder/p_y_xz/rnn/sub_25Subdecoder/p_y_xz/rnn/sub_25/xdecoder/p_y_xz/rnn/Square_12*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%decoder/p_y_xz/rnn/ones_like_12/ShapeShapedecoder/p_y_xz/rnn/Tanh_12*
T0*
out_type0*
_output_shapes
:
j
%decoder/p_y_xz/rnn/ones_like_12/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
§
decoder/p_y_xz/rnn/ones_like_12Fill%decoder/p_y_xz/rnn/ones_like_12/Shape%decoder/p_y_xz/rnn/ones_like_12/Const*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
´
decoder/p_y_xz/rnn/stack_24Packdecoder/p_y_xz/rnn/ones_like_12decoder/p_y_xz/rnn/Tanh_12*
T0*
axis˙˙˙˙˙˙˙˙˙*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_60Muldecoder/p_y_xz/rnn/Exp_12decoder/p_y_xz/rnn/stack_24*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
 decoder/p_y_xz/rnn/zeros_like_12	ZerosLikedecoder/p_y_xz/rnn/Tanh_12*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
decoder/p_y_xz/rnn/Sqrt_12Sqrtdecoder/p_y_xz/rnn/sub_25*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ľ
decoder/p_y_xz/rnn/stack_25Pack decoder/p_y_xz/rnn/zeros_like_12decoder/p_y_xz/rnn/Sqrt_12*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
axis˙˙˙˙˙˙˙˙˙*
N

decoder/p_y_xz/rnn/mul_61Muldecoder/p_y_xz/rnn/Exp_12decoder/p_y_xz/rnn/stack_25*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

3decoder/p_y_xz/rnn/Categorical_24/Categorical/probsSoftmaxdecoder/p_y_xz/rnn/sub_24*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
n
,decoder/p_y_xz/rnn/Categorical_24/batch_rankConst*
value	B :*
dtype0*
_output_shapes
: 

.decoder/p_y_xz/rnn/Categorical_24/logits_shapeShapedecoder/p_y_xz/rnn/sub_24*
T0*
out_type0*
_output_shapes
:
n
,decoder/p_y_xz/rnn/Categorical_24/event_sizeConst*
dtype0*
_output_shapes
: *
value	B :

Adecoder/p_y_xz/rnn/Categorical_24/batch_shape/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Cdecoder/p_y_xz/rnn/Categorical_24/batch_shape/strided_slice/stack_1Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

Cdecoder/p_y_xz/rnn/Categorical_24/batch_shape/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ţ
;decoder/p_y_xz/rnn/Categorical_24/batch_shape/strided_sliceStridedSlice.decoder/p_y_xz/rnn/Categorical_24/logits_shapeAdecoder/p_y_xz/rnn/Categorical_24/batch_shape/strided_slice/stackCdecoder/p_y_xz/rnn/Categorical_24/batch_shape/strided_slice/stack_1Cdecoder/p_y_xz/rnn/Categorical_24/batch_shape/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
u
decoder/p_y_xz/rnn/Shape_24Shapedecoder/p_y_xz/rnn/Tanh_12*
out_type0*
_output_shapes
:*
T0
m
(decoder/p_y_xz/rnn/random_normal_24/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
*decoder/p_y_xz/rnn/random_normal_24/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ĺ
8decoder/p_y_xz/rnn/random_normal_24/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_24*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed *
T0
Ć
'decoder/p_y_xz/rnn/random_normal_24/mulMul8decoder/p_y_xz/rnn/random_normal_24/RandomStandardNormal*decoder/p_y_xz/rnn/random_normal_24/stddev*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
#decoder/p_y_xz/rnn/random_normal_24Add'decoder/p_y_xz/rnn/random_normal_24/mul(decoder/p_y_xz/rnn/random_normal_24/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
$decoder/p_y_xz/rnn/ExpandDims_36/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ť
 decoder/p_y_xz/rnn/ExpandDims_36
ExpandDims#decoder/p_y_xz/rnn/random_normal_24$decoder/p_y_xz/rnn/ExpandDims_36/dim*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0

decoder/p_y_xz/rnn/mul_62Muldecoder/p_y_xz/rnn/mul_60 decoder/p_y_xz/rnn/ExpandDims_36*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
u
decoder/p_y_xz/rnn/Shape_25Shapedecoder/p_y_xz/rnn/Tanh_12*
T0*
out_type0*
_output_shapes
:
m
(decoder/p_y_xz/rnn/random_normal_25/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
*decoder/p_y_xz/rnn/random_normal_25/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ĺ
8decoder/p_y_xz/rnn/random_normal_25/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_25*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed *
T0
Ć
'decoder/p_y_xz/rnn/random_normal_25/mulMul8decoder/p_y_xz/rnn/random_normal_25/RandomStandardNormal*decoder/p_y_xz/rnn/random_normal_25/stddev*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ż
#decoder/p_y_xz/rnn/random_normal_25Add'decoder/p_y_xz/rnn/random_normal_25/mul(decoder/p_y_xz/rnn/random_normal_25/mean*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
o
$decoder/p_y_xz/rnn/ExpandDims_37/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ť
 decoder/p_y_xz/rnn/ExpandDims_37
ExpandDims#decoder/p_y_xz/rnn/random_normal_25$decoder/p_y_xz/rnn/ExpandDims_37/dim*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0

decoder/p_y_xz/rnn/mul_63Muldecoder/p_y_xz/rnn/mul_61 decoder/p_y_xz/rnn/ExpandDims_37*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/add_24Adddecoder/p_y_xz/rnn/mul_62decoder/p_y_xz/rnn/mul_63*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

decoder/p_y_xz/rnn/add_25Adddecoder/p_y_xz/rnn/Reshape_24decoder/p_y_xz/rnn/add_24*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
5decoder/p_y_xz/rnn/Categorical_25/sample/sample_shapeConst*
valueB *
dtype0*
_output_shapes
: 

Ldecoder/p_y_xz/rnn/Categorical_25/sample/multinomial/Multinomial/num_samplesConst*
_output_shapes
: *
value	B :*
dtype0

@decoder/p_y_xz/rnn/Categorical_25/sample/multinomial/MultinomialMultinomialdecoder/p_y_xz/rnn/sub_24Ldecoder/p_y_xz/rnn/Categorical_25/sample/multinomial/Multinomial/num_samples*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed *
T0
˘
7decoder/p_y_xz/rnn/Categorical_25/sample/transpose/RankRank@decoder/p_y_xz/rnn/Categorical_25/sample/multinomial/Multinomial*
_output_shapes
: *
T0	
z
8decoder/p_y_xz/rnn/Categorical_25/sample/transpose/sub/yConst*
dtype0*
_output_shapes
: *
value	B :
Ń
6decoder/p_y_xz/rnn/Categorical_25/sample/transpose/subSub7decoder/p_y_xz/rnn/Categorical_25/sample/transpose/Rank8decoder/p_y_xz/rnn/Categorical_25/sample/transpose/sub/y*
T0*
_output_shapes
: 

>decoder/p_y_xz/rnn/Categorical_25/sample/transpose/Range/startConst*
_output_shapes
: *
value	B : *
dtype0

>decoder/p_y_xz/rnn/Categorical_25/sample/transpose/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
˘
8decoder/p_y_xz/rnn/Categorical_25/sample/transpose/RangeRange>decoder/p_y_xz/rnn/Categorical_25/sample/transpose/Range/start7decoder/p_y_xz/rnn/Categorical_25/sample/transpose/Rank>decoder/p_y_xz/rnn/Categorical_25/sample/transpose/Range/delta*
_output_shapes
:*

Tidx0
Ö
8decoder/p_y_xz/rnn/Categorical_25/sample/transpose/sub_1Sub6decoder/p_y_xz/rnn/Categorical_25/sample/transpose/sub8decoder/p_y_xz/rnn/Categorical_25/sample/transpose/Range*
_output_shapes
:*
T0
ú
2decoder/p_y_xz/rnn/Categorical_25/sample/transpose	Transpose@decoder/p_y_xz/rnn/Categorical_25/sample/multinomial/Multinomial8decoder/p_y_xz/rnn/Categorical_25/sample/transpose/sub_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0*
T0	
ž
Pdecoder/p_y_xz/rnn/Categorical_25/sample/Categorical/batch_shape_tensor/IdentityIdentity;decoder/p_y_xz/rnn/Categorical_24/batch_shape/strided_slice*
_output_shapes
:*
T0

8decoder/p_y_xz/rnn/Categorical_25/sample/concat/values_0Const*
_output_shapes
:*
valueB:*
dtype0
v
4decoder/p_y_xz/rnn/Categorical_25/sample/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ˇ
/decoder/p_y_xz/rnn/Categorical_25/sample/concatConcatV28decoder/p_y_xz/rnn/Categorical_25/sample/concat/values_0Pdecoder/p_y_xz/rnn/Categorical_25/sample/Categorical/batch_shape_tensor/Identity4decoder/p_y_xz/rnn/Categorical_25/sample/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
ŕ
0decoder/p_y_xz/rnn/Categorical_25/sample/ReshapeReshape2decoder/p_y_xz/rnn/Categorical_25/sample/transpose/decoder/p_y_xz/rnn/Categorical_25/sample/concat*
T0	*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
-decoder/p_y_xz/rnn/Categorical_25/sample/CastCast0decoder/p_y_xz/rnn/Categorical_25/sample/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0	

.decoder/p_y_xz/rnn/Categorical_25/sample/ShapeShape-decoder/p_y_xz/rnn/Categorical_25/sample/Cast*
T0*
out_type0*
_output_shapes
:

<decoder/p_y_xz/rnn/Categorical_25/sample/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

>decoder/p_y_xz/rnn/Categorical_25/sample/strided_slice/stack_1Const*
_output_shapes
:*
valueB: *
dtype0

>decoder/p_y_xz/rnn/Categorical_25/sample/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ę
6decoder/p_y_xz/rnn/Categorical_25/sample/strided_sliceStridedSlice.decoder/p_y_xz/rnn/Categorical_25/sample/Shape<decoder/p_y_xz/rnn/Categorical_25/sample/strided_slice/stack>decoder/p_y_xz/rnn/Categorical_25/sample/strided_slice/stack_1>decoder/p_y_xz/rnn/Categorical_25/sample/strided_slice/stack_2*
end_mask*
_output_shapes
:*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask 
x
6decoder/p_y_xz/rnn/Categorical_25/sample/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

1decoder/p_y_xz/rnn/Categorical_25/sample/concat_1ConcatV25decoder/p_y_xz/rnn/Categorical_25/sample/sample_shape6decoder/p_y_xz/rnn/Categorical_25/sample/strided_slice6decoder/p_y_xz/rnn/Categorical_25/sample/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ű
2decoder/p_y_xz/rnn/Categorical_25/sample/Reshape_1Reshape-decoder/p_y_xz/rnn/Categorical_25/sample/Cast1decoder/p_y_xz/rnn/Categorical_25/sample/concat_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
k
&decoder/p_y_xz/rnn/one_hot_12/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
l
'decoder/p_y_xz/rnn/one_hot_12/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
e
#decoder/p_y_xz/rnn/one_hot_12/depthConst*
value	B :*
dtype0*
_output_shapes
: 
˘
decoder/p_y_xz/rnn/one_hot_12OneHot2decoder/p_y_xz/rnn/Categorical_25/sample/Reshape_1#decoder/p_y_xz/rnn/one_hot_12/depth&decoder/p_y_xz/rnn/one_hot_12/on_value'decoder/p_y_xz/rnn/one_hot_12/off_value*
T0*
TI0*
axis˙˙˙˙˙˙˙˙˙*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
$decoder/p_y_xz/rnn/ExpandDims_38/dimConst*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0
ľ
 decoder/p_y_xz/rnn/ExpandDims_38
ExpandDimsdecoder/p_y_xz/rnn/one_hot_12$decoder/p_y_xz/rnn/ExpandDims_38/dim*

Tdim0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_64Muldecoder/p_y_xz/rnn/add_25 decoder/p_y_xz/rnn/ExpandDims_38*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
v
+decoder/p_y_xz/rnn/Sum_12/reduction_indicesConst*
_output_shapes
: *
valueB :
ţ˙˙˙˙˙˙˙˙*
dtype0
ˇ
decoder/p_y_xz/rnn/Sum_12Sumdecoder/p_y_xz/rnn/mul_64+decoder/p_y_xz/rnn/Sum_12/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims( *

Tidx0
~
)decoder/p_y_xz/rnn/strided_slice_12/stackConst*!
valueB"           *
dtype0*
_output_shapes
:

+decoder/p_y_xz/rnn/strided_slice_12/stack_1Const*!
valueB"           *
dtype0*
_output_shapes
:

+decoder/p_y_xz/rnn/strided_slice_12/stack_2Const*!
valueB"         *
dtype0*
_output_shapes
:

#decoder/p_y_xz/rnn/strided_slice_12StridedSlice,features_standardization/car1_future/truediv)decoder/p_y_xz/rnn/strided_slice_12/stack+decoder/p_y_xz/rnn/strided_slice_12/stack_1+decoder/p_y_xz/rnn/strided_slice_12/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
&decoder/p_y_xz/rnn/Tile_12/multiples/1Const*
_output_shapes
: *
value	B :*
dtype0
Š
$decoder/p_y_xz/rnn/Tile_12/multiplesPacksample_ct_1/strided_slice&decoder/p_y_xz/rnn/Tile_12/multiples/1*
T0*

axis *
N*
_output_shapes
:
ą
decoder/p_y_xz/rnn/Tile_12Tile#decoder/p_y_xz/rnn/strided_slice_12$decoder/p_y_xz/rnn/Tile_12/multiples*

Tmultiples0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
!decoder/p_y_xz/rnn/concat_24/axisConst*
value	B :*
dtype0*
_output_shapes
: 
É
decoder/p_y_xz/rnn/concat_24ConcatV2decoder/p_y_xz/rnn/Tile_12decoder/p_y_xz/rnn/Sum_12!decoder/p_y_xz/rnn/concat_24/axis*
T0*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
c
!decoder/p_y_xz/rnn/concat_25/axisConst*
dtype0*
_output_shapes
: *
value	B :
Č
decoder/p_y_xz/rnn/concat_25ConcatV2decoder/p_y_xz/concatdecoder/p_y_xz/rnn/concat_24!decoder/p_y_xz/rnn/concat_25/axis*
T0*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛*

Tidx0

]decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_13/axisConst*
value	B :*
dtype0*
_output_shapes
: 

Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_13ConcatV2decoder/p_y_xz/rnn/concat_25Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_38]decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_13/axis*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛*

Tidx0*
T0
ć
Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_13MatMulXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_13Odecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
×
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_13BiasAddXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_13Mdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const_13Const*
value	B :*
dtype0*
_output_shapes
: 
Ł
adecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_13/split_dimConst*
value	B :*
dtype0*
_output_shapes
: 

Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_13Splitadecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_13/split_dimYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_13*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
ě
Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_26TanhYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_13:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_26/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ă
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_26AddYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_13:2Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_26/y*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
î
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_39SigmoidUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_26*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_39MulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_25Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_39*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
đ
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_40SigmoidWdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_13*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Â
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_40MulYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_40Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_26*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
˝
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_27AddUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_39Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_40*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
č
Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_27TanhUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_27*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ň
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_41SigmoidYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_13:3*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Â
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_41MulVdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_27Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_41*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

.decoder/p_y_xz/rnn/log_pi_projection_26/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_410decoder/p_y_xz/rnn/log_pi_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
ă
/decoder/p_y_xz/rnn/log_pi_projection_26/BiasAddBiasAdd.decoder/p_y_xz/rnn/log_pi_projection_26/MatMul.decoder/p_y_xz/rnn/log_pi_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

*decoder/p_y_xz/rnn/mu_projection_26/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_41,decoder/p_y_xz/rnn/mu_projection/kernel/read*
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( 
×
+decoder/p_y_xz/rnn/mu_projection_26/BiasAddBiasAdd*decoder/p_y_xz/rnn/mu_projection_26/MatMul*decoder/p_y_xz/rnn/mu_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

1decoder/p_y_xz/rnn/log_sigma_projection_26/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_413decoder/p_y_xz/rnn/log_sigma_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( *
transpose_b( 
ě
2decoder/p_y_xz/rnn/log_sigma_projection_26/BiasAddBiasAdd1decoder/p_y_xz/rnn/log_sigma_projection_26/MatMul1decoder/p_y_xz/rnn/log_sigma_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

,decoder/p_y_xz/rnn/corr_projection_26/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_41.decoder/p_y_xz/rnn/corr_projection/kernel/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
Ý
-decoder/p_y_xz/rnn/corr_projection_26/BiasAddBiasAdd,decoder/p_y_xz/rnn/corr_projection_26/MatMul,decoder/p_y_xz/rnn/corr_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/Tanh_13Tanh-decoder/p_y_xz/rnn/corr_projection_26/BiasAdd*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

;decoder/p_y_xz/rnn/ReduceLogSumExp_13/Max/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
í
)decoder/p_y_xz/rnn/ReduceLogSumExp_13/MaxMax/decoder/p_y_xz/rnn/log_pi_projection_26/BiasAdd;decoder/p_y_xz/rnn/ReduceLogSumExp_13/Max/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0

2decoder/p_y_xz/rnn/ReduceLogSumExp_13/StopGradientStopGradient)decoder/p_y_xz/rnn/ReduceLogSumExp_13/Max*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ç
)decoder/p_y_xz/rnn/ReduceLogSumExp_13/subSub/decoder/p_y_xz/rnn/log_pi_projection_26/BiasAdd2decoder/p_y_xz/rnn/ReduceLogSumExp_13/StopGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

)decoder/p_y_xz/rnn/ReduceLogSumExp_13/ExpExp)decoder/p_y_xz/rnn/ReduceLogSumExp_13/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

;decoder/p_y_xz/rnn/ReduceLogSumExp_13/Sum/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ç
)decoder/p_y_xz/rnn/ReduceLogSumExp_13/SumSum)decoder/p_y_xz/rnn/ReduceLogSumExp_13/Exp;decoder/p_y_xz/rnn/ReduceLogSumExp_13/Sum/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0

)decoder/p_y_xz/rnn/ReduceLogSumExp_13/LogLog)decoder/p_y_xz/rnn/ReduceLogSumExp_13/Sum*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
)decoder/p_y_xz/rnn/ReduceLogSumExp_13/addAdd)decoder/p_y_xz/rnn/ReduceLogSumExp_13/Log2decoder/p_y_xz/rnn/ReduceLogSumExp_13/StopGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ž
decoder/p_y_xz/rnn/sub_26Sub/decoder/p_y_xz/rnn/log_pi_projection_26/BiasAdd)decoder/p_y_xz/rnn/ReduceLogSumExp_13/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
#decoder/p_y_xz/rnn/Reshape_26/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ž
decoder/p_y_xz/rnn/Reshape_26Reshape+decoder/p_y_xz/rnn/mu_projection_26/BiasAdd#decoder/p_y_xz/rnn/Reshape_26/shape*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
r
-decoder/p_y_xz/rnn/clip_by_value_13/Minimum/yConst*
valueB
 *   A*
dtype0*
_output_shapes
: 
Ë
+decoder/p_y_xz/rnn/clip_by_value_13/MinimumMinimum2decoder/p_y_xz/rnn/log_sigma_projection_26/BiasAdd-decoder/p_y_xz/rnn/clip_by_value_13/Minimum/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
j
%decoder/p_y_xz/rnn/clip_by_value_13/yConst*
valueB
 *   Á*
dtype0*
_output_shapes
: 
´
#decoder/p_y_xz/rnn/clip_by_value_13Maximum+decoder/p_y_xz/rnn/clip_by_value_13/Minimum%decoder/p_y_xz/rnn/clip_by_value_13/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
x
#decoder/p_y_xz/rnn/Reshape_27/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ś
decoder/p_y_xz/rnn/Reshape_27Reshape#decoder/p_y_xz/rnn/clip_by_value_13#decoder/p_y_xz/rnn/Reshape_27/shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
decoder/p_y_xz/rnn/Exp_13Expdecoder/p_y_xz/rnn/Reshape_27*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
decoder/p_y_xz/rnn/Square_13Squaredecoder/p_y_xz/rnn/Tanh_13*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
`
decoder/p_y_xz/rnn/sub_27/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

decoder/p_y_xz/rnn/sub_27Subdecoder/p_y_xz/rnn/sub_27/xdecoder/p_y_xz/rnn/Square_13*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

%decoder/p_y_xz/rnn/ones_like_13/ShapeShapedecoder/p_y_xz/rnn/Tanh_13*
_output_shapes
:*
T0*
out_type0
j
%decoder/p_y_xz/rnn/ones_like_13/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
§
decoder/p_y_xz/rnn/ones_like_13Fill%decoder/p_y_xz/rnn/ones_like_13/Shape%decoder/p_y_xz/rnn/ones_like_13/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
´
decoder/p_y_xz/rnn/stack_26Packdecoder/p_y_xz/rnn/ones_like_13decoder/p_y_xz/rnn/Tanh_13*
T0*
axis˙˙˙˙˙˙˙˙˙*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_65Muldecoder/p_y_xz/rnn/Exp_13decoder/p_y_xz/rnn/stack_26*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
{
 decoder/p_y_xz/rnn/zeros_like_13	ZerosLikedecoder/p_y_xz/rnn/Tanh_13*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
decoder/p_y_xz/rnn/Sqrt_13Sqrtdecoder/p_y_xz/rnn/sub_27*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ľ
decoder/p_y_xz/rnn/stack_27Pack decoder/p_y_xz/rnn/zeros_like_13decoder/p_y_xz/rnn/Sqrt_13*
axis˙˙˙˙˙˙˙˙˙*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

decoder/p_y_xz/rnn/mul_66Muldecoder/p_y_xz/rnn/Exp_13decoder/p_y_xz/rnn/stack_27*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

3decoder/p_y_xz/rnn/Categorical_26/Categorical/probsSoftmaxdecoder/p_y_xz/rnn/sub_26*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
n
,decoder/p_y_xz/rnn/Categorical_26/batch_rankConst*
value	B :*
dtype0*
_output_shapes
: 

.decoder/p_y_xz/rnn/Categorical_26/logits_shapeShapedecoder/p_y_xz/rnn/sub_26*
_output_shapes
:*
T0*
out_type0
n
,decoder/p_y_xz/rnn/Categorical_26/event_sizeConst*
_output_shapes
: *
value	B :*
dtype0

Adecoder/p_y_xz/rnn/Categorical_26/batch_shape/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Cdecoder/p_y_xz/rnn/Categorical_26/batch_shape/strided_slice/stack_1Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

Cdecoder/p_y_xz/rnn/Categorical_26/batch_shape/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Ţ
;decoder/p_y_xz/rnn/Categorical_26/batch_shape/strided_sliceStridedSlice.decoder/p_y_xz/rnn/Categorical_26/logits_shapeAdecoder/p_y_xz/rnn/Categorical_26/batch_shape/strided_slice/stackCdecoder/p_y_xz/rnn/Categorical_26/batch_shape/strided_slice/stack_1Cdecoder/p_y_xz/rnn/Categorical_26/batch_shape/strided_slice/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0*
shrink_axis_mask 
u
decoder/p_y_xz/rnn/Shape_26Shapedecoder/p_y_xz/rnn/Tanh_13*
_output_shapes
:*
T0*
out_type0
m
(decoder/p_y_xz/rnn/random_normal_26/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
*decoder/p_y_xz/rnn/random_normal_26/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ĺ
8decoder/p_y_xz/rnn/random_normal_26/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_26*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed *
T0
Ć
'decoder/p_y_xz/rnn/random_normal_26/mulMul8decoder/p_y_xz/rnn/random_normal_26/RandomStandardNormal*decoder/p_y_xz/rnn/random_normal_26/stddev*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ż
#decoder/p_y_xz/rnn/random_normal_26Add'decoder/p_y_xz/rnn/random_normal_26/mul(decoder/p_y_xz/rnn/random_normal_26/mean*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
o
$decoder/p_y_xz/rnn/ExpandDims_39/dimConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙
ť
 decoder/p_y_xz/rnn/ExpandDims_39
ExpandDims#decoder/p_y_xz/rnn/random_normal_26$decoder/p_y_xz/rnn/ExpandDims_39/dim*

Tdim0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_67Muldecoder/p_y_xz/rnn/mul_65 decoder/p_y_xz/rnn/ExpandDims_39*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
decoder/p_y_xz/rnn/Shape_27Shapedecoder/p_y_xz/rnn/Tanh_13*
out_type0*
_output_shapes
:*
T0
m
(decoder/p_y_xz/rnn/random_normal_27/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
*decoder/p_y_xz/rnn/random_normal_27/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ĺ
8decoder/p_y_xz/rnn/random_normal_27/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_27*
T0*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed 
Ć
'decoder/p_y_xz/rnn/random_normal_27/mulMul8decoder/p_y_xz/rnn/random_normal_27/RandomStandardNormal*decoder/p_y_xz/rnn/random_normal_27/stddev*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
#decoder/p_y_xz/rnn/random_normal_27Add'decoder/p_y_xz/rnn/random_normal_27/mul(decoder/p_y_xz/rnn/random_normal_27/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
$decoder/p_y_xz/rnn/ExpandDims_40/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ť
 decoder/p_y_xz/rnn/ExpandDims_40
ExpandDims#decoder/p_y_xz/rnn/random_normal_27$decoder/p_y_xz/rnn/ExpandDims_40/dim*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0

decoder/p_y_xz/rnn/mul_68Muldecoder/p_y_xz/rnn/mul_66 decoder/p_y_xz/rnn/ExpandDims_40*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

decoder/p_y_xz/rnn/add_26Adddecoder/p_y_xz/rnn/mul_67decoder/p_y_xz/rnn/mul_68*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/add_27Adddecoder/p_y_xz/rnn/Reshape_26decoder/p_y_xz/rnn/add_26*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
5decoder/p_y_xz/rnn/Categorical_27/sample/sample_shapeConst*
dtype0*
_output_shapes
: *
valueB 

Ldecoder/p_y_xz/rnn/Categorical_27/sample/multinomial/Multinomial/num_samplesConst*
_output_shapes
: *
value	B :*
dtype0

@decoder/p_y_xz/rnn/Categorical_27/sample/multinomial/MultinomialMultinomialdecoder/p_y_xz/rnn/sub_26Ldecoder/p_y_xz/rnn/Categorical_27/sample/multinomial/Multinomial/num_samples*

seed *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 
˘
7decoder/p_y_xz/rnn/Categorical_27/sample/transpose/RankRank@decoder/p_y_xz/rnn/Categorical_27/sample/multinomial/Multinomial*
_output_shapes
: *
T0	
z
8decoder/p_y_xz/rnn/Categorical_27/sample/transpose/sub/yConst*
_output_shapes
: *
value	B :*
dtype0
Ń
6decoder/p_y_xz/rnn/Categorical_27/sample/transpose/subSub7decoder/p_y_xz/rnn/Categorical_27/sample/transpose/Rank8decoder/p_y_xz/rnn/Categorical_27/sample/transpose/sub/y*
T0*
_output_shapes
: 

>decoder/p_y_xz/rnn/Categorical_27/sample/transpose/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 

>decoder/p_y_xz/rnn/Categorical_27/sample/transpose/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
˘
8decoder/p_y_xz/rnn/Categorical_27/sample/transpose/RangeRange>decoder/p_y_xz/rnn/Categorical_27/sample/transpose/Range/start7decoder/p_y_xz/rnn/Categorical_27/sample/transpose/Rank>decoder/p_y_xz/rnn/Categorical_27/sample/transpose/Range/delta*
_output_shapes
:*

Tidx0
Ö
8decoder/p_y_xz/rnn/Categorical_27/sample/transpose/sub_1Sub6decoder/p_y_xz/rnn/Categorical_27/sample/transpose/sub8decoder/p_y_xz/rnn/Categorical_27/sample/transpose/Range*
_output_shapes
:*
T0
ú
2decoder/p_y_xz/rnn/Categorical_27/sample/transpose	Transpose@decoder/p_y_xz/rnn/Categorical_27/sample/multinomial/Multinomial8decoder/p_y_xz/rnn/Categorical_27/sample/transpose/sub_1*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0
ž
Pdecoder/p_y_xz/rnn/Categorical_27/sample/Categorical/batch_shape_tensor/IdentityIdentity;decoder/p_y_xz/rnn/Categorical_26/batch_shape/strided_slice*
_output_shapes
:*
T0

8decoder/p_y_xz/rnn/Categorical_27/sample/concat/values_0Const*
dtype0*
_output_shapes
:*
valueB:
v
4decoder/p_y_xz/rnn/Categorical_27/sample/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
ˇ
/decoder/p_y_xz/rnn/Categorical_27/sample/concatConcatV28decoder/p_y_xz/rnn/Categorical_27/sample/concat/values_0Pdecoder/p_y_xz/rnn/Categorical_27/sample/Categorical/batch_shape_tensor/Identity4decoder/p_y_xz/rnn/Categorical_27/sample/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
ŕ
0decoder/p_y_xz/rnn/Categorical_27/sample/ReshapeReshape2decoder/p_y_xz/rnn/Categorical_27/sample/transpose/decoder/p_y_xz/rnn/Categorical_27/sample/concat*
T0	*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
-decoder/p_y_xz/rnn/Categorical_27/sample/CastCast0decoder/p_y_xz/rnn/Categorical_27/sample/Reshape*

SrcT0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0

.decoder/p_y_xz/rnn/Categorical_27/sample/ShapeShape-decoder/p_y_xz/rnn/Categorical_27/sample/Cast*
T0*
out_type0*
_output_shapes
:

<decoder/p_y_xz/rnn/Categorical_27/sample/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:

>decoder/p_y_xz/rnn/Categorical_27/sample/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

>decoder/p_y_xz/rnn/Categorical_27/sample/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ę
6decoder/p_y_xz/rnn/Categorical_27/sample/strided_sliceStridedSlice.decoder/p_y_xz/rnn/Categorical_27/sample/Shape<decoder/p_y_xz/rnn/Categorical_27/sample/strided_slice/stack>decoder/p_y_xz/rnn/Categorical_27/sample/strided_slice/stack_1>decoder/p_y_xz/rnn/Categorical_27/sample/strided_slice/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0
x
6decoder/p_y_xz/rnn/Categorical_27/sample/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

1decoder/p_y_xz/rnn/Categorical_27/sample/concat_1ConcatV25decoder/p_y_xz/rnn/Categorical_27/sample/sample_shape6decoder/p_y_xz/rnn/Categorical_27/sample/strided_slice6decoder/p_y_xz/rnn/Categorical_27/sample/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
Ű
2decoder/p_y_xz/rnn/Categorical_27/sample/Reshape_1Reshape-decoder/p_y_xz/rnn/Categorical_27/sample/Cast1decoder/p_y_xz/rnn/Categorical_27/sample/concat_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
k
&decoder/p_y_xz/rnn/one_hot_13/on_valueConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
l
'decoder/p_y_xz/rnn/one_hot_13/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
e
#decoder/p_y_xz/rnn/one_hot_13/depthConst*
value	B :*
dtype0*
_output_shapes
: 
˘
decoder/p_y_xz/rnn/one_hot_13OneHot2decoder/p_y_xz/rnn/Categorical_27/sample/Reshape_1#decoder/p_y_xz/rnn/one_hot_13/depth&decoder/p_y_xz/rnn/one_hot_13/on_value'decoder/p_y_xz/rnn/one_hot_13/off_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
TI0*
axis˙˙˙˙˙˙˙˙˙
o
$decoder/p_y_xz/rnn/ExpandDims_41/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ľ
 decoder/p_y_xz/rnn/ExpandDims_41
ExpandDimsdecoder/p_y_xz/rnn/one_hot_13$decoder/p_y_xz/rnn/ExpandDims_41/dim*

Tdim0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_69Muldecoder/p_y_xz/rnn/add_27 decoder/p_y_xz/rnn/ExpandDims_41*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
v
+decoder/p_y_xz/rnn/Sum_13/reduction_indicesConst*
valueB :
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ˇ
decoder/p_y_xz/rnn/Sum_13Sumdecoder/p_y_xz/rnn/mul_69+decoder/p_y_xz/rnn/Sum_13/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims( *

Tidx0
~
)decoder/p_y_xz/rnn/strided_slice_13/stackConst*!
valueB"           *
dtype0*
_output_shapes
:

+decoder/p_y_xz/rnn/strided_slice_13/stack_1Const*
_output_shapes
:*!
valueB"           *
dtype0

+decoder/p_y_xz/rnn/strided_slice_13/stack_2Const*
dtype0*
_output_shapes
:*!
valueB"         

#decoder/p_y_xz/rnn/strided_slice_13StridedSlice,features_standardization/car1_future/truediv)decoder/p_y_xz/rnn/strided_slice_13/stack+decoder/p_y_xz/rnn/strided_slice_13/stack_1+decoder/p_y_xz/rnn/strided_slice_13/stack_2*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Index0*
T0
h
&decoder/p_y_xz/rnn/Tile_13/multiples/1Const*
dtype0*
_output_shapes
: *
value	B :
Š
$decoder/p_y_xz/rnn/Tile_13/multiplesPacksample_ct_1/strided_slice&decoder/p_y_xz/rnn/Tile_13/multiples/1*
T0*

axis *
N*
_output_shapes
:
ą
decoder/p_y_xz/rnn/Tile_13Tile#decoder/p_y_xz/rnn/strided_slice_13$decoder/p_y_xz/rnn/Tile_13/multiples*

Tmultiples0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
!decoder/p_y_xz/rnn/concat_26/axisConst*
dtype0*
_output_shapes
: *
value	B :
É
decoder/p_y_xz/rnn/concat_26ConcatV2decoder/p_y_xz/rnn/Tile_13decoder/p_y_xz/rnn/Sum_13!decoder/p_y_xz/rnn/concat_26/axis*
T0*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
c
!decoder/p_y_xz/rnn/concat_27/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Č
decoder/p_y_xz/rnn/concat_27ConcatV2decoder/p_y_xz/concatdecoder/p_y_xz/rnn/concat_26!decoder/p_y_xz/rnn/concat_27/axis*
T0*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛*

Tidx0

]decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_14/axisConst*
value	B :*
dtype0*
_output_shapes
: 

Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_14ConcatV2decoder/p_y_xz/rnn/concat_27Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_41]decoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_14/axis*
T0*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛*

Tidx0
ć
Xdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_14MatMulXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_14Odecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
×
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_14BiasAddXdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_14Mdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const_14Const*
value	B :*
dtype0*
_output_shapes
: 
Ł
adecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_14/split_dimConst*
_output_shapes
: *
value	B :*
dtype0

Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_14Splitadecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_14/split_dimYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_14*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
ě
Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_28TanhYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_14:1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_28/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ă
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_28AddYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_14:2Wdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_28/y*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
î
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_42SigmoidUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_28*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_42MulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_27Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_42*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
đ
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_43SigmoidWdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_14*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Â
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_43MulYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_43Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_28*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
˝
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_29AddUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_42Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_43*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
č
Vdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_29TanhUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_29*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ň
Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_44SigmoidYdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_14:3*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Â
Udecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_44MulVdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_29Ydecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_44*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

.decoder/p_y_xz/rnn/log_pi_projection_28/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_440decoder/p_y_xz/rnn/log_pi_projection/kernel/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
ă
/decoder/p_y_xz/rnn/log_pi_projection_28/BiasAddBiasAdd.decoder/p_y_xz/rnn/log_pi_projection_28/MatMul.decoder/p_y_xz/rnn/log_pi_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

*decoder/p_y_xz/rnn/mu_projection_28/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_44,decoder/p_y_xz/rnn/mu_projection/kernel/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( *
transpose_b( *
T0
×
+decoder/p_y_xz/rnn/mu_projection_28/BiasAddBiasAdd*decoder/p_y_xz/rnn/mu_projection_28/MatMul*decoder/p_y_xz/rnn/mu_projection/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

1decoder/p_y_xz/rnn/log_sigma_projection_28/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_443decoder/p_y_xz/rnn/log_sigma_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( *
transpose_b( 
ě
2decoder/p_y_xz/rnn/log_sigma_projection_28/BiasAddBiasAdd1decoder/p_y_xz/rnn/log_sigma_projection_28/MatMul1decoder/p_y_xz/rnn/log_sigma_projection/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

,decoder/p_y_xz/rnn/corr_projection_28/MatMulMatMulUdecoder/p_y_xz/rnn/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_44.decoder/p_y_xz/rnn/corr_projection/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
Ý
-decoder/p_y_xz/rnn/corr_projection_28/BiasAddBiasAdd,decoder/p_y_xz/rnn/corr_projection_28/MatMul,decoder/p_y_xz/rnn/corr_projection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/Tanh_14Tanh-decoder/p_y_xz/rnn/corr_projection_28/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

;decoder/p_y_xz/rnn/ReduceLogSumExp_14/Max/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
í
)decoder/p_y_xz/rnn/ReduceLogSumExp_14/MaxMax/decoder/p_y_xz/rnn/log_pi_projection_28/BiasAdd;decoder/p_y_xz/rnn/ReduceLogSumExp_14/Max/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0

2decoder/p_y_xz/rnn/ReduceLogSumExp_14/StopGradientStopGradient)decoder/p_y_xz/rnn/ReduceLogSumExp_14/Max*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ç
)decoder/p_y_xz/rnn/ReduceLogSumExp_14/subSub/decoder/p_y_xz/rnn/log_pi_projection_28/BiasAdd2decoder/p_y_xz/rnn/ReduceLogSumExp_14/StopGradient*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

)decoder/p_y_xz/rnn/ReduceLogSumExp_14/ExpExp)decoder/p_y_xz/rnn/ReduceLogSumExp_14/sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

;decoder/p_y_xz/rnn/ReduceLogSumExp_14/Sum/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ç
)decoder/p_y_xz/rnn/ReduceLogSumExp_14/SumSum)decoder/p_y_xz/rnn/ReduceLogSumExp_14/Exp;decoder/p_y_xz/rnn/ReduceLogSumExp_14/Sum/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0

)decoder/p_y_xz/rnn/ReduceLogSumExp_14/LogLog)decoder/p_y_xz/rnn/ReduceLogSumExp_14/Sum*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
)decoder/p_y_xz/rnn/ReduceLogSumExp_14/addAdd)decoder/p_y_xz/rnn/ReduceLogSumExp_14/Log2decoder/p_y_xz/rnn/ReduceLogSumExp_14/StopGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ž
decoder/p_y_xz/rnn/sub_28Sub/decoder/p_y_xz/rnn/log_pi_projection_28/BiasAdd)decoder/p_y_xz/rnn/ReduceLogSumExp_14/add*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
x
#decoder/p_y_xz/rnn/Reshape_28/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ž
decoder/p_y_xz/rnn/Reshape_28Reshape+decoder/p_y_xz/rnn/mu_projection_28/BiasAdd#decoder/p_y_xz/rnn/Reshape_28/shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
-decoder/p_y_xz/rnn/clip_by_value_14/Minimum/yConst*
_output_shapes
: *
valueB
 *   A*
dtype0
Ë
+decoder/p_y_xz/rnn/clip_by_value_14/MinimumMinimum2decoder/p_y_xz/rnn/log_sigma_projection_28/BiasAdd-decoder/p_y_xz/rnn/clip_by_value_14/Minimum/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
j
%decoder/p_y_xz/rnn/clip_by_value_14/yConst*
valueB
 *   Á*
dtype0*
_output_shapes
: 
´
#decoder/p_y_xz/rnn/clip_by_value_14Maximum+decoder/p_y_xz/rnn/clip_by_value_14/Minimum%decoder/p_y_xz/rnn/clip_by_value_14/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
x
#decoder/p_y_xz/rnn/Reshape_29/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
ś
decoder/p_y_xz/rnn/Reshape_29Reshape#decoder/p_y_xz/rnn/clip_by_value_14#decoder/p_y_xz/rnn/Reshape_29/shape*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
u
decoder/p_y_xz/rnn/Exp_14Expdecoder/p_y_xz/rnn/Reshape_29*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
t
decoder/p_y_xz/rnn/Square_14Squaredecoder/p_y_xz/rnn/Tanh_14*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
decoder/p_y_xz/rnn/sub_29/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0

decoder/p_y_xz/rnn/sub_29Subdecoder/p_y_xz/rnn/sub_29/xdecoder/p_y_xz/rnn/Square_14*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%decoder/p_y_xz/rnn/ones_like_14/ShapeShapedecoder/p_y_xz/rnn/Tanh_14*
_output_shapes
:*
T0*
out_type0
j
%decoder/p_y_xz/rnn/ones_like_14/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
§
decoder/p_y_xz/rnn/ones_like_14Fill%decoder/p_y_xz/rnn/ones_like_14/Shape%decoder/p_y_xz/rnn/ones_like_14/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
´
decoder/p_y_xz/rnn/stack_28Packdecoder/p_y_xz/rnn/ones_like_14decoder/p_y_xz/rnn/Tanh_14*
T0*
axis˙˙˙˙˙˙˙˙˙*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_70Muldecoder/p_y_xz/rnn/Exp_14decoder/p_y_xz/rnn/stack_28*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
{
 decoder/p_y_xz/rnn/zeros_like_14	ZerosLikedecoder/p_y_xz/rnn/Tanh_14*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
decoder/p_y_xz/rnn/Sqrt_14Sqrtdecoder/p_y_xz/rnn/sub_29*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ľ
decoder/p_y_xz/rnn/stack_29Pack decoder/p_y_xz/rnn/zeros_like_14decoder/p_y_xz/rnn/Sqrt_14*
T0*
axis˙˙˙˙˙˙˙˙˙*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_71Muldecoder/p_y_xz/rnn/Exp_14decoder/p_y_xz/rnn/stack_29*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

3decoder/p_y_xz/rnn/Categorical_28/Categorical/probsSoftmaxdecoder/p_y_xz/rnn/sub_28*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
,decoder/p_y_xz/rnn/Categorical_28/batch_rankConst*
value	B :*
dtype0*
_output_shapes
: 

.decoder/p_y_xz/rnn/Categorical_28/logits_shapeShapedecoder/p_y_xz/rnn/sub_28*
T0*
out_type0*
_output_shapes
:
n
,decoder/p_y_xz/rnn/Categorical_28/event_sizeConst*
value	B :*
dtype0*
_output_shapes
: 

Adecoder/p_y_xz/rnn/Categorical_28/batch_shape/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0

Cdecoder/p_y_xz/rnn/Categorical_28/batch_shape/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙

Cdecoder/p_y_xz/rnn/Categorical_28/batch_shape/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Ţ
;decoder/p_y_xz/rnn/Categorical_28/batch_shape/strided_sliceStridedSlice.decoder/p_y_xz/rnn/Categorical_28/logits_shapeAdecoder/p_y_xz/rnn/Categorical_28/batch_shape/strided_slice/stackCdecoder/p_y_xz/rnn/Categorical_28/batch_shape/strided_slice/stack_1Cdecoder/p_y_xz/rnn/Categorical_28/batch_shape/strided_slice/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0
u
decoder/p_y_xz/rnn/Shape_28Shapedecoder/p_y_xz/rnn/Tanh_14*
T0*
out_type0*
_output_shapes
:
m
(decoder/p_y_xz/rnn/random_normal_28/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
*decoder/p_y_xz/rnn/random_normal_28/stddevConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
Ĺ
8decoder/p_y_xz/rnn/random_normal_28/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_28*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed *
T0
Ć
'decoder/p_y_xz/rnn/random_normal_28/mulMul8decoder/p_y_xz/rnn/random_normal_28/RandomStandardNormal*decoder/p_y_xz/rnn/random_normal_28/stddev*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
#decoder/p_y_xz/rnn/random_normal_28Add'decoder/p_y_xz/rnn/random_normal_28/mul(decoder/p_y_xz/rnn/random_normal_28/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
$decoder/p_y_xz/rnn/ExpandDims_42/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ť
 decoder/p_y_xz/rnn/ExpandDims_42
ExpandDims#decoder/p_y_xz/rnn/random_normal_28$decoder/p_y_xz/rnn/ExpandDims_42/dim*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0

decoder/p_y_xz/rnn/mul_72Muldecoder/p_y_xz/rnn/mul_70 decoder/p_y_xz/rnn/ExpandDims_42*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
u
decoder/p_y_xz/rnn/Shape_29Shapedecoder/p_y_xz/rnn/Tanh_14*
T0*
out_type0*
_output_shapes
:
m
(decoder/p_y_xz/rnn/random_normal_29/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
*decoder/p_y_xz/rnn/random_normal_29/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ĺ
8decoder/p_y_xz/rnn/random_normal_29/RandomStandardNormalRandomStandardNormaldecoder/p_y_xz/rnn/Shape_29*
T0*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed 
Ć
'decoder/p_y_xz/rnn/random_normal_29/mulMul8decoder/p_y_xz/rnn/random_normal_29/RandomStandardNormal*decoder/p_y_xz/rnn/random_normal_29/stddev*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ż
#decoder/p_y_xz/rnn/random_normal_29Add'decoder/p_y_xz/rnn/random_normal_29/mul(decoder/p_y_xz/rnn/random_normal_29/mean*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
$decoder/p_y_xz/rnn/ExpandDims_43/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ť
 decoder/p_y_xz/rnn/ExpandDims_43
ExpandDims#decoder/p_y_xz/rnn/random_normal_29$decoder/p_y_xz/rnn/ExpandDims_43/dim*

Tdim0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/rnn/mul_73Muldecoder/p_y_xz/rnn/mul_71 decoder/p_y_xz/rnn/ExpandDims_43*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

decoder/p_y_xz/rnn/add_28Adddecoder/p_y_xz/rnn/mul_72decoder/p_y_xz/rnn/mul_73*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

decoder/p_y_xz/rnn/add_29Adddecoder/p_y_xz/rnn/Reshape_28decoder/p_y_xz/rnn/add_28*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
x
5decoder/p_y_xz/rnn/Categorical_29/sample/sample_shapeConst*
valueB *
dtype0*
_output_shapes
: 

Ldecoder/p_y_xz/rnn/Categorical_29/sample/multinomial/Multinomial/num_samplesConst*
dtype0*
_output_shapes
: *
value	B :

@decoder/p_y_xz/rnn/Categorical_29/sample/multinomial/MultinomialMultinomialdecoder/p_y_xz/rnn/sub_28Ldecoder/p_y_xz/rnn/Categorical_29/sample/multinomial/Multinomial/num_samples*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

seed 
˘
7decoder/p_y_xz/rnn/Categorical_29/sample/transpose/RankRank@decoder/p_y_xz/rnn/Categorical_29/sample/multinomial/Multinomial*
T0	*
_output_shapes
: 
z
8decoder/p_y_xz/rnn/Categorical_29/sample/transpose/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
Ń
6decoder/p_y_xz/rnn/Categorical_29/sample/transpose/subSub7decoder/p_y_xz/rnn/Categorical_29/sample/transpose/Rank8decoder/p_y_xz/rnn/Categorical_29/sample/transpose/sub/y*
_output_shapes
: *
T0

>decoder/p_y_xz/rnn/Categorical_29/sample/transpose/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 

>decoder/p_y_xz/rnn/Categorical_29/sample/transpose/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
˘
8decoder/p_y_xz/rnn/Categorical_29/sample/transpose/RangeRange>decoder/p_y_xz/rnn/Categorical_29/sample/transpose/Range/start7decoder/p_y_xz/rnn/Categorical_29/sample/transpose/Rank>decoder/p_y_xz/rnn/Categorical_29/sample/transpose/Range/delta*

Tidx0*
_output_shapes
:
Ö
8decoder/p_y_xz/rnn/Categorical_29/sample/transpose/sub_1Sub6decoder/p_y_xz/rnn/Categorical_29/sample/transpose/sub8decoder/p_y_xz/rnn/Categorical_29/sample/transpose/Range*
T0*
_output_shapes
:
ú
2decoder/p_y_xz/rnn/Categorical_29/sample/transpose	Transpose@decoder/p_y_xz/rnn/Categorical_29/sample/multinomial/Multinomial8decoder/p_y_xz/rnn/Categorical_29/sample/transpose/sub_1*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0
ž
Pdecoder/p_y_xz/rnn/Categorical_29/sample/Categorical/batch_shape_tensor/IdentityIdentity;decoder/p_y_xz/rnn/Categorical_28/batch_shape/strided_slice*
_output_shapes
:*
T0

8decoder/p_y_xz/rnn/Categorical_29/sample/concat/values_0Const*
_output_shapes
:*
valueB:*
dtype0
v
4decoder/p_y_xz/rnn/Categorical_29/sample/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ˇ
/decoder/p_y_xz/rnn/Categorical_29/sample/concatConcatV28decoder/p_y_xz/rnn/Categorical_29/sample/concat/values_0Pdecoder/p_y_xz/rnn/Categorical_29/sample/Categorical/batch_shape_tensor/Identity4decoder/p_y_xz/rnn/Categorical_29/sample/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N
ŕ
0decoder/p_y_xz/rnn/Categorical_29/sample/ReshapeReshape2decoder/p_y_xz/rnn/Categorical_29/sample/transpose/decoder/p_y_xz/rnn/Categorical_29/sample/concat*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0	
¨
-decoder/p_y_xz/rnn/Categorical_29/sample/CastCast0decoder/p_y_xz/rnn/Categorical_29/sample/Reshape*

SrcT0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0

.decoder/p_y_xz/rnn/Categorical_29/sample/ShapeShape-decoder/p_y_xz/rnn/Categorical_29/sample/Cast*
T0*
out_type0*
_output_shapes
:

<decoder/p_y_xz/rnn/Categorical_29/sample/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

>decoder/p_y_xz/rnn/Categorical_29/sample/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 

>decoder/p_y_xz/rnn/Categorical_29/sample/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ę
6decoder/p_y_xz/rnn/Categorical_29/sample/strided_sliceStridedSlice.decoder/p_y_xz/rnn/Categorical_29/sample/Shape<decoder/p_y_xz/rnn/Categorical_29/sample/strided_slice/stack>decoder/p_y_xz/rnn/Categorical_29/sample/strided_slice/stack_1>decoder/p_y_xz/rnn/Categorical_29/sample/strided_slice/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0
x
6decoder/p_y_xz/rnn/Categorical_29/sample/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

1decoder/p_y_xz/rnn/Categorical_29/sample/concat_1ConcatV25decoder/p_y_xz/rnn/Categorical_29/sample/sample_shape6decoder/p_y_xz/rnn/Categorical_29/sample/strided_slice6decoder/p_y_xz/rnn/Categorical_29/sample/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ű
2decoder/p_y_xz/rnn/Categorical_29/sample/Reshape_1Reshape-decoder/p_y_xz/rnn/Categorical_29/sample/Cast1decoder/p_y_xz/rnn/Categorical_29/sample/concat_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
k
&decoder/p_y_xz/rnn/one_hot_14/on_valueConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
l
'decoder/p_y_xz/rnn/one_hot_14/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
e
#decoder/p_y_xz/rnn/one_hot_14/depthConst*
value	B :*
dtype0*
_output_shapes
: 
˘
decoder/p_y_xz/rnn/one_hot_14OneHot2decoder/p_y_xz/rnn/Categorical_29/sample/Reshape_1#decoder/p_y_xz/rnn/one_hot_14/depth&decoder/p_y_xz/rnn/one_hot_14/on_value'decoder/p_y_xz/rnn/one_hot_14/off_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
TI0*
axis˙˙˙˙˙˙˙˙˙
o
$decoder/p_y_xz/rnn/ExpandDims_44/dimConst*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0
ľ
 decoder/p_y_xz/rnn/ExpandDims_44
ExpandDimsdecoder/p_y_xz/rnn/one_hot_14$decoder/p_y_xz/rnn/ExpandDims_44/dim*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0

decoder/p_y_xz/rnn/mul_74Muldecoder/p_y_xz/rnn/add_29 decoder/p_y_xz/rnn/ExpandDims_44*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
v
+decoder/p_y_xz/rnn/Sum_14/reduction_indicesConst*
valueB :
ţ˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ˇ
decoder/p_y_xz/rnn/Sum_14Sumdecoder/p_y_xz/rnn/mul_74+decoder/p_y_xz/rnn/Sum_14/reduction_indices*
	keep_dims( *

Tidx0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
~
)decoder/p_y_xz/rnn/strided_slice_14/stackConst*!
valueB"           *
dtype0*
_output_shapes
:

+decoder/p_y_xz/rnn/strided_slice_14/stack_1Const*!
valueB"           *
dtype0*
_output_shapes
:

+decoder/p_y_xz/rnn/strided_slice_14/stack_2Const*!
valueB"         *
dtype0*
_output_shapes
:

#decoder/p_y_xz/rnn/strided_slice_14StridedSlice,features_standardization/car1_future/truediv)decoder/p_y_xz/rnn/strided_slice_14/stack+decoder/p_y_xz/rnn/strided_slice_14/stack_1+decoder/p_y_xz/rnn/strided_slice_14/stack_2*
end_mask*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Index0*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask 
h
&decoder/p_y_xz/rnn/Tile_14/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
Š
$decoder/p_y_xz/rnn/Tile_14/multiplesPacksample_ct_1/strided_slice&decoder/p_y_xz/rnn/Tile_14/multiples/1*
T0*

axis *
N*
_output_shapes
:
ą
decoder/p_y_xz/rnn/Tile_14Tile#decoder/p_y_xz/rnn/strided_slice_14$decoder/p_y_xz/rnn/Tile_14/multiples*

Tmultiples0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
!decoder/p_y_xz/rnn/concat_28/axisConst*
value	B :*
dtype0*
_output_shapes
: 
É
decoder/p_y_xz/rnn/concat_28ConcatV2decoder/p_y_xz/rnn/Tile_14decoder/p_y_xz/rnn/Sum_14!decoder/p_y_xz/rnn/concat_28/axis*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0
c
!decoder/p_y_xz/rnn/concat_29/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Č
decoder/p_y_xz/rnn/concat_29ConcatV2decoder/p_y_xz/concatdecoder/p_y_xz/rnn/concat_28!decoder/p_y_xz/rnn/concat_29/axis*

Tidx0*
T0*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˛
Ć
decoder/p_y_xz/rnn/stack_30Pack,decoder/p_y_xz/rnn/log_pi_projection/BiasAdd.decoder/p_y_xz/rnn/log_pi_projection_2/BiasAdd.decoder/p_y_xz/rnn/log_pi_projection_4/BiasAdd.decoder/p_y_xz/rnn/log_pi_projection_6/BiasAdd.decoder/p_y_xz/rnn/log_pi_projection_8/BiasAdd/decoder/p_y_xz/rnn/log_pi_projection_10/BiasAdd/decoder/p_y_xz/rnn/log_pi_projection_12/BiasAdd/decoder/p_y_xz/rnn/log_pi_projection_14/BiasAdd/decoder/p_y_xz/rnn/log_pi_projection_16/BiasAdd/decoder/p_y_xz/rnn/log_pi_projection_18/BiasAdd/decoder/p_y_xz/rnn/log_pi_projection_20/BiasAdd/decoder/p_y_xz/rnn/log_pi_projection_22/BiasAdd/decoder/p_y_xz/rnn/log_pi_projection_24/BiasAdd/decoder/p_y_xz/rnn/log_pi_projection_26/BiasAdd/decoder/p_y_xz/rnn/log_pi_projection_28/BiasAdd*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*

axis

decoder/p_y_xz/rnn/stack_31Pack(decoder/p_y_xz/rnn/mu_projection/BiasAdd*decoder/p_y_xz/rnn/mu_projection_2/BiasAdd*decoder/p_y_xz/rnn/mu_projection_4/BiasAdd*decoder/p_y_xz/rnn/mu_projection_6/BiasAdd*decoder/p_y_xz/rnn/mu_projection_8/BiasAdd+decoder/p_y_xz/rnn/mu_projection_10/BiasAdd+decoder/p_y_xz/rnn/mu_projection_12/BiasAdd+decoder/p_y_xz/rnn/mu_projection_14/BiasAdd+decoder/p_y_xz/rnn/mu_projection_16/BiasAdd+decoder/p_y_xz/rnn/mu_projection_18/BiasAdd+decoder/p_y_xz/rnn/mu_projection_20/BiasAdd+decoder/p_y_xz/rnn/mu_projection_22/BiasAdd+decoder/p_y_xz/rnn/mu_projection_24/BiasAdd+decoder/p_y_xz/rnn/mu_projection_26/BiasAdd+decoder/p_y_xz/rnn/mu_projection_28/BiasAdd*
T0*

axis*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ó
decoder/p_y_xz/rnn/stack_32Pack/decoder/p_y_xz/rnn/log_sigma_projection/BiasAdd1decoder/p_y_xz/rnn/log_sigma_projection_2/BiasAdd1decoder/p_y_xz/rnn/log_sigma_projection_4/BiasAdd1decoder/p_y_xz/rnn/log_sigma_projection_6/BiasAdd1decoder/p_y_xz/rnn/log_sigma_projection_8/BiasAdd2decoder/p_y_xz/rnn/log_sigma_projection_10/BiasAdd2decoder/p_y_xz/rnn/log_sigma_projection_12/BiasAdd2decoder/p_y_xz/rnn/log_sigma_projection_14/BiasAdd2decoder/p_y_xz/rnn/log_sigma_projection_16/BiasAdd2decoder/p_y_xz/rnn/log_sigma_projection_18/BiasAdd2decoder/p_y_xz/rnn/log_sigma_projection_20/BiasAdd2decoder/p_y_xz/rnn/log_sigma_projection_22/BiasAdd2decoder/p_y_xz/rnn/log_sigma_projection_24/BiasAdd2decoder/p_y_xz/rnn/log_sigma_projection_26/BiasAdd2decoder/p_y_xz/rnn/log_sigma_projection_28/BiasAdd*
T0*

axis*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

decoder/p_y_xz/rnn/stack_33Packdecoder/p_y_xz/rnn/Tanhdecoder/p_y_xz/rnn/Tanh_1decoder/p_y_xz/rnn/Tanh_2decoder/p_y_xz/rnn/Tanh_3decoder/p_y_xz/rnn/Tanh_4decoder/p_y_xz/rnn/Tanh_5decoder/p_y_xz/rnn/Tanh_6decoder/p_y_xz/rnn/Tanh_7decoder/p_y_xz/rnn/Tanh_8decoder/p_y_xz/rnn/Tanh_9decoder/p_y_xz/rnn/Tanh_10decoder/p_y_xz/rnn/Tanh_11decoder/p_y_xz/rnn/Tanh_12decoder/p_y_xz/rnn/Tanh_13decoder/p_y_xz/rnn/Tanh_14*
T0*

axis*
N*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
÷
decoder/p_y_xz/rnn/stack_34Packdecoder/p_y_xz/rnn/Sumdecoder/p_y_xz/rnn/Sum_1decoder/p_y_xz/rnn/Sum_2decoder/p_y_xz/rnn/Sum_3decoder/p_y_xz/rnn/Sum_4decoder/p_y_xz/rnn/Sum_5decoder/p_y_xz/rnn/Sum_6decoder/p_y_xz/rnn/Sum_7decoder/p_y_xz/rnn/Sum_8decoder/p_y_xz/rnn/Sum_9decoder/p_y_xz/rnn/Sum_10decoder/p_y_xz/rnn/Sum_11decoder/p_y_xz/rnn/Sum_12decoder/p_y_xz/rnn/Sum_13decoder/p_y_xz/rnn/Sum_14*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*

axis*
N
p
%decoder/p_y_xz/rnn/Reshape_30/shape/1Const*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
g
%decoder/p_y_xz/rnn/Reshape_30/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
g
%decoder/p_y_xz/rnn/Reshape_30/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
ő
#decoder/p_y_xz/rnn/Reshape_30/shapePacksample_ct_1/strided_slice%decoder/p_y_xz/rnn/Reshape_30/shape/1%decoder/p_y_xz/rnn/Reshape_30/shape/2%decoder/p_y_xz/rnn/Reshape_30/shape/3*
T0*

axis *
N*
_output_shapes
:
ť
decoder/p_y_xz/rnn/Reshape_30Reshapedecoder/p_y_xz/rnn/stack_34#decoder/p_y_xz/rnn/Reshape_30/shape*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
k
 decoder/p_y_xz/Reshape_1/shape/1Const*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
b
 decoder/p_y_xz/Reshape_1/shape/2Const*
_output_shapes
: *
value	B :*
dtype0
b
 decoder/p_y_xz/Reshape_1/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
á
decoder/p_y_xz/Reshape_1/shapePacksample_ct_1/strided_slice decoder/p_y_xz/Reshape_1/shape/1 decoder/p_y_xz/Reshape_1/shape/2 decoder/p_y_xz/Reshape_1/shape/3*
T0*

axis *
N*
_output_shapes
:
ą
decoder/p_y_xz/Reshape_1Reshapedecoder/p_y_xz/rnn/stack_30decoder/p_y_xz/Reshape_1/shape*
T0*
Tshape0*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
k
 decoder/p_y_xz/Reshape_2/shape/1Const*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
b
 decoder/p_y_xz/Reshape_2/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
b
 decoder/p_y_xz/Reshape_2/shape/3Const*
value	B : *
dtype0*
_output_shapes
: 
á
decoder/p_y_xz/Reshape_2/shapePacksample_ct_1/strided_slice decoder/p_y_xz/Reshape_2/shape/1 decoder/p_y_xz/Reshape_2/shape/2 decoder/p_y_xz/Reshape_2/shape/3*
T0*

axis *
N*
_output_shapes
:
ą
decoder/p_y_xz/Reshape_2Reshapedecoder/p_y_xz/rnn/stack_31decoder/p_y_xz/Reshape_2/shape*
Tshape0*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ *
T0
k
 decoder/p_y_xz/Reshape_3/shape/1Const*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
b
 decoder/p_y_xz/Reshape_3/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
b
 decoder/p_y_xz/Reshape_3/shape/3Const*
_output_shapes
: *
value	B : *
dtype0
á
decoder/p_y_xz/Reshape_3/shapePacksample_ct_1/strided_slice decoder/p_y_xz/Reshape_3/shape/1 decoder/p_y_xz/Reshape_3/shape/2 decoder/p_y_xz/Reshape_3/shape/3*
_output_shapes
:*
T0*

axis *
N
ą
decoder/p_y_xz/Reshape_3Reshapedecoder/p_y_xz/rnn/stack_32decoder/p_y_xz/Reshape_3/shape*
T0*
Tshape0*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ 
k
 decoder/p_y_xz/Reshape_4/shape/1Const*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
b
 decoder/p_y_xz/Reshape_4/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
b
 decoder/p_y_xz/Reshape_4/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
á
decoder/p_y_xz/Reshape_4/shapePacksample_ct_1/strided_slice decoder/p_y_xz/Reshape_4/shape/1 decoder/p_y_xz/Reshape_4/shape/2 decoder/p_y_xz/Reshape_4/shape/3*
T0*

axis *
N*
_output_shapes
:
ą
decoder/p_y_xz/Reshape_4Reshapedecoder/p_y_xz/rnn/stack_33decoder/p_y_xz/Reshape_4/shape*
T0*
Tshape0*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

4decoder/p_y_xz/ReduceLogSumExp/Max/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ů
"decoder/p_y_xz/ReduceLogSumExp/MaxMaxdecoder/p_y_xz/Reshape_14decoder/p_y_xz/ReduceLogSumExp/Max/reduction_indices*
	keep_dims(*

Tidx0*
T0*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
˘
+decoder/p_y_xz/ReduceLogSumExp/StopGradientStopGradient"decoder/p_y_xz/ReduceLogSumExp/Max*
T0*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ł
"decoder/p_y_xz/ReduceLogSumExp/subSubdecoder/p_y_xz/Reshape_1+decoder/p_y_xz/ReduceLogSumExp/StopGradient*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0

"decoder/p_y_xz/ReduceLogSumExp/ExpExp"decoder/p_y_xz/ReduceLogSumExp/sub*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0

4decoder/p_y_xz/ReduceLogSumExp/Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙
ă
"decoder/p_y_xz/ReduceLogSumExp/SumSum"decoder/p_y_xz/ReduceLogSumExp/Exp4decoder/p_y_xz/ReduceLogSumExp/Sum/reduction_indices*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0

"decoder/p_y_xz/ReduceLogSumExp/LogLog"decoder/p_y_xz/ReduceLogSumExp/Sum*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
˝
"decoder/p_y_xz/ReduceLogSumExp/addAdd"decoder/p_y_xz/ReduceLogSumExp/Log+decoder/p_y_xz/ReduceLogSumExp/StopGradient*
T0*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/subSubdecoder/p_y_xz/Reshape_1"decoder/p_y_xz/ReduceLogSumExp/add*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
{
decoder/p_y_xz/Reshape_5/shapeConst*)
value B"˙˙˙˙˙˙˙˙         *
dtype0*
_output_shapes
:
˛
decoder/p_y_xz/Reshape_5Reshapedecoder/p_y_xz/Reshape_2decoder/p_y_xz/Reshape_5/shape*
T0*
Tshape0*<
_output_shapes*
(:&˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
k
&decoder/p_y_xz/clip_by_value/Minimum/yConst*
dtype0*
_output_shapes
: *
valueB
 *   A
´
$decoder/p_y_xz/clip_by_value/MinimumMinimumdecoder/p_y_xz/Reshape_3&decoder/p_y_xz/clip_by_value/Minimum/y*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ *
T0
c
decoder/p_y_xz/clip_by_value/yConst*
valueB
 *   Á*
dtype0*
_output_shapes
: 
°
decoder/p_y_xz/clip_by_valueMaximum$decoder/p_y_xz/clip_by_value/Minimumdecoder/p_y_xz/clip_by_value/y*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ *
T0
{
decoder/p_y_xz/Reshape_6/shapeConst*)
value B"˙˙˙˙˙˙˙˙         *
dtype0*
_output_shapes
:
ś
decoder/p_y_xz/Reshape_6Reshapedecoder/p_y_xz/clip_by_valuedecoder/p_y_xz/Reshape_6/shape*
T0*
Tshape0*<
_output_shapes*
(:&˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
z
decoder/p_y_xz/ExpExpdecoder/p_y_xz/Reshape_6*
T0*<
_output_shapes*
(:&˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
|
decoder/p_y_xz/SquareSquaredecoder/p_y_xz/Reshape_4*
T0*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
[
decoder/p_y_xz/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

decoder/p_y_xz/sub_1Subdecoder/p_y_xz/sub_1/xdecoder/p_y_xz/Square*
T0*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
v
decoder/p_y_xz/ones_like/ShapeShapedecoder/p_y_xz/Reshape_4*
T0*
out_type0*
_output_shapes
:
c
decoder/p_y_xz/ones_like/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ł
decoder/p_y_xz/ones_likeFilldecoder/p_y_xz/ones_like/Shapedecoder/p_y_xz/ones_like/Const*
T0*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ľ
decoder/p_y_xz/stackPackdecoder/p_y_xz/ones_likedecoder/p_y_xz/Reshape_4*
T0*
axis˙˙˙˙˙˙˙˙˙*
N*<
_output_shapes*
(:&˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/mulMuldecoder/p_y_xz/Expdecoder/p_y_xz/stack*
T0*<
_output_shapes*
(:&˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/zeros_like	ZerosLikedecoder/p_y_xz/Reshape_4*
T0*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
t
decoder/p_y_xz/SqrtSqrtdecoder/p_y_xz/sub_1*
T0*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ł
decoder/p_y_xz/stack_1Packdecoder/p_y_xz/zeros_likedecoder/p_y_xz/Sqrt*
T0*
axis˙˙˙˙˙˙˙˙˙*
N*<
_output_shapes*
(:&˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

decoder/p_y_xz/mul_1Muldecoder/p_y_xz/Expdecoder/p_y_xz/stack_1*
T0*<
_output_shapes*
(:&˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
~
,decoder/p_y_xz/Categorical/Categorical/ShapeShapedecoder/p_y_xz/sub*
out_type0*
_output_shapes
:*
T0
m
+decoder/p_y_xz/Categorical/Categorical/RankConst*
value	B :*
dtype0*
_output_shapes
: 

.decoder/p_y_xz/Categorical/Categorical/Shape_1Shapedecoder/p_y_xz/sub*
T0*
out_type0*
_output_shapes
:
n
,decoder/p_y_xz/Categorical/Categorical/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
­
*decoder/p_y_xz/Categorical/Categorical/SubSub+decoder/p_y_xz/Categorical/Categorical/Rank,decoder/p_y_xz/Categorical/Categorical/Sub/y*
T0*
_output_shapes
: 
 
2decoder/p_y_xz/Categorical/Categorical/Slice/beginPack*decoder/p_y_xz/Categorical/Categorical/Sub*
_output_shapes
:*
T0*

axis *
N
{
1decoder/p_y_xz/Categorical/Categorical/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
ţ
,decoder/p_y_xz/Categorical/Categorical/SliceSlice.decoder/p_y_xz/Categorical/Categorical/Shape_12decoder/p_y_xz/Categorical/Categorical/Slice/begin1decoder/p_y_xz/Categorical/Categorical/Slice/size*
_output_shapes
:*
Index0*
T0

6decoder/p_y_xz/Categorical/Categorical/concat/values_0Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
t
2decoder/p_y_xz/Categorical/Categorical/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0

-decoder/p_y_xz/Categorical/Categorical/concatConcatV26decoder/p_y_xz/Categorical/Categorical/concat/values_0,decoder/p_y_xz/Categorical/Categorical/Slice2decoder/p_y_xz/Categorical/Categorical/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ĺ
.decoder/p_y_xz/Categorical/Categorical/ReshapeReshapedecoder/p_y_xz/sub-decoder/p_y_xz/Categorical/Categorical/concat*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
¤
.decoder/p_y_xz/Categorical/Categorical/SoftmaxSoftmax.decoder/p_y_xz/Categorical/Categorical/Reshape*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ć
,decoder/p_y_xz/Categorical/Categorical/probsReshape.decoder/p_y_xz/Categorical/Categorical/Softmax,decoder/p_y_xz/Categorical/Categorical/Shape*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
g
%decoder/p_y_xz/Categorical/batch_rankConst*
value	B :*
dtype0*
_output_shapes
: 
y
'decoder/p_y_xz/Categorical/logits_shapeShapedecoder/p_y_xz/sub*
T0*
out_type0*
_output_shapes
:
g
%decoder/p_y_xz/Categorical/event_sizeConst*
dtype0*
_output_shapes
: *
value	B :

:decoder/p_y_xz/Categorical/batch_shape/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0

<decoder/p_y_xz/Categorical/batch_shape/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙

<decoder/p_y_xz/Categorical/batch_shape/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
ť
4decoder/p_y_xz/Categorical/batch_shape/strided_sliceStridedSlice'decoder/p_y_xz/Categorical/logits_shape:decoder/p_y_xz/Categorical/batch_shape/strided_slice/stack<decoder/p_y_xz/Categorical/batch_shape/strided_slice/stack_1<decoder/p_y_xz/Categorical/batch_shape/strided_slice/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0
`
outputs/Tile/multiplesConst*
valueB:*
dtype0*
_output_shapes
:

outputs/TileTile$label_standardization/train_std/readoutputs/Tile/multiples*
T0*
_output_shapes
:*

Tmultiples0

outputs/mulMuldecoder/p_y_xz/rnn/Reshape_30outputs/Tile*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
b
outputs/Tile_1/multiplesConst*
valueB:*
dtype0*
_output_shapes
:

outputs/Tile_1Tile%label_standardization/train_mean/readoutputs/Tile_1/multiples*

Tmultiples0*
T0*
_output_shapes
:
r
outputs/addAddoutputs/muloutputs/Tile_1*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
e
	outputs/yIdentityoutputs/add*
T0*8
_output_shapes&
$:"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
]
	outputs/zIdentityReshape*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_800f1c5663a24096b5b9296c196c756b/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
¨
save/SaveV2/tensor_namesConst*
_output_shapes
:!*Ű
valueŃBÎ!B^car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasB`car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBBcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/biasBDcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernelBBcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/biasBDcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernelBIcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasBKcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelB=decoder/p_y_xz/initial_state_projection/cell_0/initial_c/biasB?decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernelB=decoder/p_y_xz/initial_state_projection/cell_0/initial_h/biasB?decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernelB'decoder/p_y_xz/rnn/corr_projection/biasB)decoder/p_y_xz/rnn/corr_projection/kernelB)decoder/p_y_xz/rnn/log_pi_projection/biasB+decoder/p_y_xz/rnn/log_pi_projection/kernelB,decoder/p_y_xz/rnn/log_sigma_projection/biasB.decoder/p_y_xz/rnn/log_sigma_projection/kernelB%decoder/p_y_xz/rnn/mu_projection/biasB'decoder/p_y_xz/rnn/mu_projection/kernelBHdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasBJdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBencoder/p_z_x/dense0/biasBencoder/p_z_x/dense0/kernelBencoder/p_z_x/projection/biasBencoder/p_z_x/projection/kernelB*features_standardization/train_extras_meanB)features_standardization/train_extras_stdB#features_standardization/train_meanB"features_standardization/train_stdBglobal_stepB label_standardization/train_meanBlabel_standardization/train_std*
dtype0
Ľ
save/SaveV2/shape_and_slicesConst*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:!
Ú
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices^car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias`car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/biasDcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernelBcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/biasDcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernelIcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasKcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel=decoder/p_y_xz/initial_state_projection/cell_0/initial_c/bias?decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel=decoder/p_y_xz/initial_state_projection/cell_0/initial_h/bias?decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel'decoder/p_y_xz/rnn/corr_projection/bias)decoder/p_y_xz/rnn/corr_projection/kernel)decoder/p_y_xz/rnn/log_pi_projection/bias+decoder/p_y_xz/rnn/log_pi_projection/kernel,decoder/p_y_xz/rnn/log_sigma_projection/bias.decoder/p_y_xz/rnn/log_sigma_projection/kernel%decoder/p_y_xz/rnn/mu_projection/bias'decoder/p_y_xz/rnn/mu_projection/kernelHdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasJdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelencoder/p_z_x/dense0/biasencoder/p_z_x/dense0/kernelencoder/p_z_x/projection/biasencoder/p_z_x/projection/kernel*features_standardization/train_extras_mean)features_standardization/train_extras_std#features_standardization/train_mean"features_standardization/train_stdglobal_step label_standardization/train_meanlabel_standardization/train_std*/
dtypes%
#2!	

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
Â
save/RestoreV2/tensor_namesConst*s
valuejBhB^car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
dtype0*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2
Ç
save/AssignAssign^car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biassave/RestoreV2*
T0*q
_classg
ecloc:@car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
Ć
save/RestoreV2_1/tensor_namesConst*u
valuelBjB`car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
dtype0*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
Ó
save/Assign_1Assign`car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelsave/RestoreV2_1*
T0*s
_classi
geloc:@car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes
:	&*
use_locking(
¨
save/RestoreV2_2/tensor_namesConst*W
valueNBLBBcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/bias*
dtype0*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2

save/Assign_2AssignBcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/biassave/RestoreV2_2*
use_locking(*
T0*U
_classK
IGloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_c/bias*
validate_shape(*
_output_shapes
: 
Ş
save/RestoreV2_3/tensor_namesConst*
dtype0*
_output_shapes
:*Y
valuePBNBDcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel
j
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2

save/Assign_3AssignDcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernelsave/RestoreV2_3*W
_classM
KIloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
¨
save/RestoreV2_4/tensor_namesConst*
dtype0*
_output_shapes
:*W
valueNBLBBcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/bias
j
!save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2

save/Assign_4AssignBcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/biassave/RestoreV2_4*
use_locking(*
T0*U
_classK
IGloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_h/bias*
validate_shape(*
_output_shapes
: 
Ş
save/RestoreV2_5/tensor_namesConst*Y
valuePBNBDcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel*
dtype0*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2

save/Assign_5AssignDcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernelsave/RestoreV2_5*
use_locking(*
T0*W
_classM
KIloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel*
validate_shape(*
_output_shapes

: 
Ż
save/RestoreV2_6/tensor_namesConst*
_output_shapes
:*^
valueUBSBIcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
dtype0
j
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
_output_shapes
:*
dtypes
2
Ą
save/Assign_6AssignIcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biassave/RestoreV2_6*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*\
_classR
PNloc:@car_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias
ą
save/RestoreV2_7/tensor_namesConst*`
valueWBUBKcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
dtype0*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
_output_shapes
:*
dtypes
2
Š
save/Assign_7AssignKcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelsave/RestoreV2_7*
use_locking(*
T0*^
_classT
RPloc:@car_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes
:	,
Ł
save/RestoreV2_8/tensor_namesConst*R
valueIBGB=decoder/p_y_xz/initial_state_projection/cell_0/initial_c/bias*
dtype0*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2

save/Assign_8Assign=decoder/p_y_xz/initial_state_projection/cell_0/initial_c/biassave/RestoreV2_8*
T0*P
_classF
DBloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_c/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
Ľ
save/RestoreV2_9/tensor_namesConst*
_output_shapes
:*T
valueKBIB?decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel*
dtype0
j
!save/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
_output_shapes
:*
dtypes
2

save/Assign_9Assign?decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernelsave/RestoreV2_9* 
_output_shapes
:
Ş*
use_locking(*
T0*R
_classH
FDloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel*
validate_shape(
¤
save/RestoreV2_10/tensor_namesConst*R
valueIBGB=decoder/p_y_xz/initial_state_projection/cell_0/initial_h/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_10Assign=decoder/p_y_xz/initial_state_projection/cell_0/initial_h/biassave/RestoreV2_10*
_output_shapes	
:*
use_locking(*
T0*P
_classF
DBloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_h/bias*
validate_shape(
Ś
save/RestoreV2_11/tensor_namesConst*
dtype0*
_output_shapes
:*T
valueKBIB?decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel
k
"save/RestoreV2_11/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_11Assign?decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernelsave/RestoreV2_11*
use_locking(*
T0*R
_classH
FDloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel*
validate_shape(* 
_output_shapes
:
Ş

save/RestoreV2_12/tensor_namesConst*<
value3B1B'decoder/p_y_xz/rnn/corr_projection/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
_output_shapes
:*
dtypes
2
Ţ
save/Assign_12Assign'decoder/p_y_xz/rnn/corr_projection/biassave/RestoreV2_12*
use_locking(*
T0*:
_class0
.,loc:@decoder/p_y_xz/rnn/corr_projection/bias*
validate_shape(*
_output_shapes
:

save/RestoreV2_13/tensor_namesConst*>
value5B3B)decoder/p_y_xz/rnn/corr_projection/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
_output_shapes
:*
dtypes
2
ç
save/Assign_13Assign)decoder/p_y_xz/rnn/corr_projection/kernelsave/RestoreV2_13*
use_locking(*
T0*<
_class2
0.loc:@decoder/p_y_xz/rnn/corr_projection/kernel*
validate_shape(*
_output_shapes
:	

save/RestoreV2_14/tensor_namesConst*>
value5B3B)decoder/p_y_xz/rnn/log_pi_projection/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
_output_shapes
:*
dtypes
2
â
save/Assign_14Assign)decoder/p_y_xz/rnn/log_pi_projection/biassave/RestoreV2_14*<
_class2
0.loc:@decoder/p_y_xz/rnn/log_pi_projection/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0

save/RestoreV2_15/tensor_namesConst*
_output_shapes
:*@
value7B5B+decoder/p_y_xz/rnn/log_pi_projection/kernel*
dtype0
k
"save/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
ë
save/Assign_15Assign+decoder/p_y_xz/rnn/log_pi_projection/kernelsave/RestoreV2_15*
use_locking(*
T0*>
_class4
20loc:@decoder/p_y_xz/rnn/log_pi_projection/kernel*
validate_shape(*
_output_shapes
:	

save/RestoreV2_16/tensor_namesConst*A
value8B6B,decoder/p_y_xz/rnn/log_sigma_projection/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_16/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 

save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
č
save/Assign_16Assign,decoder/p_y_xz/rnn/log_sigma_projection/biassave/RestoreV2_16*
use_locking(*
T0*?
_class5
31loc:@decoder/p_y_xz/rnn/log_sigma_projection/bias*
validate_shape(*
_output_shapes
: 

save/RestoreV2_17/tensor_namesConst*C
value:B8B.decoder/p_y_xz/rnn/log_sigma_projection/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
_output_shapes
:*
dtypes
2
ń
save/Assign_17Assign.decoder/p_y_xz/rnn/log_sigma_projection/kernelsave/RestoreV2_17*
use_locking(*
T0*A
_class7
53loc:@decoder/p_y_xz/rnn/log_sigma_projection/kernel*
validate_shape(*
_output_shapes
:	 

save/RestoreV2_18/tensor_namesConst*:
value1B/B%decoder/p_y_xz/rnn/mu_projection/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_18/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
_output_shapes
:*
dtypes
2
Ú
save/Assign_18Assign%decoder/p_y_xz/rnn/mu_projection/biassave/RestoreV2_18*8
_class.
,*loc:@decoder/p_y_xz/rnn/mu_projection/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

save/RestoreV2_19/tensor_namesConst*<
value3B1B'decoder/p_y_xz/rnn/mu_projection/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
_output_shapes
:*
dtypes
2
ă
save/Assign_19Assign'decoder/p_y_xz/rnn/mu_projection/kernelsave/RestoreV2_19*
T0*:
_class0
.,loc:@decoder/p_y_xz/rnn/mu_projection/kernel*
validate_shape(*
_output_shapes
:	 *
use_locking(
Ż
save/RestoreV2_20/tensor_namesConst*]
valueTBRBHdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
_output_shapes
:*
dtypes
2
Ą
save/Assign_20AssignHdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biassave/RestoreV2_20*
T0*[
_classQ
OMloc:@decoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
ą
save/RestoreV2_21/tensor_namesConst*_
valueVBTBJdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_21/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
_output_shapes
:*
dtypes
2
Ş
save/Assign_21AssignJdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelsave/RestoreV2_21*
use_locking(*
T0*]
_classS
QOloc:@decoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
˛

save/RestoreV2_22/tensor_namesConst*
_output_shapes
:*.
value%B#Bencoder/p_z_x/dense0/bias*
dtype0
k
"save/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
Â
save/Assign_22Assignencoder/p_z_x/dense0/biassave/RestoreV2_22*,
_class"
 loc:@encoder/p_z_x/dense0/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0

save/RestoreV2_23/tensor_namesConst*0
value'B%Bencoder/p_z_x/dense0/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_23/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
_output_shapes
:*
dtypes
2
Ë
save/Assign_23Assignencoder/p_z_x/dense0/kernelsave/RestoreV2_23*
use_locking(*
T0*.
_class$
" loc:@encoder/p_z_x/dense0/kernel*
validate_shape(*
_output_shapes
:	 

save/RestoreV2_24/tensor_namesConst*2
value)B'Bencoder/p_z_x/projection/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
_output_shapes
:*
dtypes
2
Ę
save/Assign_24Assignencoder/p_z_x/projection/biassave/RestoreV2_24*
use_locking(*
T0*0
_class&
$"loc:@encoder/p_z_x/projection/bias*
validate_shape(*
_output_shapes
:


save/RestoreV2_25/tensor_namesConst*
_output_shapes
:*4
value+B)Bencoder/p_z_x/projection/kernel*
dtype0
k
"save/RestoreV2_25/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
_output_shapes
:*
dtypes
2
Ň
save/Assign_25Assignencoder/p_z_x/projection/kernelsave/RestoreV2_25*
validate_shape(*
_output_shapes

:
*
use_locking(*
T0*2
_class(
&$loc:@encoder/p_z_x/projection/kernel

save/RestoreV2_26/tensor_namesConst*?
value6B4B*features_standardization/train_extras_mean*
dtype0*
_output_shapes
:
k
"save/RestoreV2_26/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_26	RestoreV2
save/Constsave/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
_output_shapes
:*
dtypes
2
â
save/Assign_26Assign*features_standardization/train_extras_meansave/RestoreV2_26*
_output_shapes
: *
use_locking(*
T0*=
_class3
1/loc:@features_standardization/train_extras_mean*
validate_shape(

save/RestoreV2_27/tensor_namesConst*
dtype0*
_output_shapes
:*>
value5B3B)features_standardization/train_extras_std
k
"save/RestoreV2_27/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_27	RestoreV2
save/Constsave/RestoreV2_27/tensor_names"save/RestoreV2_27/shape_and_slices*
_output_shapes
:*
dtypes
2
ŕ
save/Assign_27Assign)features_standardization/train_extras_stdsave/RestoreV2_27*
T0*<
_class2
0.loc:@features_standardization/train_extras_std*
validate_shape(*
_output_shapes
: *
use_locking(

save/RestoreV2_28/tensor_namesConst*8
value/B-B#features_standardization/train_mean*
dtype0*
_output_shapes
:
k
"save/RestoreV2_28/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_28	RestoreV2
save/Constsave/RestoreV2_28/tensor_names"save/RestoreV2_28/shape_and_slices*
_output_shapes
:*
dtypes
2
Ö
save/Assign_28Assign#features_standardization/train_meansave/RestoreV2_28*
use_locking(*
T0*6
_class,
*(loc:@features_standardization/train_mean*
validate_shape(*
_output_shapes
:

save/RestoreV2_29/tensor_namesConst*
_output_shapes
:*7
value.B,B"features_standardization/train_std*
dtype0
k
"save/RestoreV2_29/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 

save/RestoreV2_29	RestoreV2
save/Constsave/RestoreV2_29/tensor_names"save/RestoreV2_29/shape_and_slices*
_output_shapes
:*
dtypes
2
Ô
save/Assign_29Assign"features_standardization/train_stdsave/RestoreV2_29*
_output_shapes
:*
use_locking(*
T0*5
_class+
)'loc:@features_standardization/train_std*
validate_shape(
r
save/RestoreV2_30/tensor_namesConst*
dtype0*
_output_shapes
:* 
valueBBglobal_step
k
"save/RestoreV2_30/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_30	RestoreV2
save/Constsave/RestoreV2_30/tensor_names"save/RestoreV2_30/shape_and_slices*
_output_shapes
:*
dtypes
2	
˘
save/Assign_30Assignglobal_stepsave/RestoreV2_30*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 

save/RestoreV2_31/tensor_namesConst*5
value,B*B label_standardization/train_mean*
dtype0*
_output_shapes
:
k
"save/RestoreV2_31/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_31	RestoreV2
save/Constsave/RestoreV2_31/tensor_names"save/RestoreV2_31/shape_and_slices*
_output_shapes
:*
dtypes
2
Đ
save/Assign_31Assign label_standardization/train_meansave/RestoreV2_31*
use_locking(*
T0*3
_class)
'%loc:@label_standardization/train_mean*
validate_shape(*
_output_shapes
:

save/RestoreV2_32/tensor_namesConst*4
value+B)Blabel_standardization/train_std*
dtype0*
_output_shapes
:
k
"save/RestoreV2_32/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_32	RestoreV2
save/Constsave/RestoreV2_32/tensor_names"save/RestoreV2_32/shape_and_slices*
_output_shapes
:*
dtypes
2
Î
save/Assign_32Assignlabel_standardization/train_stdsave/RestoreV2_32*
use_locking(*
T0*2
_class(
&$loc:@label_standardization/train_std*
validate_shape(*
_output_shapes
:
ż
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32
-
save/restore_allNoOp^save/restore_shard

initNoOp

init_all_tablesNoOp
+

group_depsNoOp^init^init_all_tables
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_4ff1ac713ee64f1983e1722db6d7f168/part*
dtype0
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
Ş
save_1/SaveV2/tensor_namesConst*Ű
valueŃBÎ!B^car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasB`car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBBcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/biasBDcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernelBBcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/biasBDcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernelBIcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasBKcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelB=decoder/p_y_xz/initial_state_projection/cell_0/initial_c/biasB?decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernelB=decoder/p_y_xz/initial_state_projection/cell_0/initial_h/biasB?decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernelB'decoder/p_y_xz/rnn/corr_projection/biasB)decoder/p_y_xz/rnn/corr_projection/kernelB)decoder/p_y_xz/rnn/log_pi_projection/biasB+decoder/p_y_xz/rnn/log_pi_projection/kernelB,decoder/p_y_xz/rnn/log_sigma_projection/biasB.decoder/p_y_xz/rnn/log_sigma_projection/kernelB%decoder/p_y_xz/rnn/mu_projection/biasB'decoder/p_y_xz/rnn/mu_projection/kernelBHdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasBJdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBencoder/p_z_x/dense0/biasBencoder/p_z_x/dense0/kernelBencoder/p_z_x/projection/biasBencoder/p_z_x/projection/kernelB*features_standardization/train_extras_meanB)features_standardization/train_extras_stdB#features_standardization/train_meanB"features_standardization/train_stdBglobal_stepB label_standardization/train_meanBlabel_standardization/train_std*
dtype0*
_output_shapes
:!
§
save_1/SaveV2/shape_and_slicesConst*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:!
â
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices^car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias`car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/biasDcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernelBcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/biasDcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernelIcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasKcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel=decoder/p_y_xz/initial_state_projection/cell_0/initial_c/bias?decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel=decoder/p_y_xz/initial_state_projection/cell_0/initial_h/bias?decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel'decoder/p_y_xz/rnn/corr_projection/bias)decoder/p_y_xz/rnn/corr_projection/kernel)decoder/p_y_xz/rnn/log_pi_projection/bias+decoder/p_y_xz/rnn/log_pi_projection/kernel,decoder/p_y_xz/rnn/log_sigma_projection/bias.decoder/p_y_xz/rnn/log_sigma_projection/kernel%decoder/p_y_xz/rnn/mu_projection/bias'decoder/p_y_xz/rnn/mu_projection/kernelHdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasJdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelencoder/p_z_x/dense0/biasencoder/p_z_x/dense0/kernelencoder/p_z_x/projection/biasencoder/p_z_x/projection/kernel*features_standardization/train_extras_mean)features_standardization/train_extras_std#features_standardization/train_mean"features_standardization/train_stdglobal_step label_standardization/train_meanlabel_standardization/train_std*/
dtypes%
#2!	

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_1/ShardedFilename
Ł
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
T0*

axis *
N*
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints*
T0*
_output_shapes
: 
Ä
save_1/RestoreV2/tensor_namesConst*s
valuejBhB^car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
dtype0*
_output_shapes
:
j
!save_1/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2
Ë
save_1/AssignAssign^car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biassave_1/RestoreV2*
T0*q
_classg
ecloc:@car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
Č
save_1/RestoreV2_1/tensor_namesConst*u
valuelBjB`car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
×
save_1/Assign_1Assign`car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelsave_1/RestoreV2_1*
validate_shape(*
_output_shapes
:	&*
use_locking(*
T0*s
_classi
geloc:@car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel
Ş
save_1/RestoreV2_2/tensor_namesConst*W
valueNBLBBcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/bias*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 

save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2

save_1/Assign_2AssignBcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/biassave_1/RestoreV2_2*U
_classK
IGloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_c/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Ź
save_1/RestoreV2_3/tensor_namesConst*Y
valuePBNBDcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_3/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:

save_1/Assign_3AssignDcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernelsave_1/RestoreV2_3*
use_locking(*
T0*W
_classM
KIloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel*
validate_shape(*
_output_shapes

: 
Ş
save_1/RestoreV2_4/tensor_namesConst*
dtype0*
_output_shapes
:*W
valueNBLBBcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/bias
l
#save_1/RestoreV2_4/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:

save_1/Assign_4AssignBcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/biassave_1/RestoreV2_4*
use_locking(*
T0*U
_classK
IGloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_h/bias*
validate_shape(*
_output_shapes
: 
Ź
save_1/RestoreV2_5/tensor_namesConst*Y
valuePBNBDcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2

save_1/Assign_5AssignDcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernelsave_1/RestoreV2_5*
use_locking(*
T0*W
_classM
KIloc:@car_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel*
validate_shape(*
_output_shapes

: 
ą
save_1/RestoreV2_6/tensor_namesConst*^
valueUBSBIcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_6/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
_output_shapes
:*
dtypes
2
Ľ
save_1/Assign_6AssignIcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biassave_1/RestoreV2_6*
_output_shapes	
:*
use_locking(*
T0*\
_classR
PNloc:@car_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(
ł
save_1/RestoreV2_7/tensor_namesConst*
_output_shapes
:*`
valueWBUBKcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
dtype0
l
#save_1/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
_output_shapes
:*
dtypes
2
­
save_1/Assign_7AssignKcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelsave_1/RestoreV2_7*
use_locking(*
T0*^
_classT
RPloc:@car_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes
:	,
Ľ
save_1/RestoreV2_8/tensor_namesConst*R
valueIBGB=decoder/p_y_xz/initial_state_projection/cell_0/initial_c/bias*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_8/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 

save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2

save_1/Assign_8Assign=decoder/p_y_xz/initial_state_projection/cell_0/initial_c/biassave_1/RestoreV2_8*
use_locking(*
T0*P
_classF
DBloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_c/bias*
validate_shape(*
_output_shapes	
:
§
save_1/RestoreV2_9/tensor_namesConst*
_output_shapes
:*T
valueKBIB?decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel*
dtype0
l
#save_1/RestoreV2_9/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 

save_1/RestoreV2_9	RestoreV2save_1/Constsave_1/RestoreV2_9/tensor_names#save_1/RestoreV2_9/shape_and_slices*
_output_shapes
:*
dtypes
2

save_1/Assign_9Assign?decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernelsave_1/RestoreV2_9*
T0*R
_classH
FDloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel*
validate_shape(* 
_output_shapes
:
Ş*
use_locking(
Ś
 save_1/RestoreV2_10/tensor_namesConst*
_output_shapes
:*R
valueIBGB=decoder/p_y_xz/initial_state_projection/cell_0/initial_h/bias*
dtype0
m
$save_1/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_10	RestoreV2save_1/Const save_1/RestoreV2_10/tensor_names$save_1/RestoreV2_10/shape_and_slices*
_output_shapes
:*
dtypes
2

save_1/Assign_10Assign=decoder/p_y_xz/initial_state_projection/cell_0/initial_h/biassave_1/RestoreV2_10*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*P
_classF
DBloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_h/bias
¨
 save_1/RestoreV2_11/tensor_namesConst*T
valueKBIB?decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_11	RestoreV2save_1/Const save_1/RestoreV2_11/tensor_names$save_1/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:

save_1/Assign_11Assign?decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernelsave_1/RestoreV2_11*
use_locking(*
T0*R
_classH
FDloc:@decoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel*
validate_shape(* 
_output_shapes
:
Ş

 save_1/RestoreV2_12/tensor_namesConst*
dtype0*
_output_shapes
:*<
value3B1B'decoder/p_y_xz/rnn/corr_projection/bias
m
$save_1/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_12	RestoreV2save_1/Const save_1/RestoreV2_12/tensor_names$save_1/RestoreV2_12/shape_and_slices*
_output_shapes
:*
dtypes
2
â
save_1/Assign_12Assign'decoder/p_y_xz/rnn/corr_projection/biassave_1/RestoreV2_12*
use_locking(*
T0*:
_class0
.,loc:@decoder/p_y_xz/rnn/corr_projection/bias*
validate_shape(*
_output_shapes
:

 save_1/RestoreV2_13/tensor_namesConst*>
value5B3B)decoder/p_y_xz/rnn/corr_projection/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_13	RestoreV2save_1/Const save_1/RestoreV2_13/tensor_names$save_1/RestoreV2_13/shape_and_slices*
_output_shapes
:*
dtypes
2
ë
save_1/Assign_13Assign)decoder/p_y_xz/rnn/corr_projection/kernelsave_1/RestoreV2_13*
use_locking(*
T0*<
_class2
0.loc:@decoder/p_y_xz/rnn/corr_projection/kernel*
validate_shape(*
_output_shapes
:	

 save_1/RestoreV2_14/tensor_namesConst*>
value5B3B)decoder/p_y_xz/rnn/log_pi_projection/bias*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_14	RestoreV2save_1/Const save_1/RestoreV2_14/tensor_names$save_1/RestoreV2_14/shape_and_slices*
_output_shapes
:*
dtypes
2
ć
save_1/Assign_14Assign)decoder/p_y_xz/rnn/log_pi_projection/biassave_1/RestoreV2_14*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*<
_class2
0.loc:@decoder/p_y_xz/rnn/log_pi_projection/bias

 save_1/RestoreV2_15/tensor_namesConst*@
value7B5B+decoder/p_y_xz/rnn/log_pi_projection/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_15/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ą
save_1/RestoreV2_15	RestoreV2save_1/Const save_1/RestoreV2_15/tensor_names$save_1/RestoreV2_15/shape_and_slices*
_output_shapes
:*
dtypes
2
ď
save_1/Assign_15Assign+decoder/p_y_xz/rnn/log_pi_projection/kernelsave_1/RestoreV2_15*
use_locking(*
T0*>
_class4
20loc:@decoder/p_y_xz/rnn/log_pi_projection/kernel*
validate_shape(*
_output_shapes
:	

 save_1/RestoreV2_16/tensor_namesConst*A
value8B6B,decoder/p_y_xz/rnn/log_sigma_projection/bias*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_16	RestoreV2save_1/Const save_1/RestoreV2_16/tensor_names$save_1/RestoreV2_16/shape_and_slices*
_output_shapes
:*
dtypes
2
ě
save_1/Assign_16Assign,decoder/p_y_xz/rnn/log_sigma_projection/biassave_1/RestoreV2_16*
use_locking(*
T0*?
_class5
31loc:@decoder/p_y_xz/rnn/log_sigma_projection/bias*
validate_shape(*
_output_shapes
: 

 save_1/RestoreV2_17/tensor_namesConst*
_output_shapes
:*C
value:B8B.decoder/p_y_xz/rnn/log_sigma_projection/kernel*
dtype0
m
$save_1/RestoreV2_17/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0
Ą
save_1/RestoreV2_17	RestoreV2save_1/Const save_1/RestoreV2_17/tensor_names$save_1/RestoreV2_17/shape_and_slices*
_output_shapes
:*
dtypes
2
ő
save_1/Assign_17Assign.decoder/p_y_xz/rnn/log_sigma_projection/kernelsave_1/RestoreV2_17*
_output_shapes
:	 *
use_locking(*
T0*A
_class7
53loc:@decoder/p_y_xz/rnn/log_sigma_projection/kernel*
validate_shape(

 save_1/RestoreV2_18/tensor_namesConst*:
value1B/B%decoder/p_y_xz/rnn/mu_projection/bias*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_18/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_18	RestoreV2save_1/Const save_1/RestoreV2_18/tensor_names$save_1/RestoreV2_18/shape_and_slices*
_output_shapes
:*
dtypes
2
Ţ
save_1/Assign_18Assign%decoder/p_y_xz/rnn/mu_projection/biassave_1/RestoreV2_18*
_output_shapes
: *
use_locking(*
T0*8
_class.
,*loc:@decoder/p_y_xz/rnn/mu_projection/bias*
validate_shape(

 save_1/RestoreV2_19/tensor_namesConst*<
value3B1B'decoder/p_y_xz/rnn/mu_projection/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_19	RestoreV2save_1/Const save_1/RestoreV2_19/tensor_names$save_1/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
ç
save_1/Assign_19Assign'decoder/p_y_xz/rnn/mu_projection/kernelsave_1/RestoreV2_19*
_output_shapes
:	 *
use_locking(*
T0*:
_class0
.,loc:@decoder/p_y_xz/rnn/mu_projection/kernel*
validate_shape(
ą
 save_1/RestoreV2_20/tensor_namesConst*]
valueTBRBHdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_20	RestoreV2save_1/Const save_1/RestoreV2_20/tensor_names$save_1/RestoreV2_20/shape_and_slices*
_output_shapes
:*
dtypes
2
Ľ
save_1/Assign_20AssignHdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biassave_1/RestoreV2_20*[
_classQ
OMloc:@decoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ł
 save_1/RestoreV2_21/tensor_namesConst*
dtype0*
_output_shapes
:*_
valueVBTBJdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel
m
$save_1/RestoreV2_21/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_21	RestoreV2save_1/Const save_1/RestoreV2_21/tensor_names$save_1/RestoreV2_21/shape_and_slices*
_output_shapes
:*
dtypes
2
Ž
save_1/Assign_21AssignJdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelsave_1/RestoreV2_21*
use_locking(*
T0*]
_classS
QOloc:@decoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
˛

 save_1/RestoreV2_22/tensor_namesConst*
dtype0*
_output_shapes
:*.
value%B#Bencoder/p_z_x/dense0/bias
m
$save_1/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_22	RestoreV2save_1/Const save_1/RestoreV2_22/tensor_names$save_1/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
Ć
save_1/Assign_22Assignencoder/p_z_x/dense0/biassave_1/RestoreV2_22*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@encoder/p_z_x/dense0/bias

 save_1/RestoreV2_23/tensor_namesConst*0
value'B%Bencoder/p_z_x/dense0/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_23/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_23	RestoreV2save_1/Const save_1/RestoreV2_23/tensor_names$save_1/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
Ď
save_1/Assign_23Assignencoder/p_z_x/dense0/kernelsave_1/RestoreV2_23*.
_class$
" loc:@encoder/p_z_x/dense0/kernel*
validate_shape(*
_output_shapes
:	 *
use_locking(*
T0

 save_1/RestoreV2_24/tensor_namesConst*2
value)B'Bencoder/p_z_x/projection/bias*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_24	RestoreV2save_1/Const save_1/RestoreV2_24/tensor_names$save_1/RestoreV2_24/shape_and_slices*
_output_shapes
:*
dtypes
2
Î
save_1/Assign_24Assignencoder/p_z_x/projection/biassave_1/RestoreV2_24*
_output_shapes
:
*
use_locking(*
T0*0
_class&
$"loc:@encoder/p_z_x/projection/bias*
validate_shape(

 save_1/RestoreV2_25/tensor_namesConst*4
value+B)Bencoder/p_z_x/projection/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_25/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0
Ą
save_1/RestoreV2_25	RestoreV2save_1/Const save_1/RestoreV2_25/tensor_names$save_1/RestoreV2_25/shape_and_slices*
_output_shapes
:*
dtypes
2
Ö
save_1/Assign_25Assignencoder/p_z_x/projection/kernelsave_1/RestoreV2_25*
use_locking(*
T0*2
_class(
&$loc:@encoder/p_z_x/projection/kernel*
validate_shape(*
_output_shapes

:


 save_1/RestoreV2_26/tensor_namesConst*?
value6B4B*features_standardization/train_extras_mean*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_26/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_26	RestoreV2save_1/Const save_1/RestoreV2_26/tensor_names$save_1/RestoreV2_26/shape_and_slices*
dtypes
2*
_output_shapes
:
ć
save_1/Assign_26Assign*features_standardization/train_extras_meansave_1/RestoreV2_26*=
_class3
1/loc:@features_standardization/train_extras_mean*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

 save_1/RestoreV2_27/tensor_namesConst*>
value5B3B)features_standardization/train_extras_std*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_27/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_27	RestoreV2save_1/Const save_1/RestoreV2_27/tensor_names$save_1/RestoreV2_27/shape_and_slices*
_output_shapes
:*
dtypes
2
ä
save_1/Assign_27Assign)features_standardization/train_extras_stdsave_1/RestoreV2_27*<
_class2
0.loc:@features_standardization/train_extras_std*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

 save_1/RestoreV2_28/tensor_namesConst*8
value/B-B#features_standardization/train_mean*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_28/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_28	RestoreV2save_1/Const save_1/RestoreV2_28/tensor_names$save_1/RestoreV2_28/shape_and_slices*
_output_shapes
:*
dtypes
2
Ú
save_1/Assign_28Assign#features_standardization/train_meansave_1/RestoreV2_28*
T0*6
_class,
*(loc:@features_standardization/train_mean*
validate_shape(*
_output_shapes
:*
use_locking(

 save_1/RestoreV2_29/tensor_namesConst*7
value.B,B"features_standardization/train_std*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_29/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_29	RestoreV2save_1/Const save_1/RestoreV2_29/tensor_names$save_1/RestoreV2_29/shape_and_slices*
dtypes
2*
_output_shapes
:
Ř
save_1/Assign_29Assign"features_standardization/train_stdsave_1/RestoreV2_29*
use_locking(*
T0*5
_class+
)'loc:@features_standardization/train_std*
validate_shape(*
_output_shapes
:
t
 save_1/RestoreV2_30/tensor_namesConst* 
valueBBglobal_step*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_30/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_30	RestoreV2save_1/Const save_1/RestoreV2_30/tensor_names$save_1/RestoreV2_30/shape_and_slices*
_output_shapes
:*
dtypes
2	
Ś
save_1/Assign_30Assignglobal_stepsave_1/RestoreV2_30*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(*
T0	

 save_1/RestoreV2_31/tensor_namesConst*5
value,B*B label_standardization/train_mean*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_31/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_31	RestoreV2save_1/Const save_1/RestoreV2_31/tensor_names$save_1/RestoreV2_31/shape_and_slices*
_output_shapes
:*
dtypes
2
Ô
save_1/Assign_31Assign label_standardization/train_meansave_1/RestoreV2_31*
use_locking(*
T0*3
_class)
'%loc:@label_standardization/train_mean*
validate_shape(*
_output_shapes
:

 save_1/RestoreV2_32/tensor_namesConst*
dtype0*
_output_shapes
:*4
value+B)Blabel_standardization/train_std
m
$save_1/RestoreV2_32/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_32	RestoreV2save_1/Const save_1/RestoreV2_32/tensor_names$save_1/RestoreV2_32/shape_and_slices*
_output_shapes
:*
dtypes
2
Ň
save_1/Assign_32Assignlabel_standardization/train_stdsave_1/RestoreV2_32*
use_locking(*
T0*2
_class(
&$loc:@label_standardization/train_std*
validate_shape(*
_output_shapes
:

save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"'
trainable_variablesď&ě&
÷
Mcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel:0Rcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AssignRcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read:0
ń
Kcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias:0Pcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AssignPcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read:0
â
Fcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel:0Kcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel/AssignKcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel/read:0
Ü
Dcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/bias:0Icar_future_rnn/car1/initial_state_projection/cell_0/initial_c/bias/AssignIcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/bias/read:0
â
Fcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel:0Kcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel/AssignKcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel/read:0
Ü
Dcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/bias:0Icar_future_rnn/car1/initial_state_projection/cell_0/initial_h/bias/AssignIcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/bias/read:0
ś
bcar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel:0gcar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Assigngcar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read:0
°
`car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias:0ecar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Assignecar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read:0
g
encoder/p_z_x/dense0/kernel:0"encoder/p_z_x/dense0/kernel/Assign"encoder/p_z_x/dense0/kernel/read:0
a
encoder/p_z_x/dense0/bias:0 encoder/p_z_x/dense0/bias/Assign encoder/p_z_x/dense0/bias/read:0
s
!encoder/p_z_x/projection/kernel:0&encoder/p_z_x/projection/kernel/Assign&encoder/p_z_x/projection/kernel/read:0
m
encoder/p_z_x/projection/bias:0$encoder/p_z_x/projection/bias/Assign$encoder/p_z_x/projection/bias/read:0
Ó
Adecoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel:0Fdecoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel/AssignFdecoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel/read:0
Í
?decoder/p_y_xz/initial_state_projection/cell_0/initial_c/bias:0Ddecoder/p_y_xz/initial_state_projection/cell_0/initial_c/bias/AssignDdecoder/p_y_xz/initial_state_projection/cell_0/initial_c/bias/read:0
Ó
Adecoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel:0Fdecoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel/AssignFdecoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel/read:0
Í
?decoder/p_y_xz/initial_state_projection/cell_0/initial_h/bias:0Ddecoder/p_y_xz/initial_state_projection/cell_0/initial_h/bias/AssignDdecoder/p_y_xz/initial_state_projection/cell_0/initial_h/bias/read:0
ô
Ldecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel:0Qdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AssignQdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read:0
î
Jdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias:0Odecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AssignOdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read:0

-decoder/p_y_xz/rnn/log_pi_projection/kernel:02decoder/p_y_xz/rnn/log_pi_projection/kernel/Assign2decoder/p_y_xz/rnn/log_pi_projection/kernel/read:0

+decoder/p_y_xz/rnn/log_pi_projection/bias:00decoder/p_y_xz/rnn/log_pi_projection/bias/Assign0decoder/p_y_xz/rnn/log_pi_projection/bias/read:0

)decoder/p_y_xz/rnn/mu_projection/kernel:0.decoder/p_y_xz/rnn/mu_projection/kernel/Assign.decoder/p_y_xz/rnn/mu_projection/kernel/read:0

'decoder/p_y_xz/rnn/mu_projection/bias:0,decoder/p_y_xz/rnn/mu_projection/bias/Assign,decoder/p_y_xz/rnn/mu_projection/bias/read:0
 
0decoder/p_y_xz/rnn/log_sigma_projection/kernel:05decoder/p_y_xz/rnn/log_sigma_projection/kernel/Assign5decoder/p_y_xz/rnn/log_sigma_projection/kernel/read:0

.decoder/p_y_xz/rnn/log_sigma_projection/bias:03decoder/p_y_xz/rnn/log_sigma_projection/bias/Assign3decoder/p_y_xz/rnn/log_sigma_projection/bias/read:0

+decoder/p_y_xz/rnn/corr_projection/kernel:00decoder/p_y_xz/rnn/corr_projection/kernel/Assign0decoder/p_y_xz/rnn/corr_projection/kernel/read:0

)decoder/p_y_xz/rnn/corr_projection/bias:0.decoder/p_y_xz/rnn/corr_projection/bias/Assign.decoder/p_y_xz/rnn/corr_projection/bias/read:0"ůŠ
while_contextćŠâŠ
Ä/
4car_history_rnn/rnn/while/car_history_rnn/rnn/while/ *$car_history_rnn/rnn/while/LoopCond:02!car_history_rnn/rnn/while/Merge:0:$car_history_rnn/rnn/while/Identity:0B car_history_rnn/rnn/while/Exit:0B"car_history_rnn/rnn/while/Exit_1:0B"car_history_rnn/rnn/while/Exit_2:0B"car_history_rnn/rnn/while/Exit_3:0Jř+
!car_history_rnn/rnn/CheckSeqLen:0
!car_history_rnn/rnn/TensorArray:0
Pcar_history_rnn/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
#car_history_rnn/rnn/TensorArray_1:0
Pcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read:0
Rcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read:0
%car_history_rnn/rnn/strided_slice_1:0
!car_history_rnn/rnn/while/Enter:0
#car_history_rnn/rnn/while/Enter_1:0
#car_history_rnn/rnn/while/Enter_2:0
#car_history_rnn/rnn/while/Enter_3:0
 car_history_rnn/rnn/while/Exit:0
"car_history_rnn/rnn/while/Exit_1:0
"car_history_rnn/rnn/while/Exit_2:0
"car_history_rnn/rnn/while/Exit_3:0
.car_history_rnn/rnn/while/GreaterEqual/Enter:0
(car_history_rnn/rnn/while/GreaterEqual:0
*car_history_rnn/rnn/while/GreaterEqual_1:0
*car_history_rnn/rnn/while/GreaterEqual_2:0
$car_history_rnn/rnn/while/Identity:0
&car_history_rnn/rnn/while/Identity_1:0
&car_history_rnn/rnn/while/Identity_2:0
&car_history_rnn/rnn/while/Identity_3:0
&car_history_rnn/rnn/while/Less/Enter:0
 car_history_rnn/rnn/while/Less:0
$car_history_rnn/rnn/while/LoopCond:0
!car_history_rnn/rnn/while/Merge:0
!car_history_rnn/rnn/while/Merge:1
#car_history_rnn/rnn/while/Merge_1:0
#car_history_rnn/rnn/while/Merge_1:1
#car_history_rnn/rnn/while/Merge_2:0
#car_history_rnn/rnn/while/Merge_2:1
#car_history_rnn/rnn/while/Merge_3:0
#car_history_rnn/rnn/while/Merge_3:1
)car_history_rnn/rnn/while/NextIteration:0
+car_history_rnn/rnn/while/NextIteration_1:0
+car_history_rnn/rnn/while/NextIteration_2:0
+car_history_rnn/rnn/while/NextIteration_3:0
(car_history_rnn/rnn/while/Select/Enter:0
"car_history_rnn/rnn/while/Select:0
$car_history_rnn/rnn/while/Select_1:0
$car_history_rnn/rnn/while/Select_2:0
"car_history_rnn/rnn/while/Switch:0
"car_history_rnn/rnn/while/Switch:1
$car_history_rnn/rnn/while/Switch_1:0
$car_history_rnn/rnn/while/Switch_1:1
$car_history_rnn/rnn/while/Switch_2:0
$car_history_rnn/rnn/while/Switch_2:1
$car_history_rnn/rnn/while/Switch_3:0
$car_history_rnn/rnn/while/Switch_3:1
3car_history_rnn/rnn/while/TensorArrayReadV3/Enter:0
5car_history_rnn/rnn/while/TensorArrayReadV3/Enter_1:0
-car_history_rnn/rnn/while/TensorArrayReadV3:0
Ecar_history_rnn/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
?car_history_rnn/rnn/while/TensorArrayWrite/TensorArrayWriteV3:0
!car_history_rnn/rnn/while/add/y:0
car_history_rnn/rnn/while/add:0
ecar_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter:0
_car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd:0
]car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const:0
dcar_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter:0
^car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul:0
_car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid:0
acar_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_1:0
acar_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_2:0
\car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh:0
^car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_1:0
]car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add/y:0
[car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add:0
]car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1:0
ccar_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat/axis:0
^car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat:0
[car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul:0
]car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1:0
]car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2:0
gcar_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split/split_dim:0
]car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:0
]car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:1
]car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:2
]car_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:3
car_history_rnn/rnn/zeros:0š
Pcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read:0ecar_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter:0O
%car_history_rnn/rnn/strided_slice_1:0&car_history_rnn/rnn/while/Less/Enter:0Z
#car_history_rnn/rnn/TensorArray_1:03car_history_rnn/rnn/while/TensorArrayReadV3/Enter:0
Pcar_history_rnn/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:05car_history_rnn/rnn/while/TensorArrayReadV3/Enter_1:0j
!car_history_rnn/rnn/TensorArray:0Ecar_history_rnn/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0G
car_history_rnn/rnn/zeros:0(car_history_rnn/rnn/while/Select/Enter:0S
!car_history_rnn/rnn/CheckSeqLen:0.car_history_rnn/rnn/while/GreaterEqual/Enter:0ş
Rcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read:0dcar_history_rnn/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter:0R!car_history_rnn/rnn/while/Enter:0R#car_history_rnn/rnn/while/Enter_1:0R#car_history_rnn/rnn/while/Enter_2:0R#car_history_rnn/rnn/while/Enter_3:0
÷<
dcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/car_future_rnn/car1/bidirectional_rnn/fw/fw/while/ *<car_future_rnn/car1/bidirectional_rnn/fw/fw/while/LoopCond:029car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Merge:0:<car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Identity:0B8car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Exit:0B:car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Exit_1:0B:car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Exit_2:0B:car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Exit_3:0Jó6
9car_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArray:0
hcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
;car_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArray_1:0
=car_future_rnn/car1/bidirectional_rnn/fw/fw/strided_slice_1:0
9car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Enter:0
;car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Enter_1:0
;car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Enter_2:0
;car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Enter_3:0
8car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Exit:0
:car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Exit_1:0
:car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Exit_2:0
:car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Exit_3:0
<car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Identity:0
>car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Identity_1:0
>car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Identity_2:0
>car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Identity_3:0
>car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Less/Enter:0
8car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Less:0
<car_future_rnn/car1/bidirectional_rnn/fw/fw/while/LoopCond:0
9car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Merge:0
9car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Merge:1
;car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Merge_1:0
;car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Merge_1:1
;car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Merge_2:0
;car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Merge_2:1
;car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Merge_3:0
;car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Merge_3:1
Acar_future_rnn/car1/bidirectional_rnn/fw/fw/while/NextIteration:0
Ccar_future_rnn/car1/bidirectional_rnn/fw/fw/while/NextIteration_1:0
Ccar_future_rnn/car1/bidirectional_rnn/fw/fw/while/NextIteration_2:0
Ccar_future_rnn/car1/bidirectional_rnn/fw/fw/while/NextIteration_3:0
:car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Switch:0
:car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Switch:1
<car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Switch_1:0
<car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Switch_1:1
<car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Switch_2:0
<car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Switch_2:1
<car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Switch_3:0
<car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Switch_3:1
Kcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter:0
Mcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1:0
Ecar_future_rnn/car1/bidirectional_rnn/fw/fw/while/TensorArrayReadV3:0
]car_future_rnn/car1/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
Wcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3:0
9car_future_rnn/car1/bidirectional_rnn/fw/fw/while/add/y:0
7car_future_rnn/car1/bidirectional_rnn/fw/fw/while/add:0
|car_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter:0
vcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd:0
tcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const:0
{car_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter:0
ucar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul:0
vcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid:0
xcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_1:0
xcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_2:0
scar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh:0
ucar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_1:0
tcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add/y:0
rcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add:0
tcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1:0
zcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat/axis:0
ucar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat:0
rcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul:0
tcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1:0
tcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2:0
~car_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split/split_dim:0
tcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:0
tcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:1
tcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:2
tcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:3
ecar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read:0
gcar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read:0ć
gcar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read:0{car_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter:0
=car_future_rnn/car1/bidirectional_rnn/fw/fw/strided_slice_1:0>car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Less/Enter:0
9car_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArray:0]car_future_rnn/car1/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0ĺ
ecar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read:0|car_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter:0š
hcar_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0Mcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1:0
;car_future_rnn/car1/bidirectional_rnn/fw/fw/TensorArray_1:0Kcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter:0R9car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Enter:0R;car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Enter_1:0R;car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Enter_2:0R;car_future_rnn/car1/bidirectional_rnn/fw/fw/while/Enter_3:0
=
dcar_future_rnn/car1/bidirectional_rnn/bw/bw/while/car_future_rnn/car1/bidirectional_rnn/bw/bw/while/ *<car_future_rnn/car1/bidirectional_rnn/bw/bw/while/LoopCond:029car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Merge:0:<car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Identity:0B8car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Exit:0B:car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Exit_1:0B:car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Exit_2:0B:car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Exit_3:0J7
9car_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArray:0
hcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
;car_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArray_1:0
=car_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slice_1:0
9car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Enter:0
;car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Enter_1:0
;car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Enter_2:0
;car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Enter_3:0
8car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Exit:0
:car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Exit_1:0
:car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Exit_2:0
:car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Exit_3:0
<car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Identity:0
>car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Identity_1:0
>car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Identity_2:0
>car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Identity_3:0
>car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Less/Enter:0
8car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Less:0
<car_future_rnn/car1/bidirectional_rnn/bw/bw/while/LoopCond:0
9car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Merge:0
9car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Merge:1
;car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Merge_1:0
;car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Merge_1:1
;car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Merge_2:0
;car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Merge_2:1
;car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Merge_3:0
;car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Merge_3:1
Acar_future_rnn/car1/bidirectional_rnn/bw/bw/while/NextIteration:0
Ccar_future_rnn/car1/bidirectional_rnn/bw/bw/while/NextIteration_1:0
Ccar_future_rnn/car1/bidirectional_rnn/bw/bw/while/NextIteration_2:0
Ccar_future_rnn/car1/bidirectional_rnn/bw/bw/while/NextIteration_3:0
:car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Switch:0
:car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Switch:1
<car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Switch_1:0
<car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Switch_1:1
<car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Switch_2:0
<car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Switch_2:1
<car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Switch_3:0
<car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Switch_3:1
Kcar_future_rnn/car1/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter:0
Mcar_future_rnn/car1/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1:0
Ecar_future_rnn/car1/bidirectional_rnn/bw/bw/while/TensorArrayReadV3:0
]car_future_rnn/car1/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
Wcar_future_rnn/car1/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3:0
9car_future_rnn/car1/bidirectional_rnn/bw/bw/while/add/y:0
7car_future_rnn/car1/bidirectional_rnn/bw/bw/while/add:0
~car_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1/Enter:0
xcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1:0
vcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const_1:0
}car_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1/Enter:0
wcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1:0
xcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_3:0
xcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_4:0
xcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_5:0
ucar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_2:0
ucar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Tanh_3:0
vcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2/y:0
tcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2:0
tcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3:0
|car_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1/axis:0
wcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1:0
tcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3:0
tcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4:0
tcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5:0
car_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1/split_dim:0
vcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1:0
vcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1:1
vcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1:2
vcar_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1:3
ecar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read:0
gcar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read:0ç
ecar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read:0~car_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1/Enter:0
=car_future_rnn/car1/bidirectional_rnn/bw/bw/strided_slice_1:0>car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Less/Enter:0
9car_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArray:0]car_future_rnn/car1/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0č
gcar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read:0}car_future_rnn/car1/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1/Enter:0š
hcar_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0Mcar_future_rnn/car1/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1:0
;car_future_rnn/car1/bidirectional_rnn/bw/bw/TensorArray_1:0Kcar_future_rnn/car1/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter:0R9car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Enter:0R;car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Enter_1:0R;car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Enter_2:0R;car_future_rnn/car1/bidirectional_rnn/bw/bw/while/Enter_3:0"Í-
	variablesż-ź-
7
global_step:0global_step/Assignglobal_step/read:0

%features_standardization/train_mean:0*features_standardization/train_mean/Assign*features_standardization/train_mean/read:0
|
$features_standardization/train_std:0)features_standardization/train_std/Assign)features_standardization/train_std/read:0

,features_standardization/train_extras_mean:01features_standardization/train_extras_mean/Assign1features_standardization/train_extras_mean/read:0

+features_standardization/train_extras_std:00features_standardization/train_extras_std/Assign0features_standardization/train_extras_std/read:0
v
"label_standardization/train_mean:0'label_standardization/train_mean/Assign'label_standardization/train_mean/read:0
s
!label_standardization/train_std:0&label_standardization/train_std/Assign&label_standardization/train_std/read:0
÷
Mcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel:0Rcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AssignRcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read:0
ń
Kcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias:0Pcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AssignPcar_history_rnn/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read:0
â
Fcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel:0Kcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel/AssignKcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/kernel/read:0
Ü
Dcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/bias:0Icar_future_rnn/car1/initial_state_projection/cell_0/initial_c/bias/AssignIcar_future_rnn/car1/initial_state_projection/cell_0/initial_c/bias/read:0
â
Fcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel:0Kcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel/AssignKcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/kernel/read:0
Ü
Dcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/bias:0Icar_future_rnn/car1/initial_state_projection/cell_0/initial_h/bias/AssignIcar_future_rnn/car1/initial_state_projection/cell_0/initial_h/bias/read:0
ś
bcar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel:0gcar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Assigngcar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read:0
°
`car_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias:0ecar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Assignecar_future_rnn/car1/bidirectional_rnn/fw/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read:0
g
encoder/p_z_x/dense0/kernel:0"encoder/p_z_x/dense0/kernel/Assign"encoder/p_z_x/dense0/kernel/read:0
a
encoder/p_z_x/dense0/bias:0 encoder/p_z_x/dense0/bias/Assign encoder/p_z_x/dense0/bias/read:0
s
!encoder/p_z_x/projection/kernel:0&encoder/p_z_x/projection/kernel/Assign&encoder/p_z_x/projection/kernel/read:0
m
encoder/p_z_x/projection/bias:0$encoder/p_z_x/projection/bias/Assign$encoder/p_z_x/projection/bias/read:0
Ó
Adecoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel:0Fdecoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel/AssignFdecoder/p_y_xz/initial_state_projection/cell_0/initial_c/kernel/read:0
Í
?decoder/p_y_xz/initial_state_projection/cell_0/initial_c/bias:0Ddecoder/p_y_xz/initial_state_projection/cell_0/initial_c/bias/AssignDdecoder/p_y_xz/initial_state_projection/cell_0/initial_c/bias/read:0
Ó
Adecoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel:0Fdecoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel/AssignFdecoder/p_y_xz/initial_state_projection/cell_0/initial_h/kernel/read:0
Í
?decoder/p_y_xz/initial_state_projection/cell_0/initial_h/bias:0Ddecoder/p_y_xz/initial_state_projection/cell_0/initial_h/bias/AssignDdecoder/p_y_xz/initial_state_projection/cell_0/initial_h/bias/read:0
ô
Ldecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel:0Qdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AssignQdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read:0
î
Jdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias:0Odecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AssignOdecoder/p_y_xz/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read:0

-decoder/p_y_xz/rnn/log_pi_projection/kernel:02decoder/p_y_xz/rnn/log_pi_projection/kernel/Assign2decoder/p_y_xz/rnn/log_pi_projection/kernel/read:0

+decoder/p_y_xz/rnn/log_pi_projection/bias:00decoder/p_y_xz/rnn/log_pi_projection/bias/Assign0decoder/p_y_xz/rnn/log_pi_projection/bias/read:0

)decoder/p_y_xz/rnn/mu_projection/kernel:0.decoder/p_y_xz/rnn/mu_projection/kernel/Assign.decoder/p_y_xz/rnn/mu_projection/kernel/read:0

'decoder/p_y_xz/rnn/mu_projection/bias:0,decoder/p_y_xz/rnn/mu_projection/bias/Assign,decoder/p_y_xz/rnn/mu_projection/bias/read:0
 
0decoder/p_y_xz/rnn/log_sigma_projection/kernel:05decoder/p_y_xz/rnn/log_sigma_projection/kernel/Assign5decoder/p_y_xz/rnn/log_sigma_projection/kernel/read:0

.decoder/p_y_xz/rnn/log_sigma_projection/bias:03decoder/p_y_xz/rnn/log_sigma_projection/bias/Assign3decoder/p_y_xz/rnn/log_sigma_projection/bias/read:0

+decoder/p_y_xz/rnn/corr_projection/kernel:00decoder/p_y_xz/rnn/corr_projection/kernel/Assign0decoder/p_y_xz/rnn/corr_projection/kernel/read:0

)decoder/p_y_xz/rnn/corr_projection/bias:0.decoder/p_y_xz/rnn/corr_projection/bias/Assign.decoder/p_y_xz/rnn/corr_projection/bias/read:0" 
legacy_init_op


group_deps" 
global_step

global_step:0"ź
cond_contextŤ¨

cond/cond_textcond/pred_id:0cond/switch_t:0 *Ő
cond/Tile/input:0
cond/Tile/multiples/0:0
cond/Tile/multiples/Switch:1
cond/Tile/multiples:0
cond/Tile:0
cond/pred_id:0
cond/switch_t:0
strided_slice_5:01
strided_slice_5:0cond/Tile/multiples/Switch:1
Ě
cond/cond_text_1cond/pred_id:0cond/switch_f:0*
%cond/OneHotCategorical/sample/Const:0
+cond/OneHotCategorical/sample/Prod/Switch:0
$cond/OneHotCategorical/sample/Prod:0
-cond/OneHotCategorical/sample/Reshape/shape:0
'cond/OneHotCategorical/sample/Reshape:0
1cond/OneHotCategorical/sample/Reshape_1/shape/0:0
6cond/OneHotCategorical/sample/Reshape_1/shape/Switch:0
/cond/OneHotCategorical/sample/Reshape_1/shape:0
)cond/OneHotCategorical/sample/Reshape_1:0
)cond/OneHotCategorical/sample/Reshape_2:0
)cond/OneHotCategorical/sample/Reshape_3:0
,cond/OneHotCategorical/sample/Shape/Switch:0
%cond/OneHotCategorical/sample/Shape:0
'cond/OneHotCategorical/sample/Shape_1:0
+cond/OneHotCategorical/sample/concat/axis:0
/cond/OneHotCategorical/sample/concat/values_0:0
&cond/OneHotCategorical/sample/concat:0
-cond/OneHotCategorical/sample/concat_1/axis:0
(cond/OneHotCategorical/sample/concat_1:0
7cond/OneHotCategorical/sample/multinomial/Multinomial:0
1cond/OneHotCategorical/sample/one_hot/off_value:0
0cond/OneHotCategorical/sample/one_hot/on_value:0
'cond/OneHotCategorical/sample/one_hot:0
3cond/OneHotCategorical/sample/strided_slice/stack:0
5cond/OneHotCategorical/sample/strided_slice/stack_1:0
5cond/OneHotCategorical/sample/strided_slice/stack_2:0
-cond/OneHotCategorical/sample/strided_slice:0
5cond/OneHotCategorical/sample/transpose/Range/delta:0
5cond/OneHotCategorical/sample/transpose/Range/start:0
/cond/OneHotCategorical/sample/transpose/Range:0
.cond/OneHotCategorical/sample/transpose/Rank:0
/cond/OneHotCategorical/sample/transpose/sub/y:0
-cond/OneHotCategorical/sample/transpose/sub:0
/cond/OneHotCategorical/sample/transpose/sub_1:0
)cond/OneHotCategorical/sample/transpose:0
cond/ToFloat:0
cond/pred_id:0
cond/switch_f:0
:encoder/p_z_x/OneHotCategorical/event_size/strided_slice:0
encoder/p_z_x/sub:0
sample_ct_1/strided_slice:0C
encoder/p_z_x/sub:0,cond/OneHotCategorical/sample/Shape/Switch:0t
:encoder/p_z_x/OneHotCategorical/event_size/strided_slice:06cond/OneHotCategorical/sample/Reshape_1/shape/Switch:0J
sample_ct_1/strided_slice:0+cond/OneHotCategorical/sample/Prod/Switch:0
p
cond_1/cond_textcond_1/pred_id:0cond_1/switch_t:0 *5
cond_1/Const:0
cond_1/pred_id:0
cond_1/switch_t:0
Ö
cond_1/cond_text_1cond_1/pred_id:0cond_1/switch_f:0*
cond_1/Switch_1:0
cond_1/Switch_1:1
cond_1/pred_id:0
cond_1/switch_f:0
sample_ct_1/strided_slice:00
sample_ct_1/strided_slice:0cond_1/Switch_1:0*
predictions
2
car1*
car1:0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
+
	sample_ct
sample_ct:0˙˙˙˙˙˙˙˙˙
2
car2*
car2:0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
4
extras*
extras:0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ 
;
car1_future_x*
car1_future_x:0˙˙˙˙˙˙˙˙˙
1
traj_lengths!
traj_lengths:0˙˙˙˙˙˙˙˙˙
;
car1_future_y*
car1_future_y:0˙˙˙˙˙˙˙˙˙8
y3
outputs/y:0"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙4
z/
outputs/z:0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
tensorflow/serving/predict*
serving_default
1
traj_lengths!
traj_lengths:0˙˙˙˙˙˙˙˙˙
;
car1_future_y*
car1_future_y:0˙˙˙˙˙˙˙˙˙
2
car1*
car1:0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
+
	sample_ct
sample_ct:0˙˙˙˙˙˙˙˙˙
2
car2*
car2:0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
4
extras*
extras:0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ 
;
car1_future_x*
car1_future_x:0˙˙˙˙˙˙˙˙˙8
y3
outputs/y:0"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙4
z/
outputs/z:0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
tensorflow/serving/predict