.class Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1IntensityStereo;
.super Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;
.source "LayerIDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavazoom/jl/decoder/LayerIDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubbandLayer1IntensityStereo"
.end annotation


# instance fields
.field protected channel2_scalefactor:F


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "subbandnumber"  # I

    .line 252
    invoke-direct {p0, p1}, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;-><init>(I)V

    .line 253
    return-void
.end method


# virtual methods
.method public put_next_sample(ILjavazoom/jl/decoder/SynthesisFilter;Ljavazoom/jl/decoder/SynthesisFilter;)Z
    .registers 8
    .param p1, "channels"  # I
    .param p2, "filter1"  # Ljavazoom/jl/decoder/SynthesisFilter;
    .param p3, "filter2"  # Ljavazoom/jl/decoder/SynthesisFilter;

    .line 283
    iget v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1IntensityStereo;->allocation:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3d

    .line 284
    iget v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1IntensityStereo;->sample:F

    iget v2, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1IntensityStereo;->factor:F

    mul-float/2addr v0, v2

    iget v2, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1IntensityStereo;->offset:F

    add-float/2addr v0, v2

    iput v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1IntensityStereo;->sample:F

    .line 285
    if-nez p1, :cond_26

    .line 286
    iget v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1IntensityStereo;->sample:F

    iget v2, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1IntensityStereo;->scalefactor:F

    mul-float/2addr v0, v2

    .local v0, "sample1":F
    iget v2, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1IntensityStereo;->sample:F

    iget v3, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1IntensityStereo;->channel2_scalefactor:F

    mul-float/2addr v2, v3

    .line 287
    .local v2, "sample2":F
    iget v3, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1IntensityStereo;->subbandnumber:I

    invoke-virtual {p2, v0, v3}, Ljavazoom/jl/decoder/SynthesisFilter;->input_sample(FI)V

    .line 288
    iget v3, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1IntensityStereo;->subbandnumber:I

    invoke-virtual {p3, v2, v3}, Ljavazoom/jl/decoder/SynthesisFilter;->input_sample(FI)V

    .line 289
    .end local v0  # "sample1":F
    .end local v2  # "sample2":F
    goto :goto_3d

    :cond_26
    if-ne p1, v1, :cond_33

    .line 290
    iget v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1IntensityStereo;->sample:F

    iget v2, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1IntensityStereo;->scalefactor:F

    mul-float/2addr v0, v2

    .line 291
    .restart local v0  # "sample1":F
    iget v2, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1IntensityStereo;->subbandnumber:I

    invoke-virtual {p2, v0, v2}, Ljavazoom/jl/decoder/SynthesisFilter;->input_sample(FI)V

    .line 292
    .end local v0  # "sample1":F
    goto :goto_3d

    .line 293
    :cond_33
    iget v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1IntensityStereo;->sample:F

    iget v2, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1IntensityStereo;->channel2_scalefactor:F

    mul-float/2addr v0, v2

    .line 294
    .local v0, "sample2":F
    iget v2, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1IntensityStereo;->subbandnumber:I

    invoke-virtual {p2, v0, v2}, Ljavazoom/jl/decoder/SynthesisFilter;->input_sample(FI)V

    .line 297
    .end local v0  # "sample2":F
    :cond_3d
    :goto_3d
    return v1
.end method

.method public read_allocation(Ljavazoom/jl/decoder/Bitstream;Ljavazoom/jl/decoder/Header;Ljavazoom/jl/decoder/Crc16;)V
    .registers 4
    .param p1, "stream"  # Ljavazoom/jl/decoder/Bitstream;
    .param p2, "header"  # Ljavazoom/jl/decoder/Header;
    .param p3, "crc"  # Ljavazoom/jl/decoder/Crc16;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavazoom/jl/decoder/DecoderException;
        }
    .end annotation

    .line 259
    invoke-super {p0, p1, p2, p3}, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->read_allocation(Ljavazoom/jl/decoder/Bitstream;Ljavazoom/jl/decoder/Header;Ljavazoom/jl/decoder/Crc16;)V

    .line 260
    return-void
.end method

.method public read_sampledata(Ljavazoom/jl/decoder/Bitstream;)Z
    .registers 3
    .param p1, "stream"  # Ljavazoom/jl/decoder/Bitstream;

    .line 276
    invoke-super {p0, p1}, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->read_sampledata(Ljavazoom/jl/decoder/Bitstream;)Z

    move-result v0

    return v0
.end method

.method public read_scalefactor(Ljavazoom/jl/decoder/Bitstream;Ljavazoom/jl/decoder/Header;)V
    .registers 6
    .param p1, "stream"  # Ljavazoom/jl/decoder/Bitstream;
    .param p2, "header"  # Ljavazoom/jl/decoder/Header;

    .line 266
    iget v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1IntensityStereo;->allocation:I

    if-eqz v0, :cond_19

    .line 267
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v2

    aget v0, v0, v2

    iput v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1IntensityStereo;->scalefactor:F

    .line 268
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1IntensityStereo;->channel2_scalefactor:F

    .line 270
    :cond_19
    return-void
.end method
