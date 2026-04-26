.class public final Ljavazoom/jl/decoder/Header;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field public static final DUAL_CHANNEL:I = 0x2

.field public static final FOURTYEIGHT:I = 0x1

.field public static final FOURTYFOUR_POINT_ONE:I = 0x0

.field public static final JOINT_STEREO:I = 0x1

.field public static final MPEG1:I = 0x1

.field public static final MPEG25_LSF:I = 0x2

.field public static final MPEG2_LSF:I = 0x0

.field public static final SINGLE_CHANNEL:I = 0x3

.field public static final STEREO:I = 0x0

.field public static final THIRTYTWO:I = 0x2

.field private static final bitrate_str:[[[Ljava/lang/String;

.field private static final bitrates:[[[I

.field public static final frequencies:[[I


# instance fields
.field private _headerstring:I

.field public checksum:S

.field private crc:Ljavazoom/jl/decoder/Crc16;

.field public framesize:I

.field private h_bitrate_index:I

.field private h_copyright:Z

.field private h_intensity_stereo_bound:I

.field private h_layer:I

.field private h_mode:I

.field private h_mode_extension:I

.field private h_number_of_subbands:I

.field private h_original:Z

.field private h_padding_bit:I

.field private h_protection_bit:I

.field private h_sample_frequency:I

.field private h_vbr:Z

.field private h_vbr_bytes:I

.field private h_vbr_frames:I

.field private h_vbr_scale:I

.field private h_vbr_time_per_frame:[D

.field private h_vbr_toc:[B

.field private h_version:I

.field public nSlots:I

.field private syncmode:B


# direct methods
.method static constructor <clinit>()V
    .registers 21

    .line 33
    const/16 v0, 0x5622

    const/16 v1, 0x5dc0

    const/16 v2, 0x3e80

    const/4 v3, 0x1

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    const v1, 0xbb80

    const/16 v2, 0x7d00

    const v4, 0xac44

    filled-new-array {v4, v1, v2, v3}, [I

    move-result-object v1

    const/16 v2, 0x2ee0

    const/16 v4, 0x1f40

    const/16 v5, 0x2b11

    filled-new-array {v5, v2, v4, v3}, [I

    move-result-object v2

    filled-new-array {v0, v1, v2}, [[I

    move-result-object v0

    sput-object v0, Ljavazoom/jl/decoder/Header;->frequencies:[[I

    .line 409
    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_306

    new-array v2, v0, [I

    fill-array-data v2, :array_32a

    new-array v4, v0, [I

    fill-array-data v4, :array_34e

    filled-new-array {v1, v2, v4}, [[I

    move-result-object v1

    new-array v2, v0, [I

    fill-array-data v2, :array_372

    new-array v4, v0, [I

    fill-array-data v4, :array_396

    new-array v5, v0, [I

    fill-array-data v5, :array_3ba

    filled-new-array {v2, v4, v5}, [[I

    move-result-object v2

    new-array v4, v0, [I

    fill-array-data v4, :array_3de

    new-array v5, v0, [I

    fill-array-data v5, :array_402

    new-array v6, v0, [I

    fill-array-data v6, :array_426

    filled-new-array {v4, v5, v6}, [[I

    move-result-object v4

    filled-new-array {v1, v2, v4}, [[[I

    move-result-object v1

    sput-object v1, Ljavazoom/jl/decoder/Header;->bitrates:[[[I

    .line 549
    const/4 v1, 0x3

    new-array v2, v1, [[[Ljava/lang/String;

    new-array v4, v1, [[Ljava/lang/String;

    new-array v5, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "free format"

    aput-object v7, v5, v6

    const-string v8, "32 kbit/s"

    aput-object v8, v5, v3

    const-string v9, "48 kbit/s"

    const/4 v10, 0x2

    aput-object v9, v5, v10

    const-string v9, "56 kbit/s"

    aput-object v9, v5, v1

    const/4 v9, 0x4

    const-string v11, "64 kbit/s"

    aput-object v11, v5, v9

    const-string v12, "80 kbit/s"

    const/4 v13, 0x5

    aput-object v12, v5, v13

    const/4 v12, 0x6

    const-string v14, "96 kbit/s"

    aput-object v14, v5, v12

    const-string v15, "112 kbit/s"

    const/16 v16, 0x7

    aput-object v15, v5, v16

    const/16 v15, 0x8

    const-string v17, "128 kbit/s"

    aput-object v17, v5, v15

    const-string v18, "144 kbit/s"

    const/16 v19, 0x9

    aput-object v18, v5, v19

    const/16 v18, 0xa

    const-string v20, "160 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xb

    const-string v20, "176 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xc

    const-string v20, "192 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xd

    const-string v20, "224 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xe

    const-string v20, "256 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xf

    const-string v20, "forbidden"

    aput-object v20, v5, v18

    aput-object v5, v4, v6

    new-array v5, v0, [Ljava/lang/String;

    aput-object v7, v5, v6

    const-string v18, "8 kbit/s"

    aput-object v18, v5, v3

    const-string v18, "16 kbit/s"

    aput-object v18, v5, v10

    const-string v18, "24 kbit/s"

    aput-object v18, v5, v1

    aput-object v8, v5, v9

    const-string v18, "40 kbit/s"

    aput-object v18, v5, v13

    const-string v18, "48 kbit/s"

    aput-object v18, v5, v12

    const-string v18, "56 kbit/s"

    aput-object v18, v5, v16

    aput-object v11, v5, v15

    const-string v18, "80 kbit/s"

    aput-object v18, v5, v19

    const/16 v18, 0xa

    aput-object v14, v5, v18

    const/16 v18, 0xb

    const-string v20, "112 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xc

    aput-object v17, v5, v18

    const/16 v18, 0xd

    const-string v20, "144 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xe

    const-string v20, "160 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xf

    const-string v20, "forbidden"

    aput-object v20, v5, v18

    aput-object v5, v4, v3

    new-array v5, v0, [Ljava/lang/String;

    aput-object v7, v5, v6

    const-string v18, "8 kbit/s"

    aput-object v18, v5, v3

    const-string v18, "16 kbit/s"

    aput-object v18, v5, v10

    const-string v18, "24 kbit/s"

    aput-object v18, v5, v1

    aput-object v8, v5, v9

    const-string v18, "40 kbit/s"

    aput-object v18, v5, v13

    const-string v18, "48 kbit/s"

    aput-object v18, v5, v12

    const-string v18, "56 kbit/s"

    aput-object v18, v5, v16

    aput-object v11, v5, v15

    const-string v18, "80 kbit/s"

    aput-object v18, v5, v19

    const/16 v18, 0xa

    aput-object v14, v5, v18

    const/16 v18, 0xb

    const-string v20, "112 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xc

    aput-object v17, v5, v18

    const/16 v18, 0xd

    const-string v20, "144 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xe

    const-string v20, "160 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xf

    const-string v20, "forbidden"

    aput-object v20, v5, v18

    aput-object v5, v4, v10

    aput-object v4, v2, v6

    new-array v4, v1, [[Ljava/lang/String;

    new-array v5, v0, [Ljava/lang/String;

    aput-object v7, v5, v6

    aput-object v8, v5, v3

    aput-object v11, v5, v10

    aput-object v14, v5, v1

    aput-object v17, v5, v9

    const-string v18, "160 kbit/s"

    aput-object v18, v5, v13

    const-string v18, "192 kbit/s"

    aput-object v18, v5, v12

    const-string v18, "224 kbit/s"

    aput-object v18, v5, v16

    const-string v18, "256 kbit/s"

    aput-object v18, v5, v15

    const-string v18, "288 kbit/s"

    aput-object v18, v5, v19

    const/16 v18, 0xa

    const-string v20, "320 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xb

    const-string v20, "352 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xc

    const-string v20, "384 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xd

    const-string v20, "416 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xe

    const-string v20, "448 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xf

    const-string v20, "forbidden"

    aput-object v20, v5, v18

    aput-object v5, v4, v6

    new-array v5, v0, [Ljava/lang/String;

    aput-object v7, v5, v6

    aput-object v8, v5, v3

    const-string v18, "48 kbit/s"

    aput-object v18, v5, v10

    const-string v18, "56 kbit/s"

    aput-object v18, v5, v1

    aput-object v11, v5, v9

    const-string v18, "80 kbit/s"

    aput-object v18, v5, v13

    aput-object v14, v5, v12

    const-string v18, "112 kbit/s"

    aput-object v18, v5, v16

    aput-object v17, v5, v15

    const-string v18, "160 kbit/s"

    aput-object v18, v5, v19

    const/16 v18, 0xa

    const-string v20, "192 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xb

    const-string v20, "224 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xc

    const-string v20, "256 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xd

    const-string v20, "320 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xe

    const-string v20, "384 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xf

    const-string v20, "forbidden"

    aput-object v20, v5, v18

    aput-object v5, v4, v3

    new-array v5, v0, [Ljava/lang/String;

    aput-object v7, v5, v6

    aput-object v8, v5, v3

    const-string v18, "40 kbit/s"

    aput-object v18, v5, v10

    const-string v18, "48 kbit/s"

    aput-object v18, v5, v1

    const-string v18, "56 kbit/s"

    aput-object v18, v5, v9

    aput-object v11, v5, v13

    const-string v18, "80 kbit/s"

    aput-object v18, v5, v12

    aput-object v14, v5, v16

    const-string v18, "112 kbit/s"

    aput-object v18, v5, v15

    aput-object v17, v5, v19

    const/16 v18, 0xa

    const-string v20, "160 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xb

    const-string v20, "192 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xc

    const-string v20, "224 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xd

    const-string v20, "256 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xe

    const-string v20, "320 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xf

    const-string v20, "forbidden"

    aput-object v20, v5, v18

    aput-object v5, v4, v10

    aput-object v4, v2, v3

    new-array v4, v1, [[Ljava/lang/String;

    new-array v5, v0, [Ljava/lang/String;

    aput-object v7, v5, v6

    aput-object v8, v5, v3

    const-string v18, "48 kbit/s"

    aput-object v18, v5, v10

    const-string v18, "56 kbit/s"

    aput-object v18, v5, v1

    aput-object v11, v5, v9

    const-string v18, "80 kbit/s"

    aput-object v18, v5, v13

    aput-object v14, v5, v12

    const-string v18, "112 kbit/s"

    aput-object v18, v5, v16

    aput-object v17, v5, v15

    const-string v18, "144 kbit/s"

    aput-object v18, v5, v19

    const/16 v18, 0xa

    const-string v20, "160 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xb

    const-string v20, "176 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xc

    const-string v20, "192 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xd

    const-string v20, "224 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xe

    const-string v20, "256 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xf

    const-string v20, "forbidden"

    aput-object v20, v5, v18

    aput-object v5, v4, v6

    new-array v5, v0, [Ljava/lang/String;

    aput-object v7, v5, v6

    const-string v18, "8 kbit/s"

    aput-object v18, v5, v3

    const-string v18, "16 kbit/s"

    aput-object v18, v5, v10

    const-string v18, "24 kbit/s"

    aput-object v18, v5, v1

    aput-object v8, v5, v9

    const-string v18, "40 kbit/s"

    aput-object v18, v5, v13

    const-string v18, "48 kbit/s"

    aput-object v18, v5, v12

    const-string v18, "56 kbit/s"

    aput-object v18, v5, v16

    aput-object v11, v5, v15

    const-string v18, "80 kbit/s"

    aput-object v18, v5, v19

    const/16 v18, 0xa

    aput-object v14, v5, v18

    const/16 v18, 0xb

    const-string v20, "112 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xc

    aput-object v17, v5, v18

    const/16 v18, 0xd

    const-string v20, "144 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xe

    const-string v20, "160 kbit/s"

    aput-object v20, v5, v18

    const/16 v18, 0xf

    const-string v20, "forbidden"

    aput-object v20, v5, v18

    aput-object v5, v4, v3

    new-array v0, v0, [Ljava/lang/String;

    aput-object v7, v0, v6

    const-string v5, "8 kbit/s"

    aput-object v5, v0, v3

    const-string v3, "16 kbit/s"

    aput-object v3, v0, v10

    const-string v3, "24 kbit/s"

    aput-object v3, v0, v1

    aput-object v8, v0, v9

    const-string v1, "40 kbit/s"

    aput-object v1, v0, v13

    const-string v1, "48 kbit/s"

    aput-object v1, v0, v12

    const-string v1, "56 kbit/s"

    aput-object v1, v0, v16

    aput-object v11, v0, v15

    const-string v1, "80 kbit/s"

    aput-object v1, v0, v19

    const/16 v1, 0xa

    aput-object v14, v0, v1

    const/16 v1, 0xb

    const-string v3, "112 kbit/s"

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v17, v0, v1

    const/16 v1, 0xd

    const-string v3, "144 kbit/s"

    aput-object v3, v0, v1

    const/16 v1, 0xe

    const-string v3, "160 kbit/s"

    aput-object v3, v0, v1

    const/16 v1, 0xf

    const-string v3, "forbidden"

    aput-object v3, v0, v1

    aput-object v0, v4, v10

    aput-object v4, v2, v10

    sput-object v2, Ljavazoom/jl/decoder/Header;->bitrate_str:[[[Ljava/lang/String;

    return-void

    nop

    :array_306
    .array-data 4
        0x0
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
        0x2af80
        0x2ee00
        0x36b00
        0x3e800
        0x0
    .end array-data

    :array_32a
    .array-data 4
        0x0
        0x1f40
        0x3e80
        0x5dc0
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
        0x0
    .end array-data

    :array_34e
    .array-data 4
        0x0
        0x1f40
        0x3e80
        0x5dc0
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
        0x0
    .end array-data

    :array_372
    .array-data 4
        0x0
        0x7d00
        0xfa00
        0x17700
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x46500
        0x4e200
        0x55f00
        0x5dc00
        0x65900
        0x6d600
        0x0
    .end array-data

    :array_396
    .array-data 4
        0x0
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
        0x5dc00
        0x0
    .end array-data

    :array_3ba
    .array-data 4
        0x0
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
        0x0
    .end array-data

    :array_3de
    .array-data 4
        0x0
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
        0x2af80
        0x2ee00
        0x36b00
        0x3e800
        0x0
    .end array-data

    :array_402
    .array-data 4
        0x0
        0x1f40
        0x3e80
        0x5dc0
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
        0x0
    .end array-data

    :array_426
    .array-data 4
        0x0
        0x1f40
        0x3e80
        0x5dc0
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
        0x0
    .end array-data
.end method

.method constructor <init>()V
    .registers 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [D

    fill-array-data v0, :array_14

    iput-object v0, p0, Ljavazoom/jl/decoder/Header;->h_vbr_time_per_frame:[D

    .line 69
    sget-byte v0, Ljavazoom/jl/decoder/Bitstream;->INITIAL_SYNC:B

    iput-byte v0, p0, Ljavazoom/jl/decoder/Header;->syncmode:B

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Ljavazoom/jl/decoder/Header;->_headerstring:I

    .line 79
    return-void

    nop

    :array_14
    .array-data 8
        -0x4010000000000000L  # -1.0
        0x4078000000000000L  # 384.0
        0x4092000000000000L  # 1152.0
        0x4092000000000000L  # 1152.0
    .end array-data
.end method


# virtual methods
.method public bitrate()I
    .registers 4

    .line 590
    iget-boolean v0, p0, Ljavazoom/jl/decoder/Header;->h_vbr:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 591
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_vbr_bytes:I

    mul-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    invoke-virtual {p0}, Ljavazoom/jl/decoder/Header;->ms_per_frame()F

    move-result v1

    iget v2, p0, Ljavazoom/jl/decoder/Header;->h_vbr_frames:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    return v0

    .line 593
    :cond_17
    sget-object v0, Ljavazoom/jl/decoder/Header;->bitrates:[[[I

    iget v2, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    aget-object v0, v0, v2

    iget v2, p0, Ljavazoom/jl/decoder/Header;->h_layer:I

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    iget v1, p0, Ljavazoom/jl/decoder/Header;->h_bitrate_index:I

    aget v0, v0, v1

    return v0
.end method

.method public bitrate_index()I
    .registers 2

    .line 305
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_bitrate_index:I

    return v0
.end method

.method public bitrate_instant()I
    .registers 3

    .line 601
    sget-object v0, Ljavazoom/jl/decoder/Header;->bitrates:[[[I

    iget v1, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    aget-object v0, v0, v1

    iget v1, p0, Ljavazoom/jl/decoder/Header;->h_layer:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget v1, p0, Ljavazoom/jl/decoder/Header;->h_bitrate_index:I

    aget v0, v0, v1

    return v0
.end method

.method public bitrate_string()Ljava/lang/String;
    .registers 4

    .line 579
    iget-boolean v0, p0, Ljavazoom/jl/decoder/Header;->h_vbr:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavazoom/jl/decoder/Header;->bitrate()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " kb/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 582
    :cond_23
    sget-object v0, Ljavazoom/jl/decoder/Header;->bitrate_str:[[[Ljava/lang/String;

    iget v2, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    aget-object v0, v0, v2

    iget v2, p0, Ljavazoom/jl/decoder/Header;->h_layer:I

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    iget v1, p0, Ljavazoom/jl/decoder/Header;->h_bitrate_index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public calculate_framesize()I
    .registers 7

    .line 442
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_layer:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_34

    .line 443
    sget-object v0, Ljavazoom/jl/decoder/Header;->bitrates:[[[I

    iget v4, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    aget-object v0, v0, v4

    aget-object v0, v0, v2

    iget v4, p0, Ljavazoom/jl/decoder/Header;->h_bitrate_index:I

    aget v0, v0, v4

    mul-int/lit8 v0, v0, 0xc

    sget-object v4, Ljavazoom/jl/decoder/Header;->frequencies:[[I

    iget v5, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    aget-object v4, v4, v5

    iget v5, p0, Ljavazoom/jl/decoder/Header;->h_sample_frequency:I

    aget v4, v4, v5

    div-int/2addr v0, v4

    iput v0, p0, Ljavazoom/jl/decoder/Header;->framesize:I

    .line 444
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_padding_bit:I

    if-eqz v0, :cond_2b

    iget v0, p0, Ljavazoom/jl/decoder/Header;->framesize:I

    add-int/2addr v0, v3

    iput v0, p0, Ljavazoom/jl/decoder/Header;->framesize:I

    .line 445
    :cond_2b
    iget v0, p0, Ljavazoom/jl/decoder/Header;->framesize:I

    shl-int/2addr v0, v1

    iput v0, p0, Ljavazoom/jl/decoder/Header;->framesize:I

    .line 446
    iput v2, p0, Ljavazoom/jl/decoder/Header;->nSlots:I

    goto/16 :goto_9e

    .line 448
    :cond_34
    sget-object v0, Ljavazoom/jl/decoder/Header;->bitrates:[[[I

    iget v4, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    aget-object v0, v0, v4

    iget v4, p0, Ljavazoom/jl/decoder/Header;->h_layer:I

    sub-int/2addr v4, v3

    aget-object v0, v0, v4

    iget v4, p0, Ljavazoom/jl/decoder/Header;->h_bitrate_index:I

    aget v0, v0, v4

    mul-int/lit16 v0, v0, 0x90

    sget-object v4, Ljavazoom/jl/decoder/Header;->frequencies:[[I

    iget v5, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    aget-object v4, v4, v5

    iget v5, p0, Ljavazoom/jl/decoder/Header;->h_sample_frequency:I

    aget v4, v4, v5

    div-int/2addr v0, v4

    iput v0, p0, Ljavazoom/jl/decoder/Header;->framesize:I

    .line 449
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    if-eqz v0, :cond_5a

    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    if-ne v0, v1, :cond_5f

    :cond_5a
    iget v0, p0, Ljavazoom/jl/decoder/Header;->framesize:I

    shr-int/2addr v0, v3

    iput v0, p0, Ljavazoom/jl/decoder/Header;->framesize:I

    .line 450
    :cond_5f
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_padding_bit:I

    if-eqz v0, :cond_68

    iget v0, p0, Ljavazoom/jl/decoder/Header;->framesize:I

    add-int/2addr v0, v3

    iput v0, p0, Ljavazoom/jl/decoder/Header;->framesize:I

    .line 452
    :cond_68
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_layer:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_9c

    .line 453
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    const/16 v5, 0x11

    if-ne v0, v3, :cond_88

    .line 454
    iget v0, p0, Ljavazoom/jl/decoder/Header;->framesize:I

    iget v3, p0, Ljavazoom/jl/decoder/Header;->h_mode:I

    if-ne v3, v4, :cond_7a

    goto :goto_7c

    :cond_7a
    const/16 v5, 0x20

    :goto_7c
    sub-int/2addr v0, v5

    iget v3, p0, Ljavazoom/jl/decoder/Header;->h_protection_bit:I

    if-eqz v3, :cond_82

    move v1, v2

    :cond_82
    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Ljavazoom/jl/decoder/Header;->nSlots:I

    goto :goto_9e

    .line 458
    :cond_88
    iget v0, p0, Ljavazoom/jl/decoder/Header;->framesize:I

    iget v3, p0, Ljavazoom/jl/decoder/Header;->h_mode:I

    if-ne v3, v4, :cond_90

    const/16 v5, 0x9

    :cond_90
    sub-int/2addr v0, v5

    iget v3, p0, Ljavazoom/jl/decoder/Header;->h_protection_bit:I

    if-eqz v3, :cond_96

    move v1, v2

    :cond_96
    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Ljavazoom/jl/decoder/Header;->nSlots:I

    goto :goto_9e

    .line 462
    :cond_9c
    iput v2, p0, Ljavazoom/jl/decoder/Header;->nSlots:I

    .line 464
    :goto_9e
    iget v0, p0, Ljavazoom/jl/decoder/Header;->framesize:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Ljavazoom/jl/decoder/Header;->framesize:I

    .line 465
    iget v0, p0, Ljavazoom/jl/decoder/Header;->framesize:I

    return v0
.end method

.method public checksum_ok()Z
    .registers 3

    .line 381
    iget-short v0, p0, Ljavazoom/jl/decoder/Header;->checksum:S

    iget-object v1, p0, Ljavazoom/jl/decoder/Header;->crc:Ljavazoom/jl/decoder/Crc16;

    invoke-virtual {v1}, Ljavazoom/jl/decoder/Crc16;->checksum()S

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public checksums()Z
    .registers 2

    .line 333
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_protection_bit:I

    if-nez v0, :cond_6

    .line 334
    const/4 v0, 0x1

    return v0

    .line 336
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public copyright()Z
    .registers 2

    .line 343
    iget-boolean v0, p0, Ljavazoom/jl/decoder/Header;->h_copyright:Z

    return v0
.end method

.method public frequency()I
    .registers 3

    .line 319
    sget-object v0, Ljavazoom/jl/decoder/Header;->frequencies:[[I

    iget v1, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    aget-object v0, v0, v1

    iget v1, p0, Ljavazoom/jl/decoder/Header;->h_sample_frequency:I

    aget v0, v0, v1

    return v0
.end method

.method public getSampleRate()I
    .registers 3

    .line 639
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_sample_frequency:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_3e

    .line 665
    const/4 v0, 0x0

    return v0

    .line 641
    :pswitch_8  #0x2
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    if-ne v0, v1, :cond_f

    .line 642
    const/16 v0, 0x7d00

    return v0

    .line 643
    :cond_f
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    if-nez v0, :cond_16

    .line 644
    const/16 v0, 0x3e80

    return v0

    .line 647
    :cond_16
    const/16 v0, 0x1f40

    return v0

    .line 657
    :pswitch_19  #0x1
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    if-ne v0, v1, :cond_21

    .line 658
    const v0, 0xbb80

    return v0

    .line 659
    :cond_21
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    if-nez v0, :cond_28

    .line 660
    const/16 v0, 0x5dc0

    return v0

    .line 663
    :cond_28
    const/16 v0, 0x2ee0

    return v0

    .line 649
    :pswitch_2b  #0x0
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    if-ne v0, v1, :cond_33

    .line 650
    const v0, 0xac44

    return v0

    .line 651
    :cond_33
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    if-nez v0, :cond_3a

    .line 652
    const/16 v0, 0x5622

    return v0

    .line 655
    :cond_3a
    const/16 v0, 0x2b11

    return v0

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_2b  #00000000
        :pswitch_19  #00000001
        :pswitch_8  #00000002
    .end packed-switch
.end method

.method public getSyncHeader()I
    .registers 2

    .line 529
    iget v0, p0, Ljavazoom/jl/decoder/Header;->_headerstring:I

    return v0
.end method

.method public intensity_stereo_bound()I
    .registers 2

    .line 715
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_intensity_stereo_bound:I

    return v0
.end method

.method public layer()I
    .registers 2

    .line 298
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_layer:I

    return v0
.end method

.method public layer_string()Ljava/lang/String;
    .registers 2

    .line 537
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_layer:I

    packed-switch v0, :pswitch_data_10

    .line 545
    const/4 v0, 0x0

    return-object v0

    .line 543
    :pswitch_7  #0x3
    const-string v0, "III"

    return-object v0

    .line 541
    :pswitch_a  #0x2
    const-string v0, "II"

    return-object v0

    .line 539
    :pswitch_d  #0x1
    const-string v0, "I"

    return-object v0

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d  #00000001
        :pswitch_a  #00000002
        :pswitch_7  #00000003
    .end packed-switch
.end method

.method public max_number_of_frames(I)I
    .registers 4
    .param p1, "streamsize"  # I

    .line 475
    iget-boolean v0, p0, Ljavazoom/jl/decoder/Header;->h_vbr:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 476
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_vbr_frames:I

    return v0

    .line 477
    :cond_8
    iget v0, p0, Ljavazoom/jl/decoder/Header;->framesize:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Ljavazoom/jl/decoder/Header;->h_padding_bit:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_13

    .line 478
    const/4 v0, 0x0

    return v0

    .line 480
    :cond_13
    iget v0, p0, Ljavazoom/jl/decoder/Header;->framesize:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Ljavazoom/jl/decoder/Header;->h_padding_bit:I

    sub-int/2addr v0, v1

    div-int v0, p1, v0

    return v0
.end method

.method public min_number_of_frames(I)I
    .registers 4
    .param p1, "streamsize"  # I

    .line 490
    iget-boolean v0, p0, Ljavazoom/jl/decoder/Header;->h_vbr:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 491
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_vbr_frames:I

    return v0

    .line 492
    :cond_8
    iget v0, p0, Ljavazoom/jl/decoder/Header;->framesize:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Ljavazoom/jl/decoder/Header;->h_padding_bit:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_13

    .line 493
    const/4 v0, 0x0

    return v0

    .line 495
    :cond_13
    iget v0, p0, Ljavazoom/jl/decoder/Header;->framesize:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Ljavazoom/jl/decoder/Header;->h_padding_bit:I

    sub-int/2addr v0, v1

    div-int v0, p1, v0

    return v0
.end method

.method public mode()I
    .registers 2

    .line 326
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_mode:I

    return v0
.end method

.method public mode_extension()I
    .registers 2

    .line 406
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_mode_extension:I

    return v0
.end method

.method public mode_string()Ljava/lang/String;
    .registers 2

    .line 672
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_mode:I

    packed-switch v0, :pswitch_data_14

    .line 682
    const/4 v0, 0x0

    return-object v0

    .line 680
    :pswitch_7  #0x3
    const-string v0, "Single channel"

    return-object v0

    .line 678
    :pswitch_a  #0x2
    const-string v0, "Dual channel"

    return-object v0

    .line 676
    :pswitch_d  #0x1
    const-string v0, "Joint stereo"

    return-object v0

    .line 674
    :pswitch_10  #0x0
    const-string v0, "Stereo"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_10  #00000000
        :pswitch_d  #00000001
        :pswitch_a  #00000002
        :pswitch_7  #00000003
    .end packed-switch
.end method

.method public ms_per_frame()F
    .registers 6

    .line 504
    iget-boolean v0, p0, Ljavazoom/jl/decoder/Header;->h_vbr:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 505
    iget-object v0, p0, Ljavazoom/jl/decoder/Header;->h_vbr_time_per_frame:[D

    invoke-virtual {p0}, Ljavazoom/jl/decoder/Header;->layer()I

    move-result v1

    aget-wide v1, v0, v1

    invoke-virtual {p0}, Ljavazoom/jl/decoder/Header;->frequency()I

    move-result v0

    int-to-double v3, v0

    div-double/2addr v1, v3

    .line 506
    .local v1, "tpf":D
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    if-eqz v0, :cond_1c

    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1f

    :cond_1c
    const-wide/high16 v3, 0x4000000000000000L  # 2.0

    div-double/2addr v1, v3

    .line 507
    :cond_1f
    const-wide v3, 0x408f400000000000L  # 1000.0

    mul-double/2addr v3, v1

    double-to-float v0, v3

    return v0

    .line 509
    .end local v1  # "tpf":D
    :cond_27
    const/4 v0, 0x3

    new-array v2, v0, [F

    fill-array-data v2, :array_46

    new-array v3, v0, [F

    fill-array-data v3, :array_50

    new-array v0, v0, [F

    fill-array-data v0, :array_5a

    filled-new-array {v2, v3, v0}, [[F

    move-result-object v0

    .line 510
    .local v0, "ms_per_frame_array":[[F
    iget v2, p0, Ljavazoom/jl/decoder/Header;->h_layer:I

    sub-int/2addr v2, v1

    aget-object v1, v0, v2

    iget v2, p0, Ljavazoom/jl/decoder/Header;->h_sample_frequency:I

    aget v1, v1, v2

    return v1

    nop

    :array_46
    .array-data 4
        0x410b51da
        0x41000000  # 8.0f
        0x41400000  # 12.0f
    .end array-data

    :array_50
    .array-data 4
        0x41d0fac7
        0x41c00000  # 24.0f
        0x42100000  # 36.0f
    .end array-data

    :array_5a
    .array-data 4
        0x41d0fac7
        0x41c00000  # 24.0f
        0x42100000  # 36.0f
    .end array-data
.end method

.method public number_of_subbands()I
    .registers 2

    .line 706
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_number_of_subbands:I

    return v0
.end method

.method public original()Z
    .registers 2

    .line 350
    iget-boolean v0, p0, Ljavazoom/jl/decoder/Header;->h_original:Z

    return v0
.end method

.method public padding()Z
    .registers 2

    .line 389
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_padding_bit:I

    if-nez v0, :cond_6

    .line 390
    const/4 v0, 0x0

    return v0

    .line 392
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method parseVBR([B)V
    .registers 18
    .param p1, "firstframe"  # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavazoom/jl/decoder/BitstreamException;
        }
    .end annotation

    .line 194
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Xing"

    .line 195
    .local v3, "xing":Ljava/lang/String;
    const/4 v0, 0x4

    new-array v4, v0, [B

    .line 196
    .local v4, "tmp":[B
    const/4 v5, 0x0

    .line 198
    .local v5, "offset":I
    iget v6, v1, Ljavazoom/jl/decoder/Header;->h_version:I

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1a

    .line 199
    iget v6, v1, Ljavazoom/jl/decoder/Header;->h_mode:I

    if-ne v6, v7, :cond_17

    .line 200
    const/16 v5, 0x11

    goto :goto_23

    .line 202
    :cond_17
    const/16 v5, 0x20

    goto :goto_23

    .line 203
    :cond_1a
    iget v6, v1, Ljavazoom/jl/decoder/Header;->h_mode:I

    if-ne v6, v7, :cond_21

    .line 204
    const/16 v5, 0x9

    goto :goto_23

    .line 206
    :cond_21
    const/16 v5, 0x11

    .line 208
    :goto_23
    const/4 v6, 0x0

    :try_start_24
    invoke-static {v2, v5, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/16 v10, 0x64

    const v11, 0xff00

    const/high16 v12, 0xff0000

    const/high16 v13, -0x1000000

    const/4 v14, 0x2

    const/4 v15, -0x1

    if-eqz v9, :cond_d9

    .line 212
    iput-boolean v8, v1, Ljavazoom/jl/decoder/Header;->h_vbr:Z

    .line 213
    iput v15, v1, Ljavazoom/jl/decoder/Header;->h_vbr_frames:I

    .line 214
    iput v15, v1, Ljavazoom/jl/decoder/Header;->h_vbr_bytes:I

    .line 215
    iput v15, v1, Ljavazoom/jl/decoder/Header;->h_vbr_scale:I

    .line 216
    new-array v9, v10, [B

    iput-object v9, v1, Ljavazoom/jl/decoder/Header;->h_vbr_toc:[B

    .line 218
    const/4 v9, 0x4

    .line 220
    .local v9, "length":I
    new-array v10, v0, [B

    .line 221
    .local v10, "flags":[B
    add-int v15, v5, v9

    array-length v0, v10

    invoke-static {v2, v15, v10, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    array-length v0, v10

    add-int/2addr v9, v0

    .line 224
    aget-byte v0, v10, v7

    and-int/2addr v0, v8

    if-eqz v0, :cond_79

    .line 225
    add-int v0, v5, v9

    array-length v15, v4

    invoke-static {v2, v0, v4, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    aget-byte v0, v4, v6

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v13

    aget-byte v15, v4, v8

    shl-int/lit8 v15, v15, 0x10

    and-int/2addr v15, v12

    or-int/2addr v0, v15

    aget-byte v15, v4, v14

    shl-int/lit8 v15, v15, 0x8

    and-int/2addr v15, v11

    or-int/2addr v0, v15

    aget-byte v15, v4, v7

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v0, v15

    iput v0, v1, Ljavazoom/jl/decoder/Header;->h_vbr_frames:I

    .line 228
    add-int/lit8 v9, v9, 0x4

    .line 231
    :cond_79
    aget-byte v0, v10, v7

    and-int/2addr v0, v14

    if-eqz v0, :cond_9e

    .line 232
    add-int v0, v5, v9

    array-length v15, v4

    invoke-static {v2, v0, v4, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    aget-byte v0, v4, v6

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v13

    aget-byte v15, v4, v8

    shl-int/lit8 v15, v15, 0x10

    and-int/2addr v15, v12

    or-int/2addr v0, v15

    aget-byte v15, v4, v14

    shl-int/lit8 v15, v15, 0x8

    and-int/2addr v15, v11

    or-int/2addr v0, v15

    aget-byte v15, v4, v7

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v0, v15

    iput v0, v1, Ljavazoom/jl/decoder/Header;->h_vbr_bytes:I

    .line 235
    add-int/lit8 v9, v9, 0x4

    .line 238
    :cond_9e
    aget-byte v0, v10, v7

    const/4 v15, 0x4

    and-int/2addr v0, v15

    if-eqz v0, :cond_b2

    .line 239
    add-int v0, v5, v9

    iget-object v15, v1, Ljavazoom/jl/decoder/Header;->h_vbr_toc:[B

    iget-object v11, v1, Ljavazoom/jl/decoder/Header;->h_vbr_toc:[B

    array-length v11, v11

    invoke-static {v2, v0, v15, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    iget-object v0, v1, Ljavazoom/jl/decoder/Header;->h_vbr_toc:[B

    array-length v0, v0

    add-int/2addr v9, v0

    .line 243
    :cond_b2
    aget-byte v0, v10, v7

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_d9

    .line 244
    .end local v9  # "length":I
    add-int/2addr v9, v5

    array-length v0, v4

    invoke-static {v2, v9, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    aget-byte v0, v4, v6

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v13

    aget-byte v9, v4, v8

    shl-int/lit8 v9, v9, 0x10

    and-int/2addr v9, v12

    or-int/2addr v0, v9

    aget-byte v9, v4, v14

    shl-int/lit8 v9, v9, 0x8

    const v11, 0xff00

    and-int/2addr v9, v11

    or-int/2addr v0, v9

    aget-byte v9, v4, v7

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v0, v9

    iput v0, v1, Ljavazoom/jl/decoder/Header;->h_vbr_scale:I
    :try_end_d8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_24 .. :try_end_d8} :catch_14d

    .line 247
    nop

    .line 253
    .end local v10  # "flags":[B
    :cond_d9
    nop

    .line 256
    const-string v9, "VBRI"

    .line 257
    .local v9, "vbri":Ljava/lang/String;
    const/16 v5, 0x20

    .line 259
    const/4 v0, 0x4

    :try_start_df
    invoke-static {v2, v5, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_142

    .line 263
    iput-boolean v8, v1, Ljavazoom/jl/decoder/Header;->h_vbr:Z

    .line 264
    const/4 v0, -0x1

    iput v0, v1, Ljavazoom/jl/decoder/Header;->h_vbr_frames:I

    .line 265
    iput v0, v1, Ljavazoom/jl/decoder/Header;->h_vbr_bytes:I

    .line 266
    iput v0, v1, Ljavazoom/jl/decoder/Header;->h_vbr_scale:I

    .line 267
    const/16 v0, 0x64

    new-array v0, v0, [B

    iput-object v0, v1, Ljavazoom/jl/decoder/Header;->h_vbr_toc:[B

    .line 269
    const/16 v0, 0xa

    .line 270
    .local v0, "length":I
    add-int v10, v5, v0

    array-length v11, v4

    invoke-static {v2, v10, v4, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    aget-byte v10, v4, v6

    shl-int/lit8 v10, v10, 0x18

    and-int/2addr v10, v13

    aget-byte v11, v4, v8

    shl-int/lit8 v11, v11, 0x10

    and-int/2addr v11, v12

    or-int/2addr v10, v11

    aget-byte v11, v4, v14

    shl-int/lit8 v11, v11, 0x8

    const v15, 0xff00

    and-int/2addr v11, v15

    or-int/2addr v10, v11

    aget-byte v11, v4, v7

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    iput v10, v1, Ljavazoom/jl/decoder/Header;->h_vbr_bytes:I

    .line 272
    const/4 v10, 0x4

    add-int/2addr v0, v10

    .line 274
    add-int/2addr v0, v5

    .end local v0  # "length":I
    array-length v10, v4

    invoke-static {v2, v0, v4, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    aget-byte v0, v4, v6

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v13

    aget-byte v6, v4, v8

    shl-int/lit8 v6, v6, 0x10

    and-int/2addr v6, v12

    or-int/2addr v0, v6

    aget-byte v6, v4, v14

    shl-int/lit8 v6, v6, 0x8

    const v8, 0xff00

    and-int/2addr v6, v8

    or-int/2addr v0, v6

    aget-byte v6, v4, v7

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v0, v6

    iput v0, v1, Ljavazoom/jl/decoder/Header;->h_vbr_frames:I
    :try_end_141
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_df .. :try_end_141} :catch_144

    .line 276
    nop

    .line 283
    :cond_142
    nop

    .line 284
    return-void

    .line 281
    :catch_144
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v6, Ljavazoom/jl/decoder/BitstreamException;

    const-string v7, "VBRIVBRHeader Corrupted"

    invoke-direct {v6, v7, v0}, Ljavazoom/jl/decoder/BitstreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 251
    .end local v0  # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v9  # "vbri":Ljava/lang/String;
    :catch_14d
    move-exception v0

    .line 252
    .restart local v0  # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v6, Ljavazoom/jl/decoder/BitstreamException;

    const-string v7, "XingVBRHeader Corrupted"

    invoke-direct {v6, v7, v0}, Ljavazoom/jl/decoder/BitstreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method read_header(Ljavazoom/jl/decoder/Bitstream;[Ljavazoom/jl/decoder/Crc16;)V
    .registers 12
    .param p1, "stream"  # Ljavazoom/jl/decoder/Bitstream;
    .param p2, "crcp"  # [Ljavazoom/jl/decoder/Crc16;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavazoom/jl/decoder/BitstreamException;
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, "sync":Z
    :cond_1
    iget-byte v1, p0, Ljavazoom/jl/decoder/Header;->syncmode:B

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->syncHeader(B)I

    move-result v1

    .line 110
    .local v1, "headerstring":I
    iput v1, p0, Ljavazoom/jl/decoder/Header;->_headerstring:I

    .line 111
    iget-byte v2, p0, Ljavazoom/jl/decoder/Header;->syncmode:B

    sget-byte v3, Ljavazoom/jl/decoder/Bitstream;->INITIAL_SYNC:B

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v2, v3, :cond_37

    .line 112
    ushr-int/lit8 v2, v1, 0x13

    and-int/2addr v2, v6

    iput v2, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    .line 113
    ushr-int/lit8 v2, v1, 0x14

    and-int/2addr v2, v6

    const/16 v3, 0x100

    if-nez v2, :cond_2a

    .line 114
    iget v2, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    if-nez v2, :cond_25

    .line 115
    iput v4, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    goto :goto_2a

    .line 117
    :cond_25
    invoke-virtual {p1, v3}, Ljavazoom/jl/decoder/Bitstream;->newBitstreamException(I)Ljavazoom/jl/decoder/BitstreamException;

    move-result-object v2

    throw v2

    .line 118
    :cond_2a
    :goto_2a
    ushr-int/lit8 v2, v1, 0xa

    and-int/2addr v2, v5

    iput v2, p0, Ljavazoom/jl/decoder/Header;->h_sample_frequency:I

    if-eq v2, v5, :cond_32

    goto :goto_37

    :cond_32
    invoke-virtual {p1, v3}, Ljavazoom/jl/decoder/Bitstream;->newBitstreamException(I)Ljavazoom/jl/decoder/BitstreamException;

    move-result-object v2

    throw v2

    .line 120
    :cond_37
    :goto_37
    ushr-int/lit8 v2, v1, 0x11

    const/4 v3, 0x4

    rsub-int/lit8 v2, v2, 0x4

    and-int/2addr v2, v5

    iput v2, p0, Ljavazoom/jl/decoder/Header;->h_layer:I

    .line 121
    ushr-int/lit8 v2, v1, 0x10

    and-int/2addr v2, v6

    iput v2, p0, Ljavazoom/jl/decoder/Header;->h_protection_bit:I

    .line 122
    ushr-int/lit8 v2, v1, 0xc

    and-int/lit8 v2, v2, 0xf

    iput v2, p0, Ljavazoom/jl/decoder/Header;->h_bitrate_index:I

    .line 123
    ushr-int/lit8 v2, v1, 0x9

    and-int/2addr v2, v6

    iput v2, p0, Ljavazoom/jl/decoder/Header;->h_padding_bit:I

    .line 124
    ushr-int/lit8 v2, v1, 0x6

    and-int/2addr v2, v5

    iput v2, p0, Ljavazoom/jl/decoder/Header;->h_mode:I

    .line 125
    ushr-int/lit8 v2, v1, 0x4

    and-int/2addr v2, v5

    iput v2, p0, Ljavazoom/jl/decoder/Header;->h_mode_extension:I

    .line 126
    iget v2, p0, Ljavazoom/jl/decoder/Header;->h_mode:I

    const/4 v7, 0x0

    if-ne v2, v6, :cond_65

    .line 127
    iget v2, p0, Ljavazoom/jl/decoder/Header;->h_mode_extension:I

    shl-int/2addr v2, v4

    add-int/2addr v2, v3

    iput v2, p0, Ljavazoom/jl/decoder/Header;->h_intensity_stereo_bound:I

    goto :goto_67

    .line 129
    :cond_65
    iput v7, p0, Ljavazoom/jl/decoder/Header;->h_intensity_stereo_bound:I

    .line 130
    :goto_67
    ushr-int/lit8 v2, v1, 0x3

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_6e

    iput-boolean v6, p0, Ljavazoom/jl/decoder/Header;->h_copyright:Z

    .line 131
    :cond_6e
    ushr-int/lit8 v2, v1, 0x2

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_75

    iput-boolean v6, p0, Ljavazoom/jl/decoder/Header;->h_original:Z

    .line 133
    :cond_75
    iget v2, p0, Ljavazoom/jl/decoder/Header;->h_layer:I

    if-ne v2, v6, :cond_7e

    .line 134
    const/16 v2, 0x20

    iput v2, p0, Ljavazoom/jl/decoder/Header;->h_number_of_subbands:I

    goto :goto_b0

    .line 136
    :cond_7e
    iget v2, p0, Ljavazoom/jl/decoder/Header;->h_bitrate_index:I

    .line 138
    .local v2, "channel_bitrate":I
    iget v8, p0, Ljavazoom/jl/decoder/Header;->h_mode:I

    if-eq v8, v5, :cond_8a

    if-ne v2, v3, :cond_88

    .line 139
    const/4 v2, 0x1

    goto :goto_8a

    .line 141
    :cond_88
    add-int/lit8 v2, v2, -0x4

    .line 142
    :cond_8a
    :goto_8a
    if-eq v2, v6, :cond_a3

    if-ne v2, v4, :cond_8f

    goto :goto_a3

    .line 147
    :cond_8f
    iget v3, p0, Ljavazoom/jl/decoder/Header;->h_sample_frequency:I

    if-eq v3, v6, :cond_9e

    if-lt v2, v5, :cond_99

    const/4 v3, 0x5

    if-gt v2, v3, :cond_99

    goto :goto_9e

    .line 150
    :cond_99
    const/16 v3, 0x1e

    iput v3, p0, Ljavazoom/jl/decoder/Header;->h_number_of_subbands:I

    goto :goto_b0

    .line 148
    :cond_9e
    :goto_9e
    const/16 v3, 0x1b

    iput v3, p0, Ljavazoom/jl/decoder/Header;->h_number_of_subbands:I

    goto :goto_b0

    .line 143
    :cond_a3
    :goto_a3
    iget v3, p0, Ljavazoom/jl/decoder/Header;->h_sample_frequency:I

    if-ne v3, v4, :cond_ac

    .line 144
    const/16 v3, 0xc

    iput v3, p0, Ljavazoom/jl/decoder/Header;->h_number_of_subbands:I

    goto :goto_b0

    .line 146
    :cond_ac
    const/16 v3, 0x8

    iput v3, p0, Ljavazoom/jl/decoder/Header;->h_number_of_subbands:I

    .line 152
    .end local v2  # "channel_bitrate":I
    :goto_b0
    iget v2, p0, Ljavazoom/jl/decoder/Header;->h_intensity_stereo_bound:I

    iget v3, p0, Ljavazoom/jl/decoder/Header;->h_number_of_subbands:I

    if-le v2, v3, :cond_ba

    iget v2, p0, Ljavazoom/jl/decoder/Header;->h_number_of_subbands:I

    iput v2, p0, Ljavazoom/jl/decoder/Header;->h_intensity_stereo_bound:I

    .line 154
    :cond_ba
    invoke-virtual {p0}, Ljavazoom/jl/decoder/Header;->calculate_framesize()I

    .line 156
    iget v2, p0, Ljavazoom/jl/decoder/Header;->framesize:I

    invoke-virtual {p1, v2}, Ljavazoom/jl/decoder/Bitstream;->read_frame_data(I)I

    move-result v2

    .line 157
    .local v2, "framesizeloaded":I
    iget v3, p0, Ljavazoom/jl/decoder/Header;->framesize:I

    if-ltz v3, :cond_d3

    iget v3, p0, Ljavazoom/jl/decoder/Header;->framesize:I

    if-ne v2, v3, :cond_cc

    goto :goto_d3

    .line 159
    :cond_cc
    const/16 v3, 0x105

    invoke-virtual {p1, v3}, Ljavazoom/jl/decoder/Bitstream;->newBitstreamException(I)Ljavazoom/jl/decoder/BitstreamException;

    move-result-object v3

    throw v3

    .line 160
    :cond_d3
    :goto_d3
    iget-byte v3, p0, Ljavazoom/jl/decoder/Header;->syncmode:B

    invoke-virtual {p1, v3}, Ljavazoom/jl/decoder/Bitstream;->isSyncCurrentPosition(I)Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 161
    iget-byte v3, p0, Ljavazoom/jl/decoder/Header;->syncmode:B

    sget-byte v4, Ljavazoom/jl/decoder/Bitstream;->INITIAL_SYNC:B

    if-ne v3, v4, :cond_ec

    .line 162
    sget-byte v3, Ljavazoom/jl/decoder/Bitstream;->STRICT_SYNC:B

    iput-byte v3, p0, Ljavazoom/jl/decoder/Header;->syncmode:B

    .line 163
    const v3, -0x7f340

    and-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljavazoom/jl/decoder/Bitstream;->set_syncword(I)V

    .line 165
    :cond_ec
    const/4 v0, 0x1

    goto :goto_f1

    .line 167
    :cond_ee
    invoke-virtual {p1}, Ljavazoom/jl/decoder/Bitstream;->unreadFrame()V

    .line 168
    .end local v2  # "framesizeloaded":I
    :goto_f1
    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p1}, Ljavazoom/jl/decoder/Bitstream;->parse_frame()V

    .line 170
    iget v2, p0, Ljavazoom/jl/decoder/Header;->h_protection_bit:I

    if-nez v2, :cond_118

    .line 172
    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v3

    int-to-short v3, v3

    iput-short v3, p0, Ljavazoom/jl/decoder/Header;->checksum:S

    .line 173
    iget-object v3, p0, Ljavazoom/jl/decoder/Header;->crc:Ljavazoom/jl/decoder/Crc16;

    if-nez v3, :cond_10e

    new-instance v3, Ljavazoom/jl/decoder/Crc16;

    invoke-direct {v3}, Ljavazoom/jl/decoder/Crc16;-><init>()V

    iput-object v3, p0, Ljavazoom/jl/decoder/Header;->crc:Ljavazoom/jl/decoder/Crc16;

    .line 174
    :cond_10e
    iget-object v3, p0, Ljavazoom/jl/decoder/Header;->crc:Ljavazoom/jl/decoder/Crc16;

    invoke-virtual {v3, v1, v2}, Ljavazoom/jl/decoder/Crc16;->add_bits(II)V

    .line 175
    iget-object v2, p0, Ljavazoom/jl/decoder/Header;->crc:Ljavazoom/jl/decoder/Crc16;

    aput-object v2, p2, v7

    goto :goto_11b

    .line 177
    :cond_118
    const/4 v2, 0x0

    aput-object v2, p2, v7

    .line 178
    :goto_11b
    nop

    .line 185
    return-void
.end method

.method public sample_frequency()I
    .registers 2

    .line 312
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_sample_frequency:I

    return v0
.end method

.method public sample_frequency_string()Ljava/lang/String;
    .registers 3

    .line 609
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_sample_frequency:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_3c

    .line 635
    const/4 v0, 0x0

    return-object v0

    .line 611
    :pswitch_8  #0x2
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    if-ne v0, v1, :cond_f

    .line 612
    const-string v0, "32 kHz"

    return-object v0

    .line 613
    :cond_f
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    if-nez v0, :cond_16

    .line 614
    const-string v0, "16 kHz"

    return-object v0

    .line 617
    :cond_16
    const-string v0, "8 kHz"

    return-object v0

    .line 627
    :pswitch_19  #0x1
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    if-ne v0, v1, :cond_20

    .line 628
    const-string v0, "48 kHz"

    return-object v0

    .line 629
    :cond_20
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    if-nez v0, :cond_27

    .line 630
    const-string v0, "24 kHz"

    return-object v0

    .line 633
    :cond_27
    const-string v0, "12 kHz"

    return-object v0

    .line 619
    :pswitch_2a  #0x0
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    if-ne v0, v1, :cond_31

    .line 620
    const-string v0, "44.1 kHz"

    return-object v0

    .line 621
    :cond_31
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    if-nez v0, :cond_38

    .line 622
    const-string v0, "22.05 kHz"

    return-object v0

    .line 625
    :cond_38
    const-string v0, "11.025 kHz"

    return-object v0

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_2a  #00000000
        :pswitch_19  #00000001
        :pswitch_8  #00000002
    .end packed-switch
.end method

.method public slots()I
    .registers 2

    .line 399
    iget v0, p0, Ljavazoom/jl/decoder/Header;->nSlots:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 82
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 83
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "Layer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {p0}, Ljavazoom/jl/decoder/Header;->layer_string()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const-string v1, " frame "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual {p0}, Ljavazoom/jl/decoder/Header;->mode_string()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {p0}, Ljavazoom/jl/decoder/Header;->version_string()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    invoke-virtual {p0}, Ljavazoom/jl/decoder/Header;->checksums()Z

    move-result v2

    if-nez v2, :cond_36

    const-string v2, " no"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    :cond_36
    const-string v2, " checksums"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 92
    invoke-virtual {p0}, Ljavazoom/jl/decoder/Header;->sample_frequency_string()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {p0}, Ljavazoom/jl/decoder/Header;->bitrate_string()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "s":Ljava/lang/String;
    return-object v1
.end method

.method public total_ms(I)F
    .registers 4
    .param p1, "streamsize"  # I

    .line 521
    invoke-virtual {p0, p1}, Ljavazoom/jl/decoder/Header;->max_number_of_frames(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Ljavazoom/jl/decoder/Header;->ms_per_frame()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public vbr()Z
    .registers 2

    .line 358
    iget-boolean v0, p0, Ljavazoom/jl/decoder/Header;->h_vbr:Z

    return v0
.end method

.method public vbr_scale()I
    .registers 2

    .line 366
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_vbr_scale:I

    return v0
.end method

.method public vbr_toc()[B
    .registers 2

    .line 374
    iget-object v0, p0, Ljavazoom/jl/decoder/Header;->h_vbr_toc:[B

    return-object v0
.end method

.method public version()I
    .registers 2

    .line 291
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    return v0
.end method

.method public version_string()Ljava/lang/String;
    .registers 2

    .line 690
    iget v0, p0, Ljavazoom/jl/decoder/Header;->h_version:I

    packed-switch v0, :pswitch_data_10

    .line 698
    const/4 v0, 0x0

    return-object v0

    .line 696
    :pswitch_7  #0x2
    const-string v0, "MPEG-2.5 LSF"

    return-object v0

    .line 692
    :pswitch_a  #0x1
    const-string v0, "MPEG-1"

    return-object v0

    .line 694
    :pswitch_d  #0x0
    const-string v0, "MPEG-2 LSF"

    return-object v0

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_d  #00000000
        :pswitch_a  #00000001
        :pswitch_7  #00000002
    .end packed-switch
.end method
