.class Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;
.super Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;
.source "LayerIIDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavazoom/jl/decoder/LayerIIDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubbandLayer2IntensityStereo"
.end annotation


# instance fields
.field protected channel2_scalefactor1:F

.field protected channel2_scalefactor2:F

.field protected channel2_scalefactor3:F

.field protected channel2_scfsi:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "subbandnumber"  # I

    .line 642
    invoke-direct {p0, p1}, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;-><init>(I)V

    .line 643
    return-void
.end method


# virtual methods
.method public put_next_sample(ILjavazoom/jl/decoder/SynthesisFilter;Ljavazoom/jl/decoder/SynthesisFilter;)Z
    .registers 11
    .param p1, "channels"  # I
    .param p2, "filter1"  # Ljavazoom/jl/decoder/SynthesisFilter;
    .param p3, "filter2"  # Ljavazoom/jl/decoder/SynthesisFilter;

    .line 708
    iget v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->allocation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7d

    .line 709
    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->samples:[F

    iget v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->samplenumber:I

    aget v0, v0, v3

    .line 711
    .local v0, "sample":F
    iget-object v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->groupingtable:[[F

    aget-object v3, v3, v2

    if-nez v3, :cond_1d

    iget-object v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->d:[F

    aget v3, v3, v2

    add-float/2addr v3, v0

    iget-object v4, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->c:[F

    aget v4, v4, v2

    mul-float v0, v3, v4

    .line 712
    :cond_1d
    const/16 v3, 0x8

    const/4 v4, 0x4

    if-nez p1, :cond_4a

    .line 713
    move v5, v0

    .line 714
    .local v5, "sample2":F
    iget v6, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->groupnumber:I

    if-gt v6, v4, :cond_2e

    .line 715
    iget v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->scalefactor1:F

    mul-float/2addr v0, v3

    .line 716
    iget v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->channel2_scalefactor1:F

    mul-float/2addr v5, v3

    goto :goto_3f

    .line 717
    :cond_2e
    iget v4, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->groupnumber:I

    if-gt v4, v3, :cond_39

    .line 718
    iget v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->scalefactor2:F

    mul-float/2addr v0, v3

    .line 719
    iget v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->channel2_scalefactor2:F

    mul-float/2addr v5, v3

    goto :goto_3f

    .line 721
    :cond_39
    iget v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->scalefactor3:F

    mul-float/2addr v0, v3

    .line 722
    iget v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->channel2_scalefactor3:F

    mul-float/2addr v5, v3

    .line 724
    :goto_3f
    iget v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->subbandnumber:I

    invoke-virtual {p2, v0, v3}, Ljavazoom/jl/decoder/SynthesisFilter;->input_sample(FI)V

    .line 725
    iget v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->subbandnumber:I

    invoke-virtual {p3, v5, v3}, Ljavazoom/jl/decoder/SynthesisFilter;->input_sample(FI)V

    .line 726
    .end local v5  # "sample2":F
    goto :goto_7d

    :cond_4a
    if-ne p1, v1, :cond_65

    .line 727
    iget v5, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->groupnumber:I

    if-gt v5, v4, :cond_54

    .line 728
    iget v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->scalefactor1:F

    mul-float/2addr v0, v3

    goto :goto_5f

    .line 729
    :cond_54
    iget v4, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->groupnumber:I

    if-gt v4, v3, :cond_5c

    .line 730
    iget v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->scalefactor2:F

    mul-float/2addr v0, v3

    goto :goto_5f

    .line 732
    :cond_5c
    iget v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->scalefactor3:F

    mul-float/2addr v0, v3

    .line 733
    :goto_5f
    iget v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->subbandnumber:I

    invoke-virtual {p2, v0, v3}, Ljavazoom/jl/decoder/SynthesisFilter;->input_sample(FI)V

    goto :goto_7d

    .line 735
    :cond_65
    iget v5, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->groupnumber:I

    if-gt v5, v4, :cond_6d

    .line 736
    iget v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->channel2_scalefactor1:F

    mul-float/2addr v0, v3

    goto :goto_78

    .line 737
    :cond_6d
    iget v4, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->groupnumber:I

    if-gt v4, v3, :cond_75

    .line 738
    iget v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->channel2_scalefactor2:F

    mul-float/2addr v0, v3

    goto :goto_78

    .line 740
    :cond_75
    iget v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->channel2_scalefactor3:F

    mul-float/2addr v0, v3

    .line 741
    :goto_78
    iget v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->subbandnumber:I

    invoke-virtual {p2, v0, v3}, Ljavazoom/jl/decoder/SynthesisFilter;->input_sample(FI)V

    .line 745
    .end local v0  # "sample":F
    :cond_7d
    :goto_7d
    iget v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->samplenumber:I

    add-int/2addr v0, v1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->samplenumber:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_86

    .line 746
    return v1

    .line 748
    :cond_86
    return v2
.end method

.method public read_allocation(Ljavazoom/jl/decoder/Bitstream;Ljavazoom/jl/decoder/Header;Ljavazoom/jl/decoder/Crc16;)V
    .registers 4
    .param p1, "stream"  # Ljavazoom/jl/decoder/Bitstream;
    .param p2, "header"  # Ljavazoom/jl/decoder/Header;
    .param p3, "crc"  # Ljavazoom/jl/decoder/Crc16;

    .line 649
    invoke-super {p0, p1, p2, p3}, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->read_allocation(Ljavazoom/jl/decoder/Bitstream;Ljavazoom/jl/decoder/Header;Ljavazoom/jl/decoder/Crc16;)V

    .line 650
    return-void
.end method

.method public read_sampledata(Ljavazoom/jl/decoder/Bitstream;)Z
    .registers 3
    .param p1, "stream"  # Ljavazoom/jl/decoder/Bitstream;

    .line 701
    invoke-super {p0, p1}, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->read_sampledata(Ljavazoom/jl/decoder/Bitstream;)Z

    move-result v0

    return v0
.end method

.method public read_scalefactor(Ljavazoom/jl/decoder/Bitstream;Ljavazoom/jl/decoder/Header;)V
    .registers 6
    .param p1, "stream"  # Ljavazoom/jl/decoder/Bitstream;
    .param p2, "header"  # Ljavazoom/jl/decoder/Header;

    .line 670
    iget v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->allocation:I

    if-eqz v0, :cond_6a

    .line 671
    invoke-super {p0, p1, p2}, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->read_scalefactor(Ljavazoom/jl/decoder/Bitstream;Ljavazoom/jl/decoder/Header;)V

    .line 672
    iget v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->channel2_scfsi:I

    const/4 v1, 0x6

    packed-switch v0, :pswitch_data_6c

    goto :goto_6a

    .line 689
    :pswitch_e  #0x3
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v2

    aget v0, v0, v2

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->channel2_scalefactor1:F

    .line 690
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->channel2_scalefactor3:F

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->channel2_scalefactor2:F

    goto :goto_6a

    .line 685
    :pswitch_25  #0x2
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->channel2_scalefactor3:F

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->channel2_scalefactor2:F

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->channel2_scalefactor1:F

    .line 686
    goto :goto_6a

    .line 680
    :pswitch_34  #0x1
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v2

    aget v0, v0, v2

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->channel2_scalefactor2:F

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->channel2_scalefactor1:F

    .line 681
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->channel2_scalefactor3:F

    .line 682
    goto :goto_6a

    .line 674
    :pswitch_4b  #0x0
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v2

    aget v0, v0, v2

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->channel2_scalefactor1:F

    .line 675
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v2

    aget v0, v0, v2

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->channel2_scalefactor2:F

    .line 676
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->channel2_scalefactor3:F

    .line 677
    nop

    .line 695
    :cond_6a
    :goto_6a
    return-void

    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_4b  #00000000
        :pswitch_34  #00000001
        :pswitch_25  #00000002
        :pswitch_e  #00000003
    .end packed-switch
.end method

.method public read_scalefactor_selection(Ljavazoom/jl/decoder/Bitstream;Ljavazoom/jl/decoder/Crc16;)V
    .registers 5
    .param p1, "stream"  # Ljavazoom/jl/decoder/Bitstream;
    .param p2, "crc"  # Ljavazoom/jl/decoder/Crc16;

    .line 656
    iget v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->allocation:I

    if-eqz v0, :cond_1d

    .line 657
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v1

    iput v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->scfsi:I

    .line 658
    invoke-virtual {p1, v0}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v1

    iput v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->channel2_scfsi:I

    .line 659
    if-eqz p2, :cond_1d

    .line 660
    iget v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->scfsi:I

    invoke-virtual {p2, v1, v0}, Ljavazoom/jl/decoder/Crc16;->add_bits(II)V

    .line 661
    iget v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2IntensityStereo;->channel2_scfsi:I

    invoke-virtual {p2, v1, v0}, Ljavazoom/jl/decoder/Crc16;->add_bits(II)V

    .line 664
    :cond_1d
    return-void
.end method
