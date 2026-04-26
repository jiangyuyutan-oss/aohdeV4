.class Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;
.super Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;
.source "LayerIIDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavazoom/jl/decoder/LayerIIDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubbandLayer2Stereo"
.end annotation


# instance fields
.field protected channel2_allocation:I

.field protected channel2_c:[F

.field protected channel2_codelength:[I

.field protected channel2_d:[F

.field protected channel2_factor:[F

.field protected channel2_samples:[F

.field protected channel2_scalefactor1:F

.field protected channel2_scalefactor2:F

.field protected channel2_scalefactor3:F

.field protected channel2_scfsi:I


# direct methods
.method public constructor <init>(I)V
    .registers 6
    .param p1, "subbandnumber"  # I

    .line 771
    invoke-direct {p0, p1}, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;-><init>(I)V

    .line 760
    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    iput-object v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_codelength:[I

    .line 762
    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput v3, v2, v0

    iput-object v2, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_factor:[F

    .line 764
    new-array v2, v1, [F

    aput v3, v2, v0

    iput-object v2, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_c:[F

    .line 765
    new-array v1, v1, [F

    aput v3, v1, v0

    iput-object v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_d:[F

    .line 772
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_samples:[F

    .line 773
    return-void
.end method


# virtual methods
.method public put_next_sample(ILjavazoom/jl/decoder/SynthesisFilter;Ljavazoom/jl/decoder/SynthesisFilter;)Z
    .registers 9
    .param p1, "channels"  # I
    .param p2, "filter1"  # Ljavazoom/jl/decoder/SynthesisFilter;
    .param p3, "filter2"  # Ljavazoom/jl/decoder/SynthesisFilter;

    .line 872
    invoke-super {p0, p1, p2, p3}, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->put_next_sample(ILjavazoom/jl/decoder/SynthesisFilter;Ljavazoom/jl/decoder/SynthesisFilter;)Z

    move-result v0

    .line 873
    .local v0, "returnvalue":Z
    iget v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_allocation:I

    if-eqz v1, :cond_47

    const/4 v1, 0x1

    if-eq p1, v1, :cond_47

    .line 874
    iget-object v2, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_samples:[F

    iget v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->samplenumber:I

    sub-int/2addr v3, v1

    aget v2, v2, v3

    .line 876
    .local v2, "sample":F
    iget-object v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->groupingtable:[[F

    aget-object v1, v3, v1

    if-nez v1, :cond_24

    iget-object v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_d:[F

    const/4 v3, 0x0

    aget v1, v1, v3

    add-float/2addr v1, v2

    iget-object v4, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_c:[F

    aget v3, v4, v3

    mul-float v2, v1, v3

    .line 878
    :cond_24
    iget v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->groupnumber:I

    const/4 v3, 0x4

    if-gt v1, v3, :cond_2d

    .line 879
    iget v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_scalefactor1:F

    mul-float/2addr v2, v1

    goto :goto_3a

    .line 880
    :cond_2d
    iget v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->groupnumber:I

    const/16 v3, 0x8

    if-gt v1, v3, :cond_37

    .line 881
    iget v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_scalefactor2:F

    mul-float/2addr v2, v1

    goto :goto_3a

    .line 883
    :cond_37
    iget v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_scalefactor3:F

    mul-float/2addr v2, v1

    .line 884
    :goto_3a
    if-nez p1, :cond_42

    .line 885
    iget v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->subbandnumber:I

    invoke-virtual {p3, v2, v1}, Ljavazoom/jl/decoder/SynthesisFilter;->input_sample(FI)V

    goto :goto_47

    .line 887
    :cond_42
    iget v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->subbandnumber:I

    invoke-virtual {p2, v2, v1}, Ljavazoom/jl/decoder/SynthesisFilter;->input_sample(FI)V

    .line 889
    .end local v2  # "sample":F
    :cond_47
    :goto_47
    return v0
.end method

.method public read_allocation(Ljavazoom/jl/decoder/Bitstream;Ljavazoom/jl/decoder/Header;Ljavazoom/jl/decoder/Crc16;)V
    .registers 6
    .param p1, "stream"  # Ljavazoom/jl/decoder/Bitstream;
    .param p2, "header"  # Ljavazoom/jl/decoder/Header;
    .param p3, "crc"  # Ljavazoom/jl/decoder/Crc16;

    .line 779
    invoke-virtual {p0, p2}, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->get_allocationlength(Ljavazoom/jl/decoder/Header;)I

    move-result v0

    .line 780
    .local v0, "length":I
    invoke-virtual {p1, v0}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v1

    iput v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->allocation:I

    .line 781
    invoke-virtual {p1, v0}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v1

    iput v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_allocation:I

    .line 782
    if-eqz p3, :cond_1c

    .line 783
    iget v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->allocation:I

    invoke-virtual {p3, v1, v0}, Ljavazoom/jl/decoder/Crc16;->add_bits(II)V

    .line 784
    iget v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_allocation:I

    invoke-virtual {p3, v1, v0}, Ljavazoom/jl/decoder/Crc16;->add_bits(II)V

    .line 786
    :cond_1c
    return-void
.end method

.method public read_sampledata(Ljavazoom/jl/decoder/Bitstream;)Z
    .registers 10
    .param p1, "stream"  # Ljavazoom/jl/decoder/Bitstream;

    .line 837
    invoke-super {p0, p1}, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->read_sampledata(Ljavazoom/jl/decoder/Bitstream;)Z

    move-result v0

    .line 839
    .local v0, "returnvalue":Z
    iget v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_allocation:I

    if-eqz v1, :cond_76

    iget-object v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->groupingtable:[[F

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_34

    .line 840
    iget-object v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_codelength:[I

    aget v1, v1, v3

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v1

    .line 842
    .local v1, "samplecode":I
    shl-int/lit8 v3, v1, 0x1

    add-int/2addr v1, v3

    .line 848
    iget-object v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_samples:[F

    .line 849
    .local v3, "target":[F
    iget-object v4, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->groupingtable:[[F

    aget-object v4, v4, v2

    .line 850
    .local v4, "source":[F
    const/4 v5, 0x0

    .line 851
    .local v5, "tmp":I
    move v6, v1

    .line 852
    .local v6, "temp":I
    aget v7, v4, v6

    aput v7, v3, v5

    .line 853
    add-int/2addr v6, v2

    .line 854
    add-int/2addr v5, v2

    .line 855
    aget v7, v4, v6

    aput v7, v3, v5

    .line 856
    add-int/2addr v6, v2

    .line 857
    add-int/2addr v5, v2

    .line 858
    aget v2, v4, v6

    aput v2, v3, v5

    .line 860
    .end local v1  # "samplecode":I
    .end local v3  # "target":[F
    .end local v4  # "source":[F
    .end local v5  # "tmp":I
    .end local v6  # "temp":I
    goto :goto_76

    .line 861
    :cond_34
    iget-object v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_samples:[F

    iget-object v4, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_codelength:[I

    aget v4, v4, v3

    invoke-virtual {p1, v4}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_factor:[F

    aget v5, v5, v3

    mul-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, v1, v3

    .line 862
    iget-object v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_samples:[F

    iget-object v4, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_codelength:[I

    aget v4, v4, v3

    invoke-virtual {p1, v4}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_factor:[F

    aget v5, v5, v3

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sub-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, v1, v2

    .line 863
    iget-object v1, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_samples:[F

    iget-object v2, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_codelength:[I

    aget v2, v2, v3

    invoke-virtual {p1, v2}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_factor:[F

    aget v3, v4, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    sub-double/2addr v2, v6

    double-to-float v2, v2

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 865
    :cond_76
    :goto_76
    return v0
.end method

.method public read_scalefactor(Ljavazoom/jl/decoder/Bitstream;Ljavazoom/jl/decoder/Header;)V
    .registers 12
    .param p1, "stream"  # Ljavazoom/jl/decoder/Bitstream;
    .param p2, "header"  # Ljavazoom/jl/decoder/Header;

    .line 806
    invoke-super {p0, p1, p2}, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2;->read_scalefactor(Ljavazoom/jl/decoder/Bitstream;Ljavazoom/jl/decoder/Header;)V

    .line 807
    iget v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_allocation:I

    if-eqz v0, :cond_7a

    .line 808
    iget v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_scfsi:I

    const/4 v1, 0x6

    packed-switch v0, :pswitch_data_7c

    goto :goto_6a

    .line 825
    :pswitch_e  #0x3
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v2

    aget v0, v0, v2

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_scalefactor1:F

    .line 826
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_scalefactor3:F

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_scalefactor2:F

    goto :goto_6a

    .line 821
    :pswitch_25  #0x2
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_scalefactor3:F

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_scalefactor2:F

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_scalefactor1:F

    .line 822
    goto :goto_6a

    .line 816
    :pswitch_34  #0x1
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v2

    aget v0, v0, v2

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_scalefactor2:F

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_scalefactor1:F

    .line 817
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_scalefactor3:F

    .line 818
    goto :goto_6a

    .line 810
    :pswitch_4b  #0x0
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v2

    aget v0, v0, v2

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_scalefactor1:F

    .line 811
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v2

    aget v0, v0, v2

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_scalefactor2:F

    .line 812
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_scalefactor3:F

    .line 813
    nop

    .line 829
    :goto_6a
    iget v3, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_allocation:I

    iget-object v5, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_factor:[F

    iget-object v6, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_codelength:[I

    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_c:[F

    iget-object v8, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_d:[F

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v8}, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->prepare_sample_reading(Ljavazoom/jl/decoder/Header;II[F[I[F[F)V

    .line 831
    :cond_7a
    return-void

    nop

    :pswitch_data_7c
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

    .line 792
    iget v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->allocation:I

    const/4 v1, 0x2

    if-eqz v0, :cond_12

    .line 793
    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v0

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->scfsi:I

    .line 794
    if-eqz p2, :cond_12

    iget v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->scfsi:I

    invoke-virtual {p2, v0, v1}, Ljavazoom/jl/decoder/Crc16;->add_bits(II)V

    .line 796
    :cond_12
    iget v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_allocation:I

    if-eqz v0, :cond_23

    .line 797
    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v0

    iput v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_scfsi:I

    .line 798
    if-eqz p2, :cond_23

    iget v0, p0, Ljavazoom/jl/decoder/LayerIIDecoder$SubbandLayer2Stereo;->channel2_scfsi:I

    invoke-virtual {p2, v0, v1}, Ljavazoom/jl/decoder/Crc16;->add_bits(II)V

    .line 800
    :cond_23
    return-void
.end method
