.class Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;
.super Ljava/lang/Object;
.source "LayerIIIDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavazoom/jl/decoder/LayerIIIDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "temporaire"
.end annotation


# instance fields
.field public gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

.field public scfsi:[I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1782
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->scfsi:[I

    .line 1783
    const/4 v0, 0x2

    new-array v0, v0, [Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    iput-object v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    .line 1784
    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    new-instance v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    invoke-direct {v1}, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1785
    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIIIDecoder$temporaire;->gr:[Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    new-instance v1, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;

    invoke-direct {v1}, Ljavazoom/jl/decoder/LayerIIIDecoder$gr_info_s;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1786
    return-void
.end method
