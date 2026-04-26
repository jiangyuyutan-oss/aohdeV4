.class Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;
.super Ljavazoom/jl/decoder/LayerIDecoder$Subband;
.source "LayerIDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavazoom/jl/decoder/LayerIDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubbandLayer1"
.end annotation


# static fields
.field public static final table_factor:[F

.field public static final table_offset:[F


# instance fields
.field protected allocation:I

.field protected factor:F

.field protected offset:F

.field protected sample:F

.field protected samplelength:I

.field protected samplenumber:I

.field protected scalefactor:F

.field protected subbandnumber:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 164
    const/16 v0, 0xf

    new-array v1, v0, [F

    fill-array-data v1, :array_12

    sput-object v1, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->table_factor:[F

    .line 170
    new-array v0, v0, [F

    fill-array-data v0, :array_34

    sput-object v0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->table_offset:[F

    return-void

    nop

    :array_12
    .array-data 4
        0x0
        0x3f2aaaab
        0x3e924925
        0x3e088889
        0x3d842108
        0x3d020821
        0x3c810204
        0x3c008081
        0x3b804020
        0x3b002008
        0x3a801002
        0x3a000801
        0x39800400
        0x39000200
        0x38800100
    .end array-data

    :array_34
    .array-data 4
        0x0
        -0x40d55555
        -0x40a49249
        -0x40911111
        -0x40884211
        -0x40841041
        -0x40820408
        -0x40810101
        -0x40808040
        -0x40804010
        -0x40802004
        -0x40801001
        -0x40800800
        -0x40800400  # -0.99993896f
        -0x40800200  # -0.9999695f
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "subbandnumber"  # I

    .line 189
    invoke-direct {p0}, Ljavazoom/jl/decoder/LayerIDecoder$Subband;-><init>()V

    .line 190
    iput p1, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->subbandnumber:I

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->samplenumber:I

    .line 192
    return-void
.end method


# virtual methods
.method public put_next_sample(ILjavazoom/jl/decoder/SynthesisFilter;Ljavazoom/jl/decoder/SynthesisFilter;)Z
    .registers 6
    .param p1, "channels"  # I
    .param p2, "filter1"  # Ljavazoom/jl/decoder/SynthesisFilter;
    .param p3, "filter2"  # Ljavazoom/jl/decoder/SynthesisFilter;

    .line 234
    iget v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->allocation:I

    if-eqz v0, :cond_17

    const/4 v0, 0x2

    if-eq p1, v0, :cond_17

    .line 235
    iget v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->sample:F

    iget v1, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->factor:F

    mul-float/2addr v0, v1

    iget v1, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->offset:F

    add-float/2addr v0, v1

    iget v1, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->scalefactor:F

    mul-float/2addr v0, v1

    .line 236
    .local v0, "scaled_sample":F
    iget v1, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->subbandnumber:I

    invoke-virtual {p2, v0, v1}, Ljavazoom/jl/decoder/SynthesisFilter;->input_sample(FI)V

    .line 238
    .end local v0  # "scaled_sample":F
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public read_allocation(Ljavazoom/jl/decoder/Bitstream;Ljavazoom/jl/decoder/Header;Ljavazoom/jl/decoder/Crc16;)V
    .registers 7
    .param p1, "stream"  # Ljavazoom/jl/decoder/Bitstream;
    .param p2, "header"  # Ljavazoom/jl/decoder/Header;
    .param p3, "crc"  # Ljavazoom/jl/decoder/Crc16;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavazoom/jl/decoder/DecoderException;
        }
    .end annotation

    .line 198
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v1

    iput v1, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->allocation:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_2d

    .line 203
    if-eqz p3, :cond_12

    iget v1, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->allocation:I

    invoke-virtual {p3, v1, v0}, Ljavazoom/jl/decoder/Crc16;->add_bits(II)V

    .line 204
    :cond_12
    iget v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->allocation:I

    if-eqz v0, :cond_2c

    .line 205
    iget v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->allocation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->samplelength:I

    .line 206
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->table_factor:[F

    iget v1, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->allocation:I

    aget v0, v0, v1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->factor:F

    .line 207
    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->table_offset:[F

    iget v1, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->allocation:I

    aget v0, v0, v1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->offset:F

    .line 209
    :cond_2c
    return-void

    .line 199
    :cond_2d
    new-instance v0, Ljavazoom/jl/decoder/DecoderException;

    const/16 v1, 0x202

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavazoom/jl/decoder/DecoderException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public read_sampledata(Ljavazoom/jl/decoder/Bitstream;)Z
    .registers 6
    .param p1, "stream"  # Ljavazoom/jl/decoder/Bitstream;

    .line 222
    iget v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->allocation:I

    if-eqz v0, :cond_d

    iget v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->samplelength:I

    invoke-virtual {p1, v0}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->sample:F

    .line 223
    :cond_d
    iget v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->samplenumber:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->samplenumber:I

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1b

    .line 224
    iput v3, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->samplenumber:I

    .line 225
    return v1

    .line 227
    :cond_1b
    return v3
.end method

.method public read_scalefactor(Ljavazoom/jl/decoder/Bitstream;Ljavazoom/jl/decoder/Header;)V
    .registers 5
    .param p1, "stream"  # Ljavazoom/jl/decoder/Bitstream;
    .param p2, "header"  # Ljavazoom/jl/decoder/Header;

    .line 215
    iget v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->allocation:I

    if-eqz v0, :cond_f

    sget-object v0, Ljavazoom/jl/decoder/LayerIDecoder;->scalefactors:[F

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Ljavazoom/jl/decoder/LayerIDecoder$SubbandLayer1;->scalefactor:F

    .line 216
    :cond_f
    return-void
.end method
