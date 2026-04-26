.class public Ljavazoom/jl/decoder/LayerIIDecoder;
.super Ljavazoom/jl/decoder/LayerIDecoder;
.source "LayerIIDecoder.java"

# interfaces
.implements Ljavazoom/jl/decoder/FrameDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;,
        Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;,
        Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljavazoom/jl/decoder/LayerIDecoder;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method protected createSubbands()V
    .registers 4

    .line 35
    iget v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder;->mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder;->num_subbands:I

    if-ge v0, v1, :cond_51

    .line 37
    iget-object v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder;->subbands:[Ljavazoom/jl/decoder/LayerIDecoder$Subband;

    new-instance v2, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;

    invoke-direct {v2, v0}, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;-><init>(I)V

    aput-object v2, v1, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 38
    .end local v0  # "i":I
    :cond_16
    iget v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    .line 39
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_1c
    iget-object v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder;->header:Ljavazoom/jl/decoder/Header;

    invoke-virtual {v1}, Ljavazoom/jl/decoder/Header;->intensity_stereo_bound()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 40
    iget-object v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder;->subbands:[Ljavazoom/jl/decoder/LayerIDecoder$Subband;

    new-instance v2, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;

    invoke-direct {v2, v0}, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;-><init>(I)V

    aput-object v2, v1, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 41
    :cond_30
    :goto_30
    iget v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder;->num_subbands:I

    if-ge v0, v1, :cond_51

    .line 42
    iget-object v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder;->subbands:[Ljavazoom/jl/decoder/LayerIDecoder$Subband;

    new-instance v2, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;

    invoke-direct {v2, v0}, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;-><init>(I)V

    aput-object v2, v1, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 44
    .end local v0  # "i":I
    :cond_40
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_41
    iget v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder;->num_subbands:I

    if-ge v0, v1, :cond_51

    .line 45
    iget-object v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder;->subbands:[Ljavazoom/jl/decoder/LayerIDecoder$Subband;

    new-instance v2, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;

    invoke-direct {v2, v0}, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;-><init>(I)V

    aput-object v2, v1, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 47
    :cond_51
    return-void
.end method

.method protected readScaleFactorSelection()V
    .registers 5

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder;->num_subbands:I

    if-ge v0, v1, :cond_15

    .line 51
    iget-object v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder;->subbands:[Ljavazoom/jl/decoder/LayerIDecoder$Subband;

    aget-object v1, v1, v0

    check-cast v1, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;

    iget-object v2, p0, Ljavazoom/jl/decoder/LayerIIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    iget-object v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder;->crc:Ljavazoom/jl/decoder/Crc16;

    invoke-virtual {v1, v2, v3}, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->read_scalefactor_selection(Ljavazoom/jl/decoder/Bitstream;Ljavazoom/jl/decoder/Crc16;)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    .end local v0  # "i":I
    :cond_15
    return-void
.end method
