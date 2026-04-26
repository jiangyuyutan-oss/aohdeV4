.class Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;
.super Ljava/lang/Object;
.source "LayerIIIDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavazoom/jl/decoder/LayerIIIDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "III_side_info_t"
.end annotation


# instance fields
.field public ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

.field public main_data_begin:I

.field public private_bits:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1791
    const/4 v0, 0x0

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->main_data_begin:I

    .line 1792
    iput v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->private_bits:I

    .line 1799
    const/4 v1, 0x2

    new-array v1, v1, [Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    iput-object v1, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    .line 1800
    iget-object v1, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    new-instance v2, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    invoke-direct {v2}, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;-><init>()V

    aput-object v2, v1, v0

    .line 1801
    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$III_side_info_t;->ch:[Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    new-instance v1, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;

    invoke-direct {v1}, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1802
    return-void
.end method
