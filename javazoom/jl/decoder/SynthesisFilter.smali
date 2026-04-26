.class public final Ljavazoom/jl/decoder/SynthesisFilter;
.super Ljava/lang/Object;
.source "SynthesisFilter.java"


# static fields
.field private static final MY_PI:D = 3.141592653589793

.field private static final cos11_32:F

.field private static final cos11_64:F

.field private static final cos13_32:F

.field private static final cos13_64:F

.field private static final cos15_32:F

.field private static final cos15_64:F

.field private static final cos17_64:F

.field private static final cos19_64:F

.field private static final cos1_16:F

.field private static final cos1_32:F

.field private static final cos1_4:F

.field private static final cos1_64:F

.field private static final cos1_8:F

.field private static final cos21_64:F

.field private static final cos23_64:F

.field private static final cos25_64:F

.field private static final cos27_64:F

.field private static final cos29_64:F

.field private static final cos31_64:F

.field private static final cos3_16:F

.field private static final cos3_32:F

.field private static final cos3_64:F

.field private static final cos3_8:F

.field private static final cos5_16:F

.field private static final cos5_32:F

.field private static final cos5_64:F

.field private static final cos7_16:F

.field private static final cos7_32:F

.field private static final cos7_64:F

.field private static final cos9_32:F

.field private static final cos9_64:F

