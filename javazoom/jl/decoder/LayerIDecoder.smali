.class public Ljavazoom/jl/decoder/LayerIDecoder;
.super Ljava/lang/Object;
.source "LayerIDecoder.java"

# interfaces
.implements Ljavazoom/jl/decoder/FrameDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;,
        Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1IntensityStereo;,
        Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;,
        Ljavazoom/jl/decoder/LayerIDecoder$Subband;
    }
.end annotation


# static fields
.field static final scalefactors:[F


# instance fields
.field protected buffer:Ljavazoom/jl/decoder/OutputBuffer;

.field protected crc:Ljavazoom/jl/decoder/Crc16;

.field protected filter1:Ljavazoom/jl/decoder/SynthesisFilter;

.field protected filter2:Ljavazoom/jl/decoder/SynthesisFilter;

.field protected header:Ljavazoom/jl/decoder/Header;

.field protected mode:I

.field protected num_subbands:I

.field protected stream:Ljavazoom/jl/decoder/Bitstream;

.field protected subbands:[Ljavazoom/jl/decoder/LayerIDecoder$Subband;

.field protected which_channels:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 127
    const/16 v0, 0x40

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    return-void

    :array_a
    .array-data 4
        0x40000000  # 2.0f
        0x3fcb2ff5
        0x3fa14518
        0x3f800000  # 1.0f
        0x3f4b2ff5
        0x3f214518
        0x3f000000  # 0.5f
        0x3ecb2ff5
        0x3ea14518
        0x3e800000  # 0.25f
        0x3e4b2ff5
        0x3e214518
        0x3e000000  # 0.125f
        0x3dcb2ff5
        0x3da14518
        0x3d800000  # 0.0625f
        0x3d4b2ff5
        0x3d214518
        0x3d000000  # 0.03125f
        0x3ccb2ff5
        0x3ca14518
        0x3c800000  # 0.015625f
        0x3c4b2ff5
        0x3c214518
        0x3c000000  # 0.0078125f
        0x3bcb2ff5
        0x3ba14518
        0x3b800000  # 0.00390625f
        0x3b4b2ff5
        0x3b214518
        0x3b000000  # 0.001953125f
        0x3acb2ff5
        0x3aa14518
        0x3a800000  # 9.765625E-4f
        0x3a4b2ff5
        0x3a214518
        0x3a000000
        0x39cb2ff5
        0x39a14518
        0x39800000
        0x394b2ff5
        0x39214518
        0x39000000
        0x38cb2ff5
        0x38a14518
        0x38800000
        0x384b2ff5
        0x38214518
        0x38000000
        0x37cb2ff5
        0x37a14518
        0x37800000
        0x374b2ff5
        0x37214518
        0x37000000
        0x36cb2ff5
        0x36a14518
        0x36800000
        0x364b2ff5
        0x36214518
        0x36000000
        0x35cb2ff5
        0x35a14518
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Ljavazoom/jl/decoder/LayerIDecoder;->crc:Ljavazoom/jl/decoder/Crc16;

    .line 38
    new-instance v0, Ljavazoom/jl/decoder/Crc16;

    invoke-direct {v0}, Ljavazoom/jl/decoder/Crc16;-><init>()V

    iput-object v0, p0, Ljavazoom/jl/decoder/LayerIDecoder;->crc:Ljavazoom/jl/decoder/Crc16;

    .line 39
    return-void
.end method


# virtual methods
.method public create(Ljavazoom/jl/decoder/Bitstream;Ljavazoom/jl/decoder/Header;Ljavazoom/jl/decoder/SynthesisFilter;Ljavazoom/jl/decoder/SynthesisFilter;Ljavazoom/jl/decoder/OutputBuffer;I)V
    .registers 7
    .param p1, "stream0"  # Ljavazoom/jl/decoder/Bitstream;
    .param p2, "header0"  # Ljavazoom/jl/decoder/Header;
    .param p3, "filtera"  # Ljavazoom/jl/decoder/SynthesisFilter;
    .param p4, "filterb"  # Ljavazoom/jl/decoder/SynthesisFilter;
    .param p5, "buffer0"  # Ljavazoom/jl/decoder/OutputBuffer;
    .param p6, "which_ch0"  # I

    .line 43
    iput-object p1, p0, Ljavazoom/jl/decoder/LayerIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    .line 44
    iput-object p2, p0, Ljavazoom/jl/decoder/LayerIDecoder;->header:Ljavazoom/jl/decoder/Header;

    .line 45
    iput-object p3, p0, Ljavazoom/jl/decoder/LayerIDecoder;->filter1:Ljavazoom/jl/decoder/SynthesisFilter;

    .line 46
    iput-object p4, p0, Ljavazoom/jl/decoder/LayerIDecoder;->filter2:Ljavazoom/jl/decoder/SynthesisFilter;

    .line 47
    iput-object p5, p0, Ljavazoom/jl/decoder/LayerIDecoder;->buffer:Ljavazoom/jl/decoder/OutputBuffer;

    .line 48
    iput p6, p0, Ljavazoom/jl/decoder/LayerIDecoder;->which_channels:I

    .line 50
    return-void
.end method

.method protected createSubbands()V
    .registers 4

    .line 73
    iget v0, p0, Ljavazoom/jl/decoder/LayerIDecoder;->mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v1, p0, Ljavazoom/jl/decoder/LayerIDecoder;->num_subbands:I

    if-ge v0, v1, :cond_51

    .line 75
    iget-object v1, p0, Ljavazoom/jl/decoder/LayerIDecoder;->subbands:[Ljavazoom/jl/decoder/LayerIDecoder$Subband;

    new-instance v2, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;

    invoke-direct {v2, v0}, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;-><init>(I)V

    aput-object v2, v1, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 76
    .end local v0  # "i":I
    :cond_16
    iget v0, p0, Ljavazoom/jl/decoder/LayerIDecoder;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    .line 77
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_1c
    iget-object v1, p0, Ljavazoom/jl/decoder/LayerIDecoder;->header:Ljavazoom/jl/decoder/Header;

    invoke-virtual {v1}, Ljavazoom/jl/decoder/Header;->intensity_stereo_bound()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 78
    iget-object v1, p0, Ljavazoom/jl/decoder/LayerIDecoder;->subbands:[Ljavazoom/jl/decoder/LayerIDecoder$Subband;

    new-instance v2, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;

    invoke-direct {v2, v0}, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;-><init>(I)V

    aput-object v2, v1, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 79
    :cond_30
    :goto_30
    iget v1, p0, Ljavazoom/jl/decoder/LayerIDecoder;->num_subbands:I

    if-ge v0, v1, :cond_51

    .line 80
    iget-object v1, p0, Ljavazoom/jl/decoder/LayerIDecoder;->subbands:[Ljavazoom/jl/decoder/LayerIDecoder$Subband;

    new-instance v2, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1IntensityStereo;

    invoke-direct {v2, v0}, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1IntensityStereo;-><init>(I)V

    aput-object v2, v1, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 82
    .end local v0  # "i":I
    :cond_40
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_41
    iget v1, p0, Ljavazoom/jl/decoder/LayerIDecoder;->num_subbands:I

    if-ge v0, v1, :cond_51

    .line 83
    iget-object v1, p0, Ljavazoom/jl/decoder/LayerIDecoder;->subbands:[Ljavazoom/jl/decoder/LayerIDecoder$Subband;

    new-instance v2, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;

    invoke-direct {v2, v0}, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1Stereo;-><init>(I)V

    aput-object v2, v1, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 84
    :cond_51
    return-void
.end method

.method public decodeFrame()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavazoom/jl/decoder/DecoderException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIDecoder;->header:Ljavazoom/jl/decoder/Header;

    invoke-virtual {v0}, Ljavazoom/jl/decoder/Header;->number_of_subbands()I

    move-result v0

    iput v0, p0, Ljavazoom/jl/decoder/LayerIDecoder;->num_subbands:I

    .line 55
    const/16 v0, 0x20

    new-array v0, v0, [Ljavazoom/jl/decoder/LayerIDecoder$Subband;

    iput-object v0, p0, Ljavazoom/jl/decoder/LayerIDecoder;->subbands:[Ljavazoom/jl/decoder/LayerIDecoder$Subband;

    .line 56
    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIDecoder;->header:Ljavazoom/jl/decoder/Header;

    invoke-virtual {v0}, Ljavazoom/jl/decoder/Header;->mode()I

    move-result v0

    iput v0, p0, Ljavazoom/jl/decoder/LayerIDecoder;->mode:I

    .line 58
    invoke-virtual {p0}, Ljavazoom/jl/decoder/LayerIDecoder;->createSubbands()V

    .line 60
    invoke-virtual {p0}, Ljavazoom/jl/decoder/LayerIDecoder;->readAllocation()V

    .line 61
    invoke-virtual {p0}, Ljavazoom/jl/decoder/LayerIDecoder;->readScaleFactorSelection()V

    .line 63
    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIDecoder;->crc:Ljavazoom/jl/decoder/Crc16;

    if-nez v0, :cond_2b

    iget-object v0, p0, Ljavazoom/jl/decoder/LayerIDecoder;->header:Ljavazoom/jl/decoder/Header;

    invoke-virtual {v0}, Ljavazoom/jl/decoder/Header;->checksum_ok()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 64
    :cond_2b
    invoke-virtual {p0}, Ljavazoom/jl/decoder/LayerIDecoder;->readScaleFactors()V

    .line 66
    invoke-virtual {p0}, Ljavazoom/jl/decoder/LayerIDecoder;->readSampleData()V

    .line 69
    :cond_31
    return-void
.end method

.method protected readAllocation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavazoom/jl/decoder/DecoderException;
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Ljavazoom/jl/decoder/LayerIDecoder;->num_subbands:I

    if-ge v0, v1, :cond_15

    .line 89
    iget-object v1, p0, Ljavazoom/jl/decoder/LayerIDecoder;->subbands:[Ljavazoom/jl/decoder/LayerIDecoder$Subband;

    aget-object v1, v1, v0

    iget-object v2, p0, Ljavazoom/jl/decoder/LayerIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    iget-object v3, p0, Ljavazoom/jl/decoder/LayerIDecoder;->header:Ljavazoom/jl/decoder/Header;

    iget-object v4, p0, Ljavazoom/jl/decoder/LayerIDecoder;->crc:Ljavazoom/jl/decoder/Crc16;

    invoke-virtual {v1, v2, v3, v4}, Ljavazoom/jl/decoder/LayerIDecoder$Subband;->read_allocation(Ljavazoom/jl/decoder/Bitstream;Ljavazoom/jl/decoder/Header;Ljavazoom/jl/decoder/Crc16;)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    .end local v0  # "i":I
    :cond_15
    return-void
.end method

.method protected readSampleData()V
    .registers 9

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "read_ready":Z
    const/4 v1, 0x0

    .line 105
    .local v1, "write_ready":Z
    iget-object v2, p0, Ljavazoom/jl/decoder/LayerIDecoder;->header:Ljavazoom/jl/decoder/Header;

    invoke-virtual {v2}, Ljavazoom/jl/decoder/Header;->mode()I

    move-result v2

    .line 108
    .local v2, "mode":I
    :cond_8
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    iget v4, p0, Ljavazoom/jl/decoder/LayerIDecoder;->num_subbands:I

    if-ge v3, v4, :cond_1a

    .line 109
    iget-object v4, p0, Ljavazoom/jl/decoder/LayerIDecoder;->subbands:[Ljavazoom/jl/decoder/LayerIDecoder$Subband;

    aget-object v4, v4, v3

    iget-object v5, p0, Ljavazoom/jl/decoder/LayerIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    invoke-virtual {v4, v5}, Ljavazoom/jl/decoder/LayerIDecoder$Subband;->read_sampledata(Ljavazoom/jl/decoder/Bitstream;)Z

    move-result v0

    .line 108
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 111
    :cond_1a
    const/4 v3, 0x0

    :goto_1b
    iget v4, p0, Ljavazoom/jl/decoder/LayerIDecoder;->num_subbands:I

    if-ge v3, v4, :cond_30

    .line 112
    iget-object v4, p0, Ljavazoom/jl/decoder/LayerIDecoder;->subbands:[Ljavazoom/jl/decoder/LayerIDecoder$Subband;

    aget-object v4, v4, v3

    iget v5, p0, Ljavazoom/jl/decoder/LayerIDecoder;->which_channels:I

    iget-object v6, p0, Ljavazoom/jl/decoder/LayerIDecoder;->filter1:Ljavazoom/jl/decoder/SynthesisFilter;

    iget-object v7, p0, Ljavazoom/jl/decoder/LayerIDecoder;->filter2:Ljavazoom/jl/decoder/SynthesisFilter;

    invoke-virtual {v4, v5, v6, v7}, Ljavazoom/jl/decoder/LayerIDecoder$Subband;->put_next_sample(ILjavazoom/jl/decoder/SynthesisFilter;Ljavazoom/jl/decoder/SynthesisFilter;)Z

    move-result v1

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 114
    :cond_30
    iget-object v4, p0, Ljavazoom/jl/decoder/LayerIDecoder;->filter1:Ljavazoom/jl/decoder/SynthesisFilter;

    iget-object v5, p0, Ljavazoom/jl/decoder/LayerIDecoder;->buffer:Ljavazoom/jl/decoder/OutputBuffer;

    invoke-virtual {v4, v5}, Ljavazoom/jl/decoder/SynthesisFilter;->calculate_pcm_samples(Ljavazoom/jl/decoder/OutputBuffer;)V

    .line 115
    iget v4, p0, Ljavazoom/jl/decoder/LayerIDecoder;->which_channels:I

    if-nez v4, :cond_45

    const/4 v4, 0x3

    if-eq v2, v4, :cond_45

    .line 116
    iget-object v4, p0, Ljavazoom/jl/decoder/LayerIDecoder;->filter2:Ljavazoom/jl/decoder/SynthesisFilter;

    iget-object v5, p0, Ljavazoom/jl/decoder/LayerIDecoder;->buffer:Ljavazoom/jl/decoder/OutputBuffer;

    invoke-virtual {v4, v5}, Ljavazoom/jl/decoder/SynthesisFilter;->calculate_pcm_samples(Ljavazoom/jl/decoder/OutputBuffer;)V

    .line 117
    :cond_45
    if-eqz v1, :cond_1a

    .line 118
    if-eqz v0, :cond_8

    .line 120
    return-void
.end method

.method protected readScaleFactorSelection()V
    .registers 1

    .line 95
    return-void
.end method

.method protected readScaleFactors()V
    .registers 5

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Ljavazoom/jl/decoder/LayerIDecoder;->num_subbands:I

    if-ge v0, v1, :cond_13

    .line 99
    iget-object v1, p0, Ljavazoom/jl/decoder/LayerIDecoder;->subbands:[Ljavazoom/jl/decoder/LayerIDecoder$Subband;

    aget-object v1, v1, v0

    iget-object v2, p0, Ljavazoom/jl/decoder/LayerIDecoder;->stream:Ljavazoom/jl/decoder/Bitstream;

    iget-object v3, p0, Ljavazoom/jl/decoder/LayerIDecoder;->header:Ljavazoom/jl/decoder/Header;

    invoke-virtual {v1, v2, v3}, Ljavazoom/jl/decoder/LayerIDecoder$Subband;->read_scalefactor(Ljavazoom/jl/decoder/Bitstream;Ljavazoom/jl/decoder/Header;)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 100
    .end local v0  # "i":I
    :cond_13
    return-void
.end method
