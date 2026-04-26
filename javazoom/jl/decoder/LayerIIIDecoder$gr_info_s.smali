.class Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;
.super Ljava/lang/Object;
.source "LayerIIIDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavazoom/jl/decoder/LayerIIIDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "gr_info_s"
.end annotation


# instance fields
.field public big_values:I

.field public block_type:I

.field public count1table_select:I

.field public global_gain:I

.field public mixed_block_flag:I

.field public part2_3_length:I

.field public preflag:I

.field public region0_count:I

.field public region1_count:I

.field public scalefac_compress:I

.field public scalefac_scale:I

.field public subblock_gain:[I

.field public table_select:[I

.field public window_switching_flag:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1750
    const/4 v0, 0x0

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->part2_3_length:I

    .line 1751
    iput v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->big_values:I

    .line 1752
    iput v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->global_gain:I

    .line 1753
    iput v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->scalefac_compress:I

    .line 1754
    iput v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->window_switching_flag:I

    .line 1755
    iput v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->block_type:I

    .line 1756
    iput v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->mixed_block_flag:I

    .line 1759
    iput v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->region0_count:I

    .line 1760
    iput v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->region1_count:I

    .line 1761
    iput v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->preflag:I

    .line 1762
    iput v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->scalefac_scale:I

    .line 1763
    iput v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->count1table_select:I

    .line 1769
    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->table_select:[I

    .line 1770
    new-array v0, v0, [I

    iput-object v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;->subblock_gain:[I

    .line 1771
    return-void
.end method