.field private static d:[F

.field private static d16:[[F


# instance fields
.field private _tmpOut:[F

.field private actual_v:[F

.field private actual_write_pos:I

.field private channel:I

.field private samples:[F

.field private scalefactor:F

.field private v1:[F

.field private v2:[F


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 937
    const-wide v0, 0x3fa921fb54442d18L  # 0.04908738521234052

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    mul-double/2addr v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_64:F

    .line 938
    const-wide v0, 0x3fc2d97c7f3321d2L  # 0.14726215563702155

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos3_64:F

    .line 939
    const-wide v0, 0x3fcf6a7a2955385eL  # 0.2454369260617026

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos5_64:F

    .line 940
    const-wide v0, 0x3fd5fdbbe9bba775L  # 0.3436116964863836

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos7_64:F

    .line 941
    const-wide v0, 0x3fdc463abeccb2bbL  # 0.44178646691106466

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos9_64:F

    .line 942
    const-wide v0, 0x3fe1475cc9eedf00L  # 0.5399612373357456

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos11_64:F

    .line 943
    const-wide v0, 0x3fe46b9c347764a4L  # 0.6381360077604268

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos13_64:F

    .line 944
    const-wide v0, 0x3fe78fdb9effea46L  # 0.7363107781851077

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos15_64:F

    .line 945
    const-wide v0, 0x3feab41b09886feaL  # 0.8344855486097889

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos17_64:F

    .line 946
    const-wide v0, 0x3fedd85a7410f58cL  # 0.9326603190344698

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos19_64:F

    .line 947
    const-wide v0, 0x3ff07e4cef4cbd98L  # 1.030835089459151

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos21_64:F

    .line 948
    const-wide v0, 0x3ff2106ca4910069L  # 1.1290098598838318

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos23_64:F

    .line 949
    const-wide v0, 0x3ff3a28c59d5433bL  # 1.227184630308513

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos25_64:F

    .line 950
    const-wide v0, 0x3ff534ac0f19860cL  # 1.325359400733194

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos27_64:F

    .line 951
    const-wide v0, 0x3ff6c6cbc45dc8deL  # 1.423534171157875

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos29_64:F

    .line 952
    const-wide v0, 0x3ff858eb79a20bafL  # 1.521708941582556

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos31_64:F

    .line 953
    const-wide v0, 0x3fb921fb54442d18L  # 0.09817477042468103

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_32:F

    .line 954
    const-wide v0, 0x3fd2d97c7f3321d2L  # 0.2945243112740431

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos3_32:F

    .line 955
    const-wide v0, 0x3fdf6a7a2955385eL  # 0.4908738521234052

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos5_32:F

    .line 956
    const-wide v0, 0x3fe5fdbbe9bba775L  # 0.6872233929727672

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos7_32:F

    .line 957
    const-wide v0, 0x3fec463abeccb2bbL  # 0.8835729338221293

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos9_32:F

    .line 958
    const-wide v0, 0x3ff1475cc9eedf00L  # 1.0799224746714913

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos11_32:F

    .line 959
    const-wide v0, 0x3ff46b9c347764a4L  # 1.2762720155208536

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos13_32:F

    .line 960
    const-wide v0, 0x3ff78fdb9effea46L  # 1.4726215563702154

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos15_32:F

    .line 961
    const-wide v0, 0x3fc921fb54442d18L  # 0.19634954084936207

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_16:F

    .line 962
    const-wide v0, 0x3fe2d97c7f3321d2L  # 0.5890486225480862

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos3_16:F

    .line 963
    const-wide v0, 0x3fef6a7a2955385eL  # 0.9817477042468103

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos5_16:F

    .line 964
    const-wide v0, 0x3ff5fdbbe9bba775L  # 1.3744467859455345

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos7_16:F

    .line 965
    const-wide v0, 0x3fd921fb54442d18L  # 0.39269908169872414

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_8:F

    .line 966
    const-wide v0, 0x3ff2d97c7f3321d2L  # 1.1780972450961724

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    double-to-float v0, v0

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos3_8:F

    .line 967
    const-wide v0, 0x3fe921fb54442d18L  # 0.7853981633974483

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double/2addr v4, v0

    double-to-float v0, v4

    sput v0, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_4:F

    .line 973
    const/4 v0, 0x0

    sput-object v0, Ljavazoom/jl/decoder/SynthesisFilter;->d:[F

    .line 979
    move-object v1, v0

    check-cast v1, [[F

    sput-object v0, Ljavazoom/jl/decoder/SynthesisFilter;->d16:[[F

    return-void
.end method

.method public constructor <init>(IF[F)V
    .registers 7
    .param p1, "channelnumber"  # I
    .param p2, "factor"  # F
    .param p3, "eq0"  # [F

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    const/16 v0, 0x20

    new-array v1, v0, [F

    iput-object v1, p0, Ljavazoom/jl/decoder/SynthesisFilter;->_tmpOut:[F

    .line 69
    sget-object v1, Ljavazoom/jl/decoder/SynthesisFilter;->d:[F

    if-nez v1, :cond_1d

    .line 70
    invoke-static {}, Ljavazoom/jl/decoder/SynthesisFilter;->load_d()[F

    move-result-object v1

    sput-object v1, Ljavazoom/jl/decoder/SynthesisFilter;->d:[F

    .line 71
    sget-object v1, Ljavazoom/jl/decoder/SynthesisFilter;->d:[F

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljavazoom/jl/decoder/SynthesisFilter;->splitArray([FI)[[F

    move-result-object v1

    sput-object v1, Ljavazoom/jl/decoder/SynthesisFilter;->d16:[[F

    .line 74
    :cond_1d
    const/16 v1, 0x200

    new-array v2, v1, [F

    iput-object v2, p0, Ljavazoom/jl/decoder/SynthesisFilter;->v1:[F

    .line 75
    new-array v1, v1, [F

    iput-object v1, p0, Ljavazoom/jl/decoder/SynthesisFilter;->v2:[F

    .line 76
    new-array v0, v0, [F

    iput-object v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->samples:[F

    .line 77
    iput p1, p0, Ljavazoom/jl/decoder/SynthesisFilter;->channel:I

    .line 78
    iput p2, p0, Ljavazoom/jl/decoder/SynthesisFilter;->scalefactor:F

    .line 80
    invoke-virtual {p0}, Ljavazoom/jl/decoder/SynthesisFilter;->reset()V

    .line 81
    return-void
.end method

.method private compute_new_v()V
    .registers 105

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Ljavazoom/jl/decoder/SynthesisFilter;->samples:[F

    .line 155
    .local v1, "s":[F
    const/4 v2, 0x0

    aget v2, v1, v2

    .line 156
    .local v2, "s0":F
    const/4 v3, 0x1

    aget v3, v1, v3

    .line 157
    .local v3, "s1":F
    const/4 v4, 0x2

    aget v4, v1, v4

    .line 158
    .local v4, "s2":F
    const/4 v5, 0x3

    aget v5, v1, v5

    .line 159
    .local v5, "s3":F
    const/4 v6, 0x4

    aget v6, v1, v6

    .line 160
    .local v6, "s4":F
    const/4 v7, 0x5

    aget v7, v1, v7

    .line 161
    .local v7, "s5":F
    const/4 v8, 0x6

    aget v8, v1, v8

    .line 162
    .local v8, "s6":F
    const/4 v9, 0x7

    aget v9, v1, v9

    .line 163
    .local v9, "s7":F
    const/16 v10, 0x8

    aget v10, v1, v10

    .line 164
    .local v10, "s8":F
    const/16 v11, 0x9

    aget v11, v1, v11

    .line 165
    .local v11, "s9":F
    const/16 v12, 0xa

    aget v12, v1, v12

    .line 166
    .local v12, "s10":F
    const/16 v13, 0xb

    aget v13, v1, v13

    .line 167
    .local v13, "s11":F
    const/16 v14, 0xc

    aget v14, v1, v14

    .line 168
    .local v14, "s12":F
    const/16 v15, 0xd

    aget v15, v1, v15

    .line 169
    .local v15, "s13":F
    const/16 v16, 0xe

    aget v16, v1, v16

    .line 170
    .local v16, "s14":F
    const/16 v17, 0xf

    aget v17, v1, v17

    .line 171
    .local v17, "s15":F
    const/16 v18, 0x10

    aget v18, v1, v18

    .line 172
    .local v18, "s16":F
    const/16 v19, 0x11

    aget v19, v1, v19

    .line 173
    .local v19, "s17":F
    const/16 v20, 0x12

    aget v20, v1, v20

    .line 174
    .local v20, "s18":F
    const/16 v21, 0x13

    aget v21, v1, v21

    .line 175
    .local v21, "s19":F
    const/16 v22, 0x14

    aget v22, v1, v22

    .line 176
    .local v22, "s20":F
    const/16 v23, 0x15

    aget v23, v1, v23

    .line 177
    .local v23, "s21":F
    const/16 v24, 0x16

    aget v24, v1, v24

    .line 178
    .local v24, "s22":F
    const/16 v25, 0x17

    aget v25, v1, v25

    .line 179
    .local v25, "s23":F
    const/16 v26, 0x18

    aget v26, v1, v26

    .line 180
    .local v26, "s24":F
    const/16 v27, 0x19

    aget v27, v1, v27

    .line 181
    .local v27, "s25":F
    const/16 v28, 0x1a

    aget v28, v1, v28

    .line 182
    .local v28, "s26":F
    const/16 v29, 0x1b

    aget v29, v1, v29

    .line 183
    .local v29, "s27":F
    const/16 v30, 0x1c

    aget v30, v1, v30

    .line 184
    .local v30, "s28":F
    const/16 v31, 0x1d

    aget v31, v1, v31

    .line 185
    .local v31, "s29":F
    const/16 v32, 0x1e

    aget v32, v1, v32

    .line 186
    .local v32, "s30":F
    const/16 v33, 0x1f

    aget v33, v1, v33

    .line 188
    .local v33, "s31":F
    add-float v34, v2, v33

    .line 189
    .local v34, "p0":F
    add-float v35, v3, v32

    .line 190
    .local v35, "p1":F
    add-float v36, v4, v31

    .line 191
    .local v36, "p2":F
    add-float v37, v5, v30

    .line 192
    .local v37, "p3":F
    add-float v38, v6, v29

    .line 193
    .local v38, "p4":F
    add-float v39, v7, v28

    .line 194
    .local v39, "p5":F
    add-float v40, v8, v27

    .line 195
    .local v40, "p6":F
    add-float v41, v9, v26

    .line 196
    .local v41, "p7":F
    add-float v42, v10, v25

    .line 197
    .local v42, "p8":F
    add-float v43, v11, v24

    .line 198
    .local v43, "p9":F
    add-float v44, v12, v23

    .line 199
    .local v44, "p10":F
    add-float v45, v13, v22

    .line 200
    .local v45, "p11":F
    add-float v46, v14, v21

    .line 201
    .local v46, "p12":F
    add-float v47, v15, v20

    .line 202
    .local v47, "p13":F
    add-float v48, v16, v19

    .line 203
    .local v48, "p14":F
    add-float v49, v17, v18

    .line 205
    .local v49, "p15":F
    add-float v50, v34, v49

    .line 206
    .local v50, "pp0":F
    add-float v51, v35, v48

    .line 207
    .local v51, "pp1":F
    add-float v52, v36, v47

    .line 208
    .local v52, "pp2":F
    add-float v53, v37, v46

    .line 209
    .local v53, "pp3":F
    add-float v54, v38, v45

    .line 210
    .local v54, "pp4":F
    add-float v55, v39, v44

    .line 211
    .local v55, "pp5":F
    add-float v56, v40, v43

    .line 212
    .local v56, "pp6":F
    add-float v57, v41, v42

    .line 213
    .local v57, "pp7":F
    sub-float v58, v34, v49

    sget v59, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_32:F

    mul-float v58, v58, v59

    .line 214
    .local v58, "pp8":F
    sub-float v59, v35, v48

    sget v60, Ljavazoom/jl/decoder/SynthesisFilter;->cos3_32:F

    mul-float v59, v59, v60

    .line 215
    .local v59, "pp9":F
    sub-float v60, v36, v47

    sget v61, Ljavazoom/jl/decoder/SynthesisFilter;->cos5_32:F

    mul-float v60, v60, v61

    .line 216
    .local v60, "pp10":F
    sub-float v61, v37, v46

    sget v62, Ljavazoom/jl/decoder/SynthesisFilter;->cos7_32:F

    mul-float v61, v61, v62

    .line 217
    .local v61, "pp11":F
    sub-float v62, v38, v45

    sget v63, Ljavazoom/jl/decoder/SynthesisFilter;->cos9_32:F

    mul-float v62, v62, v63

    .line 218
    .local v62, "pp12":F
    sub-float v63, v39, v44

    sget v64, Ljavazoom/jl/decoder/SynthesisFilter;->cos11_32:F

    mul-float v63, v63, v64

    .line 219
    .local v63, "pp13":F
    sub-float v64, v40, v43

    sget v65, Ljavazoom/jl/decoder/SynthesisFilter;->cos13_32:F

    mul-float v64, v64, v65

    .line 220
    .local v64, "pp14":F
    sub-float v65, v41, v42

    sget v66, Ljavazoom/jl/decoder/SynthesisFilter;->cos15_32:F

    mul-float v65, v65, v66

    .line 222
    .local v65, "pp15":F
    add-float v34, v50, v57

    .line 223
    add-float v35, v51, v56

    .line 224
    add-float v36, v52, v55

    .line 225
    add-float v37, v53, v54

    .line 226
    sub-float v66, v50, v57

    sget v67, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_16:F

    mul-float v66, v66, v67

    .line 227
    .end local v38  # "p4":F
    .local v66, "p4":F
    sub-float v38, v51, v56

    sget v67, Ljavazoom/jl/decoder/SynthesisFilter;->cos3_16:F

    mul-float v38, v38, v67

    .line 228
    .end local v39  # "p5":F
    .local v38, "p5":F
    sub-float v39, v52, v55

    sget v67, Ljavazoom/jl/decoder/SynthesisFilter;->cos5_16:F

    mul-float v39, v39, v67

    .line 229
    .end local v40  # "p6":F
    .local v39, "p6":F
    sub-float v40, v53, v54

    sget v67, Ljavazoom/jl/decoder/SynthesisFilter;->cos7_16:F

    mul-float v40, v40, v67

    .line 230
    .end local v41  # "p7":F
    .local v40, "p7":F
    add-float v41, v58, v65

    .line 231
    .end local v42  # "p8":F
    .local v41, "p8":F
    add-float v42, v59, v64

    .line 232
    .end local v43  # "p9":F
    .local v42, "p9":F
    add-float v43, v60, v63

    .line 233
    .end local v44  # "p10":F
    .local v43, "p10":F
    add-float v44, v61, v62

    .line 234
    .end local v45  # "p11":F
    .local v44, "p11":F
    sub-float v45, v58, v65

    sget v67, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_16:F

    mul-float v45, v45, v67

    .line 235
    .end local v46  # "p12":F
    .local v45, "p12":F
    sub-float v46, v59, v64

    sget v67, Ljavazoom/jl/decoder/SynthesisFilter;->cos3_16:F

    mul-float v46, v46, v67

    .line 236
    .end local v47  # "p13":F
    .local v46, "p13":F
    sub-float v47, v60, v63

    sget v67, Ljavazoom/jl/decoder/SynthesisFilter;->cos5_16:F

    mul-float v47, v47, v67

    .line 237
    .end local v48  # "p14":F
    .local v47, "p14":F
    sub-float v48, v61, v62

    sget v67, Ljavazoom/jl/decoder/SynthesisFilter;->cos7_16:F

    mul-float v48, v48, v67

    .line 239
    .end local v49  # "p15":F
    .local v48, "p15":F
    add-float v49, v34, v37

    .line 240
    .end local v50  # "pp0":F
    .local v49, "pp0":F
    add-float v50, v35, v36

    .line 241
    .end local v51  # "pp1":F
    .local v50, "pp1":F
    sub-float v51, v34, v37

    sget v67, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_8:F

    mul-float v51, v51, v67

    .line 242
    .end local v52  # "pp2":F
    .local v51, "pp2":F
    sub-float v52, v35, v36

    sget v67, Ljavazoom/jl/decoder/SynthesisFilter;->cos3_8:F

    mul-float v52, v52, v67

    .line 243
    .end local v53  # "pp3":F
    .local v52, "pp3":F
    add-float v53, v66, v40

    .line 244
    .end local v54  # "pp4":F
    .local v53, "pp4":F
    add-float v54, v38, v39

    .line 245
    .end local v55  # "pp5":F
    .local v54, "pp5":F
    sub-float v55, v66, v40

    sget v67, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_8:F

    mul-float v55, v55, v67

    .line 246
    .end local v56  # "pp6":F
    .local v55, "pp6":F
    sub-float v56, v38, v39

    sget v67, Ljavazoom/jl/decoder/SynthesisFilter;->cos3_8:F

    mul-float v56, v56, v67

    .line 247
    .end local v57  # "pp7":F
    .local v56, "pp7":F
    add-float v57, v41, v44

    .line 248
    .end local v58  # "pp8":F
    .local v57, "pp8":F
    add-float v58, v42, v43

    .line 249
    .end local v59  # "pp9":F
    .local v58, "pp9":F
    sub-float v59, v41, v44

    sget v67, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_8:F

    mul-float v59, v59, v67

    .line 250
    .end local v60  # "pp10":F
    .local v59, "pp10":F
    sub-float v60, v42, v43

    sget v67, Ljavazoom/jl/decoder/SynthesisFilter;->cos3_8:F

    mul-float v60, v60, v67

    .line 251
    .end local v61  # "pp11":F
    .local v60, "pp11":F
    add-float v61, v45, v48

    .line 252
    .end local v62  # "pp12":F
    .local v61, "pp12":F
    add-float v62, v46, v47

    .line 253
    .end local v63  # "pp13":F
    .local v62, "pp13":F
    sub-float v63, v45, v48

    sget v67, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_8:F

    mul-float v63, v63, v67

    .line 254
    .end local v64  # "pp14":F
    .local v63, "pp14":F
    sub-float v64, v46, v47

    sget v67, Ljavazoom/jl/decoder/SynthesisFilter;->cos3_8:F

    mul-float v64, v64, v67

    .line 256
    .end local v65  # "pp15":F
    .local v64, "pp15":F
    move-object/from16 v65, v1

    .end local v1  # "s":[F
    .local v65, "s":[F
    add-float v1, v49, v50

    .line 257
    .end local v34  # "p0":F
    .local v1, "p0":F
    sub-float v34, v49, v50

    sget v67, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_4:F

    mul-float v34, v34, v67

    .line 258
    .end local v35  # "p1":F
    .local v34, "p1":F
    add-float v35, v51, v52

    .line 259
    .end local v36  # "p2":F
    .local v35, "p2":F
    sub-float v36, v51, v52

    sget v67, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_4:F

    mul-float v0, v36, v67

    .line 260
    .end local v37  # "p3":F
    .local v0, "p3":F
    add-float v36, v53, v54

    .line 261
    .end local v66  # "p4":F
    .local v36, "p4":F
    sub-float v37, v53, v54

    sget v66, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_4:F

    mul-float v37, v37, v66

    .line 262
    .end local v38  # "p5":F
    .local v37, "p5":F
    move/from16 v38, v15

    .end local v15  # "s13":F
    .local v38, "s13":F
    add-float v15, v55, v56

    .line 263
    .end local v39  # "p6":F
    .local v15, "p6":F
    sub-float v39, v55, v56

    sget v66, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_4:F

    mul-float v39, v39, v66

    .line 264
    .end local v40  # "p7":F
    .local v39, "p7":F
    add-float v40, v57, v58

    .line 265
    .end local v41  # "p8":F
    .local v40, "p8":F
    sub-float v41, v57, v58

    sget v66, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_4:F

    mul-float v41, v41, v66

    .line 266
    .end local v42  # "p9":F
    .local v41, "p9":F
    add-float v42, v59, v60

    .line 267
    .end local v43  # "p10":F
    .local v42, "p10":F
    sub-float v43, v59, v60

    sget v66, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_4:F

    mul-float v43, v43, v66

    .line 268
    .end local v44  # "p11":F
    .local v43, "p11":F
    add-float v44, v61, v62

    .line 269
    .end local v45  # "p12":F
    .local v44, "p12":F
    sub-float v45, v61, v62

    sget v66, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_4:F

    mul-float v45, v45, v66

    .line 270
    .end local v46  # "p13":F
    .local v45, "p13":F
    move/from16 v46, v14

    .end local v14  # "s12":F
    .local v46, "s12":F
    add-float v14, v63, v64

    .line 271
    .end local v47  # "p14":F
    .local v14, "p14":F
    sub-float v47, v63, v64

    sget v66, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_4:F

    mul-float v47, v47, v66

    .line 275
    .end local v48  # "p15":F
    .local v47, "p15":F
    move/from16 v48, v39

    move/from16 v66, v13

    .end local v13  # "s11":F
    .local v48, "new_v12":F
    .local v66, "s11":F
    add-float v13, v39, v37

    move/from16 v67, v13

    .local v67, "new_v4":F
    neg-float v13, v13

    sub-float/2addr v13, v15

    .line 276
    .local v13, "new_v19":F
    move/from16 v68, v13

    .end local v13  # "new_v19":F
    .local v68, "new_v19":F
    neg-float v13, v15

    sub-float v13, v13, v39

    sub-float v13, v13, v36

    .line 277
    .local v13, "new_v27":F
    move/from16 v69, v47

    .local v69, "new_v14":F
    add-float v70, v47, v43

    move/from16 v71, v70

    move/from16 v72, v15

    .end local v15  # "p6":F
    .local v71, "new_v10":F
    .local v72, "p6":F
    add-float v15, v70, v45

    .line 278
    .local v15, "new_v6":F
    add-float v70, v47, v45

    move/from16 v73, v13

    .end local v13  # "new_v27":F
    .local v73, "new_v27":F
    add-float v13, v70, v41

    move/from16 v70, v13

    .local v70, "new_v2":F
    neg-float v13, v13

    sub-float/2addr v13, v14

    .line 279
    .local v13, "new_v17":F
    move/from16 v74, v13

    .end local v13  # "new_v17":F
    .local v74, "new_v17":F
    neg-float v13, v14

    sub-float v13, v13, v47

    sub-float v13, v13, v42

    sub-float v13, v13, v43

    move/from16 v75, v13

    .local v75, "tmp1":F
    sub-float v13, v13, v45

    .line 280
    .local v13, "new_v21":F
    move/from16 v76, v13

    .end local v13  # "new_v21":F
    .local v76, "new_v21":F
    neg-float v13, v14

    sub-float v13, v13, v47

    sub-float v13, v13, v44

    sub-float v13, v13, v40

    .line 281
    .local v13, "new_v29":F
    sub-float v77, v75, v44

    .line 282
    .local v77, "new_v25":F
    move/from16 v78, v14

    .end local v14  # "p14":F
    .local v78, "p14":F
    neg-float v14, v1

    .line 283
    .local v14, "new_v31":F
    move/from16 v79, v34

    .line 284
    .local v79, "new_v0":F
    move/from16 v80, v0

    move/from16 v81, v1

    .end local v1  # "p0":F
    .local v80, "new_v8":F
    .local v81, "p0":F
    neg-float v1, v0

    sub-float v1, v1, v35

    .line 286
    .local v1, "new_v23":F
    sub-float v82, v2, v33

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_64:F

    mul-float v82, v82, v83

    .line 287
    .end local v81  # "p0":F
    .local v82, "p0":F
    sub-float v81, v3, v32

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos3_64:F

    mul-float v81, v81, v83

    .line 288
    .end local v34  # "p1":F
    .local v81, "p1":F
    sub-float v34, v4, v31

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos5_64:F

    mul-float v34, v34, v83

    .line 289
    .end local v35  # "p2":F
    .local v34, "p2":F
    sub-float v35, v5, v30

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos7_64:F

    mul-float v35, v35, v83

    .line 290
    .end local v0  # "p3":F
    .local v35, "p3":F
    sub-float v0, v6, v29

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos9_64:F

    mul-float v0, v0, v83

    .line 291
    .end local v36  # "p4":F
    .local v0, "p4":F
    sub-float v36, v7, v28

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos11_64:F

    mul-float v36, v36, v83

    .line 292
    .end local v37  # "p5":F
    .local v36, "p5":F
    sub-float v37, v8, v27

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos13_64:F

    mul-float v37, v37, v83

    .line 293
    .end local v72  # "p6":F
    .local v37, "p6":F
    sub-float v72, v9, v26

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos15_64:F

    mul-float v72, v72, v83

    .line 294
    .end local v39  # "p7":F
    .local v72, "p7":F
    sub-float v39, v10, v25

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos17_64:F

    mul-float v39, v39, v83

    .line 295
    .end local v40  # "p8":F
    .local v39, "p8":F
    sub-float v40, v11, v24

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos19_64:F

    mul-float v40, v40, v83

    .line 296
    .end local v41  # "p9":F
    .local v40, "p9":F
    sub-float v41, v12, v23

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos21_64:F

    mul-float v41, v41, v83

    .line 297
    .end local v42  # "p10":F
    .local v41, "p10":F
    sub-float v42, v66, v22

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos23_64:F

    mul-float v42, v42, v83

    .line 298
    .end local v43  # "p11":F
    .local v42, "p11":F
    sub-float v43, v46, v21

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos25_64:F

    mul-float v43, v43, v83

    .line 299
    .end local v44  # "p12":F
    .local v43, "p12":F
    sub-float v44, v38, v20

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos27_64:F

    mul-float v44, v44, v83

    .line 300
    .end local v45  # "p13":F
    .local v44, "p13":F
    sub-float v45, v16, v19

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos29_64:F

    mul-float v45, v45, v83

    .line 301
    .end local v78  # "p14":F
    .local v45, "p14":F
    sub-float v78, v17, v18

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos31_64:F

    mul-float v78, v78, v83

    .line 303
    .end local v47  # "p15":F
    .local v78, "p15":F
    add-float v47, v82, v78

    .line 304
    .end local v49  # "pp0":F
    .local v47, "pp0":F
    add-float v49, v81, v45

    .line 305
    .end local v50  # "pp1":F
    .local v49, "pp1":F
    add-float v50, v34, v44

    .line 306
    .end local v51  # "pp2":F
    .local v50, "pp2":F
    add-float v51, v35, v43

    .line 307
    .end local v52  # "pp3":F
    .local v51, "pp3":F
    add-float v52, v0, v42

    .line 308
    .end local v53  # "pp4":F
    .local v52, "pp4":F
    add-float v53, v36, v41

    .line 309
    .end local v54  # "pp5":F
    .local v53, "pp5":F
    add-float v54, v37, v40

    .line 310
    .end local v55  # "pp6":F
    .local v54, "pp6":F
    add-float v55, v72, v39

    .line 311
    .end local v56  # "pp7":F
    .local v55, "pp7":F
    sub-float v56, v82, v78

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_32:F

    mul-float v56, v56, v83

    .line 312
    .end local v57  # "pp8":F
    .local v56, "pp8":F
    sub-float v57, v81, v45

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos3_32:F

    mul-float v57, v57, v83

    .line 313
    .end local v58  # "pp9":F
    .local v57, "pp9":F
    sub-float v58, v34, v44

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos5_32:F

    mul-float v58, v58, v83

    .line 314
    .end local v59  # "pp10":F
    .local v58, "pp10":F
    sub-float v59, v35, v43

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos7_32:F

    mul-float v59, v59, v83

    .line 315
    .end local v60  # "pp11":F
    .local v59, "pp11":F
    sub-float v60, v0, v42

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos9_32:F

    mul-float v60, v60, v83

    .line 316
    .end local v61  # "pp12":F
    .local v60, "pp12":F
    sub-float v61, v36, v41

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos11_32:F

    mul-float v61, v61, v83

    .line 317
    .end local v62  # "pp13":F
    .local v61, "pp13":F
    sub-float v62, v37, v40

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos13_32:F

    mul-float v62, v62, v83

    .line 318
    .end local v63  # "pp14":F
    .local v62, "pp14":F
    sub-float v63, v72, v39

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos15_32:F

    mul-float v63, v63, v83

    .line 320
    .end local v64  # "pp15":F
    .local v63, "pp15":F
    add-float v64, v47, v55

    .line 321
    .end local v82  # "p0":F
    .local v64, "p0":F
    add-float v81, v49, v54

    .line 322
    add-float v34, v50, v53

    .line 323
    add-float v35, v51, v52

    .line 324
    sub-float v82, v47, v55

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_16:F

    mul-float v82, v82, v83

    .line 325
    .end local v0  # "p4":F
    .local v82, "p4":F
    sub-float v0, v49, v54

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos3_16:F

    mul-float v0, v0, v83

    .line 326
    .end local v36  # "p5":F
    .local v0, "p5":F
    sub-float v36, v50, v53

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos5_16:F

    mul-float v36, v36, v83

    .line 327
    .end local v37  # "p6":F
    .local v36, "p6":F
    sub-float v37, v51, v52

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos7_16:F

    mul-float v37, v37, v83

    .line 328
    .end local v72  # "p7":F
    .local v37, "p7":F
    add-float v39, v56, v63

    .line 329
    add-float v40, v57, v62

    .line 330
    add-float v41, v58, v61

    .line 331
    add-float v42, v59, v60

    .line 332
    sub-float v72, v56, v63

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_16:F

    mul-float v72, v72, v83

    .line 333
    .end local v43  # "p12":F
    .local v72, "p12":F
    sub-float v43, v57, v62

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos3_16:F

    mul-float v43, v43, v83

    .line 334
    .end local v44  # "p13":F
    .local v43, "p13":F
    sub-float v44, v58, v61

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos5_16:F

    mul-float v44, v44, v83

    .line 335
    .end local v45  # "p14":F
    .local v44, "p14":F
    sub-float v45, v59, v60

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos7_16:F

    mul-float v45, v45, v83

    .line 337
    .end local v78  # "p15":F
    .local v45, "p15":F
    add-float v47, v64, v35

    .line 338
    add-float v49, v81, v34

    .line 339
    sub-float v78, v64, v35

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_8:F

    mul-float v78, v78, v83

    .line 340
    .end local v50  # "pp2":F
    .local v78, "pp2":F
    sub-float v50, v81, v34

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos3_8:F

    mul-float v50, v50, v83

    .line 341
    .end local v51  # "pp3":F
    .local v50, "pp3":F
    add-float v51, v82, v37

    .line 342
    .end local v52  # "pp4":F
    .local v51, "pp4":F
    add-float v52, v0, v36

    .line 343
    .end local v53  # "pp5":F
    .local v52, "pp5":F
    sub-float v53, v82, v37

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_8:F

    mul-float v53, v53, v83

    .line 344
    .end local v54  # "pp6":F
    .local v53, "pp6":F
    sub-float v54, v0, v36

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos3_8:F

    mul-float v54, v54, v83

    .line 345
    .end local v55  # "pp7":F
    .local v54, "pp7":F
    add-float v55, v39, v42

    .line 346
    .end local v56  # "pp8":F
    .local v55, "pp8":F
    add-float v56, v40, v41

    .line 347
    .end local v57  # "pp9":F
    .local v56, "pp9":F
    sub-float v57, v39, v42

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_8:F

    mul-float v57, v57, v83

    .line 348
    .end local v58  # "pp10":F
    .local v57, "pp10":F
    sub-float v58, v40, v41

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos3_8:F

    mul-float v58, v58, v83

    .line 349
    .end local v59  # "pp11":F
    .local v58, "pp11":F
    add-float v59, v72, v45

    .line 350
    .end local v60  # "pp12":F
    .local v59, "pp12":F
    add-float v60, v43, v44

    .line 351
    .end local v61  # "pp13":F
    .local v60, "pp13":F
    sub-float v61, v72, v45

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_8:F

    mul-float v61, v61, v83

    .line 352
    .end local v62  # "pp14":F
    .local v61, "pp14":F
    sub-float v62, v43, v44

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos3_8:F

    mul-float v62, v62, v83

    .line 354
    .end local v63  # "pp15":F
    .local v62, "pp15":F
    add-float v63, v47, v49

    .line 355
    .end local v64  # "p0":F
    .local v63, "p0":F
    sub-float v64, v47, v49

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_4:F

    mul-float v64, v64, v83

    .line 356
    .end local v81  # "p1":F
    .local v64, "p1":F
    add-float v34, v78, v50

    .line 357
    sub-float v81, v78, v50

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_4:F

    mul-float v81, v81, v83

    .line 358
    .end local v35  # "p3":F
    .local v81, "p3":F
    add-float v35, v51, v52

    .line 359
    .end local v82  # "p4":F
    .local v35, "p4":F
    sub-float v82, v51, v52

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_4:F

    mul-float v82, v82, v83

    .line 360
    .end local v0  # "p5":F
    .local v82, "p5":F
    add-float v0, v53, v54

    .line 361
    .end local v36  # "p6":F
    .local v0, "p6":F
    sub-float v36, v53, v54

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_4:F

    mul-float v36, v36, v83

    .line 362
    .end local v37  # "p7":F
    .local v36, "p7":F
    move/from16 v37, v2

    .end local v2  # "s0":F
    .local v37, "s0":F
    add-float v2, v55, v56

    .line 363
    .end local v39  # "p8":F
    .local v2, "p8":F
    sub-float v39, v55, v56

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_4:F

    mul-float v39, v39, v83

    .line 364
    .end local v40  # "p9":F
    .local v39, "p9":F
    move/from16 v40, v3

    .end local v3  # "s1":F
    .local v40, "s1":F
    add-float v3, v57, v58

    .line 365
    .end local v41  # "p10":F
    .local v3, "p10":F
    sub-float v41, v57, v58

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_4:F

    mul-float v41, v41, v83

    .line 366
    .end local v42  # "p11":F
    .local v41, "p11":F
    add-float v42, v59, v60

    .line 367
    .end local v72  # "p12":F
    .local v42, "p12":F
    sub-float v72, v59, v60

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_4:F

    mul-float v72, v72, v83

    .line 368
    .end local v43  # "p13":F
    .local v72, "p13":F
    add-float v43, v61, v62

    .line 369
    .end local v44  # "p14":F
    .local v43, "p14":F
    sub-float v44, v61, v62

    sget v83, Ljavazoom/jl/decoder/SynthesisFilter;->cos1_4:F

    mul-float v44, v44, v83

    .line 374
    .end local v45  # "p15":F
    .local v44, "p15":F
    move/from16 v45, v44

    .local v45, "new_v15":F
    add-float v83, v44, v36

    move/from16 v84, v83

    .local v84, "new_v13":F
    add-float v83, v83, v41

    move/from16 v85, v83

    .local v85, "new_v11":F
    add-float v83, v83, v82

    move/from16 v86, v4

    .end local v4  # "s2":F
    .local v86, "s2":F
    add-float v4, v83, v72

    .line 375
    .local v4, "new_v5":F
    add-float v83, v44, v41

    add-float v83, v83, v81

    move/from16 v87, v83

    move/from16 v88, v5

    .end local v5  # "s3":F
    .local v87, "new_v9":F
    .local v88, "s3":F
    add-float v5, v83, v72

    .line 376
    .local v5, "new_v7":F
    add-float v83, v72, v44

    add-float v83, v83, v39

    move/from16 v75, v83

    move/from16 v89, v6

    .end local v6  # "s4":F
    .local v89, "s4":F
    add-float v6, v83, v64

    move/from16 v83, v6

    .local v83, "new_v1":F
    neg-float v6, v6

    sub-float v6, v6, v43

    .line 377
    .local v6, "new_v16":F
    add-float v90, v75, v82

    move/from16 v91, v7

    .end local v7  # "s5":F
    .local v91, "s5":F
    add-float v7, v90, v36

    move/from16 v90, v7

    .local v90, "new_v3":F
    neg-float v7, v7

    sub-float/2addr v7, v0

    sub-float v7, v7, v43

    .line 379
    .local v7, "new_v18":F
    move/from16 v92, v8

    .end local v8  # "s6":F
    .local v92, "s6":F
    neg-float v8, v3

    sub-float v8, v8, v41

    sub-float v8, v8, v43

    sub-float v8, v8, v44

    move/from16 v75, v8

    sub-float v8, v8, v72

    sub-float v8, v8, v34

    sub-float v8, v8, v81

    .line 380
    .local v8, "new_v22":F
    sub-float v93, v75, v72

    sub-float v93, v93, v82

    sub-float v93, v93, v0

    sub-float v93, v93, v36

    .line 381
    .local v93, "new_v20":F
    sub-float v94, v75, v42

    sub-float v94, v94, v34

    sub-float v94, v94, v81

    .line 382
    .local v94, "new_v24":F
    sub-float v95, v75, v42

    add-float v96, v35, v0

    add-float v96, v96, v36

    move/from16 v97, v96

    .local v97, "tmp2":F
    sub-float v95, v95, v96

    .line 383
    .local v95, "new_v26":F
    move/from16 v96, v0

    .end local v0  # "p6":F
    .local v96, "p6":F
    neg-float v0, v2

    sub-float v0, v0, v42

    sub-float v0, v0, v43

    sub-float v0, v0, v44

    move/from16 v75, v0

    sub-float v0, v0, v63

    .line 384
    .local v0, "new_v30":F
    sub-float v98, v75, v97

    .line 388
    .local v98, "new_v28":F
    move/from16 v99, v2

    move/from16 v100, v3

    move-object/from16 v2, p0

    .end local v2  # "p8":F
    .end local v3  # "p10":F
    .local v99, "p8":F
    .local v100, "p10":F
    iget-object v3, v2, Ljavazoom/jl/decoder/SynthesisFilter;->actual_v:[F

    .line 390
    .local v3, "dest":[F
    move/from16 v101, v9

    .end local v9  # "s7":F
    .local v101, "s7":F
    iget v9, v2, Ljavazoom/jl/decoder/SynthesisFilter;->actual_write_pos:I

    .line 392
    .local v9, "pos":I
    add-int/lit8 v102, v9, 0x0

    move/from16 v103, v10

    move/from16 v10, v79

    .end local v79  # "new_v0":F
    .local v10, "new_v0":F
    .local v103, "s8":F
    aput v10, v3, v102

    .line 393
    add-int/lit8 v79, v9, 0x10

    move/from16 v102, v11

    move/from16 v11, v83

    .end local v83  # "new_v1":F
    .local v11, "new_v1":F
    .local v102, "s9":F
    aput v11, v3, v79

    .line 394
    add-int/lit8 v79, v9, 0x20

    move/from16 v83, v12

    move/from16 v12, v70

    .end local v70  # "new_v2":F
    .local v12, "new_v2":F
    .local v83, "s10":F
    aput v12, v3, v79

    .line 395
    add-int/lit8 v70, v9, 0x30

    move/from16 v79, v14

    move/from16 v14, v90

    .end local v90  # "new_v3":F
    .local v14, "new_v3":F
    .local v79, "new_v31":F
    aput v14, v3, v70

    .line 396
    add-int/lit8 v70, v9, 0x40

    move/from16 v90, v0

    move/from16 v0, v67

    .end local v67  # "new_v4":F
    .local v0, "new_v4":F
    .local v90, "new_v30":F
    aput v0, v3, v70

    .line 397
    add-int/lit8 v67, v9, 0x50

    aput v4, v3, v67

    .line 398
    add-int/lit8 v67, v9, 0x60

    aput v15, v3, v67

    .line 399
    add-int/lit8 v67, v9, 0x70

    aput v5, v3, v67

    .line 400
    move/from16 v67, v13

    .end local v13  # "new_v29":F
    .local v67, "new_v29":F
    add-int/lit16 v13, v9, 0x80

    move/from16 v70, v1

    move/from16 v1, v80

    .end local v80  # "new_v8":F
    .local v1, "new_v8":F
    .local v70, "new_v23":F
    aput v1, v3, v13

    .line 401
    add-int/lit16 v13, v9, 0x90

    move/from16 v80, v8

    move/from16 v8, v87

    .end local v87  # "new_v9":F
    .local v8, "new_v9":F
    .local v80, "new_v22":F
    aput v8, v3, v13

    .line 402
    add-int/lit16 v13, v9, 0xa0

    move/from16 v87, v7

    move/from16 v7, v71

    .end local v71  # "new_v10":F
    .local v7, "new_v10":F
    .local v87, "new_v18":F
    aput v7, v3, v13

    .line 403
    add-int/lit16 v13, v9, 0xb0

    move/from16 v71, v6

    move/from16 v6, v85

    .end local v85  # "new_v11":F
    .local v6, "new_v11":F
    .local v71, "new_v16":F
    aput v6, v3, v13

    .line 404
    add-int/lit16 v13, v9, 0xc0

    move/from16 v85, v10

    move/from16 v10, v48

    .end local v48  # "new_v12":F
    .local v10, "new_v12":F
    .local v85, "new_v0":F
    aput v10, v3, v13

    .line 405
    add-int/lit16 v13, v9, 0xd0

    move/from16 v2, v84

    .end local v84  # "new_v13":F
    .local v2, "new_v13":F
    aput v2, v3, v13

    .line 406
    add-int/lit16 v13, v9, 0xe0

    move/from16 v48, v11

    move/from16 v11, v69

    .end local v69  # "new_v14":F
    .local v11, "new_v14":F
    .local v48, "new_v1":F
    aput v11, v3, v13

    .line 407
    add-int/lit16 v13, v9, 0xf0

    move/from16 v69, v12

    move/from16 v12, v45

    .end local v45  # "new_v15":F
    .local v12, "new_v15":F
    .local v69, "new_v2":F
    aput v12, v3, v13

    .line 410
    add-int/lit16 v13, v9, 0x100

    const/16 v45, 0x0

    aput v45, v3, v13

    .line 413
    add-int/lit16 v13, v9, 0x110

    move/from16 v45, v14

    .end local v14  # "new_v3":F
    .local v45, "new_v3":F
    neg-float v14, v12

    aput v14, v3, v13

    .line 414
    add-int/lit16 v13, v9, 0x120

    neg-float v14, v11

    aput v14, v3, v13

    .line 415
    add-int/lit16 v13, v9, 0x130

    neg-float v14, v2

    aput v14, v3, v13

    .line 416
    add-int/lit16 v13, v9, 0x140

    neg-float v14, v10

    aput v14, v3, v13

    .line 417
    add-int/lit16 v13, v9, 0x150

    neg-float v14, v6

    aput v14, v3, v13

    .line 418
    add-int/lit16 v13, v9, 0x160

    neg-float v14, v7

    aput v14, v3, v13

    .line 419
    add-int/lit16 v13, v9, 0x170

    neg-float v14, v8

    aput v14, v3, v13

    .line 420
    add-int/lit16 v13, v9, 0x180

    neg-float v14, v1

    aput v14, v3, v13

    .line 421
    add-int/lit16 v13, v9, 0x190

    neg-float v14, v5

    aput v14, v3, v13

    .line 422
    add-int/lit16 v13, v9, 0x1a0

    neg-float v14, v15

    aput v14, v3, v13

    .line 423
    add-int/lit16 v13, v9, 0x1b0

    neg-float v14, v4

    aput v14, v3, v13

    .line 424
    add-int/lit16 v13, v9, 0x1c0

    neg-float v14, v0

    aput v14, v3, v13

    .line 425
    add-int/lit16 v13, v9, 0x1d0

    move/from16 v14, v45

    move/from16 v45, v0

    .end local v0  # "new_v4":F
    .restart local v14  # "new_v3":F
    .local v45, "new_v4":F
    neg-float v0, v14

    aput v0, v3, v13

    .line 426
    add-int/lit16 v0, v9, 0x1e0

    move/from16 v13, v69

    move/from16 v69, v1

    .end local v1  # "new_v8":F
    .local v13, "new_v2":F
    .local v69, "new_v8":F
    neg-float v1, v13

    aput v1, v3, v0

    .line 427
    add-int/lit16 v0, v9, 0x1f0

    move/from16 v1, v48

    move/from16 v48, v2

    .end local v2  # "new_v13":F
    .local v1, "new_v1":F
    .local v48, "new_v13":F
    neg-float v2, v1

    aput v2, v3, v0

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavazoom/jl/decoder/SynthesisFilter;->actual_v:[F

    move/from16 v84, v1

    .end local v1  # "new_v1":F
    .local v84, "new_v1":F
    iget-object v1, v0, Ljavazoom/jl/decoder/SynthesisFilter;->v1:[F

    if-ne v2, v1, :cond_4a8

    iget-object v1, v0, Ljavazoom/jl/decoder/SynthesisFilter;->v2:[F

    goto :goto_4aa

    :cond_4a8
    iget-object v1, v0, Ljavazoom/jl/decoder/SynthesisFilter;->v1:[F

    .line 432
    .end local v3  # "dest":[F
    .local v1, "dest":[F
    :goto_4aa
    add-int/lit8 v2, v9, 0x0

    move/from16 v3, v85

    .end local v85  # "new_v0":F
    .local v3, "new_v0":F
    neg-float v0, v3

    aput v0, v1, v2

    .line 434
    add-int/lit8 v0, v9, 0x10

    aput v71, v1, v0

    .line 435
    add-int/lit8 v0, v9, 0x20

    aput v74, v1, v0

    .line 436
    add-int/lit8 v0, v9, 0x30

    aput v87, v1, v0

    .line 437
    add-int/lit8 v0, v9, 0x40

    aput v68, v1, v0

    .line 438
    add-int/lit8 v0, v9, 0x50

    aput v93, v1, v0

    .line 439
    add-int/lit8 v0, v9, 0x60

    aput v76, v1, v0

    .line 440
    add-int/lit8 v0, v9, 0x70

    aput v80, v1, v0

    .line 441
    add-int/lit16 v0, v9, 0x80

    aput v70, v1, v0

    .line 442
    add-int/lit16 v0, v9, 0x90

    aput v94, v1, v0

    .line 443
    add-int/lit16 v0, v9, 0xa0

    aput v77, v1, v0

    .line 444
    add-int/lit16 v0, v9, 0xb0

    aput v95, v1, v0

    .line 445
    add-int/lit16 v0, v9, 0xc0

    aput v73, v1, v0

    .line 446
    add-int/lit16 v0, v9, 0xd0

    aput v98, v1, v0

    .line 447
    add-int/lit16 v0, v9, 0xe0

    aput v67, v1, v0

    .line 448
    add-int/lit16 v0, v9, 0xf0

    aput v90, v1, v0

    .line 449
    add-int/lit16 v0, v9, 0x100

    aput v79, v1, v0

    .line 452
    add-int/lit16 v0, v9, 0x110

    aput v90, v1, v0

    .line 453
    add-int/lit16 v0, v9, 0x120

    aput v67, v1, v0

    .line 454
    add-int/lit16 v0, v9, 0x130

    aput v98, v1, v0

    .line 455
    add-int/lit16 v0, v9, 0x140

    aput v73, v1, v0

    .line 456
    add-int/lit16 v0, v9, 0x150

    aput v95, v1, v0

    .line 457
    add-int/lit16 v0, v9, 0x160

    aput v77, v1, v0

    .line 458
    add-int/lit16 v0, v9, 0x170

    aput v94, v1, v0

    .line 459
    add-int/lit16 v0, v9, 0x180

    aput v70, v1, v0

    .line 460
    add-int/lit16 v0, v9, 0x190

    aput v80, v1, v0

    .line 461
    add-int/lit16 v0, v9, 0x1a0

    aput v76, v1, v0

    .line 462
    add-int/lit16 v0, v9, 0x1b0

    aput v93, v1, v0

    .line 463
    add-int/lit16 v0, v9, 0x1c0

    aput v68, v1, v0

    .line 464
    add-int/lit16 v0, v9, 0x1d0

    aput v87, v1, v0

    .line 465
    add-int/lit16 v0, v9, 0x1e0

    aput v74, v1, v0

    .line 466
    add-int/lit16 v0, v9, 0x1f0

    aput v71, v1, v0

    .line 482
    return-void
.end method

.method private compute_pcm_samples(Ljavazoom/jl/decoder/OutputBuffer;)V
    .registers 4
    .param p1, "buffer"  # Ljavazoom/jl/decoder/OutputBuffer;

    .line 851
    iget v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->actual_write_pos:I

    packed-switch v0, :pswitch_data_50

    goto :goto_46

    .line 898
    :pswitch_6  #0xf
    invoke-direct {p0, p1}, Ljavazoom/jl/decoder/SynthesisFilter;->compute_pcm_samples15(Ljavazoom/jl/decoder/OutputBuffer;)V

    goto :goto_46

    .line 895
    :pswitch_a  #0xe
    invoke-direct {p0, p1}, Ljavazoom/jl/decoder/SynthesisFilter;->compute_pcm_samples14(Ljavazoom/jl/decoder/OutputBuffer;)V

    .line 896
    goto :goto_46

    .line 892
    :pswitch_e  #0xd
    invoke-direct {p0, p1}, Ljavazoom/jl/decoder/SynthesisFilter;->compute_pcm_samples13(Ljavazoom/jl/decoder/OutputBuffer;)V

    .line 893
    goto :goto_46

    .line 889
    :pswitch_12  #0xc
    invoke-direct {p0, p1}, Ljavazoom/jl/decoder/SynthesisFilter;->compute_pcm_samples12(Ljavazoom/jl/decoder/OutputBuffer;)V

    .line 890
    goto :goto_46

    .line 886
    :pswitch_16  #0xb
    invoke-direct {p0, p1}, Ljavazoom/jl/decoder/SynthesisFilter;->compute_pcm_samples11(Ljavazoom/jl/decoder/OutputBuffer;)V

    .line 887
    goto :goto_46

    .line 883
    :pswitch_1a  #0xa
    invoke-direct {p0, p1}, Ljavazoom/jl/decoder/SynthesisFilter;->compute_pcm_samples10(Ljavazoom/jl/decoder/OutputBuffer;)V

    .line 884
    goto :goto_46

    .line 880
    :pswitch_1e  #0x9
    invoke-direct {p0, p1}, Ljavazoom/jl/decoder/SynthesisFilter;->compute_pcm_samples9(Ljavazoom/jl/decoder/OutputBuffer;)V

    .line 881
    goto :goto_46

    .line 877
    :pswitch_22  #0x8
    invoke-direct {p0, p1}, Ljavazoom/jl/decoder/SynthesisFilter;->compute_pcm_samples8(Ljavazoom/jl/decoder/OutputBuffer;)V

    .line 878
    goto :goto_46

    .line 874
    :pswitch_26  #0x7
    invoke-direct {p0, p1}, Ljavazoom/jl/decoder/SynthesisFilter;->compute_pcm_samples7(Ljavazoom/jl/decoder/OutputBuffer;)V

    .line 875
    goto :goto_46

    .line 871
    :pswitch_2a  #0x6
    invoke-direct {p0, p1}, Ljavazoom/jl/decoder/SynthesisFilter;->compute_pcm_samples6(Ljavazoom/jl/decoder/OutputBuffer;)V

    .line 872
    goto :goto_46

    .line 868
    :pswitch_2e  #0x5
    invoke-direct {p0, p1}, Ljavazoom/jl/decoder/SynthesisFilter;->compute_pcm_samples5(Ljavazoom/jl/decoder/OutputBuffer;)V

    .line 869
    goto :goto_46

    .line 865
    :pswitch_32  #0x4
    invoke-direct {p0, p1}, Ljavazoom/jl/decoder/SynthesisFilter;->compute_pcm_samples4(Ljavazoom/jl/decoder/OutputBuffer;)V

    .line 866
    goto :goto_46

    .line 862
    :pswitch_36  #0x3
    invoke-direct {p0, p1}, Ljavazoom/jl/decoder/SynthesisFilter;->compute_pcm_samples3(Ljavazoom/jl/decoder/OutputBuffer;)V

    .line 863
    goto :goto_46

    .line 859
    :pswitch_3a  #0x2
    invoke-direct {p0, p1}, Ljavazoom/jl/decoder/SynthesisFilter;->compute_pcm_samples2(Ljavazoom/jl/decoder/OutputBuffer;)V

    .line 860
    goto :goto_46

    .line 856
    :pswitch_3e  #0x1
    invoke-direct {p0, p1}, Ljavazoom/jl/decoder/SynthesisFilter;->compute_pcm_samples1(Ljavazoom/jl/decoder/OutputBuffer;)V

    .line 857
    goto :goto_46

    .line 853
    :pswitch_42  #0x0
    invoke-direct {p0, p1}, Ljavazoom/jl/decoder/SynthesisFilter;->compute_pcm_samples0(Ljavazoom/jl/decoder/OutputBuffer;)V

    .line 854
    nop

    .line 902
    :goto_46
    if-eqz p1, :cond_4f

    iget v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->channel:I

    iget-object v1, p0, Ljavazoom/jl/decoder/SynthesisFilter;->_tmpOut:[F

    invoke-virtual {p1, v0, v1}, Ljavazoom/jl/decoder/OutputBuffer;->appendSamples(I[F)V

    .line 913
    :cond_4f
    return-void

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_42  #00000000
        :pswitch_3e  #00000001
        :pswitch_3a  #00000002
        :pswitch_36  #00000003
        :pswitch_32  #00000004
        :pswitch_2e  #00000005
        :pswitch_2a  #00000006
        :pswitch_26  #00000007
        :pswitch_22  #00000008
        :pswitch_1e  #00000009
        :pswitch_1a  #0000000a
        :pswitch_16  #0000000b
        :pswitch_12  #0000000c
        :pswitch_e  #0000000d
        :pswitch_a  #0000000e
        :pswitch_6  #0000000f
    .end packed-switch
.end method

.method private compute_pcm_samples0(Ljavazoom/jl/decoder/OutputBuffer;)V
    .registers 10
    .param p1, "buffer"  # Ljavazoom/jl/decoder/OutputBuffer;

    .line 490
    iget-object v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->actual_v:[F

    .line 492
    .local v0, "vp":[F
    iget-object v1, p0, Ljavazoom/jl/decoder/SynthesisFilter;->_tmpOut:[F

    .line 493
    .local v1, "tmpOut":[F
    const/4 v2, 0x0

    .line 496
    .local v2, "dvp":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    const/16 v4, 0x20

    if-ge v3, v4, :cond_b1

    .line 498
    sget-object v4, Ljavazoom/jl/decoder/SynthesisFilter;->d16:[[F

    aget-object v4, v4, v3

    .line 499
    .local v4, "dp":[F
    add-int/lit8 v5, v2, 0x0

    aget v5, v0, v5

    const/4 v6, 0x0

    aget v6, v4, v6

    mul-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xf

    aget v6, v0, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xe

    aget v6, v0, v6

    const/4 v7, 0x2

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xd

    aget v6, v0, v6

    const/4 v7, 0x3

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xc

    aget v6, v0, v6

    const/4 v7, 0x4

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xb

    aget v6, v0, v6

    const/4 v7, 0x5

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xa

    aget v6, v0, v6

    const/4 v7, 0x6

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x9

    aget v6, v0, v6

    const/4 v7, 0x7

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x8

    aget v6, v0, v6

    const/16 v7, 0x8

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x7

    aget v6, v0, v6

    const/16 v7, 0x9

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x6

    aget v6, v0, v6

    const/16 v7, 0xa

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x5

    aget v6, v0, v6

    const/16 v7, 0xb

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x4

    aget v6, v0, v6

    const/16 v7, 0xc

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x3

    aget v6, v0, v6

    const/16 v7, 0xd

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x2

    aget v6, v0, v6

    const/16 v7, 0xe

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    const/16 v7, 0xf

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Ljavazoom/jl/decoder/SynthesisFilter;->scalefactor:F

    mul-float/2addr v5, v6

    .line 504
    .local v5, "pcm_sample":F
    aput v5, v1, v3

    .line 506
    nop

    .end local v4  # "dp":[F
    .end local v5  # "pcm_sample":F
    add-int/lit8 v2, v2, 0x10

    .line 496
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 508
    .end local v3  # "i":I
    :cond_b1
    return-void
.end method

.method private compute_pcm_samples1(Ljavazoom/jl/decoder/OutputBuffer;)V
    .registers 10
    .param p1, "buffer"  # Ljavazoom/jl/decoder/OutputBuffer;

    .line 511
    iget-object v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->actual_v:[F

    .line 513
    .local v0, "vp":[F
    iget-object v1, p0, Ljavazoom/jl/decoder/SynthesisFilter;->_tmpOut:[F

    .line 514
    .local v1, "tmpOut":[F
    const/4 v2, 0x0

    .line 517
    .local v2, "dvp":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    const/16 v4, 0x20

    if-ge v3, v4, :cond_b1

    .line 518
    sget-object v4, Ljavazoom/jl/decoder/SynthesisFilter;->d16:[[F

    aget-object v4, v4, v3

    .line 521
    .local v4, "dp":[F
    add-int/lit8 v5, v2, 0x1

    aget v5, v0, v5

    const/4 v6, 0x0

    aget v6, v4, v6

    mul-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x0

    aget v6, v0, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xf

    aget v6, v0, v6

    const/4 v7, 0x2

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xe

    aget v6, v0, v6

    const/4 v7, 0x3

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xd

    aget v6, v0, v6

    const/4 v7, 0x4

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xc

    aget v6, v0, v6

    const/4 v7, 0x5

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xb

    aget v6, v0, v6

    const/4 v7, 0x6

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xa

    aget v6, v0, v6

    const/4 v7, 0x7

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x9

    aget v6, v0, v6

    const/16 v7, 0x8

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x8

    aget v6, v0, v6

    const/16 v7, 0x9

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x7

    aget v6, v0, v6

    const/16 v7, 0xa

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x6

    aget v6, v0, v6

    const/16 v7, 0xb

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x5

    aget v6, v0, v6

    const/16 v7, 0xc

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x4

    aget v6, v0, v6

    const/16 v7, 0xd

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x3

    aget v6, v0, v6

    const/16 v7, 0xe

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x2

    aget v6, v0, v6

    const/16 v7, 0xf

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Ljavazoom/jl/decoder/SynthesisFilter;->scalefactor:F

    mul-float/2addr v5, v6

    .line 526
    .local v5, "pcm_sample":F
    aput v5, v1, v3

    .line 528
    nop

    .end local v4  # "dp":[F
    .end local v5  # "pcm_sample":F
    add-int/lit8 v2, v2, 0x10

    .line 517
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 530
    .end local v3  # "i":I
    :cond_b1
    return-void
.end method

.method private compute_pcm_samples10(Ljavazoom/jl/decoder/OutputBuffer;)V
    .registers 10
    .param p1, "buffer"  # Ljavazoom/jl/decoder/OutputBuffer;

    .line 716
    iget-object v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->actual_v:[F

    .line 718
    .local v0, "vp":[F
    iget-object v1, p0, Ljavazoom/jl/decoder/SynthesisFilter;->_tmpOut:[F

    .line 719
    .local v1, "tmpOut":[F
    const/4 v2, 0x0

    .line 722
    .local v2, "dvp":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    const/16 v4, 0x20

    if-ge v3, v4, :cond_b1

    .line 723
    sget-object v4, Ljavazoom/jl/decoder/SynthesisFilter;->d16:[[F

    aget-object v4, v4, v3

    .line 726
    .local v4, "dp":[F
    add-int/lit8 v5, v2, 0xa

    aget v5, v0, v5

    const/4 v6, 0x0

    aget v6, v4, v6

    mul-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x9

    aget v6, v0, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x8

    aget v6, v0, v6

    const/4 v7, 0x2

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x7

    aget v6, v0, v6

    const/4 v7, 0x3

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x6

    aget v6, v0, v6

    const/4 v7, 0x4

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x5

    aget v6, v0, v6

    const/4 v7, 0x5

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x4

    aget v6, v0, v6

    const/4 v7, 0x6

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x3

    aget v6, v0, v6

    const/4 v7, 0x7

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x2

    aget v6, v0, v6

    const/16 v7, 0x8

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    const/16 v7, 0x9

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x0

    aget v6, v0, v6

    const/16 v7, 0xa

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xf

    aget v6, v0, v6

    const/16 v7, 0xb

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xe

    aget v6, v0, v6

    const/16 v7, 0xc

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xd

    aget v6, v0, v6

    const/16 v7, 0xd

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xc

    aget v6, v0, v6

    const/16 v7, 0xe

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xb

    aget v6, v0, v6

    const/16 v7, 0xf

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Ljavazoom/jl/decoder/SynthesisFilter;->scalefactor:F

    mul-float/2addr v5, v6

    .line 731
    .local v5, "pcm_sample":F
    aput v5, v1, v3

    .line 733
    nop

    .end local v4  # "dp":[F
    .end local v5  # "pcm_sample":F
    add-int/lit8 v2, v2, 0x10

    .line 722
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 735
    .end local v3  # "i":I
    :cond_b1
    return-void
.end method

.method private compute_pcm_samples11(Ljavazoom/jl/decoder/OutputBuffer;)V
    .registers 10
    .param p1, "buffer"  # Ljavazoom/jl/decoder/OutputBuffer;

    .line 738
    iget-object v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->actual_v:[F

    .line 741
    .local v0, "vp":[F
    iget-object v1, p0, Ljavazoom/jl/decoder/SynthesisFilter;->_tmpOut:[F

    .line 742
    .local v1, "tmpOut":[F
    const/4 v2, 0x0

    .line 745
    .local v2, "dvp":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    const/16 v4, 0x20

    if-ge v3, v4, :cond_b1

    .line 746
    sget-object v4, Ljavazoom/jl/decoder/SynthesisFilter;->d16:[[F

    aget-object v4, v4, v3

    .line 749
    .local v4, "dp":[F
    add-int/lit8 v5, v2, 0xb

    aget v5, v0, v5

    const/4 v6, 0x0

    aget v6, v4, v6

    mul-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xa

    aget v6, v0, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x9

    aget v6, v0, v6

    const/4 v7, 0x2

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x8

    aget v6, v0, v6

    const/4 v7, 0x3

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x7

    aget v6, v0, v6

    const/4 v7, 0x4

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x6

    aget v6, v0, v6

    const/4 v7, 0x5

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x5

    aget v6, v0, v6

    const/4 v7, 0x6

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x4

    aget v6, v0, v6

    const/4 v7, 0x7

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x3

    aget v6, v0, v6

    const/16 v7, 0x8

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x2

    aget v6, v0, v6

    const/16 v7, 0x9

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    const/16 v7, 0xa

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x0

    aget v6, v0, v6

    const/16 v7, 0xb

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xf

    aget v6, v0, v6

    const/16 v7, 0xc

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xe

    aget v6, v0, v6

    const/16 v7, 0xd

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xd

    aget v6, v0, v6

    const/16 v7, 0xe

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xc

    aget v6, v0, v6

    const/16 v7, 0xf

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Ljavazoom/jl/decoder/SynthesisFilter;->scalefactor:F

    mul-float/2addr v5, v6

    .line 754
    .local v5, "pcm_sample":F
    aput v5, v1, v3

    .line 756
    nop

    .end local v4  # "dp":[F
    .end local v5  # "pcm_sample":F
    add-int/lit8 v2, v2, 0x10

    .line 745
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 758
    .end local v3  # "i":I
    :cond_b1
    return-void
.end method

.method private compute_pcm_samples12(Ljavazoom/jl/decoder/OutputBuffer;)V
    .registers 10
    .param p1, "buffer"  # Ljavazoom/jl/decoder/OutputBuffer;

    .line 761
    iget-object v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->actual_v:[F

    .line 763
    .local v0, "vp":[F
    iget-object v1, p0, Ljavazoom/jl/decoder/SynthesisFilter;->_tmpOut:[F

    .line 764
    .local v1, "tmpOut":[F
    const/4 v2, 0x0

    .line 767
    .local v2, "dvp":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    const/16 v4, 0x20

    if-ge v3, v4, :cond_b1

    .line 768
    sget-object v4, Ljavazoom/jl/decoder/SynthesisFilter;->d16:[[F

    aget-object v4, v4, v3

    .line 771
    .local v4, "dp":[F
    add-int/lit8 v5, v2, 0xc

    aget v5, v0, v5

    const/4 v6, 0x0

    aget v6, v4, v6

    mul-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xb

    aget v6, v0, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xa

    aget v6, v0, v6

    const/4 v7, 0x2

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x9

    aget v6, v0, v6

    const/4 v7, 0x3

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x8

    aget v6, v0, v6

    const/4 v7, 0x4

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x7

    aget v6, v0, v6

    const/4 v7, 0x5

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x6

    aget v6, v0, v6

    const/4 v7, 0x6

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x5

    aget v6, v0, v6

    const/4 v7, 0x7

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x4

    aget v6, v0, v6

    const/16 v7, 0x8

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x3

    aget v6, v0, v6

    const/16 v7, 0x9

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x2

    aget v6, v0, v6

    const/16 v7, 0xa

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    const/16 v7, 0xb

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x0

    aget v6, v0, v6

    const/16 v7, 0xc

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xf

    aget v6, v0, v6

    const/16 v7, 0xd

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xe

    aget v6, v0, v6

    const/16 v7, 0xe

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xd

    aget v6, v0, v6

    const/16 v7, 0xf

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Ljavazoom/jl/decoder/SynthesisFilter;->scalefactor:F

    mul-float/2addr v5, v6

    .line 776
    .local v5, "pcm_sample":F
    aput v5, v1, v3

    .line 778
    nop

    .end local v4  # "dp":[F
    .end local v5  # "pcm_sample":F
    add-int/lit8 v2, v2, 0x10

    .line 767
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 780
    .end local v3  # "i":I
    :cond_b1
    return-void
.end method

.method private compute_pcm_samples13(Ljavazoom/jl/decoder/OutputBuffer;)V
    .registers 10
    .param p1, "buffer"  # Ljavazoom/jl/decoder/OutputBuffer;

    .line 783
    iget-object v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->actual_v:[F

    .line 786
    .local v0, "vp":[F
    iget-object v1, p0, Ljavazoom/jl/decoder/SynthesisFilter;->_tmpOut:[F

    .line 787
    .local v1, "tmpOut":[F
    const/4 v2, 0x0

    .line 790
    .local v2, "dvp":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    const/16 v4, 0x20

    if-ge v3, v4, :cond_b1

    .line 791
    sget-object v4, Ljavazoom/jl/decoder/SynthesisFilter;->d16:[[F

    aget-object v4, v4, v3

    .line 794
    .local v4, "dp":[F
    add-int/lit8 v5, v2, 0xd

    aget v5, v0, v5

    const/4 v6, 0x0

    aget v6, v4, v6

    mul-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xc

    aget v6, v0, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xb

    aget v6, v0, v6

    const/4 v7, 0x2

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xa

    aget v6, v0, v6

    const/4 v7, 0x3

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x9

    aget v6, v0, v6

    const/4 v7, 0x4

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x8

    aget v6, v0, v6

    const/4 v7, 0x5

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x7

    aget v6, v0, v6

    const/4 v7, 0x6

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x6

    aget v6, v0, v6

    const/4 v7, 0x7

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x5

    aget v6, v0, v6

    const/16 v7, 0x8

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x4

    aget v6, v0, v6

    const/16 v7, 0x9

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x3

    aget v6, v0, v6

    const/16 v7, 0xa

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x2

    aget v6, v0, v6

    const/16 v7, 0xb

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    const/16 v7, 0xc

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x0

    aget v6, v0, v6

    const/16 v7, 0xd

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xf

    aget v6, v0, v6

    const/16 v7, 0xe

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xe

    aget v6, v0, v6

    const/16 v7, 0xf

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Ljavazoom/jl/decoder/SynthesisFilter;->scalefactor:F

    mul-float/2addr v5, v6

    .line 799
    .local v5, "pcm_sample":F
    aput v5, v1, v3

    .line 801
    nop

    .end local v4  # "dp":[F
    .end local v5  # "pcm_sample":F
    add-int/lit8 v2, v2, 0x10

    .line 790
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 803
    .end local v3  # "i":I
    :cond_b1
    return-void
.end method

.method private compute_pcm_samples14(Ljavazoom/jl/decoder/OutputBuffer;)V
    .registers 10
    .param p1, "buffer"  # Ljavazoom/jl/decoder/OutputBuffer;

    .line 806
    iget-object v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->actual_v:[F

    .line 809
    .local v0, "vp":[F
    iget-object v1, p0, Ljavazoom/jl/decoder/SynthesisFilter;->_tmpOut:[F

    .line 810
    .local v1, "tmpOut":[F
    const/4 v2, 0x0

    .line 813
    .local v2, "dvp":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    const/16 v4, 0x20

    if-ge v3, v4, :cond_b1

    .line 814
    sget-object v4, Ljavazoom/jl/decoder/SynthesisFilter;->d16:[[F

    aget-object v4, v4, v3

    .line 817
    .local v4, "dp":[F
    add-int/lit8 v5, v2, 0xe

    aget v5, v0, v5

    const/4 v6, 0x0

    aget v6, v4, v6

    mul-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xd

    aget v6, v0, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xc

    aget v6, v0, v6

    const/4 v7, 0x2

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xb

    aget v6, v0, v6

    const/4 v7, 0x3

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xa

    aget v6, v0, v6

    const/4 v7, 0x4

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x9

    aget v6, v0, v6

    const/4 v7, 0x5

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x8

    aget v6, v0, v6

    const/4 v7, 0x6

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x7

    aget v6, v0, v6

    const/4 v7, 0x7

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x6

    aget v6, v0, v6

    const/16 v7, 0x8

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x5

    aget v6, v0, v6

    const/16 v7, 0x9

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x4

    aget v6, v0, v6

    const/16 v7, 0xa

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x3

    aget v6, v0, v6

    const/16 v7, 0xb

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x2

    aget v6, v0, v6

    const/16 v7, 0xc

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    const/16 v7, 0xd

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x0

    aget v6, v0, v6

    const/16 v7, 0xe

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xf

    aget v6, v0, v6

    const/16 v7, 0xf

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Ljavazoom/jl/decoder/SynthesisFilter;->scalefactor:F

    mul-float/2addr v5, v6

    .line 822
    .local v5, "pcm_sample":F
    aput v5, v1, v3

    .line 824
    nop

    .end local v4  # "dp":[F
    .end local v5  # "pcm_sample":F
    add-int/lit8 v2, v2, 0x10

    .line 813
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 826
    .end local v3  # "i":I
    :cond_b1
    return-void
.end method

.method private compute_pcm_samples15(Ljavazoom/jl/decoder/OutputBuffer;)V
    .registers 10
    .param p1, "buffer"  # Ljavazoom/jl/decoder/OutputBuffer;

    .line 829
    iget-object v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->actual_v:[F

    .line 832
    .local v0, "vp":[F
    iget-object v1, p0, Ljavazoom/jl/decoder/SynthesisFilter;->_tmpOut:[F

    .line 833
    .local v1, "tmpOut":[F
    const/4 v2, 0x0

    .line 836
    .local v2, "dvp":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    const/16 v4, 0x20

    if-ge v3, v4, :cond_b1

    .line 838
    sget-object v4, Ljavazoom/jl/decoder/SynthesisFilter;->d16:[[F

    aget-object v4, v4, v3

    .line 839
    .local v4, "dp":[F
    add-int/lit8 v5, v2, 0xf

    aget v5, v0, v5

    const/4 v6, 0x0

    aget v6, v4, v6

    mul-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xe

    aget v6, v0, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xd

    aget v6, v0, v6

    const/4 v7, 0x2

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xc

    aget v6, v0, v6

    const/4 v7, 0x3

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xb

    aget v6, v0, v6

    const/4 v7, 0x4

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xa

    aget v6, v0, v6

    const/4 v7, 0x5

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x9

    aget v6, v0, v6

    const/4 v7, 0x6

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x8

    aget v6, v0, v6

    const/4 v7, 0x7

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x7

    aget v6, v0, v6

    const/16 v7, 0x8

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x6

    aget v6, v0, v6

    const/16 v7, 0x9

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x5

    aget v6, v0, v6

    const/16 v7, 0xa

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x4

    aget v6, v0, v6

    const/16 v7, 0xb

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x3

    aget v6, v0, v6

    const/16 v7, 0xc

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x2

    aget v6, v0, v6

    const/16 v7, 0xd

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    const/16 v7, 0xe

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x0

    aget v6, v0, v6

    const/16 v7, 0xf

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Ljavazoom/jl/decoder/SynthesisFilter;->scalefactor:F

    mul-float/2addr v5, v6

    .line 844
    .local v5, "pcm_sample":F
    aput v5, v1, v3

    .line 845
    nop

    .end local v4  # "dp":[F
    .end local v5  # "pcm_sample":F
    add-int/lit8 v2, v2, 0x10

    .line 836
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 847
    .end local v3  # "i":I
    :cond_b1
    return-void
.end method

.method private compute_pcm_samples2(Ljavazoom/jl/decoder/OutputBuffer;)V
    .registers 10
    .param p1, "buffer"  # Ljavazoom/jl/decoder/OutputBuffer;

    .line 533
    iget-object v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->actual_v:[F

    .line 536
    .local v0, "vp":[F
    iget-object v1, p0, Ljavazoom/jl/decoder/SynthesisFilter;->_tmpOut:[F

    .line 537
    .local v1, "tmpOut":[F
    const/4 v2, 0x0

    .line 540
    .local v2, "dvp":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    const/16 v4, 0x20

    if-ge v3, v4, :cond_b1

    .line 541
    sget-object v4, Ljavazoom/jl/decoder/SynthesisFilter;->d16:[[F

    aget-object v4, v4, v3

    .line 544
    .local v4, "dp":[F
    add-int/lit8 v5, v2, 0x2

    aget v5, v0, v5

    const/4 v6, 0x0

    aget v6, v4, v6

    mul-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x0

    aget v6, v0, v6

    const/4 v7, 0x2

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xf

    aget v6, v0, v6

    const/4 v7, 0x3

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xe

    aget v6, v0, v6

    const/4 v7, 0x4

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xd

    aget v6, v0, v6

    const/4 v7, 0x5

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xc

    aget v6, v0, v6

    const/4 v7, 0x6

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xb

    aget v6, v0, v6

    const/4 v7, 0x7

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xa

    aget v6, v0, v6

    const/16 v7, 0x8

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x9

    aget v6, v0, v6

    const/16 v7, 0x9

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x8

    aget v6, v0, v6

    const/16 v7, 0xa

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x7

    aget v6, v0, v6

    const/16 v7, 0xb

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x6

    aget v6, v0, v6

    const/16 v7, 0xc

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x5

    aget v6, v0, v6

    const/16 v7, 0xd

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x4

    aget v6, v0, v6

    const/16 v7, 0xe

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x3

    aget v6, v0, v6

    const/16 v7, 0xf

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Ljavazoom/jl/decoder/SynthesisFilter;->scalefactor:F

    mul-float/2addr v5, v6

    .line 549
    .local v5, "pcm_sample":F
    aput v5, v1, v3

    .line 551
    nop

    .end local v4  # "dp":[F
    .end local v5  # "pcm_sample":F
    add-int/lit8 v2, v2, 0x10

    .line 540
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 553
    .end local v3  # "i":I
    :cond_b1
    return-void
.end method

.method private compute_pcm_samples3(Ljavazoom/jl/decoder/OutputBuffer;)V
    .registers 10
    .param p1, "buffer"  # Ljavazoom/jl/decoder/OutputBuffer;

    .line 556
    iget-object v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->actual_v:[F

    .line 559
    .local v0, "vp":[F
    iget-object v1, p0, Ljavazoom/jl/decoder/SynthesisFilter;->_tmpOut:[F

    .line 560
    .local v1, "tmpOut":[F
    const/4 v2, 0x0

    .line 563
    .local v2, "dvp":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    const/16 v4, 0x20

    if-ge v3, v4, :cond_b1

    .line 564
    sget-object v4, Ljavazoom/jl/decoder/SynthesisFilter;->d16:[[F

    aget-object v4, v4, v3

    .line 567
    .local v4, "dp":[F
    add-int/lit8 v5, v2, 0x3

    aget v5, v0, v5

    const/4 v6, 0x0

    aget v6, v4, v6

    mul-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x2

    aget v6, v0, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    const/4 v7, 0x2

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x0

    aget v6, v0, v6

    const/4 v7, 0x3

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xf

    aget v6, v0, v6

    const/4 v7, 0x4

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xe

    aget v6, v0, v6

    const/4 v7, 0x5

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xd

    aget v6, v0, v6

    const/4 v7, 0x6

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xc

    aget v6, v0, v6

    const/4 v7, 0x7

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xb

    aget v6, v0, v6

    const/16 v7, 0x8

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xa

    aget v6, v0, v6

    const/16 v7, 0x9

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x9

    aget v6, v0, v6

    const/16 v7, 0xa

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x8

    aget v6, v0, v6

    const/16 v7, 0xb

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x7

    aget v6, v0, v6

    const/16 v7, 0xc

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x6

    aget v6, v0, v6

    const/16 v7, 0xd

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x5

    aget v6, v0, v6

    const/16 v7, 0xe

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x4

    aget v6, v0, v6

    const/16 v7, 0xf

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Ljavazoom/jl/decoder/SynthesisFilter;->scalefactor:F

    mul-float/2addr v5, v6

    .line 572
    .local v5, "pcm_sample":F
    aput v5, v1, v3

    .line 574
    nop

    .end local v4  # "dp":[F
    .end local v5  # "pcm_sample":F
    add-int/lit8 v2, v2, 0x10

    .line 563
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 576
    .end local v3  # "i":I
    :cond_b1
    return-void
.end method

.method private compute_pcm_samples4(Ljavazoom/jl/decoder/OutputBuffer;)V
    .registers 10
    .param p1, "buffer"  # Ljavazoom/jl/decoder/OutputBuffer;

    .line 579
    iget-object v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->actual_v:[F

    .line 582
    .local v0, "vp":[F
    iget-object v1, p0, Ljavazoom/jl/decoder/SynthesisFilter;->_tmpOut:[F

    .line 583
    .local v1, "tmpOut":[F
    const/4 v2, 0x0

    .line 586
    .local v2, "dvp":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    const/16 v4, 0x20

    if-ge v3, v4, :cond_b1

    .line 587
    sget-object v4, Ljavazoom/jl/decoder/SynthesisFilter;->d16:[[F

    aget-object v4, v4, v3

    .line 590
    .local v4, "dp":[F
    add-int/lit8 v5, v2, 0x4

    aget v5, v0, v5

    const/4 v6, 0x0

    aget v6, v4, v6

    mul-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x3

    aget v6, v0, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x2

    aget v6, v0, v6

    const/4 v7, 0x2

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    const/4 v7, 0x3

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x0

    aget v6, v0, v6

    const/4 v7, 0x4

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xf

    aget v6, v0, v6

    const/4 v7, 0x5

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xe

    aget v6, v0, v6

    const/4 v7, 0x6

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xd

    aget v6, v0, v6

    const/4 v7, 0x7

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xc

    aget v6, v0, v6

    const/16 v7, 0x8

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xb

    aget v6, v0, v6

    const/16 v7, 0x9

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xa

    aget v6, v0, v6

    const/16 v7, 0xa

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x9

    aget v6, v0, v6

    const/16 v7, 0xb

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x8

    aget v6, v0, v6

    const/16 v7, 0xc

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x7

    aget v6, v0, v6

    const/16 v7, 0xd

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x6

    aget v6, v0, v6

    const/16 v7, 0xe

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x5

    aget v6, v0, v6

    const/16 v7, 0xf

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Ljavazoom/jl/decoder/SynthesisFilter;->scalefactor:F

    mul-float/2addr v5, v6

    .line 595
    .local v5, "pcm_sample":F
    aput v5, v1, v3

    .line 597
    nop

    .end local v4  # "dp":[F
    .end local v5  # "pcm_sample":F
    add-int/lit8 v2, v2, 0x10

    .line 586
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 599
    .end local v3  # "i":I
    :cond_b1
    return-void
.end method

.method private compute_pcm_samples5(Ljavazoom/jl/decoder/OutputBuffer;)V
    .registers 10
    .param p1, "buffer"  # Ljavazoom/jl/decoder/OutputBuffer;

    .line 602
    iget-object v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->actual_v:[F

    .line 605
    .local v0, "vp":[F
    iget-object v1, p0, Ljavazoom/jl/decoder/SynthesisFilter;->_tmpOut:[F

    .line 606
    .local v1, "tmpOut":[F
    const/4 v2, 0x0

    .line 609
    .local v2, "dvp":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    const/16 v4, 0x20

    if-ge v3, v4, :cond_b1

    .line 610
    sget-object v4, Ljavazoom/jl/decoder/SynthesisFilter;->d16:[[F

    aget-object v4, v4, v3

    .line 613
    .local v4, "dp":[F
    add-int/lit8 v5, v2, 0x5

    aget v5, v0, v5

    const/4 v6, 0x0

    aget v6, v4, v6

    mul-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x4

    aget v6, v0, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x3

    aget v6, v0, v6

    const/4 v7, 0x2

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x2

    aget v6, v0, v6

    const/4 v7, 0x3

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    const/4 v7, 0x4

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x0

    aget v6, v0, v6

    const/4 v7, 0x5

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xf

    aget v6, v0, v6

    const/4 v7, 0x6

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xe

    aget v6, v0, v6

    const/4 v7, 0x7

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xd

    aget v6, v0, v6

    const/16 v7, 0x8

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xc

    aget v6, v0, v6

    const/16 v7, 0x9

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xb

    aget v6, v0, v6

    const/16 v7, 0xa

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xa

    aget v6, v0, v6

    const/16 v7, 0xb

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x9

    aget v6, v0, v6

    const/16 v7, 0xc

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x8

    aget v6, v0, v6

    const/16 v7, 0xd

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x7

    aget v6, v0, v6

    const/16 v7, 0xe

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x6

    aget v6, v0, v6

    const/16 v7, 0xf

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Ljavazoom/jl/decoder/SynthesisFilter;->scalefactor:F

    mul-float/2addr v5, v6

    .line 618
    .local v5, "pcm_sample":F
    aput v5, v1, v3

    .line 620
    nop

    .end local v4  # "dp":[F
    .end local v5  # "pcm_sample":F
    add-int/lit8 v2, v2, 0x10

    .line 609
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 622
    .end local v3  # "i":I
    :cond_b1
    return-void
.end method

.method private compute_pcm_samples6(Ljavazoom/jl/decoder/OutputBuffer;)V
    .registers 10
    .param p1, "buffer"  # Ljavazoom/jl/decoder/OutputBuffer;

    .line 625
    iget-object v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->actual_v:[F

    .line 627
    .local v0, "vp":[F
    iget-object v1, p0, Ljavazoom/jl/decoder/SynthesisFilter;->_tmpOut:[F

    .line 628
    .local v1, "tmpOut":[F
    const/4 v2, 0x0

    .line 631
    .local v2, "dvp":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    const/16 v4, 0x20

    if-ge v3, v4, :cond_b1

    .line 632
    sget-object v4, Ljavazoom/jl/decoder/SynthesisFilter;->d16:[[F

    aget-object v4, v4, v3

    .line 635
    .local v4, "dp":[F
    add-int/lit8 v5, v2, 0x6

    aget v5, v0, v5

    const/4 v6, 0x0

    aget v6, v4, v6

    mul-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x5

    aget v6, v0, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x4

    aget v6, v0, v6

    const/4 v7, 0x2

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x3

    aget v6, v0, v6

    const/4 v7, 0x3

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x2

    aget v6, v0, v6

    const/4 v7, 0x4

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    const/4 v7, 0x5

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x0

    aget v6, v0, v6

    const/4 v7, 0x6

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xf

    aget v6, v0, v6

    const/4 v7, 0x7

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xe

    aget v6, v0, v6

    const/16 v7, 0x8

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xd

    aget v6, v0, v6

    const/16 v7, 0x9

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xc

    aget v6, v0, v6

    const/16 v7, 0xa

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xb

    aget v6, v0, v6

    const/16 v7, 0xb

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xa

    aget v6, v0, v6

    const/16 v7, 0xc

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x9

    aget v6, v0, v6

    const/16 v7, 0xd

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x8

    aget v6, v0, v6

    const/16 v7, 0xe

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x7

    aget v6, v0, v6

    const/16 v7, 0xf

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Ljavazoom/jl/decoder/SynthesisFilter;->scalefactor:F

    mul-float/2addr v5, v6

    .line 640
    .local v5, "pcm_sample":F
    aput v5, v1, v3

    .line 642
    nop

    .end local v4  # "dp":[F
    .end local v5  # "pcm_sample":F
    add-int/lit8 v2, v2, 0x10

    .line 631
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 644
    .end local v3  # "i":I
    :cond_b1
    return-void
.end method

.method private compute_pcm_samples7(Ljavazoom/jl/decoder/OutputBuffer;)V
    .registers 10
    .param p1, "buffer"  # Ljavazoom/jl/decoder/OutputBuffer;

    .line 647
    iget-object v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->actual_v:[F

    .line 650
    .local v0, "vp":[F
    iget-object v1, p0, Ljavazoom/jl/decoder/SynthesisFilter;->_tmpOut:[F

    .line 651
    .local v1, "tmpOut":[F
    const/4 v2, 0x0

    .line 654
    .local v2, "dvp":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    const/16 v4, 0x20

    if-ge v3, v4, :cond_b1

    .line 655
    sget-object v4, Ljavazoom/jl/decoder/SynthesisFilter;->d16:[[F

    aget-object v4, v4, v3

    .line 658
    .local v4, "dp":[F
    add-int/lit8 v5, v2, 0x7

    aget v5, v0, v5

    const/4 v6, 0x0

    aget v6, v4, v6

    mul-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x6

    aget v6, v0, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x5

    aget v6, v0, v6

    const/4 v7, 0x2

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x4

    aget v6, v0, v6

    const/4 v7, 0x3

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x3

    aget v6, v0, v6

    const/4 v7, 0x4

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x2

    aget v6, v0, v6

    const/4 v7, 0x5

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    const/4 v7, 0x6

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x0

    aget v6, v0, v6

    const/4 v7, 0x7

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xf

    aget v6, v0, v6

    const/16 v7, 0x8

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xe

    aget v6, v0, v6

    const/16 v7, 0x9

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xd

    aget v6, v0, v6

    const/16 v7, 0xa

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xc

    aget v6, v0, v6

    const/16 v7, 0xb

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xb

    aget v6, v0, v6

    const/16 v7, 0xc

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xa

    aget v6, v0, v6

    const/16 v7, 0xd

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x9

    aget v6, v0, v6

    const/16 v7, 0xe

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x8

    aget v6, v0, v6

    const/16 v7, 0xf

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Ljavazoom/jl/decoder/SynthesisFilter;->scalefactor:F

    mul-float/2addr v5, v6

    .line 663
    .local v5, "pcm_sample":F
    aput v5, v1, v3

    .line 665
    nop

    .end local v4  # "dp":[F
    .end local v5  # "pcm_sample":F
    add-int/lit8 v2, v2, 0x10

    .line 654
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 667
    .end local v3  # "i":I
    :cond_b1
    return-void
.end method

.method private compute_pcm_samples8(Ljavazoom/jl/decoder/OutputBuffer;)V
    .registers 10
    .param p1, "buffer"  # Ljavazoom/jl/decoder/OutputBuffer;

    .line 670
    iget-object v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->actual_v:[F

    .line 673
    .local v0, "vp":[F
    iget-object v1, p0, Ljavazoom/jl/decoder/SynthesisFilter;->_tmpOut:[F

    .line 674
    .local v1, "tmpOut":[F
    const/4 v2, 0x0

    .line 677
    .local v2, "dvp":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    const/16 v4, 0x20

    if-ge v3, v4, :cond_b1

    .line 678
    sget-object v4, Ljavazoom/jl/decoder/SynthesisFilter;->d16:[[F

    aget-object v4, v4, v3

    .line 681
    .local v4, "dp":[F
    add-int/lit8 v5, v2, 0x8

    aget v5, v0, v5

    const/4 v6, 0x0

    aget v6, v4, v6

    mul-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x7

    aget v6, v0, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x6

    aget v6, v0, v6

    const/4 v7, 0x2

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x5

    aget v6, v0, v6

    const/4 v7, 0x3

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x4

    aget v6, v0, v6

    const/4 v7, 0x4

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x3

    aget v6, v0, v6

    const/4 v7, 0x5

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x2

    aget v6, v0, v6

    const/4 v7, 0x6

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    const/4 v7, 0x7

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x0

    aget v6, v0, v6

    const/16 v7, 0x8

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xf

    aget v6, v0, v6

    const/16 v7, 0x9

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xe

    aget v6, v0, v6

    const/16 v7, 0xa

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xd

    aget v6, v0, v6

    const/16 v7, 0xb

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xc

    aget v6, v0, v6

    const/16 v7, 0xc

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xb

    aget v6, v0, v6

    const/16 v7, 0xd

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xa

    aget v6, v0, v6

    const/16 v7, 0xe

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x9

    aget v6, v0, v6

    const/16 v7, 0xf

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Ljavazoom/jl/decoder/SynthesisFilter;->scalefactor:F

    mul-float/2addr v5, v6

    .line 686
    .local v5, "pcm_sample":F
    aput v5, v1, v3

    .line 688
    nop

    .end local v4  # "dp":[F
    .end local v5  # "pcm_sample":F
    add-int/lit8 v2, v2, 0x10

    .line 677
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 690
    .end local v3  # "i":I
    :cond_b1
    return-void
.end method

.method private compute_pcm_samples9(Ljavazoom/jl/decoder/OutputBuffer;)V
    .registers 10
    .param p1, "buffer"  # Ljavazoom/jl/decoder/OutputBuffer;

    .line 693
    iget-object v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->actual_v:[F

    .line 696
    .local v0, "vp":[F
    iget-object v1, p0, Ljavazoom/jl/decoder/SynthesisFilter;->_tmpOut:[F

    .line 697
    .local v1, "tmpOut":[F
    const/4 v2, 0x0

    .line 700
    .local v2, "dvp":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    const/16 v4, 0x20

    if-ge v3, v4, :cond_b1

    .line 701
    sget-object v4, Ljavazoom/jl/decoder/SynthesisFilter;->d16:[[F

    aget-object v4, v4, v3

    .line 704
    .local v4, "dp":[F
    add-int/lit8 v5, v2, 0x9

    aget v5, v0, v5

    const/4 v6, 0x0

    aget v6, v4, v6

    mul-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x8

    aget v6, v0, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x7

    aget v6, v0, v6

    const/4 v7, 0x2

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x6

    aget v6, v0, v6

    const/4 v7, 0x3

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x5

    aget v6, v0, v6

    const/4 v7, 0x4

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x4

    aget v6, v0, v6

    const/4 v7, 0x5

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x3

    aget v6, v0, v6

    const/4 v7, 0x6

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x2

    aget v6, v0, v6

    const/4 v7, 0x7

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    const/16 v7, 0x8

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x0

    aget v6, v0, v6

    const/16 v7, 0x9

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xf

    aget v6, v0, v6

    const/16 v7, 0xa

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xe

    aget v6, v0, v6

    const/16 v7, 0xb

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xd

    aget v6, v0, v6

    const/16 v7, 0xc

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xc

    aget v6, v0, v6

    const/16 v7, 0xd

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xb

    aget v6, v0, v6

    const/16 v7, 0xe

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0xa

    aget v6, v0, v6

    const/16 v7, 0xf

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Ljavazoom/jl/decoder/SynthesisFilter;->scalefactor:F

    mul-float/2addr v5, v6

    .line 709
    .local v5, "pcm_sample":F
    aput v5, v1, v3

    .line 711
    nop

    .end local v4  # "dp":[F
    .end local v5  # "pcm_sample":F
    add-int/lit8 v2, v2, 0x10

    .line 700
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 713
    .end local v3  # "i":I
    :cond_b1
    return-void
.end method

.method public static deserialize(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 6
    .param p0, "in"  # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1026
    if-eqz p0, :cond_19

    .line 1028
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1033
    .local v0, "objIn":Ljava/io/ObjectInputStream;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_b} :catch_d

    .line 1036
    .local v1, "obj":Ljava/lang/Object;
    nop

    .line 1037
    return-object v1

    .line 1034
    .end local v1  # "obj":Ljava/lang/Object;
    :catch_d
    move-exception v1

    const/4 v2, 0x0

    .line 1035
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    .local v2, "obj":Ljava/lang/Object;
    new-instance v3, Ljava/io/InvalidClassException;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1026
    .end local v0  # "objIn":Ljava/io/ObjectInputStream;
    .end local v1  # "ex":Ljava/lang/ClassNotFoundException;
    .end local v2  # "obj":Ljava/lang/Object;
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static deserializeArray(Ljava/io/InputStream;Ljava/lang/Class;I)Ljava/lang/Object;
    .registers 9
    .param p0, "in"  # Ljava/io/InputStream;
    .param p1, "elemType"  # Ljava/lang/Class;
    .param p2, "length"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1004
    if-eqz p1, :cond_43

    .line 1006
    const/4 v0, -0x1

    if-lt p2, v0, :cond_3b

    .line 1008
    invoke-static {p0}, Ljavazoom/jl/decoder/SynthesisFilter;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    .line 1010
    .local v1, "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1012
    .local v2, "cls":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1014
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 1015
    .local v3, "arrayElemType":Ljava/lang/Class;
    if-ne v3, p1, :cond_2b

    .line 1017
    if-eq p2, v0, :cond_2a

    .line 1018
    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 1019
    .local v0, "arrayLength":I
    if-ne v0, p2, :cond_22

    goto :goto_2a

    :cond_22
    new-instance v4, Ljava/io/InvalidObjectException;

    const-string v5, "array length mismatch"

    invoke-direct {v4, v5}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1022
    .end local v0  # "arrayLength":I
    :cond_2a
    :goto_2a
    return-object v1

    .line 1015
    :cond_2b
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v4, "unexpected array component type"

    invoke-direct {v0, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1012
    .end local v3  # "arrayElemType":Ljava/lang/Class;
    :cond_33
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v3, "object is not an array"

    invoke-direct {v0, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1006
    .end local v1  # "obj":Ljava/lang/Object;
    .end local v2  # "cls":Ljava/lang/Class;
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1004
    :cond_43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "elemType"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static load_d()[F
    .registers 3

    .line 987
    :try_start_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 988
    .local v0, "elemType":Ljava/lang/Class;
    const-class v1, Ljavazoom/jl/decoder/SynthesisFilter;

    const-string v2, "/sfd.ser"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x200

    invoke-static {v1, v0, v2}, Ljavazoom/jl/decoder/SynthesisFilter;->deserializeArray(Ljava/io/InputStream;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 989
    .local v1, "o":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, [F

    check-cast v2, [F
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v2

    .line 990
    .end local v0  # "elemType":Ljava/lang/Class;
    .end local v1  # "o":Ljava/lang/Object;
    :catch_16
    move-exception v0

    .line 991
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static splitArray([FI)[[F
    .registers 6
    .param p0, "array"  # [F
    .param p1, "blockSize"  # I

    .line 1050
    array-length v0, p0

    div-int/2addr v0, p1

    .line 1051
    .local v0, "size":I
    new-array v1, v0, [[F

    .line 1052
    .local v1, "split":[[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_12

    .line 1053
    mul-int v3, v2, p1

    invoke-static {p0, v3, p1}, Ljavazoom/jl/decoder/SynthesisFilter;->subArray([FII)[F

    move-result-object v3

    aput-object v3, v1, v2

    .line 1052
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1054
    .end local v2  # "i":I
    :cond_12
    return-object v1
.end method

.method private static subArray([FII)[F
    .registers 6
    .param p0, "array"  # [F
    .param p1, "offs"  # I
    .param p2, "len"  # I

    .line 1066
    add-int v0, p1, p2

    array-length v1, p0

    if-le v0, v1, :cond_8

    array-length v0, p0

    sub-int p2, v0, p1

    .line 1068
    :cond_8
    if-gez p2, :cond_b

    const/4 p2, 0x0

    .line 1070
    :cond_b
    new-array v0, p2, [F

    .line 1071
    .local v0, "subarray":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, p2, :cond_19

    .line 1072
    add-int v2, p1, v1

    aget v2, p0, v2

    aput v2, v0, v1

    .line 1071
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1073
    .end local v1  # "i":I
    :cond_19
    return-object v0
.end method


# virtual methods
.method public calculate_pcm_samples(Ljavazoom/jl/decoder/OutputBuffer;)V
    .registers 5
    .param p1, "buffer"  # Ljavazoom/jl/decoder/OutputBuffer;

    .line 920
    invoke-direct {p0}, Ljavazoom/jl/decoder/SynthesisFilter;->compute_new_v()V

    .line 921
    invoke-direct {p0, p1}, Ljavazoom/jl/decoder/SynthesisFilter;->compute_pcm_samples(Ljavazoom/jl/decoder/OutputBuffer;)V

    .line 923
    iget v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->actual_write_pos:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->actual_write_pos:I

    .line 924
    iget-object v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->actual_v:[F

    iget-object v1, p0, Ljavazoom/jl/decoder/SynthesisFilter;->v1:[F

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->v2:[F

    goto :goto_19

    :cond_17
    iget-object v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->v1:[F

    :goto_19
    iput-object v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->actual_v:[F

    .line 932
    const/4 v0, 0x0

    .local v0, "p":I
    :goto_1c
    const/16 v1, 0x20

    if-ge v0, v1, :cond_28

    .line 933
    iget-object v1, p0, Ljavazoom/jl/decoder/SynthesisFilter;->samples:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 932
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 934
    .end local v0  # "p":I
    :cond_28
    return-void
.end method

.method public input_sample(FI)V
    .registers 4
    .param p1, "sample"  # F
    .param p2, "subbandnumber"  # I

    .line 117
    iget-object v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->samples:[F

    aput p1, v0, p2

    .line 118
    return-void
.end method

.method public input_samples([F)V
    .registers 5
    .param p1, "s"  # [F

    .line 121
    const/16 v0, 0x1f

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_d

    .line 122
    iget-object v1, p0, Ljavazoom/jl/decoder/SynthesisFilter;->samples:[F

    aget v2, p1, v0

    aput v2, v1, v0

    .line 121
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 123
    .end local v0  # "i":I
    :cond_d
    return-void
.end method

.method public reset()V
    .registers 5

    .line 100
    const/4 v0, 0x0

    .local v0, "p":I
    :goto_1
    const/16 v1, 0x200

    const/4 v2, 0x0

    if-ge v0, v1, :cond_11

    .line 101
    iget-object v1, p0, Ljavazoom/jl/decoder/SynthesisFilter;->v1:[F

    iget-object v3, p0, Ljavazoom/jl/decoder/SynthesisFilter;->v2:[F

    aput v2, v3, v0

    aput v2, v1, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    .end local v0  # "p":I
    :cond_11
    const/4 v0, 0x0

    .local v0, "p2":I
    :goto_12
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1d

    .line 107
    iget-object v1, p0, Ljavazoom/jl/decoder/SynthesisFilter;->samples:[F

    aput v2, v1, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 109
    .end local v0  # "p2":I
    :cond_1d
    iget-object v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->v1:[F

    iput-object v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->actual_v:[F

    .line 110
    const/16 v0, 0xf

    iput v0, p0, Ljavazoom/jl/decoder/SynthesisFilter;->actual_write_pos:I

    .line 111
    return-void
.end method
