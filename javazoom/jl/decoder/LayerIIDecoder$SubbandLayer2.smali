.class Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;
.super Ljavazoom/jl/decoder/LayerIDecoder$Subband;
.source "LayerIIDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavazoom/jl/decoder/LayerIIDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubbandLayer2"
.end annotation


# static fields
.field public static final grouping_10bits:[F

.field public static final grouping_5bits:[F

.field public static final grouping_7bits:[F

.field public static final table_ab1_c:[F

.field public static final table_ab1_codelength:[I

.field public static final table_ab1_d:[F

.field public static final table_ab1_factor:[F

.field public static final table_ab1_groupingtables:[[F

.field public static final table_ab234_groupingtables:[[F

.field public static final table_ab2_c:[F

.field public static final table_ab2_codelength:[I

.field public static final table_ab2_d:[F

.field public static final table_ab2_factor:[F

.field public static final table_ab3_c:[F

.field public static final table_ab3_codelength:[I

.field public static final table_ab3_d:[F

.field public static final table_ab3_factor:[F

.field public static final table_ab4_c:[F

.field public static final table_ab4_codelength:[I

.field public static final table_ab4_d:[F

.field public static final table_ab4_factor:[F

.field public static final table_cd_c:[F

.field public static final table_cd_codelength:[I

.field public static final table_cd_d:[F

.field public static final table_cd_factor:[F

.field public static final table_cd_groupingtables:[[F


# instance fields
.field protected allocation:I

.field protected c:[F

.field protected codelength:[I

.field protected d:[F

.field protected factor:[F

.field protected groupingtable:[[F

.field protected groupnumber:I

.field protected samplenumber:I

.field protected samples:[F

.field protected scalefactor1:F

.field protected scalefactor2:F

.field protected scalefactor3:F

.field protected scfsi:I

.field protected subbandnumber:I


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 60
    const/16 v0, 0x51

    new-array v0, v0, [F

    fill-array-data v0, :array_e2

    sput-object v0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->grouping_5bits:[F

    .line 72
    const/16 v0, 0x177

    new-array v0, v0, [F

    fill-array-data v0, :array_188

    sput-object v0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->grouping_7bits:[F

    .line 96
    const/16 v0, 0x88b

    new-array v0, v0, [F

    fill-array-data v0, :array_47a

    sput-object v0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->grouping_10bits:[F

    .line 343
    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_1594

    sput-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab1_codelength:[I

    .line 347
    sget-object v3, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->grouping_5bits:[F

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    filled-new-array/range {v2 .. v17}, [[F

    move-result-object v1

    sput-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab1_groupingtables:[[F

    .line 351
    new-array v1, v0, [F

    fill-array-data v1, :array_15b8

    sput-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab1_factor:[F

    .line 356
    new-array v1, v0, [F

    fill-array-data v1, :array_15dc

    sput-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab1_c:[F

    .line 362
    new-array v1, v0, [F

    fill-array-data v1, :array_1600

    sput-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab1_d:[F

    .line 369
    sget-object v3, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->grouping_5bits:[F

    sget-object v4, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->grouping_7bits:[F

    sget-object v6, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->grouping_10bits:[F

    filled-new-array/range {v2 .. v17}, [[F

    move-result-object v1

    sput-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab234_groupingtables:[[F

    .line 373
    new-array v1, v0, [I

    fill-array-data v1, :array_1624

    sput-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab2_codelength:[I

    .line 374
    new-array v1, v0, [F

    fill-array-data v1, :array_1648

    sput-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab2_factor:[F

    .line 377
    new-array v1, v0, [F

    fill-array-data v1, :array_166c

    sput-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab2_c:[F

    .line 380
    new-array v1, v0, [F

    fill-array-data v1, :array_1690

    sput-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab2_d:[F

    .line 385
    const/16 v1, 0x8

    new-array v2, v1, [I

    fill-array-data v2, :array_16b4

    sput-object v2, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab3_codelength:[I

    .line 386
    new-array v2, v1, [F

    fill-array-data v2, :array_16c8

    sput-object v2, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab3_factor:[F

    .line 388
    new-array v2, v1, [F

    fill-array-data v2, :array_16dc

    sput-object v2, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab3_c:[F

    .line 390
    new-array v1, v1, [F

    fill-array-data v1, :array_16f0

    sput-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab3_d:[F

    .line 394
    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x7

    filled-new-array {v1, v2, v3, v0}, [I

    move-result-object v1

    sput-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab4_codelength:[I

    .line 395
    const/4 v1, 0x4

    new-array v2, v1, [F

    fill-array-data v2, :array_1704

    sput-object v2, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab4_factor:[F

    .line 396
    new-array v2, v1, [F

    fill-array-data v2, :array_1710

    sput-object v2, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab4_c:[F

    .line 397
    new-array v1, v1, [F

    fill-array-data v1, :array_171c

    sput-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab4_d:[F

    .line 400
    new-array v1, v0, [I

    fill-array-data v1, :array_1728

    sput-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_cd_codelength:[I

    .line 401
    sget-object v3, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->grouping_5bits:[F

    sget-object v4, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->grouping_7bits:[F

    sget-object v5, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->grouping_10bits:[F

    const/4 v2, 0x0

    const/4 v6, 0x0

    filled-new-array/range {v2 .. v17}, [[F

    move-result-object v1

    sput-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_cd_groupingtables:[[F

    .line 403
    new-array v1, v0, [F

    fill-array-data v1, :array_174c

    sput-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_cd_factor:[F

    .line 406
    new-array v1, v0, [F

    fill-array-data v1, :array_1770

    sput-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_cd_c:[F

    .line 409
    new-array v0, v0, [F

    fill-array-data v0, :array_1794

    sput-object v0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_cd_d:[F

    return-void

    :array_e2
    .array-data 4
        -0x40d55555
        -0x40d55555
        -0x40d55555
        0x0
        -0x40d55555
        -0x40d55555
        0x3f2aaaab
        -0x40d55555
        -0x40d55555
        -0x40d55555
        0x0
        -0x40d55555
        0x0
        0x0
        -0x40d55555
        0x3f2aaaab
        0x0
        -0x40d55555
        -0x40d55555
        0x3f2aaaab
        -0x40d55555
        0x0
        0x3f2aaaab
        -0x40d55555
        0x3f2aaaab
        0x3f2aaaab
        -0x40d55555
        -0x40d55555
        -0x40d55555
        0x0
        0x0
        -0x40d55555
        0x0
        0x3f2aaaab
        -0x40d55555
        0x0
        -0x40d55555
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f2aaaab
        0x0
        0x0
        -0x40d55555
        0x3f2aaaab
        0x0
        0x0
        0x3f2aaaab
        0x0
        0x3f2aaaab
        0x3f2aaaab
        0x0
        -0x40d55555
        -0x40d55555
        0x3f2aaaab
        0x0
        -0x40d55555
        0x3f2aaaab
        0x3f2aaaab
        -0x40d55555
        0x3f2aaaab
        -0x40d55555
        0x0
        0x3f2aaaab
        0x0
        0x0
        0x3f2aaaab
        0x3f2aaaab
        0x0
        0x3f2aaaab
        -0x40d55555
        0x3f2aaaab
        0x3f2aaaab
        0x0
        0x3f2aaaab
        0x3f2aaaab
        0x3f2aaaab
        0x3f2aaaab
        0x3f2aaaab
    .end array-data

    :array_188
    .array-data 4
        -0x40b33333  # -0.8f
        -0x40b33333  # -0.8f
        -0x40b33333  # -0.8f
        -0x41333333  # -0.4f
        -0x40b33333  # -0.8f
        -0x40b33333  # -0.8f
        0x0
        -0x40b33333  # -0.8f
        -0x40b33333  # -0.8f
        0x3ecccccd  # 0.4f
        -0x40b33333  # -0.8f
        -0x40b33333  # -0.8f
        0x3f4ccccd  # 0.8f
        -0x40b33333  # -0.8f
        -0x40b33333  # -0.8f
        -0x40b33333  # -0.8f
        -0x41333333  # -0.4f
        -0x40b33333  # -0.8f
        -0x41333333  # -0.4f
        -0x41333333  # -0.4f
        -0x40b33333  # -0.8f
        0x0
        -0x41333333  # -0.4f
        -0x40b33333  # -0.8f
        0x3ecccccd  # 0.4f
        -0x41333333  # -0.4f
        -0x40b33333  # -0.8f
        0x3f4ccccd  # 0.8f
        -0x41333333  # -0.4f
        -0x40b33333  # -0.8f
        -0x40b33333  # -0.8f
        0x0
        -0x40b33333  # -0.8f
        -0x41333333  # -0.4f
        0x0
        -0x40b33333  # -0.8f
        0x0
        0x0
        -0x40b33333  # -0.8f
        0x3ecccccd  # 0.4f
        0x0
        -0x40b33333  # -0.8f
        0x3f4ccccd  # 0.8f
        0x0
        -0x40b33333  # -0.8f
        -0x40b33333  # -0.8f
        0x3ecccccd  # 0.4f
        -0x40b33333  # -0.8f
        -0x41333333  # -0.4f
        0x3ecccccd  # 0.4f
        -0x40b33333  # -0.8f
        0x0
        0x3ecccccd  # 0.4f
        -0x40b33333  # -0.8f
        0x3ecccccd  # 0.4f
        0x3ecccccd  # 0.4f
        -0x40b33333  # -0.8f
        0x3f4ccccd  # 0.8f
        0x3ecccccd  # 0.4f
        -0x40b33333  # -0.8f
        -0x40b33333  # -0.8f
        0x3f4ccccd  # 0.8f
        -0x40b33333  # -0.8f
        -0x41333333  # -0.4f
        0x3f4ccccd  # 0.8f
        -0x40b33333  # -0.8f
        0x0
        0x3f4ccccd  # 0.8f
        -0x40b33333  # -0.8f
        0x3ecccccd  # 0.4f
        0x3f4ccccd  # 0.8f
        -0x40b33333  # -0.8f
        0x3f4ccccd  # 0.8f
        0x3f4ccccd  # 0.8f
        -0x40b33333  # -0.8f
        -0x40b33333  # -0.8f
        -0x40b33333  # -0.8f
        -0x41333333  # -0.4f
        -0x41333333  # -0.4f
        -0x40b33333  # -0.8f
        -0x41333333  # -0.4f
        0x0
        -0x40b33333  # -0.8f
        -0x41333333  # -0.4f
        0x3ecccccd  # 0.4f
        -0x40b33333  # -0.8f
        -0x41333333  # -0.4f
        0x3f4ccccd  # 0.8f
        -0x40b33333  # -0.8f
        -0x41333333  # -0.4f
        -0x40b33333  # -0.8f
        -0x41333333  # -0.4f
        -0x41333333  # -0.4f
        -0x41333333  # -0.4f
        -0x41333333  # -0.4f
        -0x41333333  # -0.4f
        0x0
        -0x41333333  # -0.4f
        -0x41333333  # -0.4f
        0x3ecccccd  # 0.4f
        -0x41333333  # -0.4f
        -0x41333333  # -0.4f
        0x3f4ccccd  # 0.8f
        -0x41333333  # -0.4f
        -0x41333333  # -0.4f
        -0x40b33333  # -0.8f
        0x0
        -0x41333333  # -0.4f
        -0x41333333  # -0.4f
        0x0
        -0x41333333  # -0.4f
        0x0
        0x0
        -0x41333333  # -0.4f
        0x3ecccccd  # 0.4f
        0x0
        -0x41333333  # -0.4f
        0x3f4ccccd  # 0.8f
        0x0
        -0x41333333  # -0.4f
        -0x40b33333  # -0.8f
        0x3ecccccd  # 0.4f
        -0x41333333  # -0.4f
        -0x41333333  # -0.4f
        0x3ecccccd  # 0.4f
        -0x41333333  # -0.4f
        0x0
        0x3ecccccd  # 0.4f
        -0x41333333  # -0.4f
        0x3ecccccd  # 0.4f
        0x3ecccccd  # 0.4f
        -0x41333333  # -0.4f
        0x3f4ccccd  # 0.8f
        0x3ecccccd  # 0.4f
        -0x41333333  # -0.4f
        -0x40b33333  # -0.8f
        0x3f4ccccd  # 0.8f
        -0x41333333  # -0.4f
        -0x41333333  # -0.4f
        0x3f4ccccd  # 0.8f
        -0x41333333  # -0.4f
        0x0
        0x3f4ccccd  # 0.8f
        -0x41333333  # -0.4f
        0x3ecccccd  # 0.4f
        0x3f4ccccd  # 0.8f
        -0x41333333  # -0.4f
        0x3f4ccccd  # 0.8f
        0x3f4ccccd  # 0.8f
        -0x41333333  # -0.4f
        -0x40b33333  # -0.8f
        -0x40b33333  # -0.8f
        0x0
        -0x41333333  # -0.4f
        -0x40b33333  # -0.8f
        0x0
        0x0
        -0x40b33333  # -0.8f
        0x0
        0x3ecccccd  # 0.4f
        -0x40b33333  # -0.8f
        0x0
        0x3f4ccccd  # 0.8f
        -0x40b33333  # -0.8f
        0x0
        -0x40b33333  # -0.8f
        -0x41333333  # -0.4f
        0x0
        -0x41333333  # -0.4f
        -0x41333333  # -0.4f
        0x0
        0x0
        -0x41333333  # -0.4f
        0x0
        0x3ecccccd  # 0.4f
        -0x41333333  # -0.4f
        0x0
        0x3f4ccccd  # 0.8f
        -0x41333333  # -0.4f
        0x0
        -0x40b33333  # -0.8f
        0x0
        0x0
        -0x41333333  # -0.4f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ecccccd  # 0.4f
        0x0
        0x0
        0x3f4ccccd  # 0.8f
        0x0
        0x0
        -0x40b33333  # -0.8f
        0x3ecccccd  # 0.4f
        0x0
        -0x41333333  # -0.4f
        0x3ecccccd  # 0.4f
        0x0
        0x0
        0x3ecccccd  # 0.4f
        0x0
        0x3ecccccd  # 0.4f
        0x3ecccccd  # 0.4f
        0x0
        0x3f4ccccd  # 0.8f
        0x3ecccccd  # 0.4f
        0x0
        -0x40b33333  # -0.8f
        0x3f4ccccd  # 0.8f
        0x0
        -0x41333333  # -0.4f
        0x3f4ccccd  # 0.8f
        0x0
        0x0
        0x3f4ccccd  # 0.8f
        0x0
        0x3ecccccd  # 0.4f
        0x3f4ccccd  # 0.8f
        0x0
        0x3f4ccccd  # 0.8f
        0x3f4ccccd  # 0.8f
        0x0
        -0x40b33333  # -0.8f
        -0x40b33333  # -0.8f
        0x3ecccccd  # 0.4f
        -0x41333333  # -0.4f
        -0x40b33333  # -0.8f
        0x3ecccccd  # 0.4f
        0x0
        -0x40b33333  # -0.8f
        0x3ecccccd  # 0.4f
        0x3ecccccd  # 0.4f
        -0x40b33333  # -0.8f
        0x3ecccccd  # 0.4f
        0x3f4ccccd  # 0.8f
        -0x40b33333  # -0.8f
        0x3ecccccd  # 0.4f
        -0x40b33333  # -0.8f
        -0x41333333  # -0.4f
        0x3ecccccd  # 0.4f
        -0x41333333  # -0.4f
        -0x41333333  # -0.4f
        0x3ecccccd  # 0.4f
        0x0
        -0x41333333  # -0.4f
        0x3ecccccd  # 0.4f
        0x3ecccccd  # 0.4f
        -0x41333333  # -0.4f
        0x3ecccccd  # 0.4f
        0x3f4ccccd  # 0.8f
        -0x41333333  # -0.4f
        0x3ecccccd  # 0.4f
        -0x40b33333  # -0.8f
        0x0
        0x3ecccccd  # 0.4f
        -0x41333333  # -0.4f
        0x0
        0x3ecccccd  # 0.4f
        0x0
        0x0
        0x3ecccccd  # 0.4f
        0x3ecccccd  # 0.4f
        0x0
        0x3ecccccd  # 0.4f
        0x3f4ccccd  # 0.8f
        0x0
        0x3ecccccd  # 0.4f
        -0x40b33333  # -0.8f
        0x3ecccccd  # 0.4f
        0x3ecccccd  # 0.4f
        -0x41333333  # -0.4f
        0x3ecccccd  # 0.4f
        0x3ecccccd  # 0.4f
        0x0
        0x3ecccccd  # 0.4f
        0x3ecccccd  # 0.4f
        0x3ecccccd  # 0.4f
        0x3ecccccd  # 0.4f
        0x3ecccccd  # 0.4f
        0x3f4ccccd  # 0.8f
        0x3ecccccd  # 0.4f
        0x3ecccccd  # 0.4f
        -0x40b33333  # -0.8f
        0x3f4ccccd  # 0.8f
        0x3ecccccd  # 0.4f
        -0x41333333  # -0.4f
        0x3f4ccccd  # 0.8f
        0x3ecccccd  # 0.4f
        0x0
        0x3f4ccccd  # 0.8f
        0x3ecccccd  # 0.4f
        0x3ecccccd  # 0.4f
        0x3f4ccccd  # 0.8f
        0x3ecccccd  # 0.4f
        0x3f4ccccd  # 0.8f
        0x3f4ccccd  # 0.8f
        0x3ecccccd  # 0.4f
        -0x40b33333  # -0.8f
        -0x40b33333  # -0.8f
        0x3f4ccccd  # 0.8f
        -0x41333333  # -0.4f
        -0x40b33333  # -0.8f
        0x3f4ccccd  # 0.8f
        0x0
        -0x40b33333  # -0.8f
        0x3f4ccccd  # 0.8f
        0x3ecccccd  # 0.4f
        -0x40b33333  # -0.8f
        0x3f4ccccd  # 0.8f
        0x3f4ccccd  # 0.8f
        -0x40b33333  # -0.8f
        0x3f4ccccd  # 0.8f
        -0x40b33333  # -0.8f
        -0x41333333  # -0.4f
        0x3f4ccccd  # 0.8f
        -0x41333333  # -0.4f
        -0x41333333  # -0.4f
        0x3f4ccccd  # 0.8f
        0x0
        -0x41333333  # -0.4f
        0x3f4ccccd  # 0.8f
        0x3ecccccd  # 0.4f
        -0x41333333  # -0.4f
        0x3f4ccccd  # 0.8f
        0x3f4ccccd  # 0.8f
        -0x41333333  # -0.4f
        0x3f4ccccd  # 0.8f
        -0x40b33333  # -0.8f
        0x0
        0x3f4ccccd  # 0.8f
        -0x41333333  # -0.4f
        0x0
        0x3f4ccccd  # 0.8f
        0x0
        0x0
        0x3f4ccccd  # 0.8f
        0x3ecccccd  # 0.4f
        0x0
        0x3f4ccccd  # 0.8f
        0x3f4ccccd  # 0.8f
        0x0
        0x3f4ccccd  # 0.8f
        -0x40b33333  # -0.8f
        0x3ecccccd  # 0.4f
        0x3f4ccccd  # 0.8f
        -0x41333333  # -0.4f
        0x3ecccccd  # 0.4f
        0x3f4ccccd  # 0.8f
        0x0
        0x3ecccccd  # 0.4f
        0x3f4ccccd  # 0.8f
        0x3ecccccd  # 0.4f
        0x3ecccccd  # 0.4f
        0x3f4ccccd  # 0.8f
        0x3f4ccccd  # 0.8f
        0x3ecccccd  # 0.4f
        0x3f4ccccd  # 0.8f
        -0x40b33333  # -0.8f
        0x3f4ccccd  # 0.8f
        0x3f4ccccd  # 0.8f
        -0x41333333  # -0.4f
        0x3f4ccccd  # 0.8f
        0x3f4ccccd  # 0.8f
        0x0
        0x3f4ccccd  # 0.8f
        0x3f4ccccd  # 0.8f
        0x3ecccccd  # 0.4f
        0x3f4ccccd  # 0.8f
        0x3f4ccccd  # 0.8f
        0x3f4ccccd  # 0.8f
        0x3f4ccccd  # 0.8f
        0x3f4ccccd  # 0.8f
    .end array-data

    :array_47a
    .array-data 4
        -0x409c71c7
        -0x409c71c7
        -0x409c71c7
        -0x40d55555
        -0x409c71c7
        -0x409c71c7
        -0x411c71c7
        -0x409c71c7
        -0x409c71c7
        -0x419c71c7
        -0x409c71c7
        -0x409c71c7
        0x0
        -0x409c71c7
        -0x409c71c7
        0x3e638e39
        -0x409c71c7
        -0x409c71c7
        0x3ee38e39
        -0x409c71c7
        -0x409c71c7
        0x3f2aaaab
        -0x409c71c7
        -0x409c71c7
        0x3f638e39
        -0x409c71c7
        -0x409c71c7
        -0x409c71c7
        -0x40d55555
        -0x409c71c7
        -0x40d55555
        -0x40d55555
        -0x409c71c7
        -0x411c71c7
        -0x40d55555
        -0x409c71c7
        -0x419c71c7
        -0x40d55555
        -0x409c71c7
        0x0
        -0x40d55555
        -0x409c71c7
        0x3e638e39
        -0x40d55555
        -0x409c71c7
        0x3ee38e39
        -0x40d55555
        -0x409c71c7
        0x3f2aaaab
        -0x40d55555
        -0x409c71c7
        0x3f638e39
        -0x40d55555
        -0x409c71c7
        -0x409c71c7
        -0x411c71c7
        -0x409c71c7
        -0x40d55555
        -0x411c71c7
        -0x409c71c7
        -0x411c71c7
        -0x411c71c7
        -0x409c71c7
        -0x419c71c7
        -0x411c71c7
        -0x409c71c7
        0x0
        -0x411c71c7
        -0x409c71c7
        0x3e638e39
        -0x411c71c7
        -0x409c71c7
        0x3ee38e39
        -0x411c71c7
        -0x409c71c7
        0x3f2aaaab
        -0x411c71c7
        -0x409c71c7
        0x3f638e39
        -0x411c71c7
        -0x409c71c7
        -0x409c71c7
        -0x419c71c7
        -0x409c71c7
        -0x40d55555
        -0x419c71c7
        -0x409c71c7
        -0x411c71c7
        -0x419c71c7
        -0x409c71c7
        -0x419c71c7
        -0x419c71c7
        -0x409c71c7
        0x0
        -0x419c71c7
        -0x409c71c7
        0x3e638e39
        -0x419c71c7
        -0x409c71c7
        0x3ee38e39
        -0x419c71c7
        -0x409c71c7
        0x3f2aaaab
        -0x419c71c7
        -0x409c71c7
        0x3f638e39
        -0x419c71c7
        -0x409c71c7
        -0x409c71c7
        0x0
        -0x409c71c7
        -0x40d55555
        0x0
        -0x409c71c7
        -0x411c71c7
        0x0
        -0x409c71c7
        -0x419c71c7
        0x0
        -0x409c71c7
        0x0
        0x0
        -0x409c71c7
        0x3e638e39
        0x0
        -0x409c71c7
        0x3ee38e39
        0x0
        -0x409c71c7
        0x3f2aaaab
        0x0
        -0x409c71c7
        0x3f638e39
        0x0
        -0x409c71c7
        -0x409c71c7
        0x3e638e39
        -0x409c71c7
        -0x40d55555
        0x3e638e39
        -0x409c71c7
        -0x411c71c7
        0x3e638e39
        -0x409c71c7
        -0x419c71c7
        0x3e638e39
        -0x409c71c7
        0x0
        0x3e638e39
        -0x409c71c7
        0x3e638e39
        0x3e638e39
        -0x409c71c7
        0x3ee38e39
        0x3e638e39
        -0x409c71c7
        0x3f2aaaab
        0x3e638e39
        -0x409c71c7
        0x3f638e39
        0x3e638e39
        -0x409c71c7
        -0x409c71c7
        0x3ee38e39
        -0x409c71c7
        -0x40d55555
        0x3ee38e39
        -0x409c71c7
        -0x411c71c7
        0x3ee38e39
        -0x409c71c7
        -0x419c71c7
        0x3ee38e39
        -0x409c71c7
        0x0
        0x3ee38e39
        -0x409c71c7
        0x3e638e39
        0x3ee38e39
        -0x409c71c7
        0x3ee38e39
        0x3ee38e39
        -0x409c71c7
        0x3f2aaaab
        0x3ee38e39
        -0x409c71c7
        0x3f638e39
        0x3ee38e39
        -0x409c71c7
        -0x409c71c7
        0x3f2aaaab
        -0x409c71c7
        -0x40d55555
        0x3f2aaaab
        -0x409c71c7
        -0x411c71c7
        0x3f2aaaab
        -0x409c71c7
        -0x419c71c7
        0x3f2aaaab
        -0x409c71c7
        0x0
        0x3f2aaaab
        -0x409c71c7
        0x3e638e39
        0x3f2aaaab
        -0x409c71c7
        0x3ee38e39
        0x3f2aaaab
        -0x409c71c7
        0x3f2aaaab
        0x3f2aaaab
        -0x409c71c7
        0x3f638e39
        0x3f2aaaab
        -0x409c71c7
        -0x409c71c7
        0x3f638e39
        -0x409c71c7
        -0x40d55555
        0x3f638e39
        -0x409c71c7
        -0x411c71c7
        0x3f638e39
        -0x409c71c7
        -0x419c71c7
        0x3f638e39
        -0x409c71c7
        0x0
        0x3f638e39
        -0x409c71c7
        0x3e638e39
        0x3f638e39
        -0x409c71c7
        0x3ee38e39
        0x3f638e39
        -0x409c71c7
        0x3f2aaaab
        0x3f638e39
        -0x409c71c7
        0x3f638e39
        0x3f638e39
        -0x409c71c7
        -0x409c71c7
        -0x409c71c7
        -0x40d55555
        -0x40d55555
        -0x409c71c7
        -0x40d55555
        -0x411c71c7
        -0x409c71c7
        -0x40d55555
        -0x419c71c7
        -0x409c71c7
        -0x40d55555
        0x0
        -0x409c71c7
        -0x40d55555
        0x3e638e39
        -0x409c71c7
        -0x40d55555
        0x3ee38e39
        -0x409c71c7
        -0x40d55555
        0x3f2aaaab
        -0x409c71c7
        -0x40d55555
        0x3f638e39
        -0x409c71c7
        -0x40d55555
        -0x409c71c7
        -0x40d55555
        -0x40d55555
        -0x40d55555
        -0x40d55555
        -0x40d55555
        -0x411c71c7
        -0x40d55555
        -0x40d55555
        -0x419c71c7
        -0x40d55555
        -0x40d55555
        0x0
        -0x40d55555
        -0x40d55555
        0x3e638e39
        -0x40d55555
        -0x40d55555
        0x3ee38e39
        -0x40d55555
        -0x40d55555
        0x3f2aaaab
        -0x40d55555
        -0x40d55555
        0x3f638e39
        -0x40d55555
        -0x40d55555
        -0x409c71c7
        -0x411c71c7
        -0x40d55555
        -0x40d55555
        -0x411c71c7
        -0x40d55555
        -0x411c71c7
        -0x411c71c7
        -0x40d55555
        -0x419c71c7
        -0x411c71c7
        -0x40d55555
        0x0
        -0x411c71c7
        -0x40d55555
        0x3e638e39
        -0x411c71c7
        -0x40d55555
        0x3ee38e39
        -0x411c71c7
        -0x40d55555
        0x3f2aaaab
        -0x411c71c7
        -0x40d55555
        0x3f638e39
        -0x411c71c7
        -0x40d55555
        -0x409c71c7
        -0x419c71c7
        -0x40d55555
        -0x40d55555
        -0x419c71c7
        -0x40d55555
        -0x411c71c7
        -0x419c71c7
        -0x40d55555
        -0x419c71c7
        -0x419c71c7
        -0x40d55555
        0x0
        -0x419c71c7
        -0x40d55555
        0x3e638e39
        -0x419c71c7
        -0x40d55555
        0x3ee38e39
        -0x419c71c7
        -0x40d55555
        0x3f2aaaab
        -0x419c71c7
        -0x40d55555
        0x3f638e39
        -0x419c71c7
        -0x40d55555
        -0x409c71c7
        0x0
        -0x40d55555
        -0x40d55555
        0x0
        -0x40d55555
        -0x411c71c7
        0x0
        -0x40d55555
        -0x419c71c7
        0x0
        -0x40d55555
        0x0
        0x0
        -0x40d55555
        0x3e638e39
        0x0
        -0x40d55555
        0x3ee38e39
        0x0
        -0x40d55555
        0x3f2aaaab
        0x0
        -0x40d55555
        0x3f638e39
        0x0
        -0x40d55555
        -0x409c71c7
        0x3e638e39
        -0x40d55555
        -0x40d55555
        0x3e638e39
        -0x40d55555
        -0x411c71c7
        0x3e638e39
        -0x40d55555
        -0x419c71c7
        0x3e638e39
        -0x40d55555
        0x0
        0x3e638e39
        -0x40d55555
        0x3e638e39
        0x3e638e39
        -0x40d55555
        0x3ee38e39
        0x3e638e39
        -0x40d55555
        0x3f2aaaab
        0x3e638e39
        -0x40d55555
        0x3f638e39
        0x3e638e39
        -0x40d55555
        -0x409c71c7
        0x3ee38e39
        -0x40d55555
        -0x40d55555
        0x3ee38e39
        -0x40d55555
        -0x411c71c7
        0x3ee38e39
        -0x40d55555
        -0x419c71c7
        0x3ee38e39
        -0x40d55555
        0x0
        0x3ee38e39
        -0x40d55555
        0x3e638e39
        0x3ee38e39
        -0x40d55555
        0x3ee38e39
        0x3ee38e39
        -0x40d55555
        0x3f2aaaab
        0x3ee38e39
        -0x40d55555
        0x3f638e39
        0x3ee38e39
        -0x40d55555
        -0x409c71c7
        0x3f2aaaab
        -0x40d55555
        -0x40d55555
        0x3f2aaaab
        -0x40d55555
        -0x411c71c7
        0x3f2aaaab
        -0x40d55555
        -0x419c71c7
        0x3f2aaaab
        -0x40d55555
        0x0
        0x3f2aaaab
        -0x40d55555
        0x3e638e39
        0x3f2aaaab
        -0x40d55555
        0x3ee38e39
        0x3f2aaaab
        -0x40d55555
        0x3f2aaaab
        0x3f2aaaab
        -0x40d55555
        0x3f638e39
        0x3f2aaaab
        -0x40d55555
        -0x409c71c7
        0x3f638e39
        -0x40d55555
        -0x40d55555
        0x3f638e39
        -0x40d55555
        -0x411c71c7
        0x3f638e39
        -0x40d55555
        -0x419c71c7
        0x3f638e39
        -0x40d55555
        0x0
        0x3f638e39
        -0x40d55555
        0x3e638e39
        0x3f638e39
        -0x40d55555
        0x3ee38e39
        0x3f638e39
        -0x40d55555
        0x3f2aaaab
        0x3f638e39
        -0x40d55555
        0x3f638e39
        0x3f638e39
        -0x40d55555
        -0x409c71c7
        -0x409c71c7
        -0x411c71c7
        -0x40d55555
        -0x409c71c7
        -0x411c71c7
        -0x411c71c7
        -0x409c71c7
        -0x411c71c7
        -0x419c71c7
        -0x409c71c7
        -0x411c71c7
        0x0
        -0x409c71c7
        -0x411c71c7
        0x3e638e39
        -0x409c71c7
        -0x411c71c7
        0x3ee38e39
        -0x409c71c7
        -0x411c71c7
        0x3f2aaaab
        -0x409c71c7
        -0x411c71c7
        0x3f638e39
        -0x409c71c7
        -0x411c71c7
        -0x409c71c7
        -0x40d55555
        -0x411c71c7
        -0x40d55555
        -0x40d55555
        -0x411c71c7
        -0x411c71c7
        -0x40d55555
        -0x411c71c7
        -0x419c71c7
        -0x40d55555
        -0x411c71c7
        0x0
        -0x40d55555
        -0x411c71c7
        0x3e638e39
        -0x40d55555
        -0x411c71c7
        0x3ee38e39
        -0x40d55555
        -0x411c71c7
        0x3f2aaaab
        -0x40d55555
        -0x411c71c7
        0x3f638e39
        -0x40d55555
        -0x411c71c7
        -0x409c71c7
        -0x411c71c7
        -0x411c71c7
        -0x40d55555
        -0x411c71c7
        -0x411c71c7
        -0x411c71c7
        -0x411c71c7
        -0x411c71c7
        -0x419c71c7
        -0x411c71c7
        -0x411c71c7
        0x0
        -0x411c71c7
        -0x411c71c7
        0x3e638e39
        -0x411c71c7
        -0x411c71c7
        0x3ee38e39
        -0x411c71c7
        -0x411c71c7
        0x3f2aaaab
        -0x411c71c7
        -0x411c71c7
        0x3f638e39
        -0x411c71c7
        -0x411c71c7
        -0x409c71c7
        -0x419c71c7
        -0x411c71c7
        -0x40d55555
        -0x419c71c7
        -0x411c71c7
        -0x411c71c7
        -0x419c71c7
        -0x411c71c7
        -0x419c71c7
        -0x419c71c7
        -0x411c71c7
        0x0
        -0x419c71c7
        -0x411c71c7
        0x3e638e39
        -0x419c71c7
        -0x411c71c7
        0x3ee38e39
        -0x419c71c7
        -0x411c71c7
        0x3f2aaaab
        -0x419c71c7
        -0x411c71c7
        0x3f638e39
        -0x419c71c7
        -0x411c71c7
        -0x409c71c7
        0x0
        -0x411c71c7
        -0x40d55555
        0x0
        -0x411c71c7
        -0x411c71c7
        0x0
        -0x411c71c7
        -0x419c71c7
        0x0
        -0x411c71c7
        0x0
        0x0
        -0x411c71c7
        0x3e638e39
        0x0
        -0x411c71c7
        0x3ee38e39
        0x0
        -0x411c71c7
        0x3f2aaaab
        0x0
        -0x411c71c7
        0x3f638e39
        0x0
        -0x411c71c7
        -0x409c71c7
        0x3e638e39
        -0x411c71c7
        -0x40d55555
        0x3e638e39
        -0x411c71c7
        -0x411c71c7
        0x3e638e39
        -0x411c71c7
        -0x419c71c7
        0x3e638e39
        -0x411c71c7
        0x0
        0x3e638e39
        -0x411c71c7
        0x3e638e39
        0x3e638e39
        -0x411c71c7
        0x3ee38e39
        0x3e638e39
        -0x411c71c7
        0x3f2aaaab
        0x3e638e39
        -0x411c71c7
        0x3f638e39
        0x3e638e39
        -0x411c71c7
        -0x409c71c7
        0x3ee38e39
        -0x411c71c7
        -0x40d55555
        0x3ee38e39
        -0x411c71c7
        -0x411c71c7
        0x3ee38e39
        -0x411c71c7
        -0x419c71c7
        0x3ee38e39
        -0x411c71c7
        0x0
        0x3ee38e39
        -0x411c71c7
        0x3e638e39
        0x3ee38e39
        -0x411c71c7
        0x3ee38e39
        0x3ee38e39
        -0x411c71c7
        0x3f2aaaab
        0x3ee38e39
        -0x411c71c7
        0x3f638e39
        0x3ee38e39
        -0x411c71c7
        -0x409c71c7
        0x3f2aaaab
        -0x411c71c7
        -0x40d55555
        0x3f2aaaab
        -0x411c71c7
        -0x411c71c7
        0x3f2aaaab
        -0x411c71c7
        -0x419c71c7
        0x3f2aaaab
        -0x411c71c7
        0x0
        0x3f2aaaab
        -0x411c71c7
        0x3e638e39
        0x3f2aaaab
        -0x411c71c7
        0x3ee38e39
        0x3f2aaaab
        -0x411c71c7
        0x3f2aaaab
        0x3f2aaaab
        -0x411c71c7
        0x3f638e39
        0x3f2aaaab
        -0x411c71c7
        -0x409c71c7
        0x3f638e39
        -0x411c71c7
        -0x40d55555
        0x3f638e39
        -0x411c71c7
        -0x411c71c7
        0x3f638e39
        -0x411c71c7
        -0x419c71c7
        0x3f638e39
        -0x411c71c7
        0x0
        0x3f638e39
        -0x411c71c7
        0x3e638e39
        0x3f638e39
        -0x411c71c7
        0x3ee38e39
        0x3f638e39
        -0x411c71c7
        0x3f2aaaab
        0x3f638e39
        -0x411c71c7
        0x3f638e39
        0x3f638e39
        -0x411c71c7
        -0x409c71c7
        -0x409c71c7
        -0x419c71c7
        -0x40d55555
        -0x409c71c7
        -0x419c71c7
        -0x411c71c7
        -0x409c71c7
        -0x419c71c7
        -0x419c71c7
        -0x409c71c7
        -0x419c71c7
        0x0
        -0x409c71c7
        -0x419c71c7
        0x3e638e39
        -0x409c71c7
        -0x419c71c7
        0x3ee38e39
        -0x409c71c7
        -0x419c71c7
        0x3f2aaaab
        -0x409c71c7
        -0x419c71c7
        0x3f638e39
        -0x409c71c7
        -0x419c71c7
        -0x409c71c7
        -0x40d55555
        -0x419c71c7
        -0x40d55555
        -0x40d55555
        -0x419c71c7
        -0x411c71c7
        -0x40d55555
        -0x419c71c7
        -0x419c71c7
        -0x40d55555
        -0x419c71c7
        0x0
        -0x40d55555
        -0x419c71c7
        0x3e638e39
        -0x40d55555
        -0x419c71c7
        0x3ee38e39
        -0x40d55555
        -0x419c71c7
        0x3f2aaaab
        -0x40d55555
        -0x419c71c7
        0x3f638e39
        -0x40d55555
        -0x419c71c7
        -0x409c71c7
        -0x411c71c7
        -0x419c71c7
        -0x40d55555
        -0x411c71c7
        -0x419c71c7
        -0x411c71c7
        -0x411c71c7
        -0x419c71c7
        -0x419c71c7
        -0x411c71c7
        -0x419c71c7
        0x0
        -0x411c71c7
        -0x419c71c7
        0x3e638e39
        -0x411c71c7
        -0x419c71c7
        0x3ee38e39
        -0x411c71c7
        -0x419c71c7
        0x3f2aaaab
        -0x411c71c7
        -0x419c71c7
        0x3f638e39
        -0x411c71c7
        -0x419c71c7
        -0x409c71c7
        -0x419c71c7
        -0x419c71c7
        -0x40d55555
        -0x419c71c7
        -0x419c71c7
        -0x411c71c7
        -0x419c71c7
        -0x419c71c7
        -0x419c71c7
        -0x419c71c7
        -0x419c71c7
        0x0
        -0x419c71c7
        -0x419c71c7
        0x3e638e39
        -0x419c71c7
        -0x419c71c7
        0x3ee38e39
        -0x419c71c7
        -0x419c71c7
        0x3f2aaaab
        -0x419c71c7
        -0x419c71c7
        0x3f638e39
        -0x419c71c7
        -0x419c71c7
        -0x409c71c7
        0x0
        -0x419c71c7
        -0x40d55555
        0x0
        -0x419c71c7
        -0x411c71c7
        0x0
        -0x419c71c7
        -0x419c71c7
        0x0
        -0x419c71c7
        0x0
        0x0
        -0x419c71c7
        0x3e638e39
        0x0
        -0x419c71c7
        0x3ee38e39
        0x0
        -0x419c71c7
        0x3f2aaaab
        0x0
        -0x419c71c7
        0x3f638e39
        0x0
        -0x419c71c7
        -0x409c71c7
        0x3e638e39
        -0x419c71c7
        -0x40d55555
        0x3e638e39
        -0x419c71c7
        -0x411c71c7
        0x3e638e39
        -0x419c71c7
        -0x419c71c7
        0x3e638e39
        -0x419c71c7
        0x0
        0x3e638e39
        -0x419c71c7
        0x3e638e39
        0x3e638e39
        -0x419c71c7
        0x3ee38e39
        0x3e638e39
        -0x419c71c7
        0x3f2aaaab
        0x3e638e39
        -0x419c71c7
        0x3f638e39
        0x3e638e39
        -0x419c71c7
        -0x409c71c7
        0x3ee38e39
        -0x419c71c7
        -0x40d55555
        0x3ee38e39
        -0x419c71c7
        -0x411c71c7
        0x3ee38e39
        -0x419c71c7
        -0x419c71c7
        0x3ee38e39
        -0x419c71c7
        0x0
        0x3ee38e39
        -0x419c71c7
        0x3e638e39
        0x3ee38e39
        -0x419c71c7
        0x3ee38e39
        0x3ee38e39
        -0x419c71c7
        0x3f2aaaab
        0x3ee38e39
        -0x419c71c7
        0x3f638e39
        0x3ee38e39
        -0x419c71c7
        -0x409c71c7
        0x3f2aaaab
        -0x419c71c7
        -0x40d55555
        0x3f2aaaab
        -0x419c71c7
        -0x411c71c7
        0x3f2aaaab
        -0x419c71c7
        -0x419c71c7
        0x3f2aaaab
        -0x419c71c7
        0x0
        0x3f2aaaab
        -0x419c71c7
        0x3e638e39
        0x3f2aaaab
        -0x419c71c7
        0x3ee38e39
        0x3f2aaaab
        -0x419c71c7
        0x3f2aaaab
        0x3f2aaaab
        -0x419c71c7
        0x3f638e39
        0x3f2aaaab
        -0x419c71c7
        -0x409c71c7
        0x3f638e39
        -0x419c71c7
        -0x40d55555
        0x3f638e39
        -0x419c71c7
        -0x411c71c7
        0x3f638e39
        -0x419c71c7
        -0x419c71c7
        0x3f638e39
        -0x419c71c7
        0x0
        0x3f638e39
        -0x419c71c7
        0x3e638e39
        0x3f638e39
        -0x419c71c7
        0x3ee38e39
        0x3f638e39
        -0x419c71c7
        0x3f2aaaab
        0x3f638e39
        -0x419c71c7
        0x3f638e39
        0x3f638e39
        -0x419c71c7
        -0x409c71c7
        -0x409c71c7
        0x0
        -0x40d55555
        -0x409c71c7
        0x0
        -0x411c71c7
        -0x409c71c7
        0x0
        -0x419c71c7
        -0x409c71c7
        0x0
        0x0
        -0x409c71c7
        0x0
        0x3e638e39
        -0x409c71c7
        0x0
        0x3ee38e39
        -0x409c71c7
        0x0
        0x3f2aaaab
        -0x409c71c7
        0x0
        0x3f638e39
        -0x409c71c7
        0x0
        -0x409c71c7
        -0x40d55555
        0x0
        -0x40d55555
        -0x40d55555
        0x0
        -0x411c71c7
        -0x40d55555
        0x0
        -0x419c71c7
        -0x40d55555
        0x0
        0x0
        -0x40d55555
        0x0
        0x3e638e39
        -0x40d55555
        0x0
        0x3ee38e39
        -0x40d55555
        0x0
        0x3f2aaaab
        -0x40d55555
        0x0
        0x3f638e39
        -0x40d55555
        0x0
        -0x409c71c7
        -0x411c71c7
        0x0
        -0x40d55555
        -0x411c71c7
        0x0
        -0x411c71c7
        -0x411c71c7
        0x0
        -0x419c71c7
        -0x411c71c7
        0x0
        0x0
        -0x411c71c7
        0x0
        0x3e638e39
        -0x411c71c7
        0x0
        0x3ee38e39
        -0x411c71c7
        0x0
        0x3f2aaaab
        -0x411c71c7
        0x0
        0x3f638e39
        -0x411c71c7
        0x0
        -0x409c71c7
        -0x419c71c7
        0x0
        -0x40d55555
        -0x419c71c7
        0x0
        -0x411c71c7
        -0x419c71c7
        0x0
        -0x419c71c7
        -0x419c71c7
        0x0
        0x0
        -0x419c71c7
        0x0
        0x3e638e39
        -0x419c71c7
        0x0
        0x3ee38e39
        -0x419c71c7
        0x0
        0x3f2aaaab
        -0x419c71c7
        0x0
        0x3f638e39
        -0x419c71c7
        0x0
        -0x409c71c7
        0x0
        0x0
        -0x40d55555
        0x0
        0x0
        -0x411c71c7
        0x0
        0x0
        -0x419c71c7
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3e638e39
        0x0
        0x0
        0x3ee38e39
        0x0
        0x0
        0x3f2aaaab
        0x0
        0x0
        0x3f638e39
        0x0
        0x0
        -0x409c71c7
        0x3e638e39
        0x0
        -0x40d55555
        0x3e638e39
        0x0
        -0x411c71c7
        0x3e638e39
        0x0
        -0x419c71c7
        0x3e638e39
        0x0
        0x0
        0x3e638e39
        0x0
        0x3e638e39
        0x3e638e39
        0x0
        0x3ee38e39
        0x3e638e39
        0x0
        0x3f2aaaab
        0x3e638e39
        0x0
        0x3f638e39
        0x3e638e39
        0x0
        -0x409c71c7
        0x3ee38e39
        0x0
        -0x40d55555
        0x3ee38e39
        0x0
        -0x411c71c7
        0x3ee38e39
        0x0
        -0x419c71c7
        0x3ee38e39
        0x0
        0x0
        0x3ee38e39
        0x0
        0x3e638e39
        0x3ee38e39
        0x0
        0x3ee38e39
        0x3ee38e39
        0x0
        0x3f2aaaab
        0x3ee38e39
        0x0
        0x3f638e39
        0x3ee38e39
        0x0
        -0x409c71c7
        0x3f2aaaab
        0x0
        -0x40d55555
        0x3f2aaaab
        0x0
        -0x411c71c7
        0x3f2aaaab
        0x0
        -0x419c71c7
        0x3f2aaaab
        0x0
        0x0
        0x3f2aaaab
        0x0
        0x3e638e39
        0x3f2aaaab
        0x0
        0x3ee38e39
        0x3f2aaaab
        0x0
        0x3f2aaaab
        0x3f2aaaab
        0x0
        0x3f638e39
        0x3f2aaaab
        0x0
        -0x409c71c7
        0x3f638e39
        0x0
        -0x40d55555
        0x3f638e39
        0x0
        -0x411c71c7
        0x3f638e39
        0x0
        -0x419c71c7
        0x3f638e39
        0x0
        0x0
        0x3f638e39
        0x0
        0x3e638e39
        0x3f638e39
        0x0
        0x3ee38e39
        0x3f638e39
        0x0
        0x3f2aaaab
        0x3f638e39
        0x0
        0x3f638e39
        0x3f638e39
        0x0
        -0x409c71c7
        -0x409c71c7
        0x3e638e39
        -0x40d55555
        -0x409c71c7
        0x3e638e39
        -0x411c71c7
        -0x409c71c7
        0x3e638e39
        -0x419c71c7
        -0x409c71c7
        0x3e638e39
        0x0
        -0x409c71c7
        0x3e638e39
        0x3e638e39
        -0x409c71c7
        0x3e638e39
        0x3ee38e39
        -0x409c71c7
        0x3e638e39
        0x3f2aaaab
        -0x409c71c7
        0x3e638e39
        0x3f638e39
        -0x409c71c7
        0x3e638e39
        -0x409c71c7
        -0x40d55555
        0x3e638e39
        -0x40d55555
        -0x40d55555
        0x3e638e39
        -0x411c71c7
        -0x40d55555
        0x3e638e39
        -0x419c71c7
        -0x40d55555
        0x3e638e39
        0x0
        -0x40d55555
        0x3e638e39
        0x3e638e39
        -0x40d55555
        0x3e638e39
        0x3ee38e39
        -0x40d55555
        0x3e638e39
        0x3f2aaaab
        -0x40d55555
        0x3e638e39
        0x3f638e39
        -0x40d55555
        0x3e638e39
        -0x409c71c7
        -0x411c71c7
        0x3e638e39
        -0x40d55555
        -0x411c71c7
        0x3e638e39
        -0x411c71c7
        -0x411c71c7
        0x3e638e39
        -0x419c71c7
        -0x411c71c7
        0x3e638e39
        0x0
        -0x411c71c7
        0x3e638e39
        0x3e638e39
        -0x411c71c7
        0x3e638e39
        0x3ee38e39
        -0x411c71c7
        0x3e638e39
        0x3f2aaaab
        -0x411c71c7
        0x3e638e39
        0x3f638e39
        -0x411c71c7
        0x3e638e39
        -0x409c71c7
        -0x419c71c7
        0x3e638e39
        -0x40d55555
        -0x419c71c7
        0x3e638e39
        -0x411c71c7
        -0x419c71c7
        0x3e638e39
        -0x419c71c7
        -0x419c71c7
        0x3e638e39
        0x0
        -0x419c71c7
        0x3e638e39
        0x3e638e39
        -0x419c71c7
        0x3e638e39
        0x3ee38e39
        -0x419c71c7
        0x3e638e39
        0x3f2aaaab
        -0x419c71c7
        0x3e638e39
        0x3f638e39
        -0x419c71c7
        0x3e638e39
        -0x409c71c7
        0x0
        0x3e638e39
        -0x40d55555
        0x0
        0x3e638e39
        -0x411c71c7
        0x0
        0x3e638e39
        -0x419c71c7
        0x0
        0x3e638e39
        0x0
        0x0
        0x3e638e39
        0x3e638e39
        0x0
        0x3e638e39
        0x3ee38e39
        0x0
        0x3e638e39
        0x3f2aaaab
        0x0
        0x3e638e39
        0x3f638e39
        0x0
        0x3e638e39
        -0x409c71c7
        0x3e638e39
        0x3e638e39
        -0x40d55555
        0x3e638e39
        0x3e638e39
        -0x411c71c7
        0x3e638e39
        0x3e638e39
        -0x419c71c7
        0x3e638e39
        0x3e638e39
        0x0
        0x3e638e39
        0x3e638e39
        0x3e638e39
        0x3e638e39
        0x3e638e39
        0x3ee38e39
        0x3e638e39
        0x3e638e39
        0x3f2aaaab
        0x3e638e39
        0x3e638e39
        0x3f638e39
        0x3e638e39
        0x3e638e39
        -0x409c71c7
        0x3ee38e39
        0x3e638e39
        -0x40d55555
        0x3ee38e39
        0x3e638e39
        -0x411c71c7
        0x3ee38e39
        0x3e638e39
        -0x419c71c7
        0x3ee38e39
        0x3e638e39
        0x0
        0x3ee38e39
        0x3e638e39
        0x3e638e39
        0x3ee38e39
        0x3e638e39
        0x3ee38e39
        0x3ee38e39
        0x3e638e39
        0x3f2aaaab
        0x3ee38e39
        0x3e638e39
        0x3f638e39
        0x3ee38e39
        0x3e638e39
        -0x409c71c7
        0x3f2aaaab
        0x3e638e39
        -0x40d55555
        0x3f2aaaab
        0x3e638e39
        -0x411c71c7
        0x3f2aaaab
        0x3e638e39
        -0x419c71c7
        0x3f2aaaab
        0x3e638e39
        0x0
        0x3f2aaaab
        0x3e638e39
        0x3e638e39
        0x3f2aaaab
        0x3e638e39
        0x3ee38e39
        0x3f2aaaab
        0x3e638e39
        0x3f2aaaab
        0x3f2aaaab
        0x3e638e39
        0x3f638e39
        0x3f2aaaab
        0x3e638e39
        -0x409c71c7
        0x3f638e39
        0x3e638e39
        -0x40d55555
        0x3f638e39
        0x3e638e39
        -0x411c71c7
        0x3f638e39
        0x3e638e39
        -0x419c71c7
        0x3f638e39
        0x3e638e39
        0x0
        0x3f638e39
        0x3e638e39
        0x3e638e39
        0x3f638e39
        0x3e638e39
        0x3ee38e39
        0x3f638e39
        0x3e638e39
        0x3f2aaaab
        0x3f638e39
        0x3e638e39
        0x3f638e39
        0x3f638e39
        0x3e638e39
        -0x409c71c7
        -0x409c71c7
        0x3ee38e39
        -0x40d55555
        -0x409c71c7
        0x3ee38e39
        -0x411c71c7
        -0x409c71c7
        0x3ee38e39
        -0x419c71c7
        -0x409c71c7
        0x3ee38e39
        0x0
        -0x409c71c7
        0x3ee38e39
        0x3e638e39
        -0x409c71c7
        0x3ee38e39
        0x3ee38e39
        -0x409c71c7
        0x3ee38e39
        0x3f2aaaab
        -0x409c71c7
        0x3ee38e39
        0x3f638e39
        -0x409c71c7
        0x3ee38e39
        -0x409c71c7
        -0x40d55555
        0x3ee38e39
        -0x40d55555
        -0x40d55555
        0x3ee38e39
        -0x411c71c7
        -0x40d55555
        0x3ee38e39
        -0x419c71c7
        -0x40d55555
        0x3ee38e39
        0x0
        -0x40d55555
        0x3ee38e39
        0x3e638e39
        -0x40d55555
        0x3ee38e39
        0x3ee38e39
        -0x40d55555
        0x3ee38e39
        0x3f2aaaab
        -0x40d55555
        0x3ee38e39
        0x3f638e39
        -0x40d55555
        0x3ee38e39
        -0x409c71c7
        -0x411c71c7
        0x3ee38e39
        -0x40d55555
        -0x411c71c7
        0x3ee38e39
        -0x411c71c7
        -0x411c71c7
        0x3ee38e39
        -0x419c71c7
        -0x411c71c7
        0x3ee38e39
        0x0
        -0x411c71c7
        0x3ee38e39
        0x3e638e39
        -0x411c71c7
        0x3ee38e39
        0x3ee38e39
        -0x411c71c7
        0x3ee38e39
        0x3f2aaaab
        -0x411c71c7
        0x3ee38e39
        0x3f638e39
        -0x411c71c7
        0x3ee38e39
        -0x409c71c7
        -0x419c71c7
        0x3ee38e39
        -0x40d55555
        -0x419c71c7
        0x3ee38e39
        -0x411c71c7
        -0x419c71c7
        0x3ee38e39
        -0x419c71c7
        -0x419c71c7
        0x3ee38e39
        0x0
        -0x419c71c7
        0x3ee38e39
        0x3e638e39
        -0x419c71c7
        0x3ee38e39
        0x3ee38e39
        -0x419c71c7
        0x3ee38e39
        0x3f2aaaab
        -0x419c71c7
        0x3ee38e39
        0x3f638e39
        -0x419c71c7
        0x3ee38e39
        -0x409c71c7
        0x0
        0x3ee38e39
        -0x40d55555
        0x0
        0x3ee38e39
        -0x411c71c7
        0x0
        0x3ee38e39
        -0x419c71c7
        0x0
        0x3ee38e39
        0x0
        0x0
        0x3ee38e39
        0x3e638e39
        0x0
        0x3ee38e39
        0x3ee38e39
        0x0
        0x3ee38e39
        0x3f2aaaab
        0x0
        0x3ee38e39
        0x3f638e39
        0x0
        0x3ee38e39
        -0x409c71c7
        0x3e638e39
        0x3ee38e39
        -0x40d55555
        0x3e638e39
        0x3ee38e39
        -0x411c71c7
        0x3e638e39
        0x3ee38e39
        -0x419c71c7
        0x3e638e39
        0x3ee38e39
        0x0
        0x3e638e39
        0x3ee38e39
        0x3e638e39
        0x3e638e39
        0x3ee38e39
        0x3ee38e39
        0x3e638e39
        0x3ee38e39
        0x3f2aaaab
        0x3e638e39
        0x3ee38e39
        0x3f638e39
        0x3e638e39
        0x3ee38e39
        -0x409c71c7
        0x3ee38e39
        0x3ee38e39
        -0x40d55555
        0x3ee38e39
        0x3ee38e39
        -0x411c71c7
        0x3ee38e39
        0x3ee38e39
        -0x419c71c7
        0x3ee38e39
        0x3ee38e39
        0x0
        0x3ee38e39
        0x3ee38e39
        0x3e638e39
        0x3ee38e39
        0x3ee38e39
        0x3ee38e39
        0x3ee38e39
        0x3ee38e39
        0x3f2aaaab
        0x3ee38e39
        0x3ee38e39
        0x3f638e39
        0x3ee38e39
        0x3ee38e39
        -0x409c71c7
        0x3f2aaaab
        0x3ee38e39
        -0x40d55555
        0x3f2aaaab
        0x3ee38e39
        -0x411c71c7
        0x3f2aaaab
        0x3ee38e39
        -0x419c71c7
        0x3f2aaaab
        0x3ee38e39
        0x0
        0x3f2aaaab
        0x3ee38e39
        0x3e638e39
        0x3f2aaaab
        0x3ee38e39
        0x3ee38e39
        0x3f2aaaab
        0x3ee38e39
        0x3f2aaaab
        0x3f2aaaab
        0x3ee38e39
        0x3f638e39
        0x3f2aaaab
        0x3ee38e39
        -0x409c71c7
        0x3f638e39
        0x3ee38e39
        -0x40d55555
        0x3f638e39
        0x3ee38e39
        -0x411c71c7
        0x3f638e39
        0x3ee38e39
        -0x419c71c7
        0x3f638e39
        0x3ee38e39
        0x0
        0x3f638e39
        0x3ee38e39
        0x3e638e39
        0x3f638e39
        0x3ee38e39
        0x3ee38e39
        0x3f638e39
        0x3ee38e39
        0x3f2aaaab
        0x3f638e39
        0x3ee38e39
        0x3f638e39
        0x3f638e39
        0x3ee38e39
        -0x409c71c7
        -0x409c71c7
        0x3f2aaaab
        -0x40d55555
        -0x409c71c7
        0x3f2aaaab
        -0x411c71c7
        -0x409c71c7
        0x3f2aaaab
        -0x419c71c7
        -0x409c71c7
        0x3f2aaaab
        0x0
        -0x409c71c7
        0x3f2aaaab
        0x3e638e39
        -0x409c71c7
        0x3f2aaaab
        0x3ee38e39
        -0x409c71c7
        0x3f2aaaab
        0x3f2aaaab
        -0x409c71c7
        0x3f2aaaab
        0x3f638e39
        -0x409c71c7
        0x3f2aaaab
        -0x409c71c7
        -0x40d55555
        0x3f2aaaab
        -0x40d55555
        -0x40d55555
        0x3f2aaaab
        -0x411c71c7
        -0x40d55555
        0x3f2aaaab
        -0x419c71c7
        -0x40d55555
        0x3f2aaaab
        0x0
        -0x40d55555
        0x3f2aaaab
        0x3e638e39
        -0x40d55555
        0x3f2aaaab
        0x3ee38e39
        -0x40d55555
        0x3f2aaaab
        0x3f2aaaab
        -0x40d55555
        0x3f2aaaab
        0x3f638e39
        -0x40d55555
        0x3f2aaaab
        -0x409c71c7
        -0x411c71c7
        0x3f2aaaab
        -0x40d55555
        -0x411c71c7
        0x3f2aaaab
        -0x411c71c7
        -0x411c71c7
        0x3f2aaaab
        -0x419c71c7
        -0x411c71c7
        0x3f2aaaab
        0x0
        -0x411c71c7
        0x3f2aaaab
        0x3e638e39
        -0x411c71c7
        0x3f2aaaab
        0x3ee38e39
        -0x411c71c7
        0x3f2aaaab
        0x3f2aaaab
        -0x411c71c7
        0x3f2aaaab
        0x3f638e39
        -0x411c71c7
        0x3f2aaaab
        -0x409c71c7
        -0x419c71c7
        0x3f2aaaab
        -0x40d55555
        -0x419c71c7
        0x3f2aaaab
        -0x411c71c7
        -0x419c71c7
        0x3f2aaaab
        -0x419c71c7
        -0x419c71c7
        0x3f2aaaab
        0x0
        -0x419c71c7
        0x3f2aaaab
        0x3e638e39
        -0x419c71c7
        0x3f2aaaab
        0x3ee38e39
        -0x419c71c7
        0x3f2aaaab
        0x3f2aaaab
        -0x419c71c7
        0x3f2aaaab
        0x3f638e39
        -0x419c71c7
        0x3f2aaaab
        -0x409c71c7
        0x0
        0x3f2aaaab
        -0x40d55555
        0x0
        0x3f2aaaab
        -0x411c71c7
        0x0
        0x3f2aaaab
        -0x419c71c7
        0x0
        0x3f2aaaab
        0x0
        0x0
        0x3f2aaaab
        0x3e638e39
        0x0
        0x3f2aaaab
        0x3ee38e39
        0x0
        0x3f2aaaab
        0x3f2aaaab
        0x0
        0x3f2aaaab
        0x3f638e39
        0x0
        0x3f2aaaab
        -0x409c71c7
        0x3e638e39
        0x3f2aaaab
        -0x40d55555
        0x3e638e39
        0x3f2aaaab
        -0x411c71c7
        0x3e638e39
        0x3f2aaaab
        -0x419c71c7
        0x3e638e39
        0x3f2aaaab
        0x0
        0x3e638e39
        0x3f2aaaab
        0x3e638e39
        0x3e638e39
        0x3f2aaaab
        0x3ee38e39
        0x3e638e39
        0x3f2aaaab
        0x3f2aaaab
        0x3e638e39
        0x3f2aaaab
        0x3f638e39
        0x3e638e39
        0x3f2aaaab
        -0x409c71c7
        0x3ee38e39
        0x3f2aaaab
        -0x40d55555
        0x3ee38e39
        0x3f2aaaab
        -0x411c71c7
        0x3ee38e39
        0x3f2aaaab
        -0x419c71c7
        0x3ee38e39
        0x3f2aaaab
        0x0
        0x3ee38e39
        0x3f2aaaab
        0x3e638e39
        0x3ee38e39
        0x3f2aaaab
        0x3ee38e39
        0x3ee38e39
        0x3f2aaaab
        0x3f2aaaab
        0x3ee38e39
        0x3f2aaaab
        0x3f638e39
        0x3ee38e39
        0x3f2aaaab
        -0x409c71c7
        0x3f2aaaab
        0x3f2aaaab
        -0x40d55555
        0x3f2aaaab
        0x3f2aaaab
        -0x411c71c7
        0x3f2aaaab
        0x3f2aaaab
        -0x419c71c7
        0x3f2aaaab
        0x3f2aaaab
        0x0
        0x3f2aaaab
        0x3f2aaaab
        0x3e638e39
        0x3f2aaaab
        0x3f2aaaab
        0x3ee38e39
        0x3f2aaaab
        0x3f2aaaab
        0x3f2aaaab
        0x3f2aaaab
        0x3f2aaaab
        0x3f638e39
        0x3f2aaaab
        0x3f2aaaab
        -0x409c71c7
        0x3f638e39
        0x3f2aaaab
        -0x40d55555
        0x3f638e39
        0x3f2aaaab
        -0x411c71c7
        0x3f638e39
        0x3f2aaaab
        -0x419c71c7
        0x3f638e39
        0x3f2aaaab
        0x0
        0x3f638e39
        0x3f2aaaab
        0x3e638e39
        0x3f638e39
        0x3f2aaaab
        0x3ee38e39
        0x3f638e39
        0x3f2aaaab
        0x3f2aaaab
        0x3f638e39
        0x3f2aaaab
        0x3f638e39
        0x3f638e39
        0x3f2aaaab
        -0x409c71c7
        -0x409c71c7
        0x3f638e39
        -0x40d55555
        -0x409c71c7
        0x3f638e39
        -0x411c71c7
        -0x409c71c7
        0x3f638e39
        -0x419c71c7
        -0x409c71c7
        0x3f638e39
        0x0
        -0x409c71c7
        0x3f638e39
        0x3e638e39
        -0x409c71c7
        0x3f638e39
        0x3ee38e39
        -0x409c71c7
        0x3f638e39
        0x3f2aaaab
        -0x409c71c7
        0x3f638e39
        0x3f638e39
        -0x409c71c7
        0x3f638e39
        -0x409c71c7
        -0x40d55555
        0x3f638e39
        -0x40d55555
        -0x40d55555
        0x3f638e39
        -0x411c71c7
        -0x40d55555
        0x3f638e39
        -0x419c71c7
        -0x40d55555
        0x3f638e39
        0x0
        -0x40d55555
        0x3f638e39
        0x3e638e39
        -0x40d55555
        0x3f638e39
        0x3ee38e39
        -0x40d55555
        0x3f638e39
        0x3f2aaaab
        -0x40d55555
        0x3f638e39
        0x3f638e39
        -0x40d55555
        0x3f638e39
        -0x409c71c7
        -0x411c71c7
        0x3f638e39
        -0x40d55555
        -0x411c71c7
        0x3f638e39
        -0x411c71c7
        -0x411c71c7
        0x3f638e39
        -0x419c71c7
        -0x411c71c7
        0x3f638e39
        0x0
        -0x411c71c7
        0x3f638e39
        0x3e638e39
        -0x411c71c7
        0x3f638e39
        0x3ee38e39
        -0x411c71c7
        0x3f638e39
        0x3f2aaaab
        -0x411c71c7
        0x3f638e39
        0x3f638e39
        -0x411c71c7
        0x3f638e39
        -0x409c71c7
        -0x419c71c7
        0x3f638e39
        -0x40d55555
        -0x419c71c7
        0x3f638e39
        -0x411c71c7
        -0x419c71c7
        0x3f638e39
        -0x419c71c7
        -0x419c71c7
        0x3f638e39
        0x0
        -0x419c71c7
        0x3f638e39
        0x3e638e39
        -0x419c71c7
        0x3f638e39
        0x3ee38e39
        -0x419c71c7
        0x3f638e39
        0x3f2aaaab
        -0x419c71c7
        0x3f638e39
        0x3f638e39
        -0x419c71c7
        0x3f638e39
        -0x409c71c7
        0x0
        0x3f638e39
        -0x40d55555
        0x0
        0x3f638e39
        -0x411c71c7
        0x0
        0x3f638e39
        -0x419c71c7
        0x0
        0x3f638e39
        0x0
        0x0
        0x3f638e39
        0x3e638e39
        0x0
        0x3f638e39
        0x3ee38e39
        0x0
        0x3f638e39
        0x3f2aaaab
        0x0
        0x3f638e39
        0x3f638e39
        0x0
        0x3f638e39
        -0x409c71c7
        0x3e638e39
        0x3f638e39
        -0x40d55555
        0x3e638e39
        0x3f638e39
        -0x411c71c7
        0x3e638e39
        0x3f638e39
        -0x419c71c7
        0x3e638e39
        0x3f638e39
        0x0
        0x3e638e39
        0x3f638e39
        0x3e638e39
        0x3e638e39
        0x3f638e39
        0x3ee38e39
        0x3e638e39
        0x3f638e39
        0x3f2aaaab
        0x3e638e39
        0x3f638e39
        0x3f638e39
        0x3e638e39
        0x3f638e39
        -0x409c71c7
        0x3ee38e39
        0x3f638e39
        -0x40d55555
        0x3ee38e39
        0x3f638e39
        -0x411c71c7
        0x3ee38e39
        0x3f638e39
        -0x419c71c7
        0x3ee38e39
        0x3f638e39
        0x0
        0x3ee38e39
        0x3f638e39
        0x3e638e39
        0x3ee38e39
        0x3f638e39
        0x3ee38e39
        0x3ee38e39
        0x3f638e39
        0x3f2aaaab
        0x3ee38e39
        0x3f638e39
        0x3f638e39
        0x3ee38e39
        0x3f638e39
        -0x409c71c7
        0x3f2aaaab
        0x3f638e39
        -0x40d55555
        0x3f2aaaab
        0x3f638e39
        -0x411c71c7
        0x3f2aaaab
        0x3f638e39
        -0x419c71c7
        0x3f2aaaab
        0x3f638e39
        0x0
        0x3f2aaaab
        0x3f638e39
        0x3e638e39
        0x3f2aaaab
        0x3f638e39
        0x3ee38e39
        0x3f2aaaab
        0x3f638e39
        0x3f2aaaab
        0x3f2aaaab
        0x3f638e39
        0x3f638e39
        0x3f2aaaab
        0x3f638e39
        -0x409c71c7
        0x3f638e39
        0x3f638e39
        -0x40d55555
        0x3f638e39
        0x3f638e39
        -0x411c71c7
        0x3f638e39
        0x3f638e39
        -0x419c71c7
        0x3f638e39
        0x3f638e39
        0x0
        0x3f638e39
        0x3f638e39
        0x3e638e39
        0x3f638e39
        0x3f638e39
        0x3ee38e39
        0x3f638e39
        0x3f638e39
        0x3f2aaaab
        0x3f638e39
        0x3f638e39
        0x3f638e39
        0x3f638e39
        0x3f638e39
    .end array-data

    :array_1594
    .array-data 4
        0x0
        0x5
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_15b8
    .array-data 4
        0x0
        0x3f000000  # 0.5f
        0x3e800000  # 0.25f
        0x3e000000  # 0.125f
        0x3d800000  # 0.0625f
        0x3d000000  # 0.03125f
        0x3c800000  # 0.015625f
        0x3c000000  # 0.0078125f
        0x3b800000  # 0.00390625f
        0x3b000000  # 0.001953125f
        0x3a800000  # 9.765625E-4f
        0x3a000000
        0x39800000
        0x39000000
        0x38800000
        0x38000000
    .end array-data

    :array_15dc
    .array-data 4
        0x0
        0x3faaaaab
        0x3f924925
        0x3f888889
        0x3f842108
        0x3f820821
        0x3f810204
        0x3f808081
        0x3f804020
        0x3f802008  # 1.0009775f
        0x3f801002  # 1.0004885f
        0x3f800801  # 1.0002443f
        0x3f800400  # 1.0001221f
        0x3f800200  # 1.000061f
        0x3f800100  # 1.0000305f
        0x3f800080  # 1.0000153f
    .end array-data

    :array_1600
    .array-data 4
        0x0
        0x3f000000  # 0.5f
        0x3e800000  # 0.25f
        0x3e000000  # 0.125f
        0x3d800000  # 0.0625f
        0x3d000000  # 0.03125f
        0x3c800000  # 0.015625f
        0x3c000000  # 0.0078125f
        0x3b800000  # 0.00390625f
        0x3b000000  # 0.001953125f
        0x3a800000  # 9.765625E-4f
        0x3a000000
        0x39800000
        0x39000000
        0x38800001
        0x38000001
    .end array-data

    :array_1624
    .array-data 4
        0x0
        0x5
        0x7
        0x3
        0xa
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0x10
    .end array-data

    :array_1648
    .array-data 4
        0x0
        0x3f000000  # 0.5f
        0x3e800000  # 0.25f
        0x3e800000  # 0.25f
        0x3e000000  # 0.125f
        0x3e000000  # 0.125f
        0x3d800000  # 0.0625f
        0x3d000000  # 0.03125f
        0x3c800000  # 0.015625f
        0x3c000000  # 0.0078125f
        0x3b800000  # 0.00390625f
        0x3b000000  # 0.001953125f
        0x3a800000  # 9.765625E-4f
        0x3a000000
        0x39800000
        0x38000000
    .end array-data

    :array_166c
    .array-data 4
        0x0
        0x3faaaaab
        0x3fcccccd  # 1.6f
        0x3f924925
        0x3fe38e39
        0x3f888889
        0x3f842108
        0x3f820821
        0x3f810204
        0x3f808081
        0x3f804020
        0x3f802008  # 1.0009775f
        0x3f801002  # 1.0004885f
        0x3f800801  # 1.0002443f
        0x3f800400  # 1.0001221f
        0x3f800080  # 1.0000153f
    .end array-data

    :array_1690
    .array-data 4
        0x0
        0x3f000000  # 0.5f
        0x3f000000  # 0.5f
        0x3e800000  # 0.25f
        0x3f000000  # 0.5f
        0x3e000000  # 0.125f
        0x3d800000  # 0.0625f
        0x3d000000  # 0.03125f
        0x3c800000  # 0.015625f
        0x3c000000  # 0.0078125f
        0x3b800000  # 0.00390625f
        0x3b000000  # 0.001953125f
        0x3a800000  # 9.765625E-4f
        0x3a000000
        0x39800000
        0x38000001
    .end array-data

    :array_16b4
    .array-data 4
        0x0
        0x5
        0x7
        0x3
        0xa
        0x4
        0x5
        0x10
    .end array-data

    :array_16c8
    .array-data 4
        0x0
        0x3f000000  # 0.5f
        0x3e800000  # 0.25f
        0x3e800000  # 0.25f
        0x3e000000  # 0.125f
        0x3e000000  # 0.125f
        0x3d800000  # 0.0625f
        0x38000000
    .end array-data

    :array_16dc
    .array-data 4
        0x0
        0x3faaaaab
        0x3fcccccd  # 1.6f
        0x3f924925
        0x3fe38e39
        0x3f888889
        0x3f842108
        0x3f800080  # 1.0000153f
    .end array-data

    :array_16f0
    .array-data 4
        0x0
        0x3f000000  # 0.5f
        0x3f000000  # 0.5f
        0x3e800000  # 0.25f
        0x3f000000  # 0.5f
        0x3e000000  # 0.125f
        0x3d800000  # 0.0625f
        0x38000001
    .end array-data

    :array_1704
    .array-data 4
        0x0
        0x3f000000  # 0.5f
        0x3e800000  # 0.25f
        0x38000000
    .end array-data

    :array_1710
    .array-data 4
        0x0
        0x3faaaaab
        0x3fcccccd  # 1.6f
        0x3f800080  # 1.0000153f
    .end array-data

    :array_171c
    .array-data 4
        0x0
        0x3f000000  # 0.5f
        0x3f000000  # 0.5f
        0x38000001
    .end array-data

    :array_1728
    .array-data 4
        0x0
        0x5
        0x7
        0xa
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data

    :array_174c
    .array-data 4
        0x0
        0x3f000000  # 0.5f
        0x3e800000  # 0.25f
        0x3e000000  # 0.125f
        0x3e000000  # 0.125f
        0x3d800000  # 0.0625f
        0x3d000000  # 0.03125f
        0x3c800000  # 0.015625f
        0x3c000000  # 0.0078125f
        0x3b800000  # 0.00390625f
        0x3b000000  # 0.001953125f
        0x3a800000  # 9.765625E-4f
        0x3a000000
        0x39800000
        0x39000000
        0x38800000
    .end array-data

    :array_1770
    .array-data 4
        0x0
        0x3faaaaab
        0x3fcccccd  # 1.6f
        0x3fe38e39
        0x3f888889
        0x3f842108
        0x3f820821
        0x3f810204
        0x3f808081
        0x3f804020
        0x3f802008  # 1.0009775f
        0x3f801002  # 1.0004885f
        0x3f800801  # 1.0002443f
        0x3f800400  # 1.0001221f
        0x3f800200  # 1.000061f
        0x3f800100  # 1.0000305f
    .end array-data

    :array_1794
    .array-data 4
        0x0
        0x3f000000  # 0.5f
        0x3f000000  # 0.5f
        0x3f000000  # 0.5f
        0x3e000000  # 0.125f
        0x3d800000  # 0.0625f
        0x3d000000  # 0.03125f
        0x3c800000  # 0.015625f
        0x3c000000  # 0.0078125f
        0x3b800000  # 0.00390625f
        0x3b000000  # 0.001953125f
        0x3a800000  # 9.765625E-4f
        0x3a000000
        0x39800000
        0x39000000
        0x38800001
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 6
    .param p1, "subbandnumber"  # I

    .line 430
    invoke-direct {p0}, Ljavazoom/jl/decoder/LayerIDecoder$Subband;-><init>()V

    .line 417
    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    iput-object v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->codelength:[I

    .line 418
    const/4 v1, 0x2

    new-array v1, v1, [[F

    iput-object v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->groupingtable:[[F

    .line 420
    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput v3, v2, v0

    iput-object v2, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->factor:[F

    .line 423
    const/4 v2, 0x3

    new-array v2, v2, [F

    iput-object v2, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->samples:[F

    .line 424
    new-array v2, v1, [F

    aput v3, v2, v0

    iput-object v2, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->c:[F

    .line 425
    new-array v1, v1, [F

    aput v3, v1, v0

    iput-object v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->d:[F

    .line 431
    iput p1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->subbandnumber:I

    .line 432
    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->samplenumber:I

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->groupnumber:I

    .line 433
    return-void
.end method


# virtual methods
.method protected get_allocationlength(Ljavazoom/jl/decoder/Header;)I
    .registers 9
    .param p1, "header"  # Ljavazoom/jl/decoder/Header;

    .line 439
    invoke-virtual {p1}, Ljavazoom/jl/decoder/Header;->version()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v0, v5, :cond_34

    .line 440
    invoke-virtual {p1}, Ljavazoom/jl/decoder/Header;->bitrate_index()I

    move-result v0

    .line 443
    .local v0, "channel_bitrate":I
    invoke-virtual {p1}, Ljavazoom/jl/decoder/Header;->mode()I

    move-result v6

    if-eq v6, v4, :cond_1c

    if-ne v0, v3, :cond_1a

    .line 444
    const/4 v0, 0x1

    goto :goto_1c

    .line 446
    :cond_1a
    add-int/lit8 v0, v0, -0x4

    .line 448
    :cond_1c
    :goto_1c
    if-eq v0, v5, :cond_2e

    if-ne v0, v2, :cond_21

    goto :goto_2e

    .line 456
    :cond_21
    iget v5, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->subbandnumber:I

    if-gt v5, v1, :cond_26

    .line 457
    return v3

    .line 458
    :cond_26
    iget v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->subbandnumber:I

    const/16 v3, 0x16

    if-gt v1, v3, :cond_2d

    .line 459
    return v4

    .line 461
    :cond_2d
    return v2

    .line 450
    :cond_2e
    :goto_2e
    iget v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->subbandnumber:I

    if-gt v1, v5, :cond_33

    .line 451
    return v3

    .line 453
    :cond_33
    return v4

    .line 463
    .end local v0  # "channel_bitrate":I
    :cond_34
    iget v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->subbandnumber:I

    if-gt v0, v4, :cond_39

    .line 464
    return v3

    .line 465
    :cond_39
    iget v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->subbandnumber:I

    if-gt v0, v1, :cond_3e

    .line 466
    return v4

    .line 468
    :cond_3e
    return v2
.end method

.method protected prepare_sample_reading(Ljavazoom/jl/decoder/Header;II[F[I[F[F)V
    .registers 12
    .param p1, "header"  # Ljavazoom/jl/decoder/Header;
    .param p2, "allocation"  # I
    .param p3, "channel"  # I
    .param p4, "factor"  # [F
    .param p5, "codelength"  # [I
    .param p6, "c"  # [F
    .param p7, "d"  # [F

    .line 477
    invoke-virtual {p1}, Ljavazoom/jl/decoder/Header;->bitrate_index()I

    move-result v0

    .line 479
    .local v0, "channel_bitrate":I
    invoke-virtual {p1}, Ljavazoom/jl/decoder/Header;->mode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_12

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 480
    const/4 v0, 0x1

    goto :goto_12

    .line 482
    :cond_10
    add-int/lit8 v0, v0, -0x4

    .line 484
    :cond_12
    :goto_12
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    goto/16 :goto_a0

    .line 492
    :cond_1b
    iget v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->subbandnumber:I

    if-gt v3, v1, :cond_41

    .line 493
    iget-object v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->groupingtable:[[F

    sget-object v3, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab1_groupingtables:[[F

    aget-object v3, v3, p2

    aput-object v3, v1, p3

    .line 494
    sget-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab1_factor:[F

    aget v1, v1, p2

    aput v1, p4, v2

    .line 495
    sget-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab1_codelength:[I

    aget v1, v1, p2

    aput v1, p5, v2

    .line 496
    sget-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab1_c:[F

    aget v1, v1, p2

    aput v1, p6, v2

    .line 497
    sget-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab1_d:[F

    aget v1, v1, p2

    aput v1, p7, v2

    goto/16 :goto_c0

    .line 499
    :cond_41
    iget-object v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->groupingtable:[[F

    sget-object v3, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab234_groupingtables:[[F

    aget-object v3, v3, p2

    aput-object v3, v1, p3

    .line 500
    iget v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->subbandnumber:I

    const/16 v3, 0xa

    if-gt v1, v3, :cond_68

    .line 501
    sget-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab2_factor:[F

    aget v1, v1, p2

    aput v1, p4, v2

    .line 502
    sget-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab2_codelength:[I

    aget v1, v1, p2

    aput v1, p5, v2

    .line 503
    sget-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab2_c:[F

    aget v1, v1, p2

    aput v1, p6, v2

    .line 504
    sget-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab2_d:[F

    aget v1, v1, p2

    aput v1, p7, v2

    goto :goto_c0

    .line 505
    :cond_68
    iget v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->subbandnumber:I

    const/16 v3, 0x16

    if-gt v1, v3, :cond_87

    .line 506
    sget-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab3_factor:[F

    aget v1, v1, p2

    aput v1, p4, v2

    .line 507
    sget-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab3_codelength:[I

    aget v1, v1, p2

    aput v1, p5, v2

    .line 508
    sget-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab3_c:[F

    aget v1, v1, p2

    aput v1, p6, v2

    .line 509
    sget-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab3_d:[F

    aget v1, v1, p2

    aput v1, p7, v2

    goto :goto_c0

    .line 511
    :cond_87
    sget-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab4_factor:[F

    aget v1, v1, p2

    aput v1, p4, v2

    .line 512
    sget-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab4_codelength:[I

    aget v1, v1, p2

    aput v1, p5, v2

    .line 513
    sget-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab4_c:[F

    aget v1, v1, p2

    aput v1, p6, v2

    .line 514
    sget-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_ab4_d:[F

    aget v1, v1, p2

    aput v1, p7, v2

    goto :goto_c0

    .line 486
    :cond_a0
    :goto_a0
    iget-object v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->groupingtable:[[F

    sget-object v3, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_cd_groupingtables:[[F

    aget-object v3, v3, p2

    aput-object v3, v1, p3

    .line 487
    sget-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_cd_factor:[F

    aget v1, v1, p2

    aput v1, p4, v2

    .line 488
    sget-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_cd_codelength:[I

    aget v1, v1, p2

    aput v1, p5, v2

    .line 489
    sget-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_cd_c:[F

    aget v1, v1, p2

    aput v1, p6, v2

    .line 490
    sget-object v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->table_cd_d:[F

    aget v1, v1, p2

    aput v1, p7, v2

    .line 517
    :goto_c0
    return-void
.end method

.method public put_next_sample(ILjavazoom/jl/decoder/SynthesisFilter;Ljavazoom/jl/decoder/SynthesisFilter;)Z
    .registers 8
    .param p1, "channels"  # I
    .param p2, "filter1"  # Ljavazoom/jl/decoder/SynthesisFilter;
    .param p3, "filter2"  # Ljavazoom/jl/decoder/SynthesisFilter;

    .line 611
    iget v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->allocation:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3a

    .line 612
    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->samples:[F

    iget v2, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->samplenumber:I

    aget v0, v0, v2

    .line 614
    .local v0, "sample":F
    iget-object v2, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->groupingtable:[[F

    aget-object v2, v2, v1

    if-nez v2, :cond_1f

    iget-object v2, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->d:[F

    aget v2, v2, v1

    add-float/2addr v2, v0

    iget-object v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->c:[F

    aget v3, v3, v1

    mul-float v0, v2, v3

    .line 615
    :cond_1f
    iget v2, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->groupnumber:I

    const/4 v3, 0x4

    if-gt v2, v3, :cond_28

    .line 616
    iget v2, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->scalefactor1:F

    mul-float/2addr v0, v2

    goto :goto_35

    .line 617
    :cond_28
    iget v2, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->groupnumber:I

    const/16 v3, 0x8

    if-gt v2, v3, :cond_32

    .line 618
    iget v2, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->scalefactor2:F

    mul-float/2addr v0, v2

    goto :goto_35

    .line 620
    :cond_32
    iget v2, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->scalefactor3:F

    mul-float/2addr v0, v2

    .line 621
    :goto_35
    iget v2, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->subbandnumber:I

    invoke-virtual {p2, v0, v2}, Ljavazoom/jl/decoder/SynthesisFilter;->input_sample(FI)V

    .line 624
    .end local v0  # "sample":F
    :cond_3a
    iget v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->samplenumber:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->samplenumber:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_44

    .line 625
    return v2

    .line 627
    :cond_44
    return v1
.end method

.method public read_allocation(Ljavazoom/jl/decoder/Bitstream;Ljavazoom/jl/decoder/Header;Ljavazoom/jl/decoder/Crc16;)V
    .registers 6
    .param p1, "stream"  # Ljavazoom/jl/decoder/Bitstream;
    .param p2, "header"  # Ljavazoom/jl/decoder/Header;
    .param p3, "crc"  # Ljavazoom/jl/decoder/Crc16;

    .line 523
    invoke-virtual {p0, p2}, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->get_allocationlength(Ljavazoom/jl/decoder/Header;)I

    move-result v0

    .line 524
    .local v0, "length":I
    invoke-virtual {p1, v0}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v1

    iput v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->allocation:I

    .line 525
    if-eqz p3, :cond_11

    iget v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->allocation:I

    invoke-virtual {p3, v1, v0}, Ljavazoom/jl/decoder/Crc16;->add_bits(II)V

    .line 526
    :cond_11
    return-void
.end method

.method public read_sampledata(Ljavazoom/jl/decoder/Bitstream;)Z
    .registers 10
    .param p1, "stream"  # Ljavazoom/jl/decoder/Bitstream;

    .line 569
    iget v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->allocation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->groupingtable:[[F

    aget-object v0, v0, v2

    if-eqz v0, :cond_38

    .line 570
    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->codelength:[I

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v0

    .line 572
    .local v0, "samplecode":I
    shl-int/lit8 v3, v0, 0x1

    add-int/2addr v0, v3

    .line 573
    iget-object v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->samples:[F

    .line 574
    .local v3, "target":[F
    iget-object v4, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->groupingtable:[[F

    aget-object v4, v4, v2

    .line 580
    .local v4, "source":[F
    const/4 v5, 0x0

    .line 581
    .local v5, "tmp":I
    move v6, v0

    .line 583
    .local v6, "temp":I
    array-length v7, v4

    add-int/lit8 v7, v7, -0x3

    if-le v6, v7, :cond_27

    array-length v7, v4

    add-int/lit8 v6, v7, -0x3

    .line 585
    :cond_27
    aget v7, v4, v6

    aput v7, v3, v5

    .line 586
    add-int/2addr v6, v1

    .line 587
    add-int/2addr v5, v1

    .line 588
    aget v7, v4, v6

    aput v7, v3, v5

    .line 589
    add-int/2addr v6, v1

    .line 590
    add-int/2addr v5, v1

    .line 591
    aget v7, v4, v6

    aput v7, v3, v5

    .line 594
    .end local v0  # "samplecode":I
    .end local v3  # "target":[F
    .end local v4  # "source":[F
    .end local v5  # "tmp":I
    .end local v6  # "temp":I
    goto :goto_7a

    .line 595
    :cond_38
    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->samples:[F

    iget-object v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->codelength:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->factor:[F

    aget v4, v4, v2

    mul-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v0, v2

    .line 596
    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->samples:[F

    iget-object v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->codelength:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->factor:[F

    aget v4, v4, v2

    mul-float/2addr v3, v4

    float-to-double v3, v3

    sub-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v0, v1

    .line 597
    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->samples:[F

    iget-object v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->codelength:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->factor:[F

    aget v4, v4, v2

    mul-float/2addr v3, v4

    float-to-double v3, v3

    sub-double/2addr v3, v5

    double-to-float v3, v3

    const/4 v4, 0x2

    aput v3, v0, v4

    .line 600
    :cond_7a
    :goto_7a
    iput v2, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->samplenumber:I

    .line 601
    iget v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->groupnumber:I

    add-int/2addr v0, v1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->groupnumber:I

    const/16 v3, 0xc

    if-ne v0, v3, :cond_86

    .line 602
    return v1

    .line 604
    :cond_86
    return v2
.end method

.method public read_scalefactor(Ljavazoom/jl/decoder/Bitstream;Ljavazoom/jl/decoder/Header;)V
    .registers 12
    .param p1, "stream"  # Ljavazoom/jl/decoder/Bitstream;
    .param p2, "header"  # Ljavazoom/jl/decoder/Header;

    .line 542
    iget v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->allocation:I

    if-eqz v0, :cond_77

    .line 543
    iget v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->scfsi:I

    const/4 v1, 0x6

    packed-switch v0, :pswitch_data_78

    goto :goto_67

    .line 557
    :pswitch_b  #0x3
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v2

    aget v0, v0, v2

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->scalefactor1:F

    .line 558
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->scalefactor3:F

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->scalefactor2:F

    goto :goto_67

    .line 554
    :pswitch_22  #0x2
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->scalefactor3:F

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->scalefactor2:F

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->scalefactor1:F

    .line 555
    goto :goto_67

    .line 550
    :pswitch_31  #0x1
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v2

    aget v0, v0, v2

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->scalefactor2:F

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->scalefactor1:F

    .line 551
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->scalefactor3:F

    .line 552
    goto :goto_67

    .line 545
    :pswitch_48  #0x0
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v2

    aget v0, v0, v2

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->scalefactor1:F

    .line 546
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v2

    aget v0, v0, v2

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->scalefactor2:F

    .line 547
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->scalefactor3:F

    .line 548
    nop

    .line 561
    :goto_67
    iget v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->allocation:I

    iget-object v5, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->factor:[F

    iget-object v6, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->codelength:[I

    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->c:[F

    iget-object v8, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->d:[F

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v8}, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->prepare_sample_reading(Ljavazoom/jl/decoder/Header;II[F[I[F[F)V

    .line 563
    :cond_77
    return-void

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_48  #00000000
        :pswitch_31  #00000001
        :pswitch_22  #00000002
        :pswitch_b  #00000003
    .end packed-switch
.end method

.method public read_scalefactor_selection(Ljavazoom/jl/decoder/Bitstream;Ljavazoom/jl/decoder/Crc16;)V
    .registers 5
    .param p1, "stream"  # Ljavazoom/jl/decoder/Bitstream;
    .param p2, "crc"  # Ljavazoom/jl/decoder/Crc16;

    .line 532
    iget v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->allocation:I

    if-eqz v0, :cond_12

    .line 533
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v1

    iput v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->scfsi:I

    .line 534
    if-eqz p2, :cond_12

    iget v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->scfsi:I

    invoke-virtual {p2, v1, v0}, Ljavazoom/jl/decoder/Crc16;->add_bits(II)V

    .line 536
    :cond_12
    return-void
.end method
