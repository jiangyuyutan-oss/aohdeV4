.class Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;
.super Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;
.source "LayerIDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavazoom/jl/decoder/LayerIDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubbandLayer1Stereo"
.end annotation


# instance fields
.field protected channel2_allocation:I

.field protected channel2_factor:F

.field protected channel2_offset:F

.field protected channel2_sample:F

.field protected channel2_samplelength:I

.field protected channel2_scalefactor:F


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "subbandnumber"  # I

    .line 315
    invoke-direct {p0, p1}, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;-><init>(I)V

    .line 316
    return-void
.end method


# virtual methods
.method public put_next_sample(ILjavazoom/jl/decoder/SynthesisFilter;Ljavazoom/jl/decoder/SynthesisFilter;)Z
    .registers 7
    .param p1, "channels"  # I
    .param p2, "filter1"  # Ljavazoom/jl/decoder/SynthesisFilter;
    .param p3, "filter2"  # Ljavazoom/jl/decoder/SynthesisFilter;

    .line 361
    invoke-super {p0, p1, p2, p3}, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->put_next_sample(ILjavazoom/jl/decoder/SynthesisFilter;Ljavazoom/jl/decoder/SynthesisFilter;)Z

    .line 362
    iget v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->channel2_allocation:I

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    if-eq p1, v1, :cond_22

    .line 363
    iget v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->channel2_sample:F

    iget v2, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->channel2_factor:F

    mul-float/2addr v0, v2

    iget v2, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->channel2_offset:F

    add-float/2addr v0, v2

    iget v2, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->channel2_scalefactor:F

    mul-float/2addr v0, v2

    .line 364
    .local v0, "sample2":F
    if-nez p1, :cond_1d

    .line 365
    iget v2, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->subbandnumber:I

    invoke-virtual {p3, v0, v2}, Ljavazoom/jl/decoder/SynthesisFilter;->input_sample(FI)V

    goto :goto_22

    .line 367
    :cond_1d
    iget v2, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->subbandnumber:I

    invoke-virtual {p2, v0, v2}, Ljavazoom/jl/decoder/SynthesisFilter;->input_sample(FI)V

    .line 369
    .end local v0  # "sample2":F
    :cond_22
    :goto_22
    return v1
.end method

.method public read_allocation(Ljavazoom/jl/decoder/Bitstream;Ljavazoom/jl/decoder/Header;Ljavazoom/jl/decoder/Crc16;)V
    .registers 6
    .param p1, "stream"  # Ljavazoom/jl/decoder/Bitstream;
    .param p2, "header"  # Ljavazoom/jl/decoder/Header;
    .param p3, "crc"  # Ljavazoom/jl/decoder/Crc16;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavazoom/jl/decoder/DecoderException;
        }
    .end annotation

    .line 322
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v1

    iput v1, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->allocation:I

    .line 323
    invoke-virtual {p1, v0}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v1

    iput v1, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->channel2_allocation:I

    .line 324
    if-eqz p3, :cond_19

    .line 325
    iget v1, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->allocation:I

    invoke-virtual {p3, v1, v0}, Ljavazoom/jl/decoder/Crc16;->add_bits(II)V

    .line 326
    iget v1, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->channel2_allocation:I

    invoke-virtual {p3, v1, v0}, Ljavazoom/jl/decoder/Crc16;->add_bits(II)V

    .line 328
    :cond_19
    iget v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->allocation:I

    if-eqz v0, :cond_33

    .line 329
    iget v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->allocation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->samplelength:I

    .line 330
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->table_factor:[F

    iget v1, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->allocation:I

    aget v0, v0, v1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->factor:F

    .line 331
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->table_offset:[F

    iget v1, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->allocation:I

    aget v0, v0, v1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->offset:F

    .line 333
    :cond_33
    iget v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->channel2_allocation:I

    if-eqz v0, :cond_4d

    .line 334
    iget v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->channel2_allocation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->channel2_samplelength:I

    .line 335
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->table_factor:[F

    iget v1, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->channel2_allocation:I

    aget v0, v0, v1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->channel2_factor:F

    .line 336
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->table_offset:[F

    iget v1, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->channel2_allocation:I

    aget v0, v0, v1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->channel2_offset:F

    .line 338
    :cond_4d
    return-void
.end method

.method public read_sampledata(Ljavazoom/jl/decoder/Bitstream;)Z
    .registers 4
    .param p1, "stream"  # Ljavazoom/jl/decoder/Bitstream;

    .line 352
    invoke-super {p0, p1}, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->read_sampledata(Ljavazoom/jl/decoder/Bitstream;)Z

    move-result v0

    .line 353
    .local v0, "returnvalue":Z
    iget v1, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->channel2_allocation:I

    if-eqz v1, :cond_11

    iget v1, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->channel2_samplelength:I

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->channel2_sample:F

    .line 354
    :cond_11
    return v0
.end method

.method public read_scalefactor(Ljavazoom/jl/decoder/Bitstream;Ljavazoom/jl/decoder/Header;)V
    .registers 6
    .param p1, "stream"  # Ljavazoom/jl/decoder/Bitstream;
    .param p2, "header"  # Ljavazoom/jl/decoder/Header;

    .line 344
    iget v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->allocation:I

    const/4 v1, 0x6

    if-eqz v0, :cond_f

    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v2

    aget v0, v0, v2

    iput v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->scalefactor:F

    .line 345
    :cond_f
    iget v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->channel2_allocation:I

    if-eqz v0, :cond_1d

    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;->channel2_scalefactor:F

    .line 346
    :cond_1d
    return-void
.end method
