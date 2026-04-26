.class public final Ljavazoom/jl/decoder/LayerIIIDecoder;
.super Ljava/lang/Object;
.source "LayerIIIDecoder.java"

# interfaces
.implements Ljavazoom/jl/decoder/FrameDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavazoom/jl/decoder/LayerIIIDecoder$Sftable;,
        Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;,
        Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;,
        Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;,
        Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;,
        Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;
    }
.end annotation


# static fields
.field private static final SBLIMIT:I = 0x20

.field private static final SSLIMIT:I = 0x12

.field public static final TAN12:[F

.field private static final ca:[F

.field private static final cs:[F

.field public static final io:[[F

.field public static final nr_of_sfb_block:[[[I

.field public static final pretab:[I

.field private static reorder_table:[[I

.field private static final slen:[[I

.field public static final t_43:[F

.field public static final two_to_negative_half_pow:[F

.field public static final win:[[F


# instance fields
.field private CheckSumHuff:I

.field private III_scalefac_t:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

.field private br:Ljavazoom/jl/decoder/BitReserve;

.field private buffer:Ljavazoom/jl/decoder/OutputBuffer;

.field private channels:I

.field private counter:I

.field final d43:D

.field private filter1:Ljavazoom/jl/decoder/SynthesisFilter;

.field private filter2:Ljavazoom/jl/decoder/SynthesisFilter;

.field private first_channel:I

.field private frame_start:I

.field private header:Ljavazoom/jl/decoder/Header;

.field private is_1d:[I

.field is_pos:[I

.field is_ratio:[F

.field private k:[[F

.field private last_channel:I

.field private lr:[[[F

.field private max_gr:I

.field private final new_slen:[I

.field private nonzero:[I

.field private out_1d:[F

.field private part2_start:I

.field private prevblck:[[F

.field rawout:[F

.field private ro:[[[F

.field private samples1:[F

.field private samples2:[F

.field private scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

.field public scalefac_buffer:[I

.field private sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

.field private sfreq:I

.field public sftable:Ljavazoom/jl/decoder/LayerIIIDecoder$Sftable;

.field private si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

.field private stream:Ljavazoom/jl/decoder/Bitstream;

.field tsOutCopy:[F

.field v:[I

.field w:[I

.field private which_channels:I

.field x:[I

.field y:[I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 1830
    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_f0

    new-array v2, v0, [I

    fill-array-data v2, :array_114

    filled-new-array {v1, v2}, [[I

    move-result-object v1

    sput-object v1, Ljavazoom/jl/decoder/LayerIIIDecoder;->slen:[[I

    .line 1833
    const/16 v1, 0x16

    new-array v1, v1, [I

    fill-array-data v1, :array_138

    sput-object v1, Ljavazoom/jl/decoder/LayerIIIDecoder;->pretab:[I

    .line 1837
    const/16 v1, 0x40

    new-array v1, v1, [F

    fill-array-data v1, :array_168

    sput-object v1, Ljavazoom/jl/decoder/LayerIIIDecoder;->two_to_negative_half_pow:[F

    .line 1850
    invoke-static {}, Ljavazoom/jl/decoder/LayerIIIDecoder;->create_t_43()[F

    move-result-object v1

    sput-object v1, Ljavazoom/jl/decoder/LayerIIIDecoder;->t_43:[F

    .line 1861
    const/16 v1, 0x20

    new-array v1, v1, [F

    fill-array-data v1, :array_1ec

    const/16 v2, 0x20

    new-array v2, v2, [F

    fill-array-data v2, :array_230

    filled-new-array {v1, v2}, [[F

    move-result-object v1

    sput-object v1, Ljavazoom/jl/decoder/LayerIIIDecoder;->io:[[F

    .line 1875
    new-array v0, v0, [F

    fill-array-data v0, :array_274

    sput-object v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->TAN12:[F

    .line 1902
    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_298

    sput-object v1, Ljavazoom/jl/decoder/LayerIIIDecoder;->cs:[F

    .line 1905
    new-array v1, v0, [F

    fill-array-data v1, :array_2ac

    sput-object v1, Ljavazoom/jl/decoder/LayerIIIDecoder;->ca:[F

    .line 1923
    const/16 v1, 0x24

    new-array v2, v1, [F

    fill-array-data v2, :array_2c0

    new-array v3, v1, [F

    fill-array-data v3, :array_30c

    new-array v4, v1, [F

    fill-array-data v4, :array_358

    new-array v1, v1, [F

    fill-array-data v1, :array_3a4

    filled-new-array {v2, v3, v4, v1}, [[F

    move-result-object v1

    sput-object v1, Ljavazoom/jl/decoder/LayerIIIDecoder;->win:[[F

    .line 1973
    const/4 v1, 0x6

    const/4 v2, 0x5

    filled-new-array {v1, v2, v2, v2}, [I

    move-result-object v3

    const/16 v4, 0x9

    filled-new-array {v4, v4, v4, v4}, [I

    move-result-object v5

    filled-new-array {v1, v4, v4, v4}, [I

    move-result-object v6

    filled-new-array {v3, v5, v6}, [[I

    move-result-object v7

    const/4 v3, 0x7

    const/4 v5, 0x3

    filled-new-array {v1, v2, v3, v5}, [I

    move-result-object v6

    const/16 v8, 0xc

    filled-new-array {v4, v4, v8, v1}, [I

    move-result-object v9

    filled-new-array {v1, v4, v8, v1}, [I

    move-result-object v10

    filled-new-array {v6, v9, v10}, [[I

    move-result-object v6

    const/16 v9, 0xb

    const/16 v10, 0xa

    const/4 v11, 0x0

    filled-new-array {v9, v10, v11, v11}, [I

    move-result-object v9

    const/16 v10, 0x12

    filled-new-array {v10, v10, v11, v11}, [I

    move-result-object v12

    const/16 v13, 0xf

    filled-new-array {v13, v10, v11, v11}, [I

    move-result-object v13

    filled-new-array {v9, v12, v13}, [[I

    move-result-object v9

    filled-new-array {v3, v3, v3, v11}, [I

    move-result-object v3

    filled-new-array {v8, v8, v8, v11}, [I

    move-result-object v12

    const/16 v13, 0xf

    filled-new-array {v1, v13, v8, v11}, [I

    move-result-object v13

    filled-new-array {v3, v12, v13}, [[I

    move-result-object v3

    filled-new-array {v1, v1, v1, v5}, [I

    move-result-object v5

    filled-new-array {v8, v4, v4, v1}, [I

    move-result-object v12

    filled-new-array {v1, v8, v4, v1}, [I

    move-result-object v13

    filled-new-array {v5, v12, v13}, [[I

    move-result-object v5

    filled-new-array {v0, v0, v2, v11}, [I

    move-result-object v0

    const/16 v2, 0xf

    filled-new-array {v2, v8, v4, v11}, [I

    move-result-object v2

    filled-new-array {v1, v10, v4, v11}, [I

    move-result-object v1

    filled-new-array {v0, v2, v1}, [[I

    move-result-object v12

    move-object v8, v6

    move-object v10, v3

    move-object v11, v5

    filled-new-array/range {v7 .. v12}, [[[I

    move-result-object v0

    sput-object v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->nr_of_sfb_block:[[[I

    return-void

    :array_f0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x3
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x4
        0x4
    .end array-data

    :array_114
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x0
        0x1
        0x2
        0x3
        0x1
        0x2
        0x3
        0x1
        0x2
        0x3
        0x2
        0x3
    .end array-data

    :array_138
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x3
        0x2
        0x0
    .end array-data

    :array_168
    .array-data 4
        0x3f800000  # 1.0f
        0x3f3504f3
        0x3f000000  # 0.5f
        0x3eb504f3
        0x3e800000  # 0.25f
        0x3e3504f3
        0x3e000000  # 0.125f
        0x3db504f3
        0x3d800000  # 0.0625f
        0x3d3504f3
        0x3d000000  # 0.03125f
        0x3cb504f3
        0x3c800000  # 0.015625f
        0x3c3504f3
        0x3c000000  # 0.0078125f
        0x3bb504f3
        0x3b800000  # 0.00390625f
        0x3b3504f3
        0x3b000000  # 0.001953125f
        0x3ab504f3
        0x3a800000  # 9.765625E-4f
        0x3a3504f3
        0x3a000000
        0x39b504f3
        0x39800000
        0x393504f3
        0x39000000
        0x38b504f3
        0x38800000
        0x383504f3
        0x38000000
        0x37b504f3
        0x37800000
        0x373504f3
        0x37000000
        0x36b504f3
        0x36800000
        0x363504f3
        0x36000000
        0x35b504f3
        0x35800000
        0x353504f3
        0x35000000
        0x34b504f3
        0x34800000
        0x343504f3
        0x34000000
        0x33b504f3
        0x33800000
        0x333504f3
        0x33000000
        0x32b504f3
        0x32800000
        0x323504f3
        0x32000000
        0x31b504f3
        0x31800000
        0x313504f3
        0x31000000
        0x30b504f3
        0x30800000
        0x303504f3
        0x30000000
        0x2fb504f3
    .end array-data

    :array_1ec
    .array-data 4
        0x3f800000  # 1.0f
        0x3f5744fd
        0x3f3504f3
        0x3f1837f0
        0x3f000000  # 0.5f
        0x3ed744fd
        0x3eb504f3
        0x3e9837f0
        0x3e800000  # 0.25f
        0x3e5744fd
        0x3e3504f3
        0x3e1837f0
        0x3e000000  # 0.125f
        0x3dd744fd
        0x3db504f3
        0x3d9837f0
        0x3d800000  # 0.0625f
        0x3d5744fd
        0x3d3504f3
        0x3d1837f0
        0x3d000000  # 0.03125f
        0x3cd744fd
        0x3cb504f3
        0x3c9837f0
        0x3c800000  # 0.015625f
        0x3c5744fd
        0x3c3504f3
        0x3c1837f0
        0x3c000000  # 0.0078125f
        0x3bd744fd
        0x3bb504f3
        0x3b9837f0
    .end array-data

    :array_230
    .array-data 4
        0x3f800000  # 1.0f
        0x3f3504f3
        0x3f000000  # 0.5f
        0x3eb504f3
        0x3e800000  # 0.25f
        0x3e3504f3
        0x3e000000  # 0.125f
        0x3db504f3
        0x3d800000  # 0.0625f
        0x3d3504f3
        0x3d000000  # 0.03125f
        0x3cb504f3
        0x3c800000  # 0.015625f
        0x3c3504f3
        0x3c000000  # 0.0078125f
        0x3bb504f3
        0x3b800000  # 0.00390625f
        0x3b3504f3
        0x3b000000  # 0.001953125f
        0x3ab504f3
        0x3a800000  # 9.765625E-4f
        0x3a3504f3
        0x3a000000
        0x39b504f3
        0x39800000
        0x393504f3
        0x39000000
        0x38b504f3
        0x38800000
        0x383504f3
        0x38000000
        0x37b504f3
    .end array-data

    :array_274
    .array-data 4
        0x0
        0x3e8930a3
        0x3f13cd3a
        0x3f800000  # 1.0f
        0x3fddb3d7
        0x406ed9ec
        0x51ba43b7  # 9.9999998E10f
        -0x3f912614
        -0x40224c29
        -0x40800000  # -1.0f
        -0x40ec32c6
        -0x4176cf5d
        0x0
        0x3e8930a3
        0x3f13cd3a
        0x3f800000  # 1.0f
    .end array-data

    :array_298
    .array-data 4
        0x3f5b84a8
        0x3f61b9d8  # 0.881742f
        0x3f731add
        0x3f7bba81
        0x3f7eda41
        0x3f7fc8fd
        0x3f7ff965
        0x3f7fff8d  # 0.99999315f
    .end array-data

    :array_2ac
    .array-data 4
        -0x40fc4a02
        -0x410e7926
        -0x415f8cfe
        -0x41c5b88c
        -0x423e4fe3
        -0x42d83479
        -0x43975ee3
        -0x448d84ba  # -0.0036999746f
    .end array-data

    :array_2c0
    .array-data 4
        -0x437bc56b
        -0x42a470fe
        -0x4231c075
        -0x41d948d0
        -0x41000000  # -0.5f
        -0x413b731e
        -0x40e11f9c
        -0x406ac150
        -0x3f882feb
        -0x3f78c7a6
        -0x403d8013
        -0x40869d22
        -0x40c33715
        -0x40657d86
        -0x40fbcfba
        -0x41176b2a
        -0x412f892d
        -0x4142b764
        -0x41528db2
        -0x41600a32
        -0x416bd44e
        -0x41765fbd
        -0x41000000  # -0.5f
        -0x4191e7ce
        -0x41a2d982
        -0x41b32626  # -0.20004979f
        -0x41c313c3
        -0x41d2e257
        -0x41e2cff3
        -0x41f31c97
        -0x42081c97
        -0x41abec33
        -0x42526d3e
        -0x427c9afb
        -0x42d786d7
        -0x438dab49
    .end array-data

    :array_30c
    .array-data 4
        -0x437bc56b
        -0x42a470fe
        -0x4231c075
        -0x41d948d0
        -0x41000000  # -0.5f
        -0x413b731e
        -0x40e11f9c
        -0x406ac150
        -0x3f882feb
        -0x3f78c7a6
        -0x403d8013
        -0x40869d22
        -0x40c33715
        -0x40657d86
        -0x40fbcfba
        -0x41176b2a
        -0x412f892d
        -0x4142b764
        -0x41526365
        -0x415ea8d7
        -0x41683b57
        -0x416fb1f3
        -0x40f5742c
        -0x4179c9cc
        -0x417e038d
        -0x4191722c
        -0x41b4b543
        -0x41e40234
        -0x423a6018
        -0x42f71893
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_358
    .array-data 4
        -0x42ba28f1
        -0x41df1259
        -0x416ef9cc
        -0x412413aa
        -0x40657d86
        -0x40acfcfb
        -0x406d6ae9
        -0x401d8013
        -0x3f6e7ecb
        -0x3fa0b35b
        -0x40c45c8b
        -0x41e59dd2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3a4
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x41e59dd3
        -0x40c45c8b
        -0x3fa0b35b
        -0x3f6e7ecb
        -0x401d8013
        -0x406d6ae9
        -0x40ab2ada
        -0x4058c28b
        -0x40f5657d
        -0x4111c58b
        -0x412dbcad
        -0x4142893a
        -0x41528db2
        -0x41600a32
        -0x416bd44e
        -0x41765fbd
        -0x41000000  # -0.5f
        -0x4191e7ce
        -0x41a2d982
        -0x41b32626  # -0.20004979f
        -0x41c313c3
        -0x41d2e257
        -0x41e2cff3
        -0x41f31c97
        -0x42081c97
        -0x41abec33
        -0x42526d3e
        -0x427c9afb
        -0x42d786d7
        -0x438dab49
    .end array-data
.end method

.method public constructor <init>(Ljavazoom/jl/decoder/Bitstream;Ljavazoom/jl/decoder/Header;Ljavazoom/jl/decoder/SynthesisFilter;Ljavazoom/jl/decoder/SynthesisFilter;Ljavazoom/jl/decoder/OutputBuffer;I)V
    .registers 38
    .param p1, "stream0"  # Ljavazoom/jl/decoder/Bitstream;
    .param p2, "header0"  # Ljavazoom/jl/decoder/Header;
    .param p3, "filtera"  # Ljavazoom/jl/decoder/SynthesisFilter;
    .param p4, "filterb"  # Ljavazoom/jl/decoder/SynthesisFilter;
    .param p5, "buffer0"  # Ljavazoom/jl/decoder/OutputBuffer;
    .param p6, "which_ch0"  # I

    .line 69
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-wide v1, 0x3ff5555555555555L  # 1.3333333333333333

    iput-wide v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->d43:D

    .line 35
    const/4 v1, 0x0

    iput v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->CheckSumHuff:I

    .line 201
    const/16 v2, 0x20

    new-array v3, v2, [F

    iput-object v3, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->samples1:[F

    .line 202
    new-array v3, v2, [F

    iput-object v3, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->samples2:[F

    .line 541
    const/4 v3, 0x4

    new-array v4, v3, [I

    iput-object v4, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    .line 682
    filled-new-array {v1}, [I

    move-result-object v4

    iput-object v4, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->x:[I

    .line 683
    filled-new-array {v1}, [I

    move-result-object v4

    iput-object v4, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->y:[I

    .line 684
    filled-new-array {v1}, [I

    move-result-object v4

    iput-object v4, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->v:[I

    .line 685
    filled-new-array {v1}, [I

    move-result-object v4

    iput-object v4, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->w:[I

    .line 1023
    const/16 v4, 0x240

    new-array v5, v4, [I

    iput-object v5, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_pos:[I

    .line 1024
    new-array v5, v4, [F

    iput-object v5, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_ratio:[F

    .line 1320
    const/16 v5, 0x12

    new-array v6, v5, [F

    iput-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->tsOutCopy:[F

    .line 1321
    const/16 v6, 0x24

    new-array v6, v6, [F

    iput-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    .line 1722
    iput v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->counter:I

    .line 70
    invoke-static {}, Ljavazoom/jl/decoder/huffcodetab;->inithuff()V

    .line 71
    const/16 v6, 0x244

    new-array v6, v6, [I

    iput-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_1d:[I

    .line 72
    const/4 v6, 0x3

    new-array v6, v6, [I

    const/4 v7, 0x2

    aput v5, v6, v7

    const/4 v8, 0x1

    aput v2, v6, v8

    aput v7, v6, v1

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[[F

    iput-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->ro:[[[F

    .line 73
    const/4 v6, 0x3

    new-array v6, v6, [I

    aput v5, v6, v7

    aput v2, v6, v8

    aput v7, v6, v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[F

    iput-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->lr:[[[F

    .line 74
    new-array v2, v4, [F

    iput-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->out_1d:[F

    .line 75
    new-array v2, v7, [I

    aput v4, v2, v8

    aput v7, v2, v1

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->prevblck:[[F

    .line 76
    new-array v2, v7, [I

    aput v4, v2, v8

    aput v7, v2, v1

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->k:[[F

    .line 77
    new-array v2, v7, [I

    iput-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->nonzero:[I

    .line 80
    new-array v2, v7, [Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    iput-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->III_scalefac_t:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    .line 81
    iget-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->III_scalefac_t:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    new-instance v5, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    invoke-direct {v5}, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;-><init>()V

    aput-object v5, v2, v1

    .line 82
    iget-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->III_scalefac_t:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    new-instance v5, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    invoke-direct {v5}, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;-><init>()V

    aput-object v5, v2, v8

    .line 83
    iget-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->III_scalefac_t:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    iput-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    .line 86
    const/16 v2, 0x9

    new-array v2, v2, [Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iput-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    .line 87
    const/16 v2, 0x17

    new-array v5, v2, [I

    fill-array-data v5, :array_2ba

    .line 88
    .local v5, "l0":[I
    const/16 v6, 0xe

    new-array v9, v6, [I

    fill-array-data v9, :array_2ec

    .line 89
    .local v9, "s0":[I
    new-array v10, v2, [I

    fill-array-data v10, :array_30c

    .line 90
    .local v10, "l1":[I
    new-array v11, v6, [I

    fill-array-data v11, :array_33e

    .line 91
    .local v11, "s1":[I
    new-array v12, v2, [I

    fill-array-data v12, :array_35e

    .line 92
    .local v12, "l2":[I
    new-array v13, v6, [I

    fill-array-data v13, :array_390

    .line 94
    .local v13, "s2":[I
    new-array v14, v2, [I

    fill-array-data v14, :array_3b0

    .line 95
    .local v14, "l3":[I
    new-array v15, v6, [I

    fill-array-data v15, :array_3e2

    .line 96
    .local v15, "s3":[I
    new-array v4, v2, [I

    fill-array-data v4, :array_402

    .line 97
    .local v4, "l4":[I
    new-array v3, v6, [I

    fill-array-data v3, :array_434

    .line 98
    .local v3, "s4":[I
    new-array v7, v2, [I

    fill-array-data v7, :array_454

    .line 99
    .local v7, "l5":[I
    new-array v8, v6, [I

    fill-array-data v8, :array_486

    .line 101
    .local v8, "s5":[I
    new-array v1, v2, [I

    fill-array-data v1, :array_4a6

    .line 102
    .local v1, "l6":[I
    new-array v2, v6, [I

    fill-array-data v2, :array_4d8

    .line 103
    .local v2, "s6":[I
    move-object/from16 v21, v1

    const/16 v6, 0x17

    .end local v1  # "l6":[I
    .local v21, "l6":[I
    new-array v1, v6, [I

    fill-array-data v1, :array_4f8

    .line 104
    .local v1, "l7":[I
    move-object/from16 v22, v1

    const/16 v6, 0xe

    .end local v1  # "l7":[I
    .local v22, "l7":[I
    new-array v1, v6, [I

    fill-array-data v1, :array_52a

    .line 105
    .local v1, "s7":[I
    const/16 v6, 0x17

    new-array v6, v6, [I

    fill-array-data v6, :array_54a

    .line 106
    .local v6, "l8":[I
    move-object/from16 v23, v6

    const/16 v6, 0xe

    .end local v6  # "l8":[I
    .local v23, "l8":[I
    new-array v6, v6, [I

    fill-array-data v6, :array_57c

    .line 108
    .local v6, "s8":[I
    move-object/from16 v24, v6

    .end local v6  # "s8":[I
    .local v24, "s8":[I
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    move-object/from16 v25, v1

    .end local v1  # "s7":[I
    .local v25, "s7":[I
    new-instance v1, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    invoke-direct {v1, v5, v9}, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;-><init>([I[I)V

    const/16 v20, 0x0

    aput-object v1, v6, v20

    .line 109
    iget-object v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    new-instance v6, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    invoke-direct {v6, v10, v11}, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;-><init>([I[I)V

    const/16 v19, 0x1

    aput-object v6, v1, v19

    .line 110
    iget-object v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    new-instance v6, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    invoke-direct {v6, v12, v13}, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;-><init>([I[I)V

    const/16 v18, 0x2

    aput-object v6, v1, v18

    .line 112
    iget-object v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    new-instance v6, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    invoke-direct {v6, v14, v15}, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;-><init>([I[I)V

    const/16 v26, 0x3

    aput-object v6, v1, v26

    .line 113
    iget-object v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    new-instance v6, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    invoke-direct {v6, v4, v3}, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;-><init>([I[I)V

    const/16 v17, 0x4

    aput-object v6, v1, v17

    .line 114
    iget-object v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    new-instance v6, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    invoke-direct {v6, v7, v8}, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;-><init>([I[I)V

    const/16 v17, 0x5

    aput-object v6, v1, v17

    .line 116
    iget-object v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    new-instance v6, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    move-object/from16 v17, v3

    move-object/from16 v3, v21

    .end local v21  # "l6":[I
    .local v3, "l6":[I
    .local v17, "s4":[I
    invoke-direct {v6, v3, v2}, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;-><init>([I[I)V

    move-object/from16 v21, v2

    .end local v2  # "s6":[I
    .local v21, "s6":[I
    const/4 v2, 0x6

    aput-object v6, v1, v2

    .line 117
    iget-object v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    new-instance v6, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    move-object/from16 v2, v22

    move-object/from16 v22, v3

    move-object/from16 v3, v25

    .end local v25  # "s7":[I
    .local v2, "l7":[I
    .local v3, "s7":[I
    .local v22, "l6":[I
    invoke-direct {v6, v2, v3}, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;-><init>([I[I)V

    const/16 v25, 0x7

    aput-object v6, v1, v25

    .line 118
    iget-object v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    new-instance v6, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    move-object/from16 v25, v2

    move-object/from16 v2, v23

    move-object/from16 v23, v3

    move-object/from16 v3, v24

    .end local v24  # "s8":[I
    .local v2, "l8":[I
    .local v3, "s8":[I
    .local v23, "s7":[I
    .local v25, "l7":[I
    invoke-direct {v6, v2, v3}, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;-><init>([I[I)V

    const/16 v24, 0x8

    aput-object v6, v1, v24

    .line 121
    sget-object v1, Ljavazoom/jl/decoder/LayerIIIDecoder;->reorder_table:[[I

    if-nez v1, :cond_1d4

    .line 122
    const/16 v1, 0x9

    new-array v1, v1, [[I

    sput-object v1, Ljavazoom/jl/decoder/LayerIIIDecoder;->reorder_table:[[I

    .line 123
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b8
    const/16 v6, 0x9

    if-ge v1, v6, :cond_1d1

    .line 124
    sget-object v6, Ljavazoom/jl/decoder/LayerIIIDecoder;->reorder_table:[[I

    move-object/from16 v24, v2

    .end local v2  # "l8":[I
    .local v24, "l8":[I
    iget-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    aget-object v2, v2, v1

    iget-object v2, v2, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    invoke-static {v2}, Ljavazoom/jl/decoder/LayerIIIDecoder;->reorder([I)[I

    move-result-object v2

    aput-object v2, v6, v1

    .line 123
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v24

    goto :goto_1b8

    .end local v24  # "l8":[I
    .restart local v2  # "l8":[I
    :cond_1d1
    move-object/from16 v24, v2

    .end local v2  # "l8":[I
    .restart local v24  # "l8":[I
    goto :goto_1d6

    .line 121
    .end local v1  # "i":I
    .end local v24  # "l8":[I
    .restart local v2  # "l8":[I
    :cond_1d4
    move-object/from16 v24, v2

    .line 128
    .end local v2  # "l8":[I
    .restart local v24  # "l8":[I
    :goto_1d6
    const/16 v1, 0xb

    const/16 v2, 0x15

    const/16 v6, 0x10

    move-object/from16 v27, v3

    move-object/from16 v26, v4

    const/4 v3, 0x0

    const/4 v4, 0x6

    .end local v3  # "s8":[I
    .end local v4  # "l4":[I
    .local v26, "l4":[I
    .local v27, "s8":[I
    filled-new-array {v3, v4, v1, v6, v2}, [I

    move-result-object v1

    .line 129
    .local v1, "ll0":[I
    const/16 v2, 0xc

    filled-new-array {v3, v4, v2}, [I

    move-result-object v2

    .line 130
    .local v2, "ss0":[I
    new-instance v3, Ljavazoom/jl/decoder/LayerIIIDecoder$Sftable;

    invoke-direct {v3, v0, v1, v2}, Ljavazoom/jl/decoder/LayerIIIDecoder$Sftable;-><init>(Ljavazoom/jl/decoder/LayerIIIDecoder;[I[I)V

    iput-object v3, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sftable:Ljavazoom/jl/decoder/LayerIIIDecoder$Sftable;

    .line 134
    const/16 v3, 0x36

    new-array v3, v3, [I

    iput-object v3, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac_buffer:[I

    .line 137
    move-object/from16 v3, p1

    iput-object v3, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    .line 138
    move-object/from16 v6, p2

    iput-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->header:Ljavazoom/jl/decoder/Header;

    .line 139
    move-object/from16 v4, p3

    iput-object v4, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->filter1:Ljavazoom/jl/decoder/SynthesisFilter;

    .line 140
    move-object/from16 v29, v1

    move-object/from16 v1, p4

    .end local v1  # "ll0":[I
    .local v29, "ll0":[I
    iput-object v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->filter2:Ljavazoom/jl/decoder/SynthesisFilter;

    .line 141
    move-object/from16 v1, p5

    iput-object v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->buffer:Ljavazoom/jl/decoder/OutputBuffer;

    .line 142
    move/from16 v1, p6

    iput v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->which_channels:I

    .line 144
    const/4 v1, 0x0

    iput v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->frame_start:I

    .line 145
    iget-object v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->header:Ljavazoom/jl/decoder/Header;

    invoke-virtual {v1}, Ljavazoom/jl/decoder/Header;->mode()I

    move-result v1

    move-object/from16 v30, v2

    .end local v2  # "ss0":[I
    .local v30, "ss0":[I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_223

    const/4 v1, 0x1

    goto :goto_224

    :cond_223
    const/4 v1, 0x2

    :goto_224
    iput v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->channels:I

    .line 146
    iget-object v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->header:Ljavazoom/jl/decoder/Header;

    invoke-virtual {v1}, Ljavazoom/jl/decoder/Header;->version()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_231

    const/4 v1, 0x2

    goto :goto_232

    :cond_231
    const/4 v1, 0x1

    :goto_232
    iput v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->max_gr:I

    .line 148
    iget-object v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->header:Ljavazoom/jl/decoder/Header;

    invoke-virtual {v1}, Ljavazoom/jl/decoder/Header;->sample_frequency()I

    move-result v1

    iget-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->header:Ljavazoom/jl/decoder/Header;

    invoke-virtual {v2}, Ljavazoom/jl/decoder/Header;->version()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_248

    const/4 v2, 0x3

    move/from16 v28, v2

    const/4 v3, 0x2

    goto :goto_256

    :cond_248
    iget-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->header:Ljavazoom/jl/decoder/Header;

    invoke-virtual {v2}, Ljavazoom/jl/decoder/Header;->version()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_254

    const/16 v28, 0x6

    goto :goto_256

    :cond_254
    const/16 v28, 0x0

    :goto_256
    add-int v1, v1, v28

    iput v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    .line 150
    iget v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->channels:I

    if-ne v1, v3, :cond_277

    .line 151
    iget v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->which_channels:I

    packed-switch v1, :pswitch_data_2b0

    .line 163
    const/4 v1, 0x1

    const/4 v2, 0x0

    iput v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->first_channel:I

    .line 164
    iput v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->last_channel:I

    .line 165
    goto :goto_27c

    .line 158
    :pswitch_26a  #0x2
    const/4 v1, 0x1

    iput v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->last_channel:I

    iput v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->first_channel:I

    .line 159
    goto :goto_27c

    .line 154
    :pswitch_270  #0x1, 0x3
    const/4 v1, 0x1

    const/4 v2, 0x0

    iput v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->last_channel:I

    iput v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->first_channel:I

    .line 155
    goto :goto_27c

    .line 168
    :cond_277
    const/4 v2, 0x0

    iput v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->last_channel:I

    iput v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->first_channel:I

    .line 170
    :goto_27c
    const/4 v1, 0x0

    .local v1, "ch":I
    :goto_27d
    const/4 v2, 0x2

    if-ge v1, v2, :cond_294

    .line 171
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_281
    const/16 v2, 0x240

    if-ge v3, v2, :cond_291

    .line 172
    iget-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->prevblck:[[F

    aget-object v2, v2, v1

    const/16 v28, 0x0

    aput v28, v2, v3

    .line 171
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x2

    goto :goto_281

    .line 170
    .end local v3  # "j":I
    :cond_291
    add-int/lit8 v1, v1, 0x1

    goto :goto_27d

    .line 174
    .end local v1  # "ch":I
    :cond_294
    iget-object v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->nonzero:[I

    iget-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->nonzero:[I

    const/16 v3, 0x240

    const/16 v16, 0x1

    aput v3, v2, v16

    const/4 v2, 0x0

    aput v3, v1, v2

    .line 176
    new-instance v1, Ljavazoom/jl/decoder/BitReserve;

    invoke-direct {v1}, Ljavazoom/jl/decoder/BitReserve;-><init>()V

    iput-object v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    .line 177
    new-instance v1, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    invoke-direct {v1}, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;-><init>()V

    iput-object v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    .line 178
    return-void

    :pswitch_data_2b0
    .packed-switch 0x1
        :pswitch_270  #00000001
        :pswitch_26a  #00000002
        :pswitch_270  #00000003
    .end packed-switch

    :array_2ba
    .array-data 4
        0x0
        0x6
        0xc
        0x12
        0x18
        0x1e
        0x24
        0x2c
        0x36
        0x42
        0x50
        0x60
        0x74
        0x8c
        0xa8
        0xc8
        0xee
        0x11c
        0x150
        0x18c
        0x1d0
        0x20a
        0x240
    .end array-data

    :array_2ec
    .array-data 4
        0x0
        0x4
        0x8
        0xc
        0x12
        0x18
        0x20
        0x2a
        0x38
        0x4a
        0x64
        0x84
        0xae
        0xc0
    .end array-data

    :array_30c
    .array-data 4
        0x0
        0x6
        0xc
        0x12
        0x18
        0x1e
        0x24
        0x2c
        0x36
        0x42
        0x50
        0x60
        0x72
        0x88
        0xa2
        0xc2
        0xe8
        0x116
        0x14a
        0x18a
        0x1d0
        0x21c
        0x240
    .end array-data

    :array_33e
    .array-data 4
        0x0
        0x4
        0x8
        0xc
        0x12
        0x1a
        0x24
        0x30
        0x3e
        0x50
        0x68
        0x88
        0xb4
        0xc0
    .end array-data

    :array_35e
    .array-data 4
        0x0
        0x6
        0xc
        0x12
        0x18
        0x1e
        0x24
        0x2c
        0x36
        0x42
        0x50
        0x60
        0x74
        0x8c
        0xa8
        0xc8
        0xee
        0x11c
        0x150
        0x18c
        0x1d0
        0x20a
        0x240
    .end array-data

    :array_390
    .array-data 4
        0x0
        0x4
        0x8
        0xc
        0x12
        0x1a
        0x24
        0x30
        0x3e
        0x50
        0x68
        0x86
        0xae
        0xc0
    .end array-data

    :array_3b0
    .array-data 4
        0x0
        0x4
        0x8
        0xc
        0x10
        0x14
        0x18
        0x1e
        0x24
        0x2c
        0x34
        0x3e
        0x4a
        0x5a
        0x6e
        0x86
        0xa2
        0xc4
        0xee
        0x120
        0x156
        0x1a2
        0x240
    .end array-data

    :array_3e2
    .array-data 4
        0x0
        0x4
        0x8
        0xc
        0x10
        0x16
        0x1e
        0x28
        0x34
        0x42
        0x54
        0x6a
        0x88
        0xc0
    .end array-data

    :array_402
    .array-data 4
        0x0
        0x4
        0x8
        0xc
        0x10
        0x14
        0x18
        0x1e
        0x24
        0x2a
        0x32
        0x3c
        0x48
        0x58
        0x6a
        0x80
        0x9c
        0xbe
        0xe6
        0x114
        0x14a
        0x180
        0x240
    .end array-data

    :array_434
    .array-data 4
        0x0
        0x4
        0x8
        0xc
        0x10
        0x16
        0x1c
        0x26
        0x32
        0x40
        0x50
        0x64
        0x7e
        0xc0
    .end array-data

    :array_454
    .array-data 4
        0x0
        0x4
        0x8
        0xc
        0x10
        0x14
        0x18
        0x1e
        0x24
        0x2c
        0x36
        0x42
        0x52
        0x66
        0x7e
        0x9c
        0xc2
        0xf0
        0x128
        0x16c
        0x1c0
        0x226
        0x240
    .end array-data

    :array_486
    .array-data 4
        0x0
        0x4
        0x8
        0xc
        0x10
        0x16
        0x1e
        0x2a
        0x3a
        0x4e
        0x68
        0x8a
        0xb4
        0xc0
    .end array-data

    :array_4a6
    .array-data 4
        0x0
        0x6
        0xc
        0x12
        0x18
        0x1e
        0x24
        0x2c
        0x36
        0x42
        0x50
        0x60
        0x74
        0x8c
        0xa8
        0xc8
        0xee
        0x11c
        0x150
        0x18c
        0x1d0
        0x20a
        0x240
    .end array-data

    :array_4d8
    .array-data 4
        0x0
        0x4
        0x8
        0xc
        0x12
        0x1a
        0x24
        0x30
        0x3e
        0x50
        0x68
        0x86
        0xae
        0xc0
    .end array-data

    :array_4f8
    .array-data 4
        0x0
        0x6
        0xc
        0x12
        0x18
        0x1e
        0x24
        0x2c
        0x36
        0x42
        0x50
        0x60
        0x74
        0x8c
        0xa8
        0xc8
        0xee
        0x11c
        0x150
        0x18c
        0x1d0
        0x20a
        0x240
    .end array-data

    :array_52a
    .array-data 4
        0x0
        0x4
        0x8
        0xc
        0x12
        0x1a
        0x24
        0x30
        0x3e
        0x50
        0x68
        0x86
        0xae
        0xc0
    .end array-data

    :array_54a
    .array-data 4
        0x0
        0xc
        0x18
        0x24
        0x30
        0x3c
        0x48
        0x58
        0x6c
        0x84
        0xa0
        0xc0
        0xe8
        0x118
        0x150
        0x190
        0x1dc
        0x236
        0x238
        0x23a
        0x23c
        0x23e
        0x240
    .end array-data

    :array_57c
    .array-data 4
        0x0
        0x8
        0x10
        0x18
        0x24
        0x34
        0x48
        0x60
        0x7c
        0xa0
        0xa2
        0xa4
        0xa6
        0xc0
    .end array-data
.end method

.method private antialias(II)V
    .registers 14
    .param p1, "ch"  # I
    .param p2, "gr"  # I

    .line 1292
    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v0, v0, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v0, v0, p1

    iget-object v0, v0, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v0, v0, p2

    .line 1296
    .local v0, "gr_info":Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;
    iget v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->window_switching_flag:I

    const/4 v2, 0x2

    if-eqz v1, :cond_18

    iget v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->block_type:I

    if-ne v1, v2, :cond_18

    iget v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->mixed_block_flag:I

    if-nez v1, :cond_18

    return-void

    .line 1298
    :cond_18
    iget v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->window_switching_flag:I

    if-eqz v1, :cond_27

    iget v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->mixed_block_flag:I

    if-eqz v1, :cond_27

    iget v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->block_type:I

    if-ne v1, v2, :cond_27

    .line 1299
    const/16 v1, 0x12

    .local v1, "sb18lim":I
    goto :goto_29

    .line 1301
    .end local v1  # "sb18lim":I
    :cond_27
    const/16 v1, 0x22e

    .line 1303
    .restart local v1  # "sb18lim":I
    :goto_29
    const/4 v2, 0x0

    .local v2, "sb18":I
    :goto_2a
    if-ge v2, v1, :cond_63

    .line 1304
    const/4 v3, 0x0

    .local v3, "ss":I
    :goto_2d
    const/16 v4, 0x8

    if-ge v3, v4, :cond_60

    .line 1305
    add-int/lit8 v4, v2, 0x11

    sub-int/2addr v4, v3

    .line 1306
    .local v4, "src_idx1":I
    add-int/lit8 v5, v2, 0x12

    add-int/2addr v5, v3

    .line 1307
    .local v5, "src_idx2":I
    iget-object v6, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->out_1d:[F

    aget v6, v6, v4

    .line 1308
    .local v6, "bu":F
    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->out_1d:[F

    aget v7, v7, v5

    .line 1309
    .local v7, "bd":F
    iget-object v8, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->out_1d:[F

    sget-object v9, Ljavazoom/jl/decoder/LayerIIIDecoder;->cs:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    sget-object v10, Ljavazoom/jl/decoder/LayerIIIDecoder;->ca:[F

    aget v10, v10, v3

    mul-float/2addr v10, v7

    sub-float/2addr v9, v10

    aput v9, v8, v4

    .line 1310
    iget-object v8, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->out_1d:[F

    sget-object v9, Ljavazoom/jl/decoder/LayerIIIDecoder;->cs:[F

    aget v9, v9, v3

    mul-float/2addr v9, v7

    sget-object v10, Ljavazoom/jl/decoder/LayerIIIDecoder;->ca:[F

    aget v10, v10, v3

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    aput v9, v8, v5

    .line 1304
    .end local v4  # "src_idx1":I
    .end local v5  # "src_idx2":I
    .end local v6  # "bu":F
    .end local v7  # "bd":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 1303
    :cond_60
    add-int/lit8 v2, v2, 0x12

    goto :goto_2a

    .line 1312
    .end local v3  # "ss":I
    :cond_63
    return-void
.end method

.method private static create_t_43()[F
    .registers 9

    .line 1853
    const/16 v0, 0x2000

    new-array v1, v0, [F

    .line 1854
    .local v1, "t43":[F
    const-wide v2, 0x3ff5555555555555L  # 1.3333333333333333

    .line 1856
    .local v2, "d43":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a
    if-ge v4, v0, :cond_1c

    .line 1857
    int-to-double v5, v4

    const-wide v7, 0x3ff5555555555555L  # 1.3333333333333333

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v1, v4

    .line 1856
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1858
    .end local v4  # "i":I
    :cond_1c
    return-object v1
.end method

.method private dequantize_sample([[FII)V
    .registers 24
    .param p1, "xr"  # [[F
    .param p2, "ch"  # I
    .param p3, "gr"  # I

    .line 806
    move-object/from16 v0, p0

    iget-object v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v1, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v1, v1, p2

    iget-object v1, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v1, v1, p3

    .line 807
    .local v1, "gr_info":Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;
    const/4 v2, 0x0

    .line 809
    .local v2, "cb":I
    const/4 v3, 0x0

    .line 810
    .local v3, "cb_begin":I
    const/4 v4, 0x0

    .line 811
    .local v4, "cb_width":I
    const/4 v5, 0x0

    .line 813
    .local v5, "index":I
    move-object/from16 v6, p1

    .line 817
    .local v6, "xr_1d":[[F
    iget v7, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->window_switching_flag:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v7, :cond_3a

    iget v7, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->block_type:I

    if-ne v7, v8, :cond_3a

    .line 818
    iget v7, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->mixed_block_flag:I

    if-eqz v7, :cond_2b

    .line 819
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v7, v7, v10

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->l:[I

    aget v7, v7, v9

    .local v7, "next_cb_boundary":I
    goto :goto_44

    .line 821
    .end local v7  # "next_cb_boundary":I
    :cond_2b
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v7, v7, v10

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    aget v4, v7, v9

    .line 822
    shl-int/lit8 v7, v4, 0x2

    sub-int/2addr v7, v4

    .line 823
    .restart local v7  # "next_cb_boundary":I
    const/4 v3, 0x0

    goto :goto_44

    .line 826
    .end local v7  # "next_cb_boundary":I
    :cond_3a
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v7, v7, v10

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->l:[I

    aget v7, v7, v9

    .line 830
    .restart local v7  # "next_cb_boundary":I
    :goto_44
    iget v9, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->global_gain:I

    int-to-double v9, v9

    const-wide v11, 0x406a400000000000L  # 210.0

    sub-double/2addr v9, v11

    const-wide/high16 v11, 0x3fd0000000000000L  # 0.25

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x4000000000000000L  # 2.0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v9, v9

    .line 832
    .local v9, "g_gain":F
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_58
    iget-object v11, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->nonzero:[I

    aget v11, v11, p2

    const/4 v12, 0x0

    if-ge v10, v11, :cond_10c

    .line 834
    rem-int/lit8 v11, v10, 0x12

    .line 835
    .local v11, "reste":I
    sub-int v13, v10, v11

    div-int/lit8 v13, v13, 0x12

    .line 836
    .local v13, "quotien":I
    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_1d:[I

    aget v14, v14, v10

    if-nez v14, :cond_79

    .line 837
    aget-object v14, v6, v13

    aput v12, v14, v11

    move/from16 v16, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move v15, v5

    move v14, v9

    goto/16 :goto_ff

    .line 839
    :cond_79
    iget-object v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_1d:[I

    aget v12, v12, v10

    .line 841
    .local v12, "abv":I
    sget-object v14, Ljavazoom/jl/decoder/LayerIIIDecoder;->t_43:[F

    array-length v14, v14

    move/from16 v16, v9

    .end local v9  # "g_gain":F
    .local v16, "g_gain":F
    const-wide v8, 0x3ff5555555555555L  # 1.3333333333333333

    if-ge v12, v14, :cond_d5

    .line 842
    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_1d:[I

    aget v14, v14, v10

    if-lez v14, :cond_a3

    .line 843
    aget-object v8, v6, v13

    sget-object v9, Ljavazoom/jl/decoder/LayerIIIDecoder;->t_43:[F

    aget v9, v9, v12

    mul-float v9, v9, v16

    aput v9, v8, v11

    move/from16 v18, v3

    move/from16 v19, v4

    move v15, v5

    move/from16 v14, v16

    move/from16 v16, v2

    goto :goto_ff

    .line 844
    :cond_a3
    neg-int v14, v12

    sget-object v15, Ljavazoom/jl/decoder/LayerIIIDecoder;->t_43:[F

    array-length v15, v15

    if-ge v14, v15, :cond_be

    .line 845
    aget-object v8, v6, v13

    move/from16 v14, v16

    .end local v16  # "g_gain":F
    .local v14, "g_gain":F
    neg-float v9, v14

    sget-object v15, Ljavazoom/jl/decoder/LayerIIIDecoder;->t_43:[F

    move/from16 v16, v2

    .end local v2  # "cb":I
    .local v16, "cb":I
    neg-int v2, v12

    aget v2, v15, v2

    mul-float/2addr v9, v2

    aput v9, v8, v11

    move/from16 v18, v3

    move/from16 v19, v4

    move v15, v5

    goto :goto_ff

    .line 847
    .end local v14  # "g_gain":F
    .restart local v2  # "cb":I
    .local v16, "g_gain":F
    :cond_be
    move/from16 v14, v16

    move/from16 v16, v2

    .end local v2  # "cb":I
    .restart local v14  # "g_gain":F
    .local v16, "cb":I
    aget-object v2, v6, v13

    neg-float v15, v14

    move/from16 v18, v3

    .end local v3  # "cb_begin":I
    .local v18, "cb_begin":I
    neg-int v3, v12

    move/from16 v19, v4

    .end local v4  # "cb_width":I
    .local v19, "cb_width":I
    int-to-double v3, v3

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v15, v3

    aput v15, v2, v11

    move v15, v5

    goto :goto_ff

    .line 848
    .end local v14  # "g_gain":F
    .end local v18  # "cb_begin":I
    .end local v19  # "cb_width":I
    .restart local v2  # "cb":I
    .restart local v3  # "cb_begin":I
    .restart local v4  # "cb_width":I
    .local v16, "g_gain":F
    :cond_d5
    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v14, v16

    move/from16 v16, v2

    .end local v2  # "cb":I
    .end local v3  # "cb_begin":I
    .end local v4  # "cb_width":I
    .restart local v14  # "g_gain":F
    .local v16, "cb":I
    .restart local v18  # "cb_begin":I
    .restart local v19  # "cb_width":I
    iget-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_1d:[I

    aget v2, v2, v10

    if-lez v2, :cond_f1

    .line 849
    aget-object v2, v6, v13

    int-to-double v3, v12

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v9, v14, v3

    aput v9, v2, v11

    move v15, v5

    goto :goto_ff

    .line 851
    :cond_f1
    aget-object v2, v6, v13

    neg-float v3, v14

    neg-int v4, v12

    move v15, v5

    .end local v5  # "index":I
    .local v15, "index":I
    int-to-double v4, v4

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    aput v3, v2, v11

    .line 832
    .end local v11  # "reste":I
    .end local v12  # "abv":I
    .end local v13  # "quotien":I
    :goto_ff
    add-int/lit8 v10, v10, 0x1

    move v9, v14

    move v5, v15

    move/from16 v2, v16

    move/from16 v3, v18

    move/from16 v4, v19

    const/4 v8, 0x2

    goto/16 :goto_58

    .line 856
    .end local v14  # "g_gain":F
    .end local v15  # "index":I
    .end local v16  # "cb":I
    .end local v18  # "cb_begin":I
    .end local v19  # "cb_width":I
    .restart local v2  # "cb":I
    .restart local v3  # "cb_begin":I
    .restart local v4  # "cb_width":I
    .restart local v5  # "index":I
    .restart local v9  # "g_gain":F
    :cond_10c
    move/from16 v16, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move v15, v5

    move v14, v9

    .end local v2  # "cb":I
    .end local v3  # "cb_begin":I
    .end local v4  # "cb_width":I
    .end local v5  # "index":I
    .end local v9  # "g_gain":F
    .restart local v14  # "g_gain":F
    .restart local v15  # "index":I
    .restart local v16  # "cb":I
    .restart local v18  # "cb_begin":I
    .restart local v19  # "cb_width":I
    const/4 v2, 0x0

    .end local v10  # "j":I
    .end local v15  # "index":I
    .end local v18  # "cb_begin":I
    .end local v19  # "cb_width":I
    .local v2, "j":I
    .restart local v3  # "cb_begin":I
    .restart local v4  # "cb_width":I
    .restart local v5  # "index":I
    :goto_115
    iget-object v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->nonzero:[I

    aget v8, v8, p2

    if-ge v2, v8, :cond_266

    .line 858
    rem-int/lit8 v8, v2, 0x12

    .line 859
    .local v8, "reste":I
    sub-int v9, v2, v8

    div-int/lit8 v9, v9, 0x12

    .line 861
    .local v9, "quotien":I
    if-ne v5, v7, :cond_1fe

    iget v10, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->window_switching_flag:I

    if-eqz v10, :cond_1f0

    iget v10, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->block_type:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1f0

    .line 862
    iget v10, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->mixed_block_flag:I

    if-eqz v10, :cond_1c1

    .line 864
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v11, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v10, v10, v11

    iget-object v10, v10, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->l:[I

    const/16 v11, 0x8

    aget v10, v10, v11

    if-ne v5, v10, :cond_177

    .line 865
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v11, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v10, v10, v11

    iget-object v10, v10, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    const/4 v11, 0x4

    aget v7, v10, v11

    .line 866
    shl-int/lit8 v10, v7, 0x2

    sub-int/2addr v10, v7

    .line 867
    .end local v7  # "next_cb_boundary":I
    .local v10, "next_cb_boundary":I
    const/4 v7, 0x3

    .line 868
    .end local v16  # "cb":I
    .local v7, "cb":I
    iget-object v13, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v15, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v13, v13, v15

    iget-object v13, v13, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    aget v11, v13, v11

    iget-object v13, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v15, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v13, v13, v15

    iget-object v13, v13, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    const/4 v15, 0x3

    aget v13, v13, v15

    sub-int/2addr v11, v13

    .line 870
    .end local v4  # "cb_width":I
    .local v11, "cb_width":I
    iget-object v4, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v13, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v4, v4, v13

    iget-object v4, v4, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    aget v3, v4, v15

    .line 871
    shl-int/lit8 v4, v3, 0x2

    sub-int/2addr v4, v3

    move v3, v4

    move/from16 v16, v7

    move v7, v10

    move v4, v11

    .end local v3  # "cb_begin":I
    .local v4, "cb_begin":I
    goto/16 :goto_1fe

    .line 873
    .end local v10  # "next_cb_boundary":I
    .end local v11  # "cb_width":I
    .restart local v3  # "cb_begin":I
    .local v4, "cb_width":I
    .local v7, "next_cb_boundary":I
    .restart local v16  # "cb":I
    :cond_177
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v13, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v10, v10, v13

    iget-object v10, v10, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->l:[I

    aget v10, v10, v11

    if-ge v5, v10, :cond_192

    .line 874
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v11, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v10, v10, v11

    iget-object v10, v10, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->l:[I

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v11, v16, 0x1

    aget v7, v10, v11

    goto :goto_1fe

    .line 877
    :cond_192
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v11, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v10, v10, v11

    iget-object v10, v10, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v11, v16, 0x1

    aget v7, v10, v11

    .line 878
    shl-int/lit8 v10, v7, 0x2

    sub-int/2addr v10, v7

    .line 880
    .end local v7  # "next_cb_boundary":I
    .restart local v10  # "next_cb_boundary":I
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v11, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v7, v7, v11

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    aget v3, v7, v16

    .line 881
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v11, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v7, v7, v11

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    add-int/lit8 v11, v16, 0x1

    aget v7, v7, v11

    sub-int/2addr v7, v3

    .line 882
    .end local v4  # "cb_width":I
    .local v7, "cb_width":I
    shl-int/lit8 v4, v3, 0x2

    sub-int/2addr v4, v3

    move v3, v4

    move v4, v7

    move v7, v10

    .end local v3  # "cb_begin":I
    .local v4, "cb_begin":I
    goto :goto_1fe

    .line 887
    .end local v10  # "next_cb_boundary":I
    .restart local v3  # "cb_begin":I
    .local v4, "cb_width":I
    .local v7, "next_cb_boundary":I
    :cond_1c1
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v11, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v10, v10, v11

    iget-object v10, v10, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v11, v16, 0x1

    aget v7, v10, v11

    .line 888
    shl-int/lit8 v10, v7, 0x2

    sub-int/2addr v10, v7

    .line 890
    .end local v7  # "next_cb_boundary":I
    .restart local v10  # "next_cb_boundary":I
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v11, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v7, v7, v11

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    aget v3, v7, v16

    .line 891
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v11, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v7, v7, v11

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    add-int/lit8 v11, v16, 0x1

    aget v7, v7, v11

    sub-int/2addr v7, v3

    .line 892
    .end local v4  # "cb_width":I
    .local v7, "cb_width":I
    shl-int/lit8 v4, v3, 0x2

    sub-int/2addr v4, v3

    move v3, v4

    move v4, v7

    move v7, v10

    .end local v3  # "cb_begin":I
    .local v4, "cb_begin":I
    goto :goto_1fe

    .line 896
    .end local v10  # "next_cb_boundary":I
    .restart local v3  # "cb_begin":I
    .local v4, "cb_width":I
    .local v7, "next_cb_boundary":I
    :cond_1f0
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v11, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v10, v10, v11

    iget-object v10, v10, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->l:[I

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v11, v16, 0x1

    aget v7, v10, v11

    .line 900
    :cond_1fe
    :goto_1fe
    iget v10, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->window_switching_flag:I

    if-eqz v10, :cond_23e

    iget v10, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->block_type:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_20b

    iget v10, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->mixed_block_flag:I

    if-eqz v10, :cond_218

    :cond_20b
    iget v10, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->block_type:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_23c

    iget v10, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->mixed_block_flag:I

    if-eqz v10, :cond_23e

    const/16 v10, 0x24

    if-lt v2, v10, :cond_23e

    .line 904
    :cond_218
    sub-int v10, v5, v3

    div-int/2addr v10, v4

    .line 909
    .local v10, "t_index":I
    iget-object v11, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v11, v11, p2

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v11, v11, v10

    aget v11, v11, v16

    iget v13, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->scalefac_scale:I

    shl-int/2addr v11, v13

    .line 910
    .local v11, "idx":I
    iget-object v13, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->subblock_gain:[I

    aget v13, v13, v10

    const/4 v15, 0x2

    shl-int/2addr v13, v15

    add-int/2addr v11, v13

    .line 912
    aget-object v13, v6, v9

    aget v17, v13, v8

    sget-object v18, Ljavazoom/jl/decoder/LayerIIIDecoder;->two_to_negative_half_pow:[F

    aget v18, v18, v11

    mul-float v17, v17, v18

    aput v17, v13, v8

    .line 914
    .end local v11  # "idx":I
    goto :goto_25f

    .line 900
    .end local v10  # "t_index":I
    :cond_23c
    move v15, v11

    goto :goto_23f

    :cond_23e
    const/4 v15, 0x2

    .line 918
    :goto_23f
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v10, v10, p2

    iget-object v10, v10, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    aget v10, v10, v16

    .line 920
    .local v10, "idx":I
    iget v11, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->preflag:I

    if-eqz v11, :cond_250

    sget-object v11, Ljavazoom/jl/decoder/LayerIIIDecoder;->pretab:[I

    aget v11, v11, v16

    add-int/2addr v10, v11

    .line 922
    :cond_250
    iget v11, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->scalefac_scale:I

    shl-int/2addr v10, v11

    .line 923
    aget-object v11, v6, v9

    aget v13, v11, v8

    sget-object v17, Ljavazoom/jl/decoder/LayerIIIDecoder;->two_to_negative_half_pow:[F

    aget v17, v17, v10

    mul-float v13, v13, v17

    aput v13, v11, v8

    .line 925
    .end local v10  # "idx":I
    :goto_25f
    nop

    .end local v8  # "reste":I
    .end local v9  # "quotien":I
    add-int/lit8 v5, v5, 0x1

    .line 856
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_115

    .line 928
    :cond_266
    iget-object v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->nonzero:[I

    aget v2, v8, p2

    :goto_26a
    const/16 v8, 0x240

    if-ge v2, v8, :cond_281

    .line 930
    rem-int/lit8 v8, v2, 0x12

    .line 931
    .restart local v8  # "reste":I
    sub-int v9, v2, v8

    div-int/lit8 v9, v9, 0x12

    .line 932
    .restart local v9  # "quotien":I
    if-gez v8, :cond_277

    const/4 v8, 0x0

    .line 933
    :cond_277
    if-gez v9, :cond_27a

    const/4 v9, 0x0

    .line 934
    :cond_27a
    aget-object v10, v6, v9

    aput v12, v10, v8

    .line 928
    .end local v8  # "reste":I
    .end local v9  # "quotien":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_26a

    .line 937
    :cond_281
    return-void
.end method

.method private do_downmix()V
    .registers 12

    .line 1391
    const/4 v0, 0x0

    .local v0, "sb":I
    :goto_1
    const/16 v1, 0x12

    if-ge v0, v1, :cond_6c

    .line 1392
    const/4 v2, 0x0

    .local v2, "ss":I
    :goto_6
    if-ge v2, v1, :cond_69

    .line 1393
    iget-object v3, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->lr:[[[F

    const/4 v4, 0x0

    aget-object v3, v3, v4

    aget-object v3, v3, v0

    iget-object v5, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->lr:[[[F

    aget-object v5, v5, v4

    aget-object v5, v5, v0

    aget v5, v5, v2

    iget-object v6, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->lr:[[[F

    const/4 v7, 0x1

    aget-object v6, v6, v7

    aget-object v6, v6, v0

    aget v6, v6, v2

    add-float/2addr v5, v6

    const/high16 v6, 0x3f000000  # 0.5f

    mul-float/2addr v5, v6

    aput v5, v3, v2

    .line 1394
    iget-object v3, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->lr:[[[F

    aget-object v3, v3, v4

    aget-object v3, v3, v0

    add-int/lit8 v5, v2, 0x1

    iget-object v8, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->lr:[[[F

    aget-object v8, v8, v4

    aget-object v8, v8, v0

    add-int/lit8 v9, v2, 0x1

    aget v8, v8, v9

    iget-object v9, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->lr:[[[F

    aget-object v9, v9, v7

    aget-object v9, v9, v0

    add-int/lit8 v10, v2, 0x1

    aget v9, v9, v10

    add-float/2addr v8, v9

    mul-float/2addr v8, v6

    aput v8, v3, v5

    .line 1395
    iget-object v3, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->lr:[[[F

    aget-object v3, v3, v4

    aget-object v3, v3, v0

    add-int/lit8 v5, v2, 0x2

    iget-object v8, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->lr:[[[F

    aget-object v4, v8, v4

    aget-object v4, v4, v0

    add-int/lit8 v8, v2, 0x2

    aget v4, v4, v8

    iget-object v8, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->lr:[[[F

    aget-object v7, v8, v7

    aget-object v7, v7, v0

    add-int/lit8 v8, v2, 0x2

    aget v7, v7, v8

    add-float/2addr v4, v7

    mul-float/2addr v4, v6

    aput v4, v3, v5

    .line 1392
    add-int/lit8 v2, v2, 0x3

    goto :goto_6

    .line 1391
    .end local v2  # "ss":I
    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1397
    .end local v0  # "sb":I
    :cond_6c
    return-void
.end method

.method private get_LSF_scale_data(II)V
    .registers 16
    .param p1, "ch"  # I
    .param p2, "gr"  # I

    .line 546
    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->header:Ljavazoom/jl/decoder/Header;

    invoke-virtual {v0}, Ljavazoom/jl/decoder/Header;->mode_extension()I

    move-result v0

    .line 549
    .local v0, "mode_ext":I
    const/4 v1, 0x0

    .line 551
    .local v1, "blocknumber":I
    iget-object v2, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v2, v2, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v2, v2, p1

    iget-object v2, v2, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v2, v2, p2

    .line 553
    .local v2, "gr_info":Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;
    iget v3, v2, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->scalefac_compress:I

    .line 555
    .local v3, "scalefac_comp":I
    iget v4, v2, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->block_type:I

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v4, v6, :cond_27

    .line 556
    iget v4, v2, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->mixed_block_flag:I

    if-nez v4, :cond_1f

    .line 557
    const/4 v4, 0x1

    .local v4, "blocktypenumber":I
    goto :goto_28

    .line 558
    .end local v4  # "blocktypenumber":I
    :cond_1f
    iget v4, v2, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->mixed_block_flag:I

    if-ne v4, v5, :cond_25

    .line 559
    const/4 v4, 0x2

    .restart local v4  # "blocktypenumber":I
    goto :goto_28

    .line 561
    .end local v4  # "blocktypenumber":I
    :cond_25
    const/4 v4, 0x0

    .restart local v4  # "blocktypenumber":I
    goto :goto_28

    .line 563
    .end local v4  # "blocktypenumber":I
    :cond_27
    const/4 v4, 0x0

    .line 565
    .restart local v4  # "blocktypenumber":I
    :goto_28
    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eq v0, v5, :cond_2e

    if-ne v0, v7, :cond_30

    :cond_2e
    if-eq p1, v5, :cond_b5

    :cond_30
    const/16 v9, 0x190

    if-ge v3, v9, :cond_5f

    .line 567
    iget-object v9, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    ushr-int/lit8 v10, v3, 0x4

    div-int/lit8 v10, v10, 0x5

    aput v10, v9, v8

    .line 568
    iget-object v9, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    ushr-int/lit8 v10, v3, 0x4

    rem-int/lit8 v10, v10, 0x5

    aput v10, v9, v5

    .line 569
    iget-object v9, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    and-int/lit8 v10, v3, 0xf

    ushr-int/2addr v10, v6

    aput v10, v9, v6

    .line 570
    iget-object v9, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    and-int/lit8 v10, v3, 0x3

    aput v10, v9, v7

    .line 571
    iget-object v9, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v9, v9, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v9, v9, p1

    iget-object v9, v9, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v9, v9, p2

    iput v8, v9, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->preflag:I

    .line 572
    const/4 v1, 0x0

    goto :goto_b5

    .line 574
    :cond_5f
    const/16 v9, 0x1f4

    if-ge v3, v9, :cond_8e

    .line 576
    iget-object v9, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    add-int/lit16 v10, v3, -0x190

    ushr-int/2addr v10, v6

    div-int/lit8 v10, v10, 0x5

    aput v10, v9, v8

    .line 577
    iget-object v9, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    add-int/lit16 v10, v3, -0x190

    ushr-int/2addr v10, v6

    rem-int/lit8 v10, v10, 0x5

    aput v10, v9, v5

    .line 578
    iget-object v9, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    add-int/lit16 v10, v3, -0x190

    and-int/2addr v10, v7

    aput v10, v9, v6

    .line 579
    iget-object v9, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    aput v8, v9, v7

    .line 580
    iget-object v9, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v9, v9, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v9, v9, p1

    iget-object v9, v9, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v9, v9, p2

    iput v8, v9, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->preflag:I

    .line 581
    const/4 v1, 0x1

    goto :goto_b5

    .line 583
    :cond_8e
    const/16 v9, 0x200

    if-ge v3, v9, :cond_b5

    .line 585
    iget-object v9, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    add-int/lit16 v10, v3, -0x1f4

    div-int/2addr v10, v7

    aput v10, v9, v8

    .line 586
    iget-object v9, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    add-int/lit16 v10, v3, -0x1f4

    rem-int/2addr v10, v7

    aput v10, v9, v5

    .line 587
    iget-object v9, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    aput v8, v9, v6

    .line 588
    iget-object v9, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    aput v8, v9, v7

    .line 589
    iget-object v9, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v9, v9, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v9, v9, p1

    iget-object v9, v9, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v9, v9, p2

    iput v5, v9, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->preflag:I

    .line 590
    const/4 v1, 0x2

    .line 593
    :cond_b5
    :goto_b5
    const/4 v9, 0x4

    if-eq v0, v5, :cond_ba

    if-ne v0, v7, :cond_140

    :cond_ba
    if-ne p1, v5, :cond_140

    .line 594
    ushr-int/lit8 v10, v3, 0x1

    .line 596
    .local v10, "int_scalefac_comp":I
    const/16 v11, 0xb4

    if-ge v10, v11, :cond_ea

    .line 597
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    div-int/lit8 v12, v10, 0x24

    aput v12, v11, v8

    .line 598
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    rem-int/lit8 v12, v10, 0x24

    div-int/lit8 v12, v12, 0x6

    aput v12, v11, v5

    .line 599
    iget-object v5, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    rem-int/lit8 v11, v10, 0x24

    rem-int/lit8 v11, v11, 0x6

    aput v11, v5, v6

    .line 600
    iget-object v5, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    aput v8, v5, v7

    .line 601
    iget-object v5, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v5, v5, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v5, v5, p1

    iget-object v5, v5, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v5, v5, p2

    iput v8, v5, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->preflag:I

    .line 602
    const/4 v1, 0x3

    goto :goto_140

    .line 603
    :cond_ea
    const/16 v11, 0xf4

    if-ge v10, v11, :cond_119

    .line 604
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    add-int/lit16 v12, v10, -0xb4

    and-int/lit8 v12, v12, 0x3f

    ushr-int/2addr v12, v9

    aput v12, v11, v8

    .line 605
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    add-int/lit16 v12, v10, -0xb4

    and-int/lit8 v12, v12, 0xf

    ushr-int/2addr v12, v6

    aput v12, v11, v5

    .line 606
    iget-object v5, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    add-int/lit16 v11, v10, -0xb4

    and-int/2addr v11, v7

    aput v11, v5, v6

    .line 607
    iget-object v5, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    aput v8, v5, v7

    .line 608
    iget-object v5, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v5, v5, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v5, v5, p1

    iget-object v5, v5, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v5, v5, p2

    iput v8, v5, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->preflag:I

    .line 609
    const/4 v1, 0x4

    goto :goto_140

    .line 610
    :cond_119
    const/16 v11, 0xff

    if-ge v10, v11, :cond_140

    .line 611
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    add-int/lit16 v12, v10, -0xf4

    div-int/2addr v12, v7

    aput v12, v11, v8

    .line 612
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    add-int/lit16 v12, v10, -0xf4

    rem-int/2addr v12, v7

    aput v12, v11, v5

    .line 613
    iget-object v5, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    aput v8, v5, v6

    .line 614
    iget-object v5, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    aput v8, v5, v7

    .line 615
    iget-object v5, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v5, v5, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v5, v5, p1

    iget-object v5, v5, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v5, v5, p2

    iput v8, v5, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->preflag:I

    .line 616
    const/4 v1, 0x5

    .line 620
    .end local v10  # "int_scalefac_comp":I
    :cond_140
    :goto_140
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_141
    const/16 v6, 0x2d

    if-ge v5, v6, :cond_14c

    .line 622
    iget-object v6, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac_buffer:[I

    aput v8, v6, v5

    .line 620
    add-int/lit8 v5, v5, 0x1

    goto :goto_141

    .line 624
    .end local v5  # "x":I
    :cond_14c
    const/4 v5, 0x0

    .line 625
    .local v5, "m":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_14e
    if-ge v6, v9, :cond_179

    .line 626
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_151
    sget-object v10, Ljavazoom/jl/decoder/LayerIIIDecoder;->nr_of_sfb_block:[[[I

    aget-object v10, v10, v1

    aget-object v10, v10, v4

    aget v10, v10, v6

    if-ge v7, v10, :cond_176

    .line 627
    iget-object v10, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac_buffer:[I

    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    aget v11, v11, v6

    if-nez v11, :cond_165

    move v11, v8

    goto :goto_16f

    :cond_165
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->new_slen:[I

    aget v12, v12, v6

    invoke-virtual {v11, v12}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v11

    :goto_16f
    aput v11, v10, v5

    .line 628
    add-int/lit8 v5, v5, 0x1

    .line 626
    add-int/lit8 v7, v7, 0x1

    goto :goto_151

    .line 625
    .end local v7  # "j":I
    :cond_176
    add-int/lit8 v6, v6, 0x1

    goto :goto_14e

    .line 631
    .end local v6  # "i":I
    :cond_179
    return-void
.end method

.method private get_LSF_scale_factors(II)V
    .registers 12
    .param p1, "ch"  # I
    .param p2, "gr"  # I

    .line 637
    const/4 v0, 0x0

    .line 639
    .local v0, "m":I
    iget-object v1, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v1, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v1, v1, p1

    iget-object v1, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v1, v1, p2

    .line 641
    .local v1, "gr_info":Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;
    invoke-direct {p0, p1, p2}, Ljavazoom/jl/decoder/LayerIIIDecoder;->get_LSF_scale_data(II)V

    .line 643
    iget v2, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->window_switching_flag:I

    const/4 v3, 0x0

    if-eqz v2, :cond_8d

    iget v2, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->block_type:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_8d

    .line 644
    iget v2, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->mixed_block_flag:I

    const/4 v4, 0x3

    const/16 v5, 0xc

    if-eqz v2, :cond_61

    .line 645
    const/4 v2, 0x0

    .local v2, "sfb":I
    :goto_20
    const/16 v6, 0x8

    if-ge v2, v6, :cond_35

    .line 646
    iget-object v6, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v6, v6, p1

    iget-object v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac_buffer:[I

    aget v7, v7, v0

    aput v7, v6, v2

    .line 647
    add-int/lit8 v0, v0, 0x1

    .line 645
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 649
    :cond_35
    const/4 v2, 0x3

    :goto_36
    if-ge v2, v5, :cond_51

    .line 650
    const/4 v6, 0x0

    .local v6, "window":I
    :goto_39
    if-ge v6, v4, :cond_4e

    .line 651
    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v6

    iget-object v8, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac_buffer:[I

    aget v8, v8, v0

    aput v8, v7, v2

    .line 652
    add-int/lit8 v0, v0, 0x1

    .line 650
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 649
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 654
    .end local v6  # "window":I
    :cond_51
    const/4 v6, 0x0

    .restart local v6  # "window":I
    :goto_52
    if-ge v6, v4, :cond_b5

    .line 655
    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v6

    aput v3, v7, v5

    .line 654
    add-int/lit8 v6, v6, 0x1

    goto :goto_52

    .line 659
    .end local v2  # "sfb":I
    .end local v6  # "window":I
    :cond_61
    const/4 v2, 0x0

    .restart local v2  # "sfb":I
    :goto_62
    if-ge v2, v5, :cond_7d

    .line 660
    const/4 v6, 0x0

    .restart local v6  # "window":I
    :goto_65
    if-ge v6, v4, :cond_7a

    .line 661
    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v6

    iget-object v8, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac_buffer:[I

    aget v8, v8, v0

    aput v8, v7, v2

    .line 662
    add-int/lit8 v0, v0, 0x1

    .line 660
    add-int/lit8 v6, v6, 0x1

    goto :goto_65

    .line 659
    :cond_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    .line 665
    .end local v6  # "window":I
    :cond_7d
    const/4 v6, 0x0

    .restart local v6  # "window":I
    :goto_7e
    if-ge v6, v4, :cond_b5

    .line 666
    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v6

    aput v3, v7, v5

    .line 665
    add-int/lit8 v6, v6, 0x1

    goto :goto_7e

    .line 670
    .end local v2  # "sfb":I
    .end local v6  # "window":I
    :cond_8d
    const/4 v2, 0x0

    .restart local v2  # "sfb":I
    :goto_8e
    const/16 v4, 0x15

    if-ge v2, v4, :cond_a3

    .line 671
    iget-object v4, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v4, v4, p1

    iget-object v4, v4, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    iget-object v5, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac_buffer:[I

    aget v5, v5, v0

    aput v5, v4, v2

    .line 672
    add-int/lit8 v0, v0, 0x1

    .line 670
    add-int/lit8 v2, v2, 0x1

    goto :goto_8e

    .line 674
    :cond_a3
    iget-object v5, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v5, v5, p1

    iget-object v5, v5, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    aput v3, v5, v4

    .line 675
    iget-object v4, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v4, v4, p1

    iget-object v4, v4, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    const/16 v5, 0x16

    aput v3, v4, v5

    .line 677
    :cond_b5
    return-void
.end method

.method private get_scale_factors(II)V
    .registers 19
    .param p1, "ch"  # I
    .param p2, "gr"  # I

    .line 438
    move-object/from16 v0, p0

    iget-object v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v1, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v1, v1, p1

    iget-object v1, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v1, v1, p2

    .line 439
    .local v1, "gr_info":Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;
    iget v2, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->scalefac_compress:I

    .line 440
    .local v2, "scale_comp":I
    sget-object v3, Ljavazoom/jl/decoder/LayerIIIDecoder;->slen:[[I

    const/4 v4, 0x0

    aget-object v3, v3, v4

    aget v3, v3, v2

    .line 441
    .local v3, "length0":I
    sget-object v5, Ljavazoom/jl/decoder/LayerIIIDecoder;->slen:[[I

    const/4 v6, 0x1

    aget-object v5, v5, v6

    aget v5, v5, v2

    .line 443
    .local v5, "length1":I
    iget v7, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->window_switching_flag:I

    const/4 v11, 0x7

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/16 v14, 0xc

    const/16 v15, 0x8

    const/4 v8, 0x6

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v7, :cond_310

    iget v7, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->block_type:I

    if-ne v7, v10, :cond_310

    .line 444
    iget v7, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->mixed_block_flag:I

    if-eqz v7, :cond_a8

    .line 445
    const/4 v7, 0x0

    .local v7, "sfb":I
    :goto_33
    if-ge v7, v15, :cond_4e

    .line 446
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v10, v10, p1

    iget-object v10, v10, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    iget-object v11, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    sget-object v12, Ljavazoom/jl/decoder/LayerIIIDecoder;->slen:[[I

    aget-object v12, v12, v4

    iget v13, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->scalefac_compress:I

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v11

    aput v11, v10, v7

    .line 445
    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    .line 447
    :cond_4e
    const/4 v7, 0x3

    :goto_4f
    if-ge v7, v8, :cond_72

    .line 448
    const/4 v10, 0x0

    .local v10, "window":I
    :goto_52
    if-ge v10, v9, :cond_6f

    .line 449
    iget-object v11, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v11, v11, p1

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v11, v11, v10

    iget-object v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    sget-object v13, Ljavazoom/jl/decoder/LayerIIIDecoder;->slen:[[I

    aget-object v13, v13, v4

    iget v15, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->scalefac_compress:I

    aget v13, v13, v15

    invoke-virtual {v12, v13}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v12

    aput v12, v11, v7

    .line 448
    add-int/lit8 v10, v10, 0x1

    goto :goto_52

    .line 447
    :cond_6f
    add-int/lit8 v7, v7, 0x1

    goto :goto_4f

    .line 450
    .end local v10  # "window":I
    :cond_72
    const/4 v7, 0x6

    :goto_73
    if-ge v7, v14, :cond_96

    .line 451
    const/4 v8, 0x0

    .local v8, "window":I
    :goto_76
    if-ge v8, v9, :cond_93

    .line 452
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v10, v10, p1

    iget-object v10, v10, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v10, v10, v8

    iget-object v11, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    sget-object v12, Ljavazoom/jl/decoder/LayerIIIDecoder;->slen:[[I

    aget-object v12, v12, v6

    iget v13, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->scalefac_compress:I

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v11

    aput v11, v10, v7

    .line 451
    add-int/lit8 v8, v8, 0x1

    goto :goto_76

    .line 450
    :cond_93
    add-int/lit8 v7, v7, 0x1

    goto :goto_73

    .line 453
    .end local v8  # "window":I
    :cond_96
    const/16 v6, 0xc

    .end local v7  # "sfb":I
    .local v6, "sfb":I
    const/4 v7, 0x0

    .local v7, "window":I
    :goto_99
    if-ge v7, v9, :cond_49a

    .line 454
    iget-object v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v8, v8, p1

    iget-object v8, v8, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v8, v8, v7

    aput v4, v8, v6

    .line 453
    add-int/lit8 v7, v7, 0x1

    goto :goto_99

    .line 458
    .end local v6  # "sfb":I
    .end local v7  # "window":I
    :cond_a8
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v4

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v14, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v14

    aput v14, v7, v4

    .line 459
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v6

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v14, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v14

    aput v14, v7, v4

    .line 460
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v10

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v14, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v14

    aput v14, v7, v4

    .line 461
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v4

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v14, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v14

    aput v14, v7, v6

    .line 462
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v6

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v14, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v14

    aput v14, v7, v6

    .line 463
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v10

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v14, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v14

    aput v14, v7, v6

    .line 464
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v4

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v14, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v14

    aput v14, v7, v10

    .line 465
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v6

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v14, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v14

    aput v14, v7, v10

    .line 466
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v10

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v14, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v14

    aput v14, v7, v10

    .line 467
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v4

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v14, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v14

    aput v14, v7, v9

    .line 468
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v6

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v14, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v14

    aput v14, v7, v9

    .line 469
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v10

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v14, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v14

    aput v14, v7, v9

    .line 470
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v4

    iget-object v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v9, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v9

    aput v9, v7, v13

    .line 471
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v6

    iget-object v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v9, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v9

    aput v9, v7, v13

    .line 472
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v10

    iget-object v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v9, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v9

    aput v9, v7, v13

    .line 473
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v4

    iget-object v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v9, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v9

    aput v9, v7, v12

    .line 474
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v6

    iget-object v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v9, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v9

    aput v9, v7, v12

    .line 475
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v10

    iget-object v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v9, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v9

    aput v9, v7, v12

    .line 476
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v4

    iget-object v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v9, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v9

    aput v9, v7, v8

    .line 477
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v6

    iget-object v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v9, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v9

    aput v9, v7, v8

    .line 478
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v10

    iget-object v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v9, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v9

    aput v9, v7, v8

    .line 479
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v4

    iget-object v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v8, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v8

    aput v8, v7, v11

    .line 480
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v6

    iget-object v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v8, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v8

    aput v8, v7, v11

    .line 481
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v10

    iget-object v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v8, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v8

    aput v8, v7, v11

    .line 482
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v4

    iget-object v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v8, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v8

    aput v8, v7, v15

    .line 483
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v6

    iget-object v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v8, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v8

    aput v8, v7, v15

    .line 484
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v10

    iget-object v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v8, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v8

    aput v8, v7, v15

    .line 485
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v4

    iget-object v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v8, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v8

    const/16 v9, 0x9

    aput v8, v7, v9

    .line 486
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v6

    iget-object v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v8, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v8

    aput v8, v7, v9

    .line 487
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v10

    iget-object v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v8, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v8

    aput v8, v7, v9

    .line 488
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v4

    iget-object v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v8, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v8

    const/16 v9, 0xa

    aput v8, v7, v9

    .line 489
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v6

    iget-object v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v8, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v8

    aput v8, v7, v9

    .line 490
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v10

    iget-object v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v8, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v8

    aput v8, v7, v9

    .line 491
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v4

    iget-object v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v8, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v8

    const/16 v9, 0xb

    aput v8, v7, v9

    .line 492
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v6

    iget-object v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v8, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v8

    aput v8, v7, v9

    .line 493
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v10

    iget-object v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v8, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v8

    aput v8, v7, v9

    .line 494
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v7, v7, v4

    const/16 v8, 0xc

    aput v4, v7, v8

    .line 495
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v6, v7, v6

    aput v4, v6, v8

    .line 496
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v6, v6, p1

    iget-object v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v6, v6, v10

    aput v4, v6, v8

    goto/16 :goto_49a

    .line 501
    :cond_310
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->scfsi:[I

    aget v7, v7, v4

    if-eqz v7, :cond_31e

    if-nez p2, :cond_372

    .line 502
    :cond_31e
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v14, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v14

    aput v14, v7, v4

    .line 503
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v14, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v14

    aput v14, v7, v6

    .line 504
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v14, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v14

    aput v14, v7, v10

    .line 505
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v14, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v14

    aput v14, v7, v9

    .line 506
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v14, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v14

    aput v14, v7, v13

    .line 507
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    iget-object v13, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v13, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v13

    aput v13, v7, v12

    .line 509
    :cond_372
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v7, v7, p1

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->scfsi:[I

    aget v6, v7, v6

    if-eqz v6, :cond_380

    if-nez p2, :cond_3ca

    .line 510
    :cond_380
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v6, v6, p1

    iget-object v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v7, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v7

    aput v7, v6, v8

    .line 511
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v6, v6, p1

    iget-object v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v7, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v7

    aput v7, v6, v11

    .line 512
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v6, v6, p1

    iget-object v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v7, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v7

    aput v7, v6, v15

    .line 513
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v6, v6, p1

    iget-object v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v7, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v7

    const/16 v8, 0x9

    aput v7, v6, v8

    .line 514
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v6, v6, p1

    iget-object v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v7, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v7

    const/16 v8, 0xa

    aput v7, v6, v8

    .line 516
    :cond_3ca
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v6, v6, p1

    iget-object v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->scfsi:[I

    aget v6, v6, v10

    if-eqz v6, :cond_3d8

    if-nez p2, :cond_428

    .line 517
    :cond_3d8
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v6, v6, p1

    iget-object v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v7, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v7

    const/16 v8, 0xb

    aput v7, v6, v8

    .line 518
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v6, v6, p1

    iget-object v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v7, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v7

    const/16 v8, 0xc

    aput v7, v6, v8

    .line 519
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v6, v6, p1

    iget-object v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v7, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v7

    const/16 v8, 0xd

    aput v7, v6, v8

    .line 520
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v6, v6, p1

    iget-object v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v7, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v7

    const/16 v8, 0xe

    aput v7, v6, v8

    .line 521
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v6, v6, p1

    iget-object v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v7, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v7

    const/16 v8, 0xf

    aput v7, v6, v8

    .line 523
    :cond_428
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v6, v6, p1

    iget-object v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->scfsi:[I

    aget v6, v6, v9

    if-eqz v6, :cond_436

    if-nez p2, :cond_486

    .line 524
    :cond_436
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v6, v6, p1

    iget-object v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v7, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v7

    const/16 v8, 0x10

    aput v7, v6, v8

    .line 525
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v6, v6, p1

    iget-object v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v7, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v7

    const/16 v8, 0x11

    aput v7, v6, v8

    .line 526
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v6, v6, p1

    iget-object v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v7, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v7

    const/16 v8, 0x12

    aput v7, v6, v8

    .line 527
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v6, v6, p1

    iget-object v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v7, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v7

    const/16 v8, 0x13

    aput v7, v6, v8

    .line 528
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v6, v6, p1

    iget-object v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v7, v5}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    move-result v7

    const/16 v8, 0x14

    aput v7, v6, v8

    .line 531
    :cond_486
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v6, v6, p1

    iget-object v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    const/16 v7, 0x15

    aput v4, v6, v7

    .line 532
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v6, v6, p1

    iget-object v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    const/16 v7, 0x16

    aput v4, v6, v7

    .line 534
    :cond_49a
    :goto_49a
    return-void
.end method

.method private get_side_info()Z
    .registers 15

    .line 322
    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->header:Ljavazoom/jl/decoder/Header;

    invoke-virtual {v0}, Ljavazoom/jl/decoder/Header;->version()I

    move-result v0

    const/4 v1, 0x7

    const/16 v2, 0xc

    const/4 v3, 0x4

    const/16 v4, 0x9

    const/16 v5, 0x8

    const/4 v6, 0x3

    const/4 v7, 0x5

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_281

    .line 324
    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v11, v4}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v11

    iput v11, v0, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->main_data_begin:I

    .line 325
    iget v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->channels:I

    if-ne v0, v10, :cond_2e

    .line 326
    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v11, v7}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v11

    iput v11, v0, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->private_bits:I

    goto :goto_38

    .line 328
    :cond_2e
    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v11, v6}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v11

    iput v11, v0, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->private_bits:I

    .line 330
    :goto_38
    const/4 v0, 0x0

    .local v0, "ch":I
    :goto_39
    iget v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->channels:I

    if-ge v0, v11, :cond_80

    .line 331
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->scfsi:[I

    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v12, v10}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v12

    aput v12, v11, v9

    .line 332
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->scfsi:[I

    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v12, v10}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v12

    aput v12, v11, v10

    .line 333
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->scfsi:[I

    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v12, v10}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v12

    aput v12, v11, v8

    .line 334
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->scfsi:[I

    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v12, v10}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v12

    aput v12, v11, v6

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 337
    :cond_80
    const/4 v11, 0x0

    .local v11, "gr":I
    :goto_81
    if-ge v11, v8, :cond_48d

    .line 338
    const/4 v0, 0x0

    :goto_84
    iget v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->channels:I

    if-ge v0, v12, :cond_27d

    .line 339
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iget-object v13, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v13, v2}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v13

    iput v13, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->part2_3_length:I

    .line 340
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iget-object v13, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v13, v4}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v13

    iput v13, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->big_values:I

    .line 341
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iget-object v13, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v13, v5}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v13

    iput v13, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->global_gain:I

    .line 342
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iget-object v13, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v13, v3}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v13

    iput v13, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->scalefac_compress:I

    .line 343
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iget-object v13, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v13, v10}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v13

    iput v13, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->window_switching_flag:I

    .line 344
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iget v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->window_switching_flag:I

    if-eqz v12, :cond_1d7

    .line 345
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iget-object v13, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v13, v8}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v13

    iput v13, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->block_type:I

    .line 346
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iget-object v13, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v13, v10}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v13

    iput v13, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->mixed_block_flag:I

    .line 348
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->table_select:[I

    iget-object v13, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v13, v7}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v13

    aput v13, v12, v9

    .line 349
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->table_select:[I

    iget-object v13, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v13, v7}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v13

    aput v13, v12, v10

    .line 351
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->subblock_gain:[I

    iget-object v13, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v13, v6}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v13

    aput v13, v12, v9

    .line 352
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->subblock_gain:[I

    iget-object v13, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v13, v6}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v13

    aput v13, v12, v10

    .line 353
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->subblock_gain:[I

    iget-object v13, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v13, v6}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v13

    aput v13, v12, v8

    .line 357
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iget v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->block_type:I

    if-nez v12, :cond_187

    .line 359
    return v9

    .line 360
    :cond_187
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iget v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->block_type:I

    if-ne v12, v8, :cond_1b0

    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iget v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->mixed_block_flag:I

    if-nez v12, :cond_1b0

    .line 361
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iput v5, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->region0_count:I

    goto :goto_1bc

    .line 363
    :cond_1b0
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iput v1, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->region0_count:I

    .line 364
    :goto_1bc
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iget-object v13, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v13, v13, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v13, v13, v0

    iget-object v13, v13, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v13, v13, v11

    iget v13, v13, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->region0_count:I

    rsub-int/lit8 v13, v13, 0x14

    iput v13, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->region1_count:I

    goto :goto_243

    .line 366
    :cond_1d7
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->table_select:[I

    iget-object v13, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v13, v7}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v13

    aput v13, v12, v9

    .line 367
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->table_select:[I

    iget-object v13, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v13, v7}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v13

    aput v13, v12, v10

    .line 368
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->table_select:[I

    iget-object v13, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v13, v7}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v13

    aput v13, v12, v8

    .line 369
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iget-object v13, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v13, v3}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v13

    iput v13, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->region0_count:I

    .line 370
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iget-object v13, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v13, v6}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v13

    iput v13, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->region1_count:I

    .line 371
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iput v9, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->block_type:I

    .line 373
    :goto_243
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iget-object v13, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v13, v10}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v13

    iput v13, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->preflag:I

    .line 374
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iget-object v13, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v13, v10}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v13

    iput v13, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->scalefac_scale:I

    .line 375
    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v11

    iget-object v13, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v13, v10}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v13

    iput v13, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->count1table_select:I

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_84

    .line 337
    :cond_27d
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_81

    .line 380
    .end local v0  # "ch":I
    .end local v11  # "gr":I
    :cond_281
    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v11, v5}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v11

    iput v11, v0, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->main_data_begin:I

    .line 381
    iget v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->channels:I

    if-ne v0, v10, :cond_29a

    .line 382
    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v11, v10}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v11

    iput v11, v0, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->private_bits:I

    goto :goto_2a4

    .line 384
    :cond_29a
    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v11, v8}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v11

    iput v11, v0, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->private_bits:I

    .line 386
    :goto_2a4
    const/4 v0, 0x0

    .restart local v0  # "ch":I
    :goto_2a5
    iget v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->channels:I

    if-ge v0, v11, :cond_48d

    .line 388
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v12, v2}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v12

    iput v12, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->part2_3_length:I

    .line 389
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v12, v4}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v12

    iput v12, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->big_values:I

    .line 390
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v12, v5}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v12

    iput v12, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->global_gain:I

    .line 391
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v12, v4}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v12

    iput v12, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->scalefac_compress:I

    .line 392
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v12, v10}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v12

    iput v12, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->window_switching_flag:I

    .line 394
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iget v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->window_switching_flag:I

    if-eqz v11, :cond_3f9

    .line 396
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v12, v8}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v12

    iput v12, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->block_type:I

    .line 397
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v12, v10}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v12

    iput v12, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->mixed_block_flag:I

    .line 398
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->table_select:[I

    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v12, v7}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v12

    aput v12, v11, v9

    .line 399
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->table_select:[I

    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v12, v7}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v12

    aput v12, v11, v10

    .line 401
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->subblock_gain:[I

    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v12, v6}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v12

    aput v12, v11, v9

    .line 402
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->subblock_gain:[I

    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v12, v6}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v12

    aput v12, v11, v10

    .line 403
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->subblock_gain:[I

    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v12, v6}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v12

    aput v12, v11, v8

    .line 407
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iget v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->block_type:I

    if-nez v11, :cond_3a8

    .line 409
    return v9

    .line 410
    :cond_3a8
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iget v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->block_type:I

    if-ne v11, v8, :cond_3d2

    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iget v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->mixed_block_flag:I

    if-nez v11, :cond_3d2

    .line 411
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iput v5, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->region0_count:I

    goto/16 :goto_465

    .line 413
    :cond_3d2
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iput v1, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->region0_count:I

    .line 414
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v12, v12, v0

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v12, v12, v9

    iget v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->region0_count:I

    rsub-int/lit8 v12, v12, 0x14

    iput v12, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->region1_count:I

    goto :goto_465

    .line 418
    :cond_3f9
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->table_select:[I

    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v12, v7}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v12

    aput v12, v11, v9

    .line 419
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->table_select:[I

    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v12, v7}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v12

    aput v12, v11, v10

    .line 420
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->table_select:[I

    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v12, v7}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v12

    aput v12, v11, v8

    .line 421
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v12, v3}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v12

    iput v12, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->region0_count:I

    .line 422
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v12, v6}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v12

    iput v12, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->region1_count:I

    .line 423
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iput v9, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->block_type:I

    .line 426
    :goto_465
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v12, v10}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v12

    iput v12, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->scalefac_scale:I

    .line 427
    iget-object v11, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v11, v11, v0

    iget-object v11, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v11, v11, v9

    iget-object v12, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v12, v10}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v12

    iput v12, v11, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->count1table_select:I

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2a5

    .line 430
    :cond_48d
    return v10
.end method

.method private huffman_decode(II)V
    .registers 19
    .param p1, "ch"  # I
    .param p2, "gr"  # I

    .line 688
    move-object/from16 v0, p0

    iget-object v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->x:[I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 689
    iget-object v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->y:[I

    aput v2, v1, v2

    .line 690
    iget-object v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->v:[I

    aput v2, v1, v2

    .line 691
    iget-object v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->w:[I

    aput v2, v1, v2

    .line 693
    iget v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->part2_start:I

    iget-object v3, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v3, v3, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v3, v3, p1

    iget-object v3, v3, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v3, v3, p2

    iget v3, v3, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->part2_3_length:I

    add-int/2addr v1, v3

    .line 705
    .local v1, "part2_3_end":I
    iget-object v3, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v3, v3, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v3, v3, p1

    iget-object v3, v3, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v3, v3, p2

    iget v3, v3, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->window_switching_flag:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_4e

    iget-object v3, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v3, v3, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v3, v3, p1

    iget-object v3, v3, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v3, v3, p2

    iget v3, v3, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->block_type:I

    if-ne v3, v4, :cond_4e

    .line 709
    iget v3, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_49

    const/16 v3, 0x48

    goto :goto_4b

    :cond_49
    const/16 v3, 0x24

    .line 710
    .local v3, "region1Start":I
    :goto_4b
    const/16 v6, 0x240

    .local v6, "region2Start":I
    goto :goto_96

    .line 714
    .end local v3  # "region1Start":I
    .end local v6  # "region2Start":I
    :cond_4e
    iget-object v3, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v3, v3, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v3, v3, p1

    iget-object v3, v3, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v3, v3, p2

    iget v3, v3, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->region0_count:I

    add-int/2addr v3, v5

    .line 715
    .local v3, "buf":I
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v6, v6, p1

    iget-object v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v6, v6, p2

    iget v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->region1_count:I

    add-int/2addr v6, v3

    add-int/2addr v6, v5

    .line 717
    .local v6, "buf1":I
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v7, v7, v8

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->l:[I

    array-length v7, v7

    sub-int/2addr v7, v5

    if-le v6, v7, :cond_80

    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v7, v7, v8

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->l:[I

    array-length v7, v7

    add-int/lit8 v6, v7, -0x1

    .line 719
    :cond_80
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v7, v7, v8

    iget-object v7, v7, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->l:[I

    aget v7, v7, v3

    .line 720
    .local v7, "region1Start":I
    iget-object v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v8, v8, v9

    iget-object v8, v8, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->l:[I

    aget v8, v8, v6

    move v3, v7

    move v6, v8

    .line 723
    .end local v7  # "region1Start":I
    .local v3, "region1Start":I
    .local v6, "region2Start":I
    :goto_96
    const/4 v7, 0x0

    .line 725
    .local v7, "index":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_98
    iget-object v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v9, v9, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v9, v9, p1

    iget-object v9, v9, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v9, v9, p2

    iget v9, v9, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->big_values:I

    shl-int/2addr v9, v5

    if-ge v8, v9, :cond_117

    .line 726
    if-ge v8, v3, :cond_bc

    .line 727
    sget-object v9, Ljavazoom/jl/decoder/huffcodetab;->ht:[Ljavazoom/jl/decoder/huffcodetab;

    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v10, v10, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v10, v10, p1

    iget-object v10, v10, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v10, v10, p2

    iget-object v10, v10, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->table_select:[I

    aget v10, v10, v2

    aget-object v9, v9, v10

    .local v9, "h":Ljavazoom/jl/decoder/huffcodetab;
    goto :goto_e3

    .line 728
    .end local v9  # "h":Ljavazoom/jl/decoder/huffcodetab;
    :cond_bc
    if-ge v8, v6, :cond_d1

    .line 729
    sget-object v9, Ljavazoom/jl/decoder/huffcodetab;->ht:[Ljavazoom/jl/decoder/huffcodetab;

    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v10, v10, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v10, v10, p1

    iget-object v10, v10, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v10, v10, p2

    iget-object v10, v10, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->table_select:[I

    aget v10, v10, v5

    aget-object v9, v9, v10

    .restart local v9  # "h":Ljavazoom/jl/decoder/huffcodetab;
    goto :goto_e3

    .line 731
    .end local v9  # "h":Ljavazoom/jl/decoder/huffcodetab;
    :cond_d1
    sget-object v9, Ljavazoom/jl/decoder/huffcodetab;->ht:[Ljavazoom/jl/decoder/huffcodetab;

    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v10, v10, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v10, v10, p1

    iget-object v10, v10, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v10, v10, p2

    iget-object v10, v10, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->table_select:[I

    aget v10, v10, v4

    aget-object v9, v9, v10

    .line 733
    .restart local v9  # "h":Ljavazoom/jl/decoder/huffcodetab;
    :goto_e3
    iget-object v11, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->x:[I

    iget-object v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->y:[I

    iget-object v13, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->v:[I

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->w:[I

    iget-object v15, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    move-object v10, v9

    invoke-static/range {v10 .. v15}, Ljavazoom/jl/decoder/huffcodetab;->huffman_decoder(Ljavazoom/jl/decoder/huffcodetab;[I[I[I[ILjavazoom/jl/decoder/BitReserve;)I

    .line 737
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_1d:[I

    add-int/lit8 v11, v7, 0x1

    .end local v7  # "index":I
    .local v11, "index":I
    iget-object v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->x:[I

    aget v12, v12, v2

    aput v12, v10, v7

    .line 738
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_1d:[I

    add-int/lit8 v10, v11, 0x1

    .end local v11  # "index":I
    .local v10, "index":I
    iget-object v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->y:[I

    aget v12, v12, v2

    aput v12, v7, v11

    .line 740
    iget v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->CheckSumHuff:I

    iget-object v11, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->x:[I

    aget v11, v11, v2

    add-int/2addr v7, v11

    iget-object v11, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->y:[I

    aget v11, v11, v2

    add-int/2addr v7, v11

    iput v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->CheckSumHuff:I

    .line 725
    add-int/lit8 v8, v8, 0x2

    move v7, v10

    goto :goto_98

    .line 745
    .end local v8  # "i":I
    .end local v9  # "h":Ljavazoom/jl/decoder/huffcodetab;
    .end local v10  # "index":I
    .restart local v7  # "index":I
    :cond_117
    sget-object v4, Ljavazoom/jl/decoder/huffcodetab;->ht:[Ljavazoom/jl/decoder/huffcodetab;

    iget-object v5, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v5, v5, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v5, v5, p1

    iget-object v5, v5, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v5, v5, p2

    iget v5, v5, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->count1table_select:I

    add-int/lit8 v5, v5, 0x20

    aget-object v4, v4, v5

    .line 746
    .local v4, "h":Ljavazoom/jl/decoder/huffcodetab;
    iget-object v5, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v5}, Ljavazoom/jl/decoder/BitReserve;->hsstell()I

    move-result v5

    .line 748
    .local v5, "num_bits":I
    :goto_12f
    const/16 v8, 0x240

    if-ge v5, v1, :cond_18b

    if-ge v7, v8, :cond_18b

    .line 750
    iget-object v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->x:[I

    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->y:[I

    iget-object v11, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->v:[I

    iget-object v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->w:[I

    iget-object v13, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    move-object v8, v4

    invoke-static/range {v8 .. v13}, Ljavazoom/jl/decoder/huffcodetab;->huffman_decoder(Ljavazoom/jl/decoder/huffcodetab;[I[I[I[ILjavazoom/jl/decoder/BitReserve;)I

    .line 752
    iget-object v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_1d:[I

    add-int/lit8 v9, v7, 0x1

    .end local v7  # "index":I
    .local v9, "index":I
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->v:[I

    aget v10, v10, v2

    aput v10, v8, v7

    .line 753
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_1d:[I

    add-int/lit8 v8, v9, 0x1

    .end local v9  # "index":I
    .local v8, "index":I
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->w:[I

    aget v10, v10, v2

    aput v10, v7, v9

    .line 754
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_1d:[I

    add-int/lit8 v9, v8, 0x1

    .end local v8  # "index":I
    .restart local v9  # "index":I
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->x:[I

    aget v10, v10, v2

    aput v10, v7, v8

    .line 755
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_1d:[I

    add-int/lit8 v8, v9, 0x1

    .end local v9  # "index":I
    .restart local v8  # "index":I
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->y:[I

    aget v10, v10, v2

    aput v10, v7, v9

    .line 756
    iget v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->CheckSumHuff:I

    iget-object v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->v:[I

    aget v9, v9, v2

    add-int/2addr v7, v9

    iget-object v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->w:[I

    aget v9, v9, v2

    add-int/2addr v7, v9

    iget-object v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->x:[I

    aget v9, v9, v2

    add-int/2addr v7, v9

    iget-object v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->y:[I

    aget v9, v9, v2

    add-int/2addr v7, v9

    iput v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->CheckSumHuff:I

    .line 759
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v7}, Ljavazoom/jl/decoder/BitReserve;->hsstell()I

    move-result v5

    move v7, v8

    goto :goto_12f

    .line 762
    .end local v8  # "index":I
    .restart local v7  # "index":I
    :cond_18b
    if-le v5, v1, :cond_196

    .line 763
    iget-object v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    sub-int v10, v5, v1

    invoke-virtual {v9, v10}, Ljavazoom/jl/decoder/BitReserve;->rewindNbits(I)V

    .line 764
    add-int/lit8 v7, v7, -0x4

    .line 767
    :cond_196
    iget-object v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v9}, Ljavazoom/jl/decoder/BitReserve;->hsstell()I

    move-result v5

    .line 770
    if-ge v5, v1, :cond_1a5

    iget-object v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    sub-int v10, v1, v5

    invoke-virtual {v9, v10}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    .line 774
    :cond_1a5
    if-ge v7, v8, :cond_1ac

    .line 775
    iget-object v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->nonzero:[I

    aput v7, v9, p1

    goto :goto_1b0

    .line 777
    :cond_1ac
    iget-object v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->nonzero:[I

    aput v8, v9, p1

    .line 779
    :goto_1b0
    if-gez v7, :cond_1b3

    const/4 v7, 0x0

    .line 782
    :cond_1b3
    :goto_1b3
    if-ge v7, v8, :cond_1bc

    .line 783
    iget-object v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_1d:[I

    aput v2, v9, v7

    .line 782
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b3

    .line 784
    :cond_1bc
    return-void
.end method

.method private hybrid(II)V
    .registers 13
    .param p1, "ch"  # I
    .param p2, "gr"  # I

    .line 1326
    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v0, v0, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v0, v0, p1

    iget-object v0, v0, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v0, v0, p2

    .line 1331
    .local v0, "gr_info":Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;
    const/4 v1, 0x0

    .local v1, "sb18":I
    :goto_b
    const/16 v2, 0x240

    if-ge v1, v2, :cond_24c

    .line 1332
    iget v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->window_switching_flag:I

    const/4 v3, 0x0

    if-eqz v2, :cond_1e

    iget v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->mixed_block_flag:I

    if-eqz v2, :cond_1e

    const/16 v2, 0x24

    if-ge v1, v2, :cond_1e

    move v2, v3

    goto :goto_20

    :cond_1e
    iget v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->block_type:I

    .line 1334
    .local v2, "bt":I
    :goto_20
    iget-object v4, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->out_1d:[F

    .line 1336
    .local v4, "tsOut":[F
    const/4 v5, 0x0

    .local v5, "cc":I
    :goto_23
    const/16 v6, 0x12

    if-ge v5, v6, :cond_32

    .line 1337
    iget-object v6, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->tsOutCopy:[F

    add-int v7, v5, v1

    aget v7, v4, v7

    aput v7, v6, v5

    .line 1336
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 1339
    .end local v5  # "cc":I
    :cond_32
    iget-object v5, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->tsOutCopy:[F

    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    invoke-virtual {p0, v5, v7, v2}, Ljavazoom/jl/decoder/LayerIIIDecoder;->inv_mdct([F[FI)V

    .line 1341
    const/4 v5, 0x0

    .restart local v5  # "cc":I
    :goto_3a
    if-ge v5, v6, :cond_47

    .line 1342
    add-int v7, v5, v1

    iget-object v8, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->tsOutCopy:[F

    aget v8, v8, v5

    aput v8, v4, v7

    .line 1341
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 1346
    .end local v5  # "cc":I
    :cond_47
    iget-object v5, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->prevblck:[[F

    .line 1348
    .local v5, "prvblk":[[F
    add-int/lit8 v7, v1, 0x0

    iget-object v8, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    aget v3, v8, v3

    aget-object v8, v5, p1

    add-int/lit8 v9, v1, 0x0

    aget v8, v8, v9

    add-float/2addr v3, v8

    aput v3, v4, v7

    .line 1349
    aget-object v3, v5, p1

    add-int/lit8 v7, v1, 0x0

    iget-object v8, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    aget v6, v8, v6

    aput v6, v3, v7

    .line 1350
    add-int/lit8 v3, v1, 0x1

    iget-object v6, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    aget-object v7, v5, p1

    add-int/lit8 v8, v1, 0x1

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v3

    .line 1351
    aget-object v3, v5, p1

    add-int/lit8 v6, v1, 0x1

    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v8, 0x13

    aget v7, v7, v8

    aput v7, v3, v6

    .line 1352
    add-int/lit8 v3, v1, 0x2

    iget-object v6, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    aget-object v7, v5, p1

    add-int/lit8 v8, v1, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v3

    .line 1353
    aget-object v3, v5, p1

    add-int/lit8 v6, v1, 0x2

    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v8, 0x14

    aget v7, v7, v8

    aput v7, v3, v6

    .line 1354
    add-int/lit8 v3, v1, 0x3

    iget-object v6, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    aget-object v7, v5, p1

    add-int/lit8 v8, v1, 0x3

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v3

    .line 1355
    aget-object v3, v5, p1

    add-int/lit8 v6, v1, 0x3

    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v8, 0x15

    aget v7, v7, v8

    aput v7, v3, v6

    .line 1356
    add-int/lit8 v3, v1, 0x4

    iget-object v6, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/4 v7, 0x4

    aget v6, v6, v7

    aget-object v7, v5, p1

    add-int/lit8 v8, v1, 0x4

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v3

    .line 1357
    aget-object v3, v5, p1

    add-int/lit8 v6, v1, 0x4

    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v8, 0x16

    aget v7, v7, v8

    aput v7, v3, v6

    .line 1358
    add-int/lit8 v3, v1, 0x5

    iget-object v6, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    aget-object v7, v5, p1

    add-int/lit8 v8, v1, 0x5

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v3

    .line 1359
    aget-object v3, v5, p1

    add-int/lit8 v6, v1, 0x5

    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v8, 0x17

    aget v7, v7, v8

    aput v7, v3, v6

    .line 1360
    add-int/lit8 v3, v1, 0x6

    iget-object v6, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/4 v7, 0x6

    aget v6, v6, v7

    aget-object v7, v5, p1

    add-int/lit8 v8, v1, 0x6

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v3

    .line 1361
    aget-object v3, v5, p1

    add-int/lit8 v6, v1, 0x6

    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v8, 0x18

    aget v7, v7, v8

    aput v7, v3, v6

    .line 1362
    add-int/lit8 v3, v1, 0x7

    iget-object v6, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    aget-object v7, v5, p1

    add-int/lit8 v8, v1, 0x7

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v3

    .line 1363
    aget-object v3, v5, p1

    add-int/lit8 v6, v1, 0x7

    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v8, 0x19

    aget v7, v7, v8

    aput v7, v3, v6

    .line 1364
    add-int/lit8 v3, v1, 0x8

    iget-object v6, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v7, 0x8

    aget v6, v6, v7

    aget-object v7, v5, p1

    add-int/lit8 v8, v1, 0x8

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v3

    .line 1365
    aget-object v3, v5, p1

    add-int/lit8 v6, v1, 0x8

    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v8, 0x1a

    aget v7, v7, v8

    aput v7, v3, v6

    .line 1366
    add-int/lit8 v3, v1, 0x9

    iget-object v6, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v7, 0x9

    aget v6, v6, v7

    aget-object v7, v5, p1

    add-int/lit8 v8, v1, 0x9

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v3

    .line 1367
    aget-object v3, v5, p1

    add-int/lit8 v6, v1, 0x9

    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v8, 0x1b

    aget v7, v7, v8

    aput v7, v3, v6

    .line 1368
    add-int/lit8 v3, v1, 0xa

    iget-object v6, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v7, 0xa

    aget v6, v6, v7

    aget-object v7, v5, p1

    add-int/lit8 v8, v1, 0xa

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v3

    .line 1369
    aget-object v3, v5, p1

    add-int/lit8 v6, v1, 0xa

    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v8, 0x1c

    aget v7, v7, v8

    aput v7, v3, v6

    .line 1370
    add-int/lit8 v3, v1, 0xb

    iget-object v6, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v7, 0xb

    aget v6, v6, v7

    aget-object v7, v5, p1

    add-int/lit8 v8, v1, 0xb

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v3

    .line 1371
    aget-object v3, v5, p1

    add-int/lit8 v6, v1, 0xb

    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v8, 0x1d

    aget v7, v7, v8

    aput v7, v3, v6

    .line 1372
    add-int/lit8 v3, v1, 0xc

    iget-object v6, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v7, 0xc

    aget v6, v6, v7

    aget-object v7, v5, p1

    add-int/lit8 v8, v1, 0xc

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v3

    .line 1373
    aget-object v3, v5, p1

    add-int/lit8 v6, v1, 0xc

    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v8, 0x1e

    aget v7, v7, v8

    aput v7, v3, v6

    .line 1374
    add-int/lit8 v3, v1, 0xd

    iget-object v6, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    aget-object v7, v5, p1

    add-int/lit8 v8, v1, 0xd

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v3

    .line 1375
    aget-object v3, v5, p1

    add-int/lit8 v6, v1, 0xd

    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v8, 0x1f

    aget v7, v7, v8

    aput v7, v3, v6

    .line 1376
    add-int/lit8 v3, v1, 0xe

    iget-object v6, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v7, 0xe

    aget v6, v6, v7

    aget-object v7, v5, p1

    add-int/lit8 v8, v1, 0xe

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v3

    .line 1377
    aget-object v3, v5, p1

    add-int/lit8 v6, v1, 0xe

    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v8, 0x20

    aget v7, v7, v8

    aput v7, v3, v6

    .line 1378
    add-int/lit8 v3, v1, 0xf

    iget-object v6, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v7, 0xf

    aget v6, v6, v7

    aget-object v7, v5, p1

    add-int/lit8 v8, v1, 0xf

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v3

    .line 1379
    aget-object v3, v5, p1

    add-int/lit8 v6, v1, 0xf

    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v8, 0x21

    aget v7, v7, v8

    aput v7, v3, v6

    .line 1380
    add-int/lit8 v3, v1, 0x10

    iget-object v6, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v7, 0x10

    aget v6, v6, v7

    aget-object v7, v5, p1

    add-int/lit8 v8, v1, 0x10

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v3

    .line 1381
    aget-object v3, v5, p1

    add-int/lit8 v6, v1, 0x10

    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v8, 0x22

    aget v7, v7, v8

    aput v7, v3, v6

    .line 1382
    add-int/lit8 v3, v1, 0x11

    iget-object v6, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v7, 0x11

    aget v6, v6, v7

    aget-object v7, v5, p1

    add-int/lit8 v8, v1, 0x11

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v3

    .line 1383
    aget-object v3, v5, p1

    add-int/lit8 v6, v1, 0x11

    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->rawout:[F

    const/16 v8, 0x23

    aget v7, v7, v8

    aput v7, v3, v6

    .line 1331
    add-int/lit8 v1, v1, 0x12

    goto/16 :goto_b

    .line 1385
    .end local v2  # "bt":I
    .end local v4  # "tsOut":[F
    .end local v5  # "prvblk":[[F
    :cond_24c
    return-void
.end method

.method private i_stereo_k_values(III)V
    .registers 9
    .param p1, "is_pos"  # I
    .param p2, "io_type"  # I
    .param p3, "i"  # I

    .line 790
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x1

    if-nez p1, :cond_13

    .line 791
    iget-object v3, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->k:[[F

    aget-object v0, v3, v0

    aput v1, v0, p3

    .line 792
    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->k:[[F

    aget-object v0, v0, v2

    aput v1, v0, p3

    goto :goto_41

    .line 793
    :cond_13
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_2d

    .line 794
    iget-object v3, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->k:[[F

    aget-object v0, v3, v0

    sget-object v3, Ljavazoom/jl/decoder/LayerIIIDecoder;->io:[[F

    aget-object v3, v3, p2

    add-int/lit8 v4, p1, 0x1

    ushr-int/2addr v4, v2

    aget v3, v3, v4

    aput v3, v0, p3

    .line 795
    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->k:[[F

    aget-object v0, v0, v2

    aput v1, v0, p3

    goto :goto_41

    .line 797
    :cond_2d
    iget-object v3, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->k:[[F

    aget-object v0, v3, v0

    aput v1, v0, p3

    .line 798
    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->k:[[F

    aget-object v0, v0, v2

    sget-object v1, Ljavazoom/jl/decoder/LayerIIIDecoder;->io:[[F

    aget-object v1, v1, p2

    ushr-int/lit8 v2, p1, 0x1

    aget v1, v1, v2

    aput v1, v0, p3

    .line 800
    :goto_41
    return-void
.end method

.method private reorder([[FII)V
    .registers 20
    .param p1, "xr"  # [[F
    .param p2, "ch"  # I
    .param p3, "gr"  # I

    .line 944
    move-object/from16 v0, p0

    iget-object v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v1, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v1, v1, p2

    iget-object v1, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v1, v1, p3

    .line 949
    .local v1, "gr_info":Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;
    move-object/from16 v2, p1

    .line 951
    .local v2, "xr_1d":[[F
    iget v3, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->window_switching_flag:I

    const/16 v4, 0x240

    if-eqz v3, :cond_b9

    iget v3, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->block_type:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_b9

    .line 953
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1a
    if-ge v3, v4, :cond_24

    .line 954
    iget-object v5, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->out_1d:[F

    const/4 v6, 0x0

    aput v6, v5, v3

    .line 953
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 956
    :cond_24
    iget v5, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->mixed_block_flag:I

    if-eqz v5, :cond_9d

    .line 958
    const/4 v3, 0x0

    :goto_29
    const/16 v4, 0x24

    if-ge v3, v4, :cond_3e

    .line 960
    rem-int/lit8 v4, v3, 0x12

    .line 961
    .local v4, "reste":I
    sub-int v5, v3, v4

    div-int/lit8 v5, v5, 0x12

    .line 962
    .local v5, "quotien":I
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->out_1d:[F

    aget-object v7, v2, v5

    aget v7, v7, v4

    aput v7, v6, v3

    .line 958
    .end local v4  # "reste":I
    .end local v5  # "quotien":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 969
    :cond_3e
    const/4 v4, 0x3

    .local v4, "sfb":I
    :goto_3f
    const/16 v5, 0xd

    if-ge v4, v5, :cond_cd

    .line 972
    iget-object v5, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v5, v5, v6

    iget-object v5, v5, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    aget v5, v5, v4

    .line 973
    .local v5, "sfb_start":I
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v6, v6, v7

    iget-object v6, v6, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    add-int/lit8 v7, v4, 0x1

    aget v6, v6, v7

    sub-int/2addr v6, v5

    .line 975
    .local v6, "sfb_lines":I
    shl-int/lit8 v7, v5, 0x2

    sub-int/2addr v7, v5

    .line 977
    .local v7, "sfb_start3":I
    const/4 v8, 0x0

    .local v8, "freq":I
    const/4 v9, 0x0

    .local v9, "freq3":I
    :goto_5f
    if-ge v8, v6, :cond_9a

    .line 979
    add-int v10, v7, v8

    .line 980
    .local v10, "src_line":I
    add-int v11, v7, v9

    .line 982
    .local v11, "des_line":I
    rem-int/lit8 v12, v10, 0x12

    .line 983
    .local v12, "reste":I
    sub-int v13, v10, v12

    div-int/lit8 v13, v13, 0x12

    .line 985
    .local v13, "quotien":I
    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->out_1d:[F

    aget-object v15, v2, v13

    aget v15, v15, v12

    aput v15, v14, v11

    .line 986
    add-int/2addr v10, v6

    .line 987
    add-int/lit8 v11, v11, 0x1

    .line 989
    rem-int/lit8 v12, v10, 0x12

    .line 990
    sub-int v14, v10, v12

    div-int/lit8 v14, v14, 0x12

    .line 992
    .end local v13  # "quotien":I
    .local v14, "quotien":I
    iget-object v13, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->out_1d:[F

    aget-object v15, v2, v14

    aget v15, v15, v12

    aput v15, v13, v11

    .line 993
    add-int/2addr v10, v6

    .line 994
    add-int/lit8 v11, v11, 0x1

    .line 996
    rem-int/lit8 v12, v10, 0x12

    .line 997
    sub-int v13, v10, v12

    div-int/lit8 v13, v13, 0x12

    .line 999
    .end local v14  # "quotien":I
    .restart local v13  # "quotien":I
    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->out_1d:[F

    aget-object v15, v2, v13

    aget v15, v15, v12

    aput v15, v14, v11

    .line 977
    .end local v12  # "reste":I
    .end local v13  # "quotien":I
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x3

    goto :goto_5f

    .line 969
    .end local v7  # "sfb_start3":I
    .end local v10  # "src_line":I
    .end local v11  # "des_line":I
    :cond_9a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 1004
    .end local v4  # "sfb":I
    .end local v5  # "sfb_start":I
    .end local v6  # "sfb_lines":I
    .end local v8  # "freq":I
    .end local v9  # "freq3":I
    :cond_9d
    const/4 v3, 0x0

    :goto_9e
    if-ge v3, v4, :cond_cd

    .line 1005
    sget-object v5, Ljavazoom/jl/decoder/LayerIIIDecoder;->reorder_table:[[I

    iget v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v5, v5, v6

    aget v5, v5, v3

    .line 1006
    .local v5, "j":I
    rem-int/lit8 v6, v5, 0x12

    .line 1007
    .local v6, "reste":I
    sub-int v7, v5, v6

    div-int/lit8 v7, v7, 0x12

    .line 1008
    .local v7, "quotien":I
    iget-object v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->out_1d:[F

    aget-object v9, v2, v7

    aget v9, v9, v6

    aput v9, v8, v3

    .line 1004
    .end local v5  # "j":I
    .end local v6  # "reste":I
    .end local v7  # "quotien":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_9e

    .line 1011
    .end local v3  # "index":I
    :cond_b9
    const/4 v3, 0x0

    .restart local v3  # "index":I
    :goto_ba
    if-ge v3, v4, :cond_cd

    .line 1013
    rem-int/lit8 v5, v3, 0x12

    .line 1014
    .local v5, "reste":I
    sub-int v6, v3, v5

    div-int/lit8 v6, v6, 0x12

    .line 1015
    .local v6, "quotien":I
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->out_1d:[F

    aget-object v8, v2, v6

    aget v8, v8, v5

    aput v8, v7, v3

    .line 1011
    .end local v5  # "reste":I
    .end local v6  # "quotien":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_ba

    .line 1017
    :cond_cd
    return-void
.end method

.method static reorder([I)[I
    .registers 10
    .param p0, "scalefac_band"  # [I

    .line 1890
    const/4 v0, 0x0

    .line 1891
    .local v0, "j":I
    const/16 v1, 0x240

    new-array v1, v1, [I

    .line 1892
    .local v1, "ix":[I
    const/4 v2, 0x0

    .local v2, "sfb":I
    :goto_6
    const/16 v3, 0xd

    if-ge v2, v3, :cond_28

    .line 1893
    aget v3, p0, v2

    .line 1894
    .local v3, "start":I
    add-int/lit8 v4, v2, 0x1

    aget v4, p0, v4

    .line 1895
    .local v4, "end":I
    const/4 v5, 0x0

    .local v5, "window":I
    :goto_11
    const/4 v6, 0x3

    if-ge v5, v6, :cond_25

    .line 1896
    move v6, v3

    .local v6, "i":I
    :goto_15
    if-ge v6, v4, :cond_22

    .line 1897
    mul-int/lit8 v7, v6, 0x3

    add-int/2addr v7, v5

    add-int/lit8 v8, v0, 0x1

    .end local v0  # "j":I
    .local v8, "j":I
    aput v0, v1, v7

    .line 1896
    add-int/lit8 v6, v6, 0x1

    move v0, v8

    goto :goto_15

    .line 1895
    .end local v6  # "i":I
    .end local v8  # "j":I
    .restart local v0  # "j":I
    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 1892
    .end local v3  # "start":I
    .end local v4  # "end":I
    .end local v5  # "window":I
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1899
    .end local v2  # "sfb":I
    :cond_28
    return-object v1
.end method

.method private stereo(I)V
    .registers 25
    .param p1, "gr"  # I

    .line 1029
    move-object/from16 v0, p0

    iget v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->channels:I

    const/16 v2, 0x20

    const/16 v3, 0x12

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_50

    .line 1030
    const/4 v1, 0x0

    .local v1, "sb":I
    :goto_d
    if-ge v1, v2, :cond_575

    .line 1031
    const/4 v5, 0x0

    .local v5, "ss":I
    :goto_10
    if-ge v5, v3, :cond_4d

    .line 1032
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->lr:[[[F

    aget-object v6, v6, v4

    aget-object v6, v6, v1

    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->ro:[[[F

    aget-object v7, v7, v4

    aget-object v7, v7, v1

    aget v7, v7, v5

    aput v7, v6, v5

    .line 1033
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->lr:[[[F

    aget-object v6, v6, v4

    aget-object v6, v6, v1

    add-int/lit8 v7, v5, 0x1

    iget-object v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->ro:[[[F

    aget-object v8, v8, v4

    aget-object v8, v8, v1

    add-int/lit8 v9, v5, 0x1

    aget v8, v8, v9

    aput v8, v6, v7

    .line 1034
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->lr:[[[F

    aget-object v6, v6, v4

    aget-object v6, v6, v1

    add-int/lit8 v7, v5, 0x2

    iget-object v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->ro:[[[F

    aget-object v8, v8, v4

    aget-object v8, v8, v1

    add-int/lit8 v9, v5, 0x2

    aget v8, v8, v9

    aput v8, v6, v7

    .line 1031
    add-int/lit8 v5, v5, 0x3

    goto :goto_10

    .line 1030
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1038
    .end local v1  # "sb":I
    .end local v5  # "ss":I
    :cond_50
    iget-object v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget-object v1, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    aget-object v1, v1, v4

    iget-object v1, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    aget-object v1, v1, p1

    .line 1039
    .local v1, "gr_info":Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->header:Ljavazoom/jl/decoder/Header;

    invoke-virtual {v6}, Ljavazoom/jl/decoder/Header;->mode_extension()I

    move-result v6

    .line 1044
    .local v6, "mode_ext":I
    iget-object v7, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->header:Ljavazoom/jl/decoder/Header;

    invoke-virtual {v7}, Ljavazoom/jl/decoder/Header;->mode()I

    move-result v7

    if-ne v7, v5, :cond_6e

    and-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_6e

    move v7, v5

    goto :goto_6f

    :cond_6e
    move v7, v4

    .line 1045
    .local v7, "ms_stereo":Z
    :goto_6f
    iget-object v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->header:Ljavazoom/jl/decoder/Header;

    invoke-virtual {v8}, Ljavazoom/jl/decoder/Header;->mode()I

    move-result v8

    if-ne v8, v5, :cond_7d

    and-int/lit8 v8, v6, 0x1

    if-eqz v8, :cond_7d

    move v8, v5

    goto :goto_7e

    :cond_7d
    move v8, v4

    .line 1046
    .local v8, "i_stereo":Z
    :goto_7e
    iget-object v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->header:Ljavazoom/jl/decoder/Header;

    invoke-virtual {v9}, Ljavazoom/jl/decoder/Header;->version()I

    move-result v9

    const/4 v10, 0x2

    if-eqz v9, :cond_92

    iget-object v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->header:Ljavazoom/jl/decoder/Header;

    invoke-virtual {v9}, Ljavazoom/jl/decoder/Header;->version()I

    move-result v9

    if-ne v9, v10, :cond_90

    goto :goto_92

    :cond_90
    move v9, v4

    goto :goto_93

    :cond_92
    :goto_92
    move v9, v5

    .line 1048
    .local v9, "lsf":Z
    :goto_93
    iget v11, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->scalefac_compress:I

    and-int/2addr v11, v5

    .line 1052
    .local v11, "io_type":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_97
    const/16 v13, 0x240

    const/4 v14, 0x0

    const/4 v15, 0x7

    if-ge v12, v13, :cond_a8

    .line 1053
    iget-object v13, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_pos:[I

    aput v15, v13, v12

    .line 1055
    iget-object v13, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_ratio:[F

    aput v14, v13, v12

    .line 1052
    add-int/lit8 v12, v12, 0x1

    goto :goto_97

    .line 1058
    :cond_a8
    if-eqz v8, :cond_481

    iget v3, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->window_switching_flag:I

    if-eqz v3, :cond_3a0

    iget v3, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->block_type:I

    if-ne v3, v10, :cond_3a0

    .line 1059
    iget v3, v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->mixed_block_flag:I

    const/16 v2, 0xc

    const/4 v4, 0x3

    if-eqz v3, :cond_283

    .line 1061
    const/4 v3, 0x0

    .line 1063
    .local v3, "max_sfb":I
    const/16 v18, 0x0

    move/from16 v13, v18

    .local v13, "j":I
    :goto_be
    if-ge v13, v4, :cond_1ec

    .line 1065
    const/16 v19, 0x2

    .line 1066
    .local v19, "sfbcnt":I
    const/16 v20, 0xc

    move/from16 v10, v20

    .local v10, "sfb":I
    :goto_c6
    if-lt v10, v4, :cond_10d

    .line 1067
    iget-object v4, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v15, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v4, v4, v15

    iget-object v4, v4, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    aget v4, v4, v10

    .line 1068
    .end local v12  # "i":I
    .local v4, "i":I
    iget-object v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v15, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v12, v12, v15

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    add-int/lit8 v15, v10, 0x1

    aget v12, v12, v15

    sub-int/2addr v12, v4

    .line 1069
    .local v12, "lines":I
    shl-int/lit8 v15, v4, 0x2

    sub-int/2addr v15, v4

    add-int/lit8 v21, v13, 0x1

    mul-int v21, v21, v12

    add-int v15, v15, v21

    sub-int/2addr v15, v5

    .line 1071
    .end local v4  # "i":I
    .local v15, "i":I
    :goto_e9
    if-lez v12, :cond_107

    .line 1072
    iget-object v4, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->ro:[[[F

    aget-object v4, v4, v5

    div-int/lit8 v21, v15, 0x12

    aget-object v4, v4, v21

    rem-int/lit8 v21, v15, 0x12

    aget v4, v4, v21

    cmpl-float v4, v4, v14

    if-eqz v4, :cond_102

    .line 1076
    move/from16 v19, v10

    .line 1077
    const/16 v4, -0xa

    .line 1078
    .end local v10  # "sfb":I
    .local v4, "sfb":I
    const/16 v12, -0xa

    move v10, v4

    .line 1081
    .end local v4  # "sfb":I
    .restart local v10  # "sfb":I
    :cond_102
    add-int/lit8 v12, v12, -0x1

    .line 1082
    add-int/lit8 v15, v15, -0x1

    goto :goto_e9

    .line 1066
    :cond_107
    add-int/lit8 v10, v10, -0x1

    move v12, v15

    const/4 v4, 0x3

    const/4 v15, 0x7

    goto :goto_c6

    .line 1087
    .end local v15  # "i":I
    .local v12, "i":I
    :cond_10d
    add-int/lit8 v4, v19, 0x1

    .line 1089
    .end local v10  # "sfb":I
    .restart local v4  # "sfb":I
    if-le v4, v3, :cond_112

    move v3, v4

    .line 1091
    :cond_112
    :goto_112
    if-ge v4, v2, :cond_16f

    .line 1092
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v15, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v10, v10, v15

    iget-object v10, v10, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    aget v10, v10, v4

    .line 1093
    .local v10, "temp":I
    iget-object v15, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v14, v15, v14

    iget-object v14, v14, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    add-int/lit8 v15, v4, 0x1

    aget v14, v14, v15

    sub-int/2addr v14, v10

    .line 1094
    .local v14, "sb":I
    shl-int/lit8 v15, v10, 0x2

    sub-int/2addr v15, v10

    mul-int v22, v13, v14

    add-int v15, v15, v22

    move v12, v15

    .line 1096
    :goto_133
    if-lez v14, :cond_168

    .line 1097
    iget-object v15, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_pos:[I

    iget-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    aget-object v2, v2, v5

    iget-object v2, v2, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v2, v2, v13

    aget v2, v2, v4

    aput v2, v15, v12

    .line 1098
    iget-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_pos:[I

    aget v2, v2, v12

    const/4 v15, 0x7

    if-eq v2, v15, :cond_160

    if-eqz v9, :cond_154

    .line 1099
    iget-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_pos:[I

    aget v2, v2, v12

    invoke-direct {v0, v2, v11, v12}, Ljavazoom/jl/decoder/LayerIIIDecoder;->i_stereo_k_values(III)V

    goto :goto_160

    .line 1101
    :cond_154
    iget-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_ratio:[F

    sget-object v15, Ljavazoom/jl/decoder/LayerIIIDecoder;->TAN12:[F

    iget-object v5, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_pos:[I

    aget v5, v5, v12

    aget v5, v15, v5

    aput v5, v2, v12

    .line 1103
    :cond_160
    :goto_160
    add-int/lit8 v12, v12, 0x1

    .line 1096
    add-int/lit8 v14, v14, -0x1

    const/16 v2, 0xc

    const/4 v5, 0x1

    goto :goto_133

    .line 1105
    :cond_168
    add-int/lit8 v4, v4, 0x1

    const/16 v2, 0xc

    const/4 v5, 0x1

    const/4 v14, 0x0

    goto :goto_112

    .line 1107
    .end local v10  # "temp":I
    .end local v14  # "sb":I
    :cond_16f
    iget-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v5, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v2, v2, v5

    iget-object v2, v2, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    const/16 v5, 0xa

    aget v2, v2, v5

    .line 1108
    .end local v4  # "sfb":I
    .local v2, "sfb":I
    iget-object v4, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v5, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v4, v4, v5

    iget-object v4, v4, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    const/16 v5, 0xb

    aget v4, v4, v5

    sub-int/2addr v4, v2

    .line 1109
    .local v4, "sb":I
    shl-int/lit8 v5, v2, 0x2

    sub-int/2addr v5, v2

    mul-int v10, v13, v4

    add-int/2addr v5, v10

    .line 1110
    .end local v2  # "sfb":I
    .local v5, "sfb":I
    iget-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v2, v2, v10

    iget-object v2, v2, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    const/16 v10, 0xb

    aget v2, v2, v10

    .line 1111
    .local v2, "temp":I
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v10, v10, v14

    iget-object v10, v10, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    const/16 v14, 0xc

    aget v10, v10, v14

    sub-int/2addr v10, v2

    .line 1112
    .end local v4  # "sb":I
    .local v10, "sb":I
    shl-int/lit8 v4, v2, 0x2

    sub-int/2addr v4, v2

    mul-int v14, v13, v10

    add-int/2addr v4, v14

    move v12, v4

    .line 1114
    :goto_1ae
    if-lez v10, :cond_1e2

    .line 1115
    iget-object v4, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_pos:[I

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_pos:[I

    aget v14, v14, v5

    aput v14, v4, v12

    .line 1117
    if-eqz v9, :cond_1d5

    .line 1118
    iget-object v4, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->k:[[F

    const/4 v14, 0x0

    aget-object v4, v4, v14

    iget-object v15, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->k:[[F

    aget-object v15, v15, v14

    aget v14, v15, v5

    aput v14, v4, v12

    .line 1119
    iget-object v4, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->k:[[F

    const/4 v14, 0x1

    aget-object v4, v4, v14

    iget-object v15, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->k:[[F

    aget-object v15, v15, v14

    aget v14, v15, v5

    aput v14, v4, v12

    goto :goto_1dd

    .line 1121
    :cond_1d5
    iget-object v4, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_ratio:[F

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_ratio:[F

    aget v14, v14, v5

    aput v14, v4, v12

    .line 1122
    :goto_1dd
    add-int/lit8 v12, v12, 0x1

    .line 1114
    add-int/lit8 v10, v10, -0x1

    goto :goto_1ae

    .line 1063
    .end local v19  # "sfbcnt":I
    :cond_1e2
    add-int/lit8 v13, v13, 0x1

    const/16 v2, 0xc

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x7

    goto/16 :goto_be

    .line 1125
    .end local v2  # "temp":I
    .end local v5  # "sfb":I
    .end local v10  # "sb":I
    .end local v13  # "j":I
    :cond_1ec
    const/4 v2, 0x3

    if-gt v3, v2, :cond_281

    .line 1126
    const/4 v2, 0x2

    .line 1127
    .end local v12  # "i":I
    .local v2, "i":I
    const/16 v4, 0x11

    .line 1128
    .local v4, "ss":I
    const/4 v5, -0x1

    .line 1129
    .local v5, "sb":I
    :cond_1f3
    :goto_1f3
    if-ltz v2, :cond_215

    .line 1130
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->ro:[[[F

    const/4 v12, 0x1

    aget-object v10, v10, v12

    aget-object v10, v10, v2

    aget v10, v10, v4

    const/4 v12, 0x0

    cmpl-float v10, v10, v12

    if-eqz v10, :cond_20c

    .line 1131
    shl-int/lit8 v10, v2, 0x4

    shl-int/lit8 v12, v2, 0x1

    add-int/2addr v10, v12

    add-int v5, v10, v4

    .line 1132
    const/4 v2, -0x1

    goto :goto_1f3

    .line 1134
    :cond_20c
    add-int/lit8 v4, v4, -0x1

    .line 1135
    if-gez v4, :cond_1f3

    .line 1136
    add-int/lit8 v2, v2, -0x1

    .line 1137
    const/16 v4, 0x11

    goto :goto_1f3

    .line 1140
    :cond_215
    const/4 v2, 0x0

    .line 1141
    :goto_216
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v10, v10, v12

    iget-object v10, v10, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->l:[I

    aget v10, v10, v2

    if-gt v10, v5, :cond_225

    .line 1142
    add-int/lit8 v2, v2, 0x1

    goto :goto_216

    .line 1143
    :cond_225
    move v10, v2

    .line 1144
    .local v10, "sfb":I
    iget-object v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v13, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v12, v12, v13

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->l:[I

    aget v2, v12, v2

    .line 1145
    :goto_230
    const/16 v12, 0x8

    if-ge v10, v12, :cond_280

    .line 1146
    iget-object v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v13, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v12, v12, v13

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->l:[I

    add-int/lit8 v13, v10, 0x1

    aget v12, v12, v13

    iget-object v13, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v13, v13, v14

    iget-object v13, v13, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->l:[I

    aget v13, v13, v10

    sub-int/2addr v12, v13

    move v5, v12

    .line 1147
    :goto_24c
    if-lez v5, :cond_27d

    .line 1148
    iget-object v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_pos:[I

    iget-object v13, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    iget-object v13, v13, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    aget v13, v13, v10

    aput v13, v12, v2

    .line 1149
    iget-object v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_pos:[I

    aget v12, v12, v2

    const/4 v13, 0x7

    if-eq v12, v13, :cond_278

    if-eqz v9, :cond_26c

    .line 1150
    iget-object v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_pos:[I

    aget v12, v12, v2

    invoke-direct {v0, v12, v11, v2}, Ljavazoom/jl/decoder/LayerIIIDecoder;->i_stereo_k_values(III)V

    goto :goto_278

    .line 1152
    :cond_26c
    iget-object v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_ratio:[F

    sget-object v13, Ljavazoom/jl/decoder/LayerIIIDecoder;->TAN12:[F

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_pos:[I

    aget v14, v14, v2

    aget v13, v13, v14

    aput v13, v12, v2

    .line 1153
    :cond_278
    :goto_278
    add-int/lit8 v2, v2, 0x1

    .line 1147
    add-int/lit8 v5, v5, -0x1

    goto :goto_24c

    .line 1145
    :cond_27d
    add-int/lit8 v10, v10, 0x1

    goto :goto_230

    :cond_280
    move v12, v2

    .line 1157
    .end local v2  # "i":I
    .end local v3  # "max_sfb":I
    .end local v4  # "ss":I
    .end local v5  # "sb":I
    .end local v10  # "sfb":I
    .restart local v12  # "i":I
    :cond_281
    goto/16 :goto_481

    .line 1158
    :cond_283
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_284
    const/4 v3, 0x3

    if-ge v2, v3, :cond_39e

    .line 1160
    const/4 v4, -0x1

    .line 1161
    .local v4, "sfbcnt":I
    const/16 v5, 0xc

    .local v5, "sfb":I
    :goto_28a
    if-ltz v5, :cond_2ce

    .line 1162
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v13, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v10, v10, v13

    iget-object v10, v10, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    aget v10, v10, v5

    .line 1163
    .local v10, "temp":I
    iget-object v13, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v13, v13, v14

    iget-object v13, v13, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    add-int/lit8 v14, v5, 0x1

    aget v13, v13, v14

    sub-int/2addr v13, v10

    .line 1164
    .local v13, "lines":I
    shl-int/lit8 v14, v10, 0x2

    sub-int/2addr v14, v10

    add-int/lit8 v15, v2, 0x1

    mul-int/2addr v15, v13

    add-int/2addr v14, v15

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    move v12, v14

    .line 1166
    :goto_2ad
    if-lez v13, :cond_2cb

    .line 1167
    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->ro:[[[F

    aget-object v14, v14, v15

    div-int/lit8 v15, v12, 0x12

    aget-object v14, v14, v15

    rem-int/lit8 v15, v12, 0x12

    aget v14, v14, v15

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_2c5

    .line 1171
    move v4, v5

    .line 1172
    const/16 v5, -0xa

    .line 1173
    const/16 v13, -0xa

    .line 1175
    :cond_2c5
    add-int/lit8 v13, v13, -0x1

    .line 1176
    add-int/lit8 v12, v12, -0x1

    const/4 v15, 0x1

    goto :goto_2ad

    .line 1161
    :cond_2cb
    add-int/lit8 v5, v5, -0x1

    goto :goto_28a

    .line 1180
    .end local v10  # "temp":I
    .end local v13  # "lines":I
    :cond_2ce
    add-int/lit8 v5, v4, 0x1

    .line 1181
    :goto_2d0
    const/16 v10, 0xc

    if-ge v5, v10, :cond_32b

    .line 1182
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v13, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v10, v10, v13

    iget-object v10, v10, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    aget v10, v10, v5

    .line 1183
    .restart local v10  # "temp":I
    iget-object v13, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v13, v13, v14

    iget-object v13, v13, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    add-int/lit8 v14, v5, 0x1

    aget v13, v13, v14

    sub-int/2addr v13, v10

    .line 1184
    .local v13, "sb":I
    shl-int/lit8 v14, v10, 0x2

    sub-int/2addr v14, v10

    mul-int v15, v2, v13

    add-int/2addr v14, v15

    move v12, v14

    .line 1185
    :goto_2f2
    if-lez v13, :cond_327

    .line 1186
    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_pos:[I

    iget-object v15, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    const/16 v19, 0x1

    aget-object v15, v15, v19

    iget-object v15, v15, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->s:[[I

    aget-object v15, v15, v2

    aget v15, v15, v5

    aput v15, v14, v12

    .line 1187
    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_pos:[I

    aget v14, v14, v12

    const/4 v15, 0x7

    if-eq v14, v15, :cond_321

    if-eqz v9, :cond_315

    .line 1188
    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_pos:[I

    aget v14, v14, v12

    invoke-direct {v0, v14, v11, v12}, Ljavazoom/jl/decoder/LayerIIIDecoder;->i_stereo_k_values(III)V

    goto :goto_321

    .line 1190
    :cond_315
    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_ratio:[F

    sget-object v15, Ljavazoom/jl/decoder/LayerIIIDecoder;->TAN12:[F

    iget-object v3, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_pos:[I

    aget v3, v3, v12

    aget v3, v15, v3

    aput v3, v14, v12

    .line 1191
    :cond_321
    :goto_321
    add-int/lit8 v12, v12, 0x1

    .line 1185
    add-int/lit8 v13, v13, -0x1

    const/4 v3, 0x3

    goto :goto_2f2

    .line 1193
    :cond_327
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x3

    goto :goto_2d0

    .line 1196
    .end local v10  # "temp":I
    .end local v13  # "sb":I
    :cond_32b
    iget-object v3, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v3, v3, v10

    iget-object v3, v3, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    const/16 v10, 0xa

    aget v3, v3, v10

    .line 1197
    .local v3, "temp":I
    iget-object v13, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v13, v13, v14

    iget-object v13, v13, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    .line 1198
    .local v13, "temp2":I
    sub-int v15, v13, v3

    .line 1199
    .local v15, "sb":I
    shl-int/lit8 v18, v3, 0x2

    sub-int v18, v18, v3

    mul-int v19, v2, v15

    add-int v18, v18, v19

    .line 1200
    .end local v5  # "sfb":I
    .local v18, "sfb":I
    iget-object v5, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v5, v5, v10

    iget-object v5, v5, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->s:[I

    const/16 v10, 0xc

    aget v5, v5, v10

    sub-int/2addr v5, v13

    .line 1201
    .end local v15  # "sb":I
    .local v5, "sb":I
    shl-int/lit8 v15, v13, 0x2

    sub-int/2addr v15, v13

    mul-int v19, v2, v5

    add-int v15, v15, v19

    move v12, v15

    .line 1203
    :goto_362
    if-lez v5, :cond_39a

    .line 1204
    iget-object v15, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_pos:[I

    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_pos:[I

    aget v10, v10, v18

    aput v10, v15, v12

    .line 1206
    if-eqz v9, :cond_389

    .line 1207
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->k:[[F

    const/4 v15, 0x0

    aget-object v10, v10, v15

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->k:[[F

    aget-object v14, v14, v15

    aget v14, v14, v18

    aput v14, v10, v12

    .line 1208
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->k:[[F

    const/4 v14, 0x1

    aget-object v10, v10, v14

    iget-object v15, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->k:[[F

    aget-object v15, v15, v14

    aget v14, v15, v18

    aput v14, v10, v12

    goto :goto_391

    .line 1210
    :cond_389
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_ratio:[F

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_ratio:[F

    aget v14, v14, v18

    aput v14, v10, v12

    .line 1211
    :goto_391
    add-int/lit8 v12, v12, 0x1

    .line 1203
    add-int/lit8 v5, v5, -0x1

    const/16 v10, 0xc

    const/16 v14, 0xb

    goto :goto_362

    .line 1158
    .end local v4  # "sfbcnt":I
    :cond_39a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_284

    .end local v2  # "j":I
    .end local v3  # "temp":I
    .end local v5  # "sb":I
    .end local v13  # "temp2":I
    .end local v18  # "sfb":I
    :cond_39e
    goto/16 :goto_481

    .line 1215
    :cond_3a0
    const/16 v2, 0x1f

    .line 1216
    .end local v12  # "i":I
    .local v2, "i":I
    const/16 v3, 0x11

    .line 1217
    .local v3, "ss":I
    const/4 v4, 0x0

    .line 1218
    .local v4, "sb":I
    :cond_3a5
    :goto_3a5
    if-ltz v2, :cond_3c7

    .line 1219
    iget-object v5, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->ro:[[[F

    const/4 v10, 0x1

    aget-object v5, v5, v10

    aget-object v5, v5, v2

    aget v5, v5, v3

    const/4 v10, 0x0

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_3be

    .line 1220
    shl-int/lit8 v5, v2, 0x4

    shl-int/lit8 v12, v2, 0x1

    add-int/2addr v5, v12

    add-int v4, v5, v3

    .line 1221
    const/4 v2, -0x1

    goto :goto_3a5

    .line 1223
    :cond_3be
    add-int/lit8 v3, v3, -0x1

    .line 1224
    if-gez v3, :cond_3a5

    .line 1225
    add-int/lit8 v2, v2, -0x1

    .line 1226
    const/16 v3, 0x11

    goto :goto_3a5

    .line 1229
    :cond_3c7
    const/4 v2, 0x0

    .line 1230
    :goto_3c8
    iget-object v5, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v5, v5, v10

    iget-object v5, v5, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->l:[I

    aget v5, v5, v2

    if-gt v5, v4, :cond_3d7

    .line 1231
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c8

    .line 1233
    :cond_3d7
    move v5, v2

    .line 1234
    .local v5, "sfb":I
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v10, v10, v12

    iget-object v10, v10, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->l:[I

    aget v2, v10, v2

    .line 1235
    :goto_3e2
    const/16 v10, 0x15

    if-ge v5, v10, :cond_432

    .line 1236
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v10, v10, v12

    iget-object v10, v10, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->l:[I

    add-int/lit8 v12, v5, 0x1

    aget v10, v10, v12

    iget-object v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v12, v12, v14

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->l:[I

    aget v12, v12, v5

    sub-int/2addr v10, v12

    move v4, v10

    .line 1237
    :goto_3fe
    if-lez v4, :cond_42f

    .line 1238
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_pos:[I

    iget-object v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->scalefac:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;

    const/4 v14, 0x1

    aget-object v12, v12, v14

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire2;->l:[I

    aget v12, v12, v5

    aput v12, v10, v2

    .line 1239
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_pos:[I

    aget v10, v10, v2

    const/4 v12, 0x7

    if-eq v10, v12, :cond_42a

    if-eqz v9, :cond_41e

    .line 1240
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_pos:[I

    aget v10, v10, v2

    invoke-direct {v0, v10, v11, v2}, Ljavazoom/jl/decoder/LayerIIIDecoder;->i_stereo_k_values(III)V

    goto :goto_42a

    .line 1242
    :cond_41e
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_ratio:[F

    sget-object v12, Ljavazoom/jl/decoder/LayerIIIDecoder;->TAN12:[F

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_pos:[I

    aget v14, v14, v2

    aget v12, v12, v14

    aput v12, v10, v2

    .line 1243
    :cond_42a
    :goto_42a
    add-int/lit8 v2, v2, 0x1

    .line 1237
    add-int/lit8 v4, v4, -0x1

    goto :goto_3fe

    .line 1235
    :cond_42f
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e2

    .line 1246
    :cond_432
    iget-object v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v12, v12, v14

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->l:[I

    const/16 v14, 0x14

    aget v5, v12, v14

    .line 1247
    iget-object v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfBandIndex:[Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;

    iget v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->sfreq:I

    aget-object v12, v12, v14

    iget-object v12, v12, Ljavazoom/jl/decoder/LayerIIIDecoder$SBI;->l:[I

    aget v10, v12, v10

    rsub-int v4, v10, 0x240

    move v12, v2

    .end local v2  # "i":I
    .restart local v12  # "i":I
    :goto_44b
    if-lez v4, :cond_481

    if-ge v12, v13, :cond_481

    .line 1248
    iget-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_pos:[I

    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_pos:[I

    aget v10, v10, v5

    aput v10, v2, v12

    .line 1250
    if-eqz v9, :cond_474

    .line 1251
    iget-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->k:[[F

    const/4 v10, 0x0

    aget-object v2, v2, v10

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->k:[[F

    aget-object v14, v14, v10

    aget v10, v14, v5

    aput v10, v2, v12

    .line 1252
    iget-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->k:[[F

    const/4 v10, 0x1

    aget-object v2, v2, v10

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->k:[[F

    aget-object v14, v14, v10

    aget v10, v14, v5

    aput v10, v2, v12

    goto :goto_47c

    .line 1254
    :cond_474
    iget-object v2, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_ratio:[F

    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_ratio:[F

    aget v10, v10, v5

    aput v10, v2, v12

    .line 1255
    :goto_47c
    add-int/lit8 v12, v12, 0x1

    .line 1247
    add-int/lit8 v4, v4, -0x1

    goto :goto_44b

    .line 1259
    .end local v3  # "ss":I
    .end local v4  # "sb":I
    .end local v5  # "sfb":I
    :cond_481
    :goto_481
    const/4 v2, 0x0

    .line 1260
    .end local v12  # "i":I
    .restart local v2  # "i":I
    const/4 v3, 0x0

    .local v3, "sb":I
    :goto_483
    const/16 v4, 0x20

    if-ge v3, v4, :cond_574

    .line 1261
    const/4 v5, 0x0

    .local v5, "ss":I
    :goto_488
    const/16 v10, 0x12

    if-ge v5, v10, :cond_56d

    .line 1262
    iget-object v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_pos:[I

    aget v12, v12, v2

    const/4 v13, 0x7

    if-ne v12, v13, :cond_4fa

    .line 1263
    if-eqz v7, :cond_4d5

    .line 1264
    iget-object v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->lr:[[[F

    const/4 v14, 0x0

    aget-object v12, v12, v14

    aget-object v12, v12, v3

    iget-object v15, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->ro:[[[F

    aget-object v15, v15, v14

    aget-object v14, v15, v3

    aget v14, v14, v5

    iget-object v15, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->ro:[[[F

    const/16 v16, 0x1

    aget-object v15, v15, v16

    aget-object v15, v15, v3

    aget v15, v15, v5

    add-float/2addr v14, v15

    const v15, 0x3f3504f3

    mul-float/2addr v14, v15

    aput v14, v12, v5

    .line 1265
    iget-object v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->lr:[[[F

    aget-object v12, v12, v16

    aget-object v12, v12, v3

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->ro:[[[F

    const/16 v17, 0x0

    aget-object v14, v14, v17

    aget-object v14, v14, v3

    aget v14, v14, v5

    iget-object v4, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->ro:[[[F

    aget-object v4, v4, v16

    aget-object v4, v4, v3

    aget v4, v4, v5

    sub-float/2addr v14, v4

    mul-float/2addr v14, v15

    aput v14, v12, v5

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_565

    .line 1267
    :cond_4d5
    iget-object v4, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->lr:[[[F

    const/4 v12, 0x0

    aget-object v4, v4, v12

    aget-object v4, v4, v3

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->ro:[[[F

    aget-object v14, v14, v12

    aget-object v12, v14, v3

    aget v12, v12, v5

    aput v12, v4, v5

    .line 1268
    iget-object v4, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->lr:[[[F

    const/4 v12, 0x1

    aget-object v4, v4, v12

    aget-object v4, v4, v3

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->ro:[[[F

    aget-object v14, v14, v12

    aget-object v12, v14, v3

    aget v12, v12, v5

    aput v12, v4, v5

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto :goto_565

    .line 1270
    :cond_4fa
    if-eqz v8, :cond_563

    if-eqz v9, :cond_531

    .line 1271
    iget-object v4, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->lr:[[[F

    const/4 v12, 0x0

    aget-object v4, v4, v12

    aget-object v4, v4, v3

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->ro:[[[F

    aget-object v14, v14, v12

    aget-object v14, v14, v3

    aget v14, v14, v5

    iget-object v15, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->k:[[F

    aget-object v15, v15, v12

    aget v15, v15, v2

    mul-float/2addr v14, v15

    aput v14, v4, v5

    .line 1272
    iget-object v4, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->lr:[[[F

    const/4 v14, 0x1

    aget-object v4, v4, v14

    aget-object v4, v4, v3

    iget-object v15, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->ro:[[[F

    aget-object v15, v15, v12

    aget-object v12, v15, v3

    aget v12, v12, v5

    iget-object v15, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->k:[[F

    aget-object v15, v15, v14

    aget v15, v15, v2

    mul-float/2addr v12, v15

    aput v12, v4, v5

    move v15, v14

    const/4 v14, 0x0

    goto :goto_565

    .line 1274
    :cond_531
    const/4 v14, 0x1

    iget-object v4, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->lr:[[[F

    aget-object v4, v4, v14

    aget-object v4, v4, v3

    iget-object v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->ro:[[[F

    const/4 v14, 0x0

    aget-object v12, v12, v14

    aget-object v12, v12, v3

    aget v12, v12, v5

    iget-object v15, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_ratio:[F

    aget v15, v15, v2

    const/high16 v16, 0x3f800000  # 1.0f

    add-float v15, v15, v16

    div-float/2addr v12, v15

    aput v12, v4, v5

    .line 1275
    iget-object v4, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->lr:[[[F

    aget-object v4, v4, v14

    aget-object v4, v4, v3

    iget-object v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->lr:[[[F

    const/4 v15, 0x1

    aget-object v12, v12, v15

    aget-object v12, v12, v3

    aget v12, v12, v5

    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->is_ratio:[F

    aget v10, v10, v2

    mul-float/2addr v12, v10

    aput v12, v4, v5

    goto :goto_565

    .line 1270
    :cond_563
    const/4 v14, 0x0

    const/4 v15, 0x1

    .line 1280
    :goto_565
    add-int/lit8 v2, v2, 0x1

    .line 1261
    add-int/lit8 v5, v5, 0x1

    const/16 v4, 0x20

    goto/16 :goto_488

    .line 1260
    :cond_56d
    const/4 v13, 0x7

    const/4 v14, 0x0

    const/4 v15, 0x1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_483

    .end local v5  # "ss":I
    :cond_574
    move v1, v3

    .line 1285
    .end local v2  # "i":I
    .end local v3  # "sb":I
    .end local v6  # "mode_ext":I
    .end local v7  # "ms_stereo":Z
    .end local v8  # "i_stereo":Z
    .end local v9  # "lsf":Z
    .end local v11  # "io_type":I
    .local v1, "sb":I
    :cond_575
    return-void
.end method


# virtual methods
.method public decode()V
    .registers 18

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->header:Ljavazoom/jl/decoder/Header;

    invoke-virtual {v1}, Ljavazoom/jl/decoder/Header;->slots()I

    move-result v1

    .line 212
    .local v1, "nSlots":I
    invoke-direct/range {p0 .. p0}, Ljavazoom/jl/decoder/LayerIIIDecoder;->get_side_info()Z

    .line 214
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    const/16 v3, 0x8

    if-ge v2, v1, :cond_1e

    .line 215
    iget-object v4, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    iget-object v5, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v5, v3}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v3

    invoke-virtual {v4, v3}, Ljavazoom/jl/decoder/BitReserve;->hputbuf(I)V

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 217
    :cond_1e
    iget-object v4, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v4}, Ljavazoom/jl/decoder/BitReserve;->hsstell()I

    move-result v4

    const/4 v5, 0x3

    ushr-int/2addr v4, v5

    .line 219
    .local v4, "main_data_end":I
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v6}, Ljavazoom/jl/decoder/BitReserve;->hsstell()I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    move v7, v6

    .local v7, "flush_main":I
    if-eqz v6, :cond_3a

    .line 220
    iget-object v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    rsub-int/lit8 v8, v7, 0x8

    invoke-virtual {v6, v8}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    .line 221
    add-int/lit8 v4, v4, 0x1

    .line 224
    :cond_3a
    iget v6, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->frame_start:I

    sub-int/2addr v6, v4

    iget-object v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->si:Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;

    iget v8, v8, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->main_data_begin:I

    sub-int/2addr v6, v8

    .line 226
    .local v6, "bytes_to_discard":I
    iget v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->frame_start:I

    add-int/2addr v8, v1

    iput v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->frame_start:I

    .line 228
    if-gez v6, :cond_4a

    return-void

    .line 230
    :cond_4a
    const/16 v8, 0x1000

    if-le v4, v8, :cond_58

    .line 231
    iget v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->frame_start:I

    sub-int/2addr v9, v8

    iput v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->frame_start:I

    .line 232
    iget-object v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v9, v8}, Ljavazoom/jl/decoder/BitReserve;->rewindNbytes(I)V

    .line 235
    :cond_58
    :goto_58
    if-lez v6, :cond_62

    .line 236
    iget-object v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v8, v3}, Ljavazoom/jl/decoder/BitReserve;->hgetbits(I)I

    .line 235
    add-int/lit8 v6, v6, -0x1

    goto :goto_58

    .line 238
    :cond_62
    const/4 v3, 0x0

    .local v3, "gr":I
    :goto_63
    iget v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->max_gr:I

    const/4 v9, 0x1

    if-ge v3, v8, :cond_12e

    .line 240
    const/4 v8, 0x0

    .local v8, "ch":I
    :goto_69
    iget v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->channels:I

    if-ge v8, v10, :cond_91

    .line 241
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    invoke-virtual {v10}, Ljavazoom/jl/decoder/BitReserve;->hsstell()I

    move-result v10

    iput v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->part2_start:I

    .line 243
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->header:Ljavazoom/jl/decoder/Header;

    invoke-virtual {v10}, Ljavazoom/jl/decoder/Header;->version()I

    move-result v10

    if-ne v10, v9, :cond_81

    .line 244
    invoke-direct {v0, v8, v3}, Ljavazoom/jl/decoder/LayerIIIDecoder;->get_scale_factors(II)V

    goto :goto_84

    .line 247
    :cond_81
    invoke-direct {v0, v8, v3}, Ljavazoom/jl/decoder/LayerIIIDecoder;->get_LSF_scale_factors(II)V

    .line 249
    :goto_84
    invoke-direct {v0, v8, v3}, Ljavazoom/jl/decoder/LayerIIIDecoder;->huffman_decode(II)V

    .line 251
    iget-object v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->ro:[[[F

    aget-object v10, v10, v8

    invoke-direct {v0, v10, v8, v3}, Ljavazoom/jl/decoder/LayerIIIDecoder;->dequantize_sample([[FII)V

    .line 240
    add-int/lit8 v8, v8, 0x1

    goto :goto_69

    .line 254
    :cond_91
    invoke-direct {v0, v3}, Ljavazoom/jl/decoder/LayerIIIDecoder;->stereo(I)V

    .line 256
    iget v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->which_channels:I

    if-ne v10, v5, :cond_9f

    iget v10, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->channels:I

    if-le v10, v9, :cond_9f

    invoke-direct/range {p0 .. p0}, Ljavazoom/jl/decoder/LayerIIIDecoder;->do_downmix()V

    .line 258
    :cond_9f
    iget v8, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->first_channel:I

    :goto_a1
    iget v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->last_channel:I

    if-gt v8, v9, :cond_12a

    .line 260
    iget-object v9, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->lr:[[[F

    aget-object v9, v9, v8

    invoke-direct {v0, v9, v8, v3}, Ljavazoom/jl/decoder/LayerIIIDecoder;->reorder([[FII)V

    .line 261
    invoke-direct {v0, v8, v3}, Ljavazoom/jl/decoder/LayerIIIDecoder;->antialias(II)V

    .line 265
    invoke-direct {v0, v8, v3}, Ljavazoom/jl/decoder/LayerIIIDecoder;->hybrid(II)V

    .line 270
    const/16 v9, 0x12

    .local v9, "sb18":I
    :goto_b4
    const/16 v10, 0x240

    const/16 v11, 0x12

    if-ge v9, v10, :cond_d0

    .line 272
    const/4 v10, 0x1

    .local v10, "ss":I
    :goto_bb
    if-ge v10, v11, :cond_cd

    .line 273
    iget-object v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->out_1d:[F

    add-int v13, v9, v10

    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->out_1d:[F

    add-int v15, v9, v10

    aget v14, v14, v15

    neg-float v14, v14

    aput v14, v12, v13

    .line 272
    add-int/lit8 v10, v10, 0x2

    goto :goto_bb

    .line 270
    :cond_cd
    add-int/lit8 v9, v9, 0x24

    goto :goto_b4

    .line 275
    .end local v10  # "ss":I
    :cond_d0
    if-eqz v8, :cond_ff

    iget v12, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->which_channels:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_d8

    goto :goto_ff

    .line 287
    :cond_d8
    const/4 v12, 0x0

    .local v12, "ss":I
    :goto_d9
    if-ge v12, v11, :cond_126

    .line 288
    const/4 v13, 0x0

    .line 289
    .local v13, "sb":I
    const/4 v9, 0x0

    :goto_dd
    if-ge v9, v10, :cond_ee

    .line 290
    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->samples2:[F

    iget-object v15, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->out_1d:[F

    add-int v16, v9, v12

    aget v15, v15, v16

    aput v15, v14, v13

    .line 292
    add-int/lit8 v13, v13, 0x1

    .line 289
    add-int/lit8 v9, v9, 0x12

    goto :goto_dd

    .line 294
    :cond_ee
    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->filter2:Ljavazoom/jl/decoder/SynthesisFilter;

    iget-object v15, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->samples2:[F

    invoke-virtual {v14, v15}, Ljavazoom/jl/decoder/SynthesisFilter;->input_samples([F)V

    .line 295
    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->filter2:Ljavazoom/jl/decoder/SynthesisFilter;

    iget-object v15, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->buffer:Ljavazoom/jl/decoder/OutputBuffer;

    invoke-virtual {v14, v15}, Ljavazoom/jl/decoder/SynthesisFilter;->calculate_pcm_samples(Ljavazoom/jl/decoder/OutputBuffer;)V

    .line 287
    add-int/lit8 v12, v12, 0x1

    goto :goto_d9

    .line 276
    .end local v12  # "ss":I
    .end local v13  # "sb":I
    :cond_ff
    :goto_ff
    const/4 v12, 0x0

    .restart local v12  # "ss":I
    :goto_100
    if-ge v12, v11, :cond_126

    .line 277
    const/4 v13, 0x0

    .line 278
    .restart local v13  # "sb":I
    const/4 v9, 0x0

    :goto_104
    if-ge v9, v10, :cond_115

    .line 279
    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->samples1:[F

    iget-object v15, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->out_1d:[F

    add-int v16, v9, v12

    aget v15, v15, v16

    aput v15, v14, v13

    .line 281
    add-int/lit8 v13, v13, 0x1

    .line 278
    add-int/lit8 v9, v9, 0x12

    goto :goto_104

    .line 283
    :cond_115
    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->filter1:Ljavazoom/jl/decoder/SynthesisFilter;

    iget-object v15, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->samples1:[F

    invoke-virtual {v14, v15}, Ljavazoom/jl/decoder/SynthesisFilter;->input_samples([F)V

    .line 284
    iget-object v14, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->filter1:Ljavazoom/jl/decoder/SynthesisFilter;

    iget-object v15, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->buffer:Ljavazoom/jl/decoder/OutputBuffer;

    invoke-virtual {v14, v15}, Ljavazoom/jl/decoder/SynthesisFilter;->calculate_pcm_samples(Ljavazoom/jl/decoder/OutputBuffer;)V

    .line 276
    add-int/lit8 v12, v12, 0x1

    goto :goto_100

    .line 258
    .end local v13  # "sb":I
    :cond_126
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_a1

    .line 238
    .end local v9  # "sb18":I
    .end local v12  # "ss":I
    :cond_12a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_63

    .line 303
    .end local v8  # "ch":I
    :cond_12e
    iget v5, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->counter:I

    add-int/2addr v5, v9

    iput v5, v0, Ljavazoom/jl/decoder/LayerIIIDecoder;->counter:I

    .line 314
    return-void
.end method

.method public decodeFrame()V
    .registers 1

    .line 192
    invoke-virtual {p0}, Ljavazoom/jl/decoder/LayerIIIDecoder;->decode()V

    .line 193
    return-void
.end method

.method public inv_mdct([F[FI)V
    .registers 71
    .param p1, "in"  # [F
    .param p2, "out"  # [F
    .param p3, "block_type"  # I

    .line 1410
    move/from16 v0, p3

    const/4 v1, 0x0

    move v2, v1

    .local v2, "tmpf_17":F
    move v3, v1

    .local v3, "tmpf_16":F
    move v4, v1

    .local v4, "tmpf_15":F
    move v5, v1

    .local v5, "tmpf_14":F
    move v6, v1

    .local v6, "tmpf_13":F
    move v7, v1

    .local v7, "tmpf_12":F
    move v8, v1

    .local v8, "tmpf_11":F
    move v9, v1

    .local v9, "tmpf_10":F
    move v10, v1

    .local v10, "tmpf_9":F
    move v11, v1

    .local v11, "tmpf_8":F
    move v12, v1

    .local v12, "tmpf_7":F
    move v13, v1

    .local v13, "tmpf_6":F
    move v14, v1

    .local v14, "tmpf_5":F
    move v15, v1

    .local v15, "tmpf_4":F
    move/from16 v16, v1

    .local v16, "tmpf_3":F
    move/from16 v17, v1

    .local v17, "tmpf_2":F
    move/from16 v18, v1

    .local v18, "tmpf_1":F
    move/from16 v19, v1

    .line 1412
    .local v19, "tmpf_0":F
    const/16 v20, 0x7

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x4

    const/16 v24, 0xa

    const/16 v25, 0xe

    const/16 v26, 0x6

    const/16 v27, 0x8

    const/16 v28, 0x10

    const/16 v29, 0x11

    const/16 v30, 0x5

    const/16 v31, 0xb

    const/16 v32, 0xd

    const/16 v33, 0xc

    const/16 v34, 0xf

    const/16 v36, 0x9

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25b

    .line 1419
    const/16 v35, 0x0

    aput v35, p2, v21

    .line 1420
    aput v35, p2, v22

    .line 1421
    aput v35, p2, v1

    .line 1422
    const/4 v1, 0x3

    aput v35, p2, v1

    .line 1423
    aput v35, p2, v23

    .line 1424
    aput v35, p2, v30

    .line 1425
    aput v35, p2, v26

    .line 1426
    aput v35, p2, v20

    .line 1427
    aput v35, p2, v27

    .line 1428
    aput v35, p2, v36

    .line 1429
    aput v35, p2, v24

    .line 1430
    aput v35, p2, v31

    .line 1431
    aput v35, p2, v33

    .line 1432
    aput v35, p2, v32

    .line 1433
    aput v35, p2, v25

    .line 1434
    aput v35, p2, v34

    .line 1435
    aput v35, p2, v28

    .line 1436
    aput v35, p2, v29

    .line 1437
    const/16 v1, 0x12

    aput v35, p2, v1

    .line 1438
    const/16 v1, 0x13

    aput v35, p2, v1

    .line 1439
    const/16 v1, 0x14

    aput v35, p2, v1

    .line 1440
    const/16 v1, 0x15

    aput v35, p2, v1

    .line 1441
    const/16 v1, 0x16

    aput v35, p2, v1

    .line 1442
    const/16 v1, 0x17

    aput v35, p2, v1

    .line 1443
    const/16 v1, 0x18

    aput v35, p2, v1

    .line 1444
    const/16 v1, 0x19

    aput v35, p2, v1

    .line 1445
    const/16 v1, 0x1a

    aput v35, p2, v1

    .line 1446
    const/16 v1, 0x1b

    aput v35, p2, v1

    .line 1447
    const/16 v1, 0x1c

    aput v35, p2, v1

    .line 1448
    const/16 v1, 0x1d

    aput v35, p2, v1

    .line 1449
    const/16 v1, 0x1e

    aput v35, p2, v1

    .line 1450
    const/16 v1, 0x1f

    aput v35, p2, v1

    .line 1451
    const/16 v1, 0x20

    aput v35, p2, v1

    .line 1452
    const/16 v1, 0x21

    aput v35, p2, v1

    .line 1453
    const/16 v1, 0x22

    aput v35, p2, v1

    .line 1454
    const/16 v1, 0x23

    aput v35, p2, v1

    .line 1456
    const/4 v1, 0x0

    .line 1458
    .local v1, "six_i":I
    const/16 v20, 0x0

    move/from16 v35, v2

    move/from16 v2, v20

    .local v2, "i":I
    .local v35, "tmpf_17":F
    :goto_b2
    move/from16 v38, v3

    const/4 v3, 0x3

    .end local v3  # "tmpf_16":F
    .local v38, "tmpf_16":F
    if-ge v2, v3, :cond_24d

    .line 1462
    add-int/lit8 v3, v2, 0xf

    aget v20, p1, v3

    add-int/lit8 v21, v2, 0xc

    aget v21, p1, v21

    add-float v20, v20, v21

    aput v20, p1, v3

    .line 1463
    add-int/lit8 v3, v2, 0xc

    aget v20, p1, v3

    add-int/lit8 v21, v2, 0x9

    aget v21, p1, v21

    add-float v20, v20, v21

    aput v20, p1, v3

    .line 1464
    add-int/lit8 v3, v2, 0x9

    aget v20, p1, v3

    add-int/lit8 v21, v2, 0x6

    aget v21, p1, v21

    add-float v20, v20, v21

    aput v20, p1, v3

    .line 1465
    add-int/lit8 v3, v2, 0x6

    aget v20, p1, v3

    add-int/lit8 v21, v2, 0x3

    aget v21, p1, v21

    add-float v20, v20, v21

    aput v20, p1, v3

    .line 1466
    add-int/lit8 v3, v2, 0x3

    aget v20, p1, v3

    add-int/lit8 v21, v2, 0x0

    aget v21, p1, v21

    add-float v20, v20, v21

    aput v20, p1, v3

    .line 1469
    add-int/lit8 v3, v2, 0xf

    aget v20, p1, v3

    add-int/lit8 v21, v2, 0x9

    aget v21, p1, v21

    add-float v20, v20, v21

    aput v20, p1, v3

    .line 1470
    add-int/lit8 v3, v2, 0x9

    aget v20, p1, v3

    add-int/lit8 v21, v2, 0x3

    aget v21, p1, v21

    add-float v20, v20, v21

    aput v20, p1, v3

    .line 1474
    add-int/lit8 v3, v2, 0xc

    aget v3, p1, v3

    const/high16 v20, 0x3f000000  # 0.5f

    mul-float v3, v3, v20

    .line 1475
    .local v3, "pp2":F
    add-int/lit8 v20, v2, 0x6

    aget v20, p1, v20

    const v21, 0x3f5db3d7

    mul-float v20, v20, v21

    .line 1476
    .local v20, "pp1":F
    add-int/lit8 v21, v2, 0x0

    aget v21, p1, v21

    add-float v21, v21, v3

    .line 1477
    .local v21, "sum":F
    add-int/lit8 v22, v2, 0x0

    aget v22, p1, v22

    add-int/lit8 v23, v2, 0xc

    aget v23, p1, v23

    sub-float v22, v22, v23

    .line 1478
    .end local v18  # "tmpf_1":F
    .local v22, "tmpf_1":F
    add-float v18, v21, v20

    .line 1479
    .end local v19  # "tmpf_0":F
    .local v18, "tmpf_0":F
    sub-float v17, v21, v20

    .line 1483
    add-int/lit8 v19, v2, 0xf

    aget v19, p1, v19

    const/high16 v23, 0x3f000000  # 0.5f

    mul-float v19, v19, v23

    .line 1484
    .end local v3  # "pp2":F
    .local v19, "pp2":F
    add-int/lit8 v3, v2, 0x9

    aget v3, p1, v3

    const v23, 0x3f5db3d7

    mul-float v3, v3, v23

    .line 1485
    .end local v20  # "pp1":F
    .local v3, "pp1":F
    add-int/lit8 v20, v2, 0x3

    aget v20, p1, v20

    add-float v20, v20, v19

    .line 1486
    .end local v21  # "sum":F
    .local v20, "sum":F
    add-int/lit8 v21, v2, 0x3

    aget v21, p1, v21

    add-int/lit8 v23, v2, 0xf

    aget v23, p1, v23

    sub-float v21, v21, v23

    .line 1487
    .end local v15  # "tmpf_4":F
    .local v21, "tmpf_4":F
    add-float v14, v20, v3

    .line 1488
    sub-float v15, v20, v3

    .line 1492
    .end local v16  # "tmpf_3":F
    .local v15, "tmpf_3":F
    const v16, 0x3ff746ea

    mul-float v15, v15, v16

    .line 1493
    const v16, 0x3f3504f3

    mul-float v21, v21, v16

    .line 1494
    const v16, 0x3f0483ee

    mul-float v14, v14, v16

    .line 1497
    move/from16 v16, v18

    .line 1498
    .local v16, "save":F
    add-float v18, v18, v14

    .line 1499
    sub-float v14, v16, v14

    .line 1500
    move/from16 v16, v22

    .line 1501
    add-float v22, v22, v21

    .line 1502
    sub-float v21, v16, v21

    .line 1503
    move/from16 v16, v17

    .line 1504
    add-float v17, v17, v15

    .line 1505
    sub-float v15, v16, v15

    .line 1510
    const v23, 0x3f011ac1

    move/from16 v24, v3

    .end local v3  # "pp1":F
    .local v24, "pp1":F
    mul-float v3, v18, v23

    .line 1511
    .end local v18  # "tmpf_0":F
    .local v3, "tmpf_0":F
    const v18, 0x3f0a8bd4

    move/from16 v39, v4

    .end local v4  # "tmpf_15":F
    .local v39, "tmpf_15":F
    mul-float v4, v22, v18

    .line 1512
    .end local v22  # "tmpf_1":F
    .local v4, "tmpf_1":F
    const v18, 0x3f215729

    move/from16 v40, v5

    .end local v5  # "tmpf_14":F
    .local v40, "tmpf_14":F
    mul-float v5, v17, v18

    .line 1513
    .end local v17  # "tmpf_2":F
    .local v5, "tmpf_2":F
    const v17, 0x3f524353

    mul-float v15, v15, v17

    .line 1514
    const v17, 0x3fa73d75

    move/from16 v41, v6

    .end local v6  # "tmpf_13":F
    .local v41, "tmpf_13":F
    mul-float v6, v21, v17

    .line 1515
    .end local v21  # "tmpf_4":F
    .local v6, "tmpf_4":F
    const v17, 0x4075295a

    mul-float v14, v14, v17

    .line 1520
    move/from16 v42, v7

    .end local v7  # "tmpf_12":F
    .local v42, "tmpf_12":F
    neg-float v7, v3

    const v17, 0x3f4b1934

    mul-float v11, v7, v17

    .line 1521
    neg-float v7, v3

    const v17, 0x3f1bd7ca

    mul-float v10, v7, v17

    .line 1522
    neg-float v7, v4

    const v17, 0x3f6c835e

    mul-float v12, v7, v17

    .line 1523
    neg-float v7, v4

    const v17, 0x3ec3ef15

    mul-float v9, v7, v17

    .line 1524
    neg-float v7, v5

    const v17, 0x3f7dcf55

    mul-float v13, v7, v17

    .line 1525
    neg-float v7, v5

    const v17, 0x3e05a8a8

    mul-float v8, v7, v17

    .line 1527
    move v3, v15

    .line 1528
    const v7, 0x3ec3ef15

    mul-float v18, v6, v7

    .line 1529
    .end local v4  # "tmpf_1":F
    .local v18, "tmpf_1":F
    const v4, 0x3f1bd7ca

    mul-float v17, v14, v4

    .line 1531
    .end local v5  # "tmpf_2":F
    .restart local v17  # "tmpf_2":F
    neg-float v4, v14

    const v5, 0x3f4b1934

    mul-float/2addr v4, v5

    .line 1532
    .end local v15  # "tmpf_3":F
    .local v4, "tmpf_3":F
    neg-float v5, v6

    const v7, 0x3f6c835e

    mul-float v15, v5, v7

    .line 1533
    .end local v6  # "tmpf_4":F
    .local v15, "tmpf_4":F
    neg-float v5, v3

    const v6, 0x3f7dcf55

    mul-float v14, v5, v6

    .line 1535
    const v5, 0x3e05a8a8

    mul-float/2addr v3, v5

    .line 1537
    add-int/lit8 v5, v1, 0x6

    aget v6, p2, v5

    add-float/2addr v6, v3

    aput v6, p2, v5

    .line 1538
    add-int/lit8 v5, v1, 0x7

    aget v6, p2, v5

    add-float v6, v6, v18

    aput v6, p2, v5

    .line 1539
    add-int/lit8 v5, v1, 0x8

    aget v6, p2, v5

    add-float v6, v6, v17

    aput v6, p2, v5

    .line 1540
    add-int/lit8 v5, v1, 0x9

    aget v6, p2, v5

    add-float/2addr v6, v4

    aput v6, p2, v5

    .line 1541
    add-int/lit8 v5, v1, 0xa

    aget v6, p2, v5

    add-float/2addr v6, v15

    aput v6, p2, v5

    .line 1542
    add-int/lit8 v5, v1, 0xb

    aget v6, p2, v5

    add-float/2addr v6, v14

    aput v6, p2, v5

    .line 1543
    add-int/lit8 v5, v1, 0xc

    aget v6, p2, v5

    add-float/2addr v6, v13

    aput v6, p2, v5

    .line 1544
    add-int/lit8 v5, v1, 0xd

    aget v6, p2, v5

    add-float/2addr v6, v12

    aput v6, p2, v5

    .line 1545
    add-int/lit8 v5, v1, 0xe

    aget v6, p2, v5

    add-float/2addr v6, v11

    aput v6, p2, v5

    .line 1546
    add-int/lit8 v5, v1, 0xf

    aget v6, p2, v5

    add-float/2addr v6, v10

    aput v6, p2, v5

    .line 1547
    add-int/lit8 v5, v1, 0x10

    aget v6, p2, v5

    add-float/2addr v6, v9

    aput v6, p2, v5

    .line 1548
    add-int/lit8 v5, v1, 0x11

    aget v6, p2, v5

    add-float/2addr v6, v8

    aput v6, p2, v5

    .line 1550
    nop

    .end local v16  # "save":F
    .end local v19  # "pp2":F
    .end local v20  # "sum":F
    .end local v24  # "pp1":F
    add-int/lit8 v1, v1, 0x6

    .line 1458
    add-int/lit8 v2, v2, 0x1

    move/from16 v19, v3

    move/from16 v16, v4

    move/from16 v3, v38

    move/from16 v4, v39

    move/from16 v5, v40

    move/from16 v6, v41

    move/from16 v7, v42

    goto/16 :goto_b2

    .end local v3  # "tmpf_0":F
    .end local v39  # "tmpf_15":F
    .end local v40  # "tmpf_14":F
    .end local v41  # "tmpf_13":F
    .end local v42  # "tmpf_12":F
    .local v4, "tmpf_15":F
    .local v5, "tmpf_14":F
    .local v6, "tmpf_13":F
    .restart local v7  # "tmpf_12":F
    .local v16, "tmpf_3":F
    .local v19, "tmpf_0":F
    :cond_24d
    move/from16 v39, v4

    move/from16 v40, v5

    move/from16 v41, v6

    move/from16 v42, v7

    .line 1552
    .end local v1  # "six_i":I
    .end local v4  # "tmpf_15":F
    .end local v5  # "tmpf_14":F
    .end local v6  # "tmpf_13":F
    .end local v7  # "tmpf_12":F
    .restart local v39  # "tmpf_15":F
    .restart local v40  # "tmpf_14":F
    .restart local v41  # "tmpf_13":F
    .restart local v42  # "tmpf_12":F
    move/from16 v2, v35

    move/from16 v3, v38

    goto/16 :goto_664

    .line 1555
    .end local v35  # "tmpf_17":F
    .end local v38  # "tmpf_16":F
    .end local v39  # "tmpf_15":F
    .end local v40  # "tmpf_14":F
    .end local v41  # "tmpf_13":F
    .end local v42  # "tmpf_12":F
    .local v2, "tmpf_17":F
    .local v3, "tmpf_16":F
    .restart local v4  # "tmpf_15":F
    .restart local v5  # "tmpf_14":F
    .restart local v6  # "tmpf_13":F
    .restart local v7  # "tmpf_12":F
    :cond_25b
    move/from16 v35, v2

    move/from16 v38, v3

    move/from16 v39, v4

    move/from16 v40, v5

    move/from16 v41, v6

    move/from16 v42, v7

    .end local v2  # "tmpf_17":F
    .end local v3  # "tmpf_16":F
    .end local v4  # "tmpf_15":F
    .end local v5  # "tmpf_14":F
    .end local v6  # "tmpf_13":F
    .end local v7  # "tmpf_12":F
    .restart local v35  # "tmpf_17":F
    .restart local v38  # "tmpf_16":F
    .restart local v39  # "tmpf_15":F
    .restart local v40  # "tmpf_14":F
    .restart local v41  # "tmpf_13":F
    .restart local v42  # "tmpf_12":F
    aget v2, p1, v29

    aget v3, p1, v28

    add-float/2addr v2, v3

    aput v2, p1, v29

    .line 1556
    aget v2, p1, v28

    aget v3, p1, v34

    add-float/2addr v2, v3

    aput v2, p1, v28

    .line 1557
    aget v2, p1, v34

    aget v3, p1, v25

    add-float/2addr v2, v3

    aput v2, p1, v34

    .line 1558
    aget v2, p1, v25

    aget v3, p1, v32

    add-float/2addr v2, v3

    aput v2, p1, v25

    .line 1559
    aget v2, p1, v32

    aget v3, p1, v33

    add-float/2addr v2, v3

    aput v2, p1, v32

    .line 1560
    aget v2, p1, v33

    aget v3, p1, v31

    add-float/2addr v2, v3

    aput v2, p1, v33

    .line 1561
    aget v2, p1, v31

    aget v3, p1, v24

    add-float/2addr v2, v3

    aput v2, p1, v31

    .line 1562
    aget v2, p1, v24

    aget v3, p1, v36

    add-float/2addr v2, v3

    aput v2, p1, v24

    .line 1563
    aget v2, p1, v36

    aget v3, p1, v27

    add-float/2addr v2, v3

    aput v2, p1, v36

    .line 1564
    aget v2, p1, v27

    aget v3, p1, v20

    add-float/2addr v2, v3

    aput v2, p1, v27

    .line 1565
    aget v2, p1, v20

    aget v3, p1, v26

    add-float/2addr v2, v3

    aput v2, p1, v20

    .line 1566
    aget v2, p1, v26

    aget v3, p1, v30

    add-float/2addr v2, v3

    aput v2, p1, v26

    .line 1567
    aget v2, p1, v30

    aget v3, p1, v23

    add-float/2addr v2, v3

    aput v2, p1, v30

    .line 1568
    aget v2, p1, v23

    const/4 v3, 0x3

    aget v4, p1, v3

    add-float/2addr v2, v4

    aput v2, p1, v23

    .line 1569
    aget v2, p1, v3

    aget v4, p1, v1

    add-float/2addr v2, v4

    aput v2, p1, v3

    .line 1570
    aget v2, p1, v1

    aget v3, p1, v22

    add-float/2addr v2, v3

    aput v2, p1, v1

    .line 1571
    aget v2, p1, v22

    aget v3, p1, v21

    add-float/2addr v2, v3

    aput v2, p1, v22

    .line 1575
    aget v2, p1, v29

    aget v3, p1, v34

    add-float/2addr v2, v3

    aput v2, p1, v29

    .line 1576
    aget v2, p1, v34

    aget v3, p1, v32

    add-float/2addr v2, v3

    aput v2, p1, v34

    .line 1577
    aget v2, p1, v32

    aget v3, p1, v31

    add-float/2addr v2, v3

    aput v2, p1, v32

    .line 1578
    aget v2, p1, v31

    aget v3, p1, v36

    add-float/2addr v2, v3

    aput v2, p1, v31

    .line 1579
    aget v2, p1, v36

    aget v3, p1, v20

    add-float/2addr v2, v3

    aput v2, p1, v36

    .line 1580
    aget v2, p1, v20

    aget v3, p1, v30

    add-float/2addr v2, v3

    aput v2, p1, v20

    .line 1581
    aget v2, p1, v30

    const/4 v3, 0x3

    aget v4, p1, v3

    add-float/2addr v2, v4

    aput v2, p1, v30

    .line 1582
    aget v2, p1, v3

    aget v4, p1, v22

    add-float/2addr v2, v4

    aput v2, p1, v3

    .line 1601
    aget v2, p1, v21

    aget v3, p1, v21

    add-float/2addr v2, v3

    .line 1602
    .local v2, "i00":F
    aget v3, p1, v33

    add-float/2addr v3, v2

    .line 1604
    .local v3, "iip12":F
    aget v4, p1, v23

    const v5, 0x3ff08fb2

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    aget v6, p1, v27

    const v7, 0x3fc41b7d

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    aget v6, p1, v28

    const v43, 0x3eb1d0d4

    mul-float v6, v6, v43

    add-float/2addr v4, v6

    .line 1605
    .local v4, "tmp0":F
    aget v6, p1, v23

    add-float/2addr v6, v2

    aget v44, p1, v27

    sub-float v6, v6, v44

    aget v44, p1, v33

    sub-float v6, v6, v44

    aget v44, p1, v33

    sub-float v6, v6, v44

    aget v44, p1, v28

    sub-float v6, v6, v44

    .line 1606
    .local v6, "tmp1":F
    aget v44, p1, v23

    mul-float v44, v44, v43

    sub-float v44, v3, v44

    aget v45, p1, v27

    mul-float v45, v45, v5

    sub-float v44, v44, v45

    aget v45, p1, v28

    mul-float v45, v45, v7

    add-float v44, v44, v45

    .line 1607
    .local v44, "tmp2":F
    aget v45, p1, v23

    mul-float v45, v45, v7

    sub-float v45, v3, v45

    aget v46, p1, v27

    mul-float v46, v46, v43

    add-float v45, v45, v46

    aget v46, p1, v28

    mul-float v46, v46, v5

    sub-float v45, v45, v46

    .line 1608
    .local v45, "tmp3":F
    aget v46, p1, v21

    aget v47, p1, v23

    sub-float v46, v46, v47

    aget v47, p1, v27

    add-float v46, v46, v47

    aget v47, p1, v33

    sub-float v46, v46, v47

    aget v47, p1, v28

    add-float v46, v46, v47

    .line 1611
    .local v46, "tmp4":F
    aget v47, p1, v26

    const v48, 0x3fddb3d7

    mul-float v47, v47, v48

    .line 1613
    .local v47, "i66_":F
    aget v48, p1, v1

    const v49, 0x3ffc1c5c

    mul-float v48, v48, v49

    add-float v48, v48, v47

    aget v49, p1, v24

    const v50, 0x3fa48dbb

    mul-float v49, v49, v50

    add-float v48, v48, v49

    aget v49, p1, v25

    const v50, 0x3f2f1d44

    mul-float v49, v49, v50

    add-float v48, v48, v49

    .line 1614
    .local v48, "tmp0_":F
    aget v49, p1, v1

    aget v50, p1, v24

    sub-float v49, v49, v50

    aget v50, p1, v25

    sub-float v49, v49, v50

    const v50, 0x3fddb3d7

    mul-float v49, v49, v50

    .line 1615
    .local v49, "tmp1_":F
    aget v50, p1, v1

    const v51, 0x3fa48dbb

    mul-float v50, v50, v51

    sub-float v50, v50, v47

    aget v51, p1, v24

    const v52, 0x3f2f1d44

    mul-float v51, v51, v52

    sub-float v50, v50, v51

    aget v51, p1, v25

    const v52, 0x3ffc1c5c

    mul-float v51, v51, v52

    add-float v50, v50, v51

    .line 1616
    .local v50, "tmp2_":F
    aget v51, p1, v1

    const v52, 0x3f2f1d44

    mul-float v51, v51, v52

    sub-float v51, v51, v47

    aget v52, p1, v24

    const v53, 0x3ffc1c5c

    mul-float v52, v52, v53

    add-float v51, v51, v52

    aget v52, p1, v25

    const v53, 0x3fa48dbb

    mul-float v52, v52, v53

    sub-float v51, v51, v52

    .line 1620
    .local v51, "tmp3_":F
    aget v52, p1, v22

    aget v53, p1, v22

    add-float v52, v52, v53

    .line 1621
    .local v52, "i0":F
    aget v53, p1, v32

    add-float v53, v52, v53

    .line 1623
    .local v53, "i0p12":F
    aget v54, p1, v30

    mul-float v54, v54, v5

    add-float v54, v53, v54

    aget v55, p1, v36

    mul-float v55, v55, v7

    add-float v54, v54, v55

    aget v55, p1, v29

    mul-float v55, v55, v43

    add-float v54, v54, v55

    .line 1624
    .local v54, "tmp0o":F
    aget v55, p1, v30

    add-float v55, v52, v55

    aget v56, p1, v36

    sub-float v55, v55, v56

    aget v56, p1, v32

    sub-float v55, v55, v56

    aget v56, p1, v32

    sub-float v55, v55, v56

    aget v56, p1, v29

    sub-float v55, v55, v56

    .line 1625
    .local v55, "tmp1o":F
    aget v56, p1, v30

    mul-float v56, v56, v43

    sub-float v56, v53, v56

    aget v57, p1, v36

    mul-float v57, v57, v5

    sub-float v56, v56, v57

    aget v57, p1, v29

    mul-float v57, v57, v7

    add-float v56, v56, v57

    .line 1626
    .local v56, "tmp2o":F
    aget v57, p1, v30

    mul-float v57, v57, v7

    sub-float v7, v53, v57

    aget v57, p1, v36

    mul-float v57, v57, v43

    add-float v7, v7, v57

    aget v43, p1, v29

    mul-float v43, v43, v5

    sub-float v7, v7, v43

    .line 1627
    .local v7, "tmp3o":F
    aget v5, p1, v22

    aget v43, p1, v30

    sub-float v5, v5, v43

    aget v43, p1, v36

    add-float v5, v5, v43

    aget v43, p1, v32

    sub-float v5, v5, v43

    aget v43, p1, v29

    add-float v5, v5, v43

    const v43, 0x3f3504f3

    mul-float v5, v5, v43

    .line 1630
    .local v5, "tmp4o":F
    aget v43, p1, v20

    const v57, 0x3fddb3d7

    mul-float v43, v43, v57

    .line 1632
    .local v43, "i6_":F
    const/16 v37, 0x3

    aget v57, p1, v37

    const v58, 0x3ffc1c5c

    mul-float v57, v57, v58

    add-float v57, v57, v43

    aget v58, p1, v31

    const v59, 0x3fa48dbb

    mul-float v58, v58, v59

    add-float v57, v57, v58

    aget v58, p1, v34

    const v59, 0x3f2f1d44

    mul-float v58, v58, v59

    add-float v57, v57, v58

    .line 1633
    .local v57, "tmp0_o":F
    const/16 v37, 0x3

    aget v58, p1, v37

    aget v59, p1, v31

    sub-float v58, v58, v59

    aget v59, p1, v34

    sub-float v58, v58, v59

    const v59, 0x3fddb3d7

    mul-float v58, v58, v59

    .line 1634
    .local v58, "tmp1_o":F
    aget v59, p1, v37

    const v60, 0x3fa48dbb

    mul-float v59, v59, v60

    sub-float v59, v59, v43

    aget v60, p1, v31

    const v61, 0x3f2f1d44

    mul-float v60, v60, v61

    sub-float v59, v59, v60

    aget v60, p1, v34

    const v61, 0x3ffc1c5c

    mul-float v60, v60, v61

    add-float v59, v59, v60

    .line 1635
    .local v59, "tmp2_o":F
    const/16 v37, 0x3

    aget v60, p1, v37

    const v61, 0x3f2f1d44

    mul-float v60, v60, v61

    sub-float v60, v60, v43

    aget v61, p1, v31

    const v62, 0x3ffc1c5c

    mul-float v61, v61, v62

    add-float v60, v60, v61

    aget v61, p1, v34

    const v62, 0x3fa48dbb

    mul-float v61, v61, v62

    sub-float v60, v60, v61

    .line 1644
    .local v60, "tmp3_o":F
    add-float v61, v4, v48

    .line 1645
    .local v61, "e":F
    add-float v62, v54, v57

    const v63, 0x3f007d2b

    mul-float v62, v62, v63

    .line 1646
    .local v62, "o":F
    add-float v19, v61, v62

    .line 1647
    sub-float v1, v61, v62

    .line 1648
    .end local v35  # "tmpf_17":F
    .local v1, "tmpf_17":F
    add-float v35, v6, v49

    .line 1649
    .end local v61  # "e":F
    .local v35, "e":F
    add-float v61, v55, v58

    const v64, 0x3f0483ee

    mul-float v61, v61, v64

    .line 1650
    .end local v62  # "o":F
    .local v61, "o":F
    add-float v18, v35, v61

    .line 1651
    move/from16 v62, v2

    .end local v2  # "i00":F
    .local v62, "i00":F
    sub-float v2, v35, v61

    .line 1652
    .end local v38  # "tmpf_16":F
    .local v2, "tmpf_16":F
    add-float v35, v44, v50

    .line 1653
    add-float v38, v56, v59

    const v64, 0x3f0d3b7d

    mul-float v38, v38, v64

    .line 1654
    .end local v61  # "o":F
    .local v38, "o":F
    add-float v17, v35, v38

    .line 1655
    move/from16 v61, v3

    .end local v3  # "iip12":F
    .local v61, "iip12":F
    sub-float v3, v35, v38

    .line 1656
    .end local v39  # "tmpf_15":F
    .local v3, "tmpf_15":F
    add-float v35, v45, v51

    .line 1657
    add-float v39, v7, v60

    const v64, 0x3f1c4257

    mul-float v39, v39, v64

    .line 1658
    .end local v38  # "o":F
    .local v39, "o":F
    add-float v16, v35, v39

    .line 1659
    move/from16 v38, v8

    .end local v8  # "tmpf_11":F
    .local v38, "tmpf_11":F
    sub-float v8, v35, v39

    .line 1660
    .end local v40  # "tmpf_14":F
    .local v8, "tmpf_14":F
    add-float v15, v46, v5

    .line 1661
    move/from16 v40, v9

    .end local v9  # "tmpf_10":F
    .local v40, "tmpf_10":F
    sub-float v9, v46, v5

    .line 1662
    .end local v41  # "tmpf_13":F
    .local v9, "tmpf_13":F
    sub-float v35, v45, v51

    .line 1663
    sub-float v41, v7, v60

    const v64, 0x3f5f2944

    mul-float v41, v41, v64

    .line 1664
    .end local v39  # "o":F
    .local v41, "o":F
    add-float v14, v35, v41

    .line 1665
    move/from16 v39, v5

    .end local v5  # "tmp4o":F
    .local v39, "tmp4o":F
    sub-float v5, v35, v41

    .line 1666
    .end local v42  # "tmpf_12":F
    .local v5, "tmpf_12":F
    sub-float v35, v44, v50

    .line 1667
    sub-float v42, v56, v59

    const v64, 0x3f976fd9

    mul-float v42, v42, v64

    .line 1668
    .end local v41  # "o":F
    .local v42, "o":F
    add-float v13, v35, v42

    .line 1669
    move/from16 v41, v7

    .end local v7  # "tmp3o":F
    .local v41, "tmp3o":F
    sub-float v7, v35, v42

    .line 1670
    .end local v38  # "tmpf_11":F
    .local v7, "tmpf_11":F
    sub-float v35, v6, v49

    .line 1671
    sub-float v38, v55, v58

    const v64, 0x3ff746ea

    mul-float v38, v38, v64

    .line 1672
    .end local v42  # "o":F
    .local v38, "o":F
    add-float v12, v35, v38

    .line 1673
    move/from16 v42, v6

    .end local v6  # "tmp1":F
    .local v42, "tmp1":F
    sub-float v6, v35, v38

    .line 1674
    .end local v40  # "tmpf_10":F
    .local v6, "tmpf_10":F
    sub-float v35, v4, v48

    .line 1675
    sub-float v40, v54, v57

    const v64, 0x40b79454

    mul-float v40, v40, v64

    .line 1676
    .end local v38  # "o":F
    .local v40, "o":F
    add-float v11, v35, v40

    .line 1677
    sub-float v10, v35, v40

    .line 1681
    sget-object v38, Ljavazoom/jl/decoder/LayerIIIDecoder;->win:[[F

    aget-object v38, v38, v0

    .line 1683
    .local v38, "win_bt":[F
    neg-float v0, v10

    aget v64, v38, v21

    mul-float v0, v0, v64

    aput v0, p2, v21

    .line 1684
    neg-float v0, v6

    aget v21, v38, v22

    mul-float v0, v0, v21

    aput v0, p2, v22

    .line 1685
    neg-float v0, v7

    const/16 v21, 0x2

    aget v22, v38, v21

    mul-float v0, v0, v22

    aput v0, p2, v21

    .line 1686
    neg-float v0, v5

    const/16 v21, 0x3

    aget v22, v38, v21

    mul-float v0, v0, v22

    aput v0, p2, v21

    .line 1687
    neg-float v0, v9

    aget v21, v38, v23

    mul-float v0, v0, v21

    aput v0, p2, v23

    .line 1688
    neg-float v0, v8

    aget v21, v38, v30

    mul-float v0, v0, v21

    aput v0, p2, v30

    .line 1689
    neg-float v0, v3

    aget v21, v38, v26

    mul-float v0, v0, v21

    aput v0, p2, v26

    .line 1690
    neg-float v0, v2

    aget v21, v38, v20

    mul-float v0, v0, v21

    aput v0, p2, v20

    .line 1691
    neg-float v0, v1

    aget v20, v38, v27

    mul-float v0, v0, v20

    aput v0, p2, v27

    .line 1692
    aget v0, v38, v36

    mul-float/2addr v0, v1

    aput v0, p2, v36

    .line 1693
    aget v0, v38, v24

    mul-float/2addr v0, v2

    aput v0, p2, v24

    .line 1694
    aget v0, v38, v31

    mul-float/2addr v0, v3

    aput v0, p2, v31

    .line 1695
    aget v0, v38, v33

    mul-float/2addr v0, v8

    aput v0, p2, v33

    .line 1696
    aget v0, v38, v32

    mul-float/2addr v0, v9

    aput v0, p2, v32

    .line 1697
    aget v0, v38, v25

    mul-float/2addr v0, v5

    aput v0, p2, v25

    .line 1698
    aget v0, v38, v34

    mul-float/2addr v0, v7

    aput v0, p2, v34

    .line 1699
    aget v0, v38, v28

    mul-float/2addr v0, v6

    aput v0, p2, v28

    .line 1700
    aget v0, v38, v29

    mul-float/2addr v0, v10

    aput v0, p2, v29

    .line 1701
    const/16 v0, 0x12

    aget v0, v38, v0

    mul-float/2addr v0, v11

    const/16 v20, 0x12

    aput v0, p2, v20

    .line 1702
    const/16 v0, 0x13

    aget v0, v38, v0

    mul-float/2addr v0, v12

    const/16 v20, 0x13

    aput v0, p2, v20

    .line 1703
    const/16 v0, 0x14

    aget v0, v38, v0

    mul-float/2addr v0, v13

    const/16 v20, 0x14

    aput v0, p2, v20

    .line 1704
    const/16 v0, 0x15

    aget v0, v38, v0

    mul-float/2addr v0, v14

    const/16 v20, 0x15

    aput v0, p2, v20

    .line 1705
    const/16 v0, 0x16

    aget v0, v38, v0

    mul-float/2addr v0, v15

    const/16 v20, 0x16

    aput v0, p2, v20

    .line 1706
    const/16 v0, 0x17

    aget v0, v38, v0

    mul-float v0, v0, v16

    const/16 v20, 0x17

    aput v0, p2, v20

    .line 1707
    const/16 v0, 0x18

    aget v0, v38, v0

    mul-float v0, v0, v17

    const/16 v20, 0x18

    aput v0, p2, v20

    .line 1708
    const/16 v0, 0x19

    aget v0, v38, v0

    mul-float v0, v0, v18

    const/16 v20, 0x19

    aput v0, p2, v20

    .line 1709
    const/16 v0, 0x1a

    aget v0, v38, v0

    mul-float v0, v0, v19

    const/16 v20, 0x1a

    aput v0, p2, v20

    .line 1710
    const/16 v0, 0x1b

    aget v0, v38, v0

    mul-float v0, v0, v19

    const/16 v20, 0x1b

    aput v0, p2, v20

    .line 1711
    const/16 v0, 0x1c

    aget v0, v38, v0

    mul-float v0, v0, v18

    const/16 v20, 0x1c

    aput v0, p2, v20

    .line 1712
    const/16 v0, 0x1d

    aget v0, v38, v0

    mul-float v0, v0, v17

    const/16 v20, 0x1d

    aput v0, p2, v20

    .line 1713
    const/16 v0, 0x1e

    aget v0, v38, v0

    mul-float v0, v0, v16

    const/16 v20, 0x1e

    aput v0, p2, v20

    .line 1714
    const/16 v0, 0x1f

    aget v0, v38, v0

    mul-float/2addr v0, v15

    const/16 v20, 0x1f

    aput v0, p2, v20

    .line 1715
    const/16 v0, 0x20

    aget v0, v38, v0

    mul-float/2addr v0, v14

    const/16 v20, 0x20

    aput v0, p2, v20

    .line 1716
    const/16 v0, 0x21

    aget v0, v38, v0

    mul-float/2addr v0, v13

    const/16 v20, 0x21

    aput v0, p2, v20

    .line 1717
    const/16 v0, 0x22

    aget v0, v38, v0

    mul-float/2addr v0, v12

    const/16 v20, 0x22

    aput v0, p2, v20

    .line 1718
    const/16 v0, 0x23

    aget v0, v38, v0

    mul-float/2addr v0, v11

    const/16 v20, 0x23

    aput v0, p2, v20

    move v4, v3

    move v3, v2

    move v2, v1

    move/from16 v65, v7

    move v7, v5

    move v5, v8

    move/from16 v8, v65

    move/from16 v66, v9

    move v9, v6

    move/from16 v6, v66

    .line 1720
    .end local v1  # "tmpf_17":F
    .end local v35  # "e":F
    .end local v38  # "win_bt":[F
    .end local v39  # "tmp4o":F
    .end local v40  # "o":F
    .end local v41  # "tmp3o":F
    .end local v42  # "tmp1":F
    .end local v43  # "i6_":F
    .end local v44  # "tmp2":F
    .end local v45  # "tmp3":F
    .end local v46  # "tmp4":F
    .end local v47  # "i66_":F
    .end local v48  # "tmp0_":F
    .end local v49  # "tmp1_":F
    .end local v50  # "tmp2_":F
    .end local v51  # "tmp3_":F
    .end local v52  # "i0":F
    .end local v53  # "i0p12":F
    .end local v54  # "tmp0o":F
    .end local v55  # "tmp1o":F
    .end local v56  # "tmp2o":F
    .end local v57  # "tmp0_o":F
    .end local v58  # "tmp1_o":F
    .end local v59  # "tmp2_o":F
    .end local v60  # "tmp3_o":F
    .end local v61  # "iip12":F
    .end local v62  # "i00":F
    .local v2, "tmpf_17":F
    .local v3, "tmpf_16":F
    .local v4, "tmpf_15":F
    .local v5, "tmpf_14":F
    .local v6, "tmpf_13":F
    .local v7, "tmpf_12":F
    .local v8, "tmpf_11":F
    .local v9, "tmpf_10":F
    :goto_664
    return-void
.end method

.method public seek_notify()V
    .registers 5

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->frame_start:I

    .line 185
    const/4 v0, 0x0

    .local v0, "ch":I
    :goto_4
    const/4 v1, 0x2

    if-ge v0, v1, :cond_19

    .line 186
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_8
    const/16 v2, 0x240

    if-ge v1, v2, :cond_16

    .line 187
    iget-object v2, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->prevblck:[[F

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput v3, v2, v1

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 185
    .end local v1  # "j":I
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 188
    .end local v0  # "ch":I
    :cond_19
    new-instance v0, Ljavazoom/jl/decoder/BitReserve;

    invoke-direct {v0}, Ljavazoom/jl/decoder/BitReserve;-><init>()V

    iput-object v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder;->br:Ljavazoom/jl/decoder/BitReserve;

    .line 189
    return-void
.end method
