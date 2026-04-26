.class public Ljavazoom/jl/decoder/MP3Decoder;
.super Ljava/lang/Object;
.source "MP3Decoder.java"


# static fields
.field public static final DECODER_ERROR:I = 0x200

.field public static final ILLEGAL_SUBBAND_ALLOCATION:I = 0x202

.field public static final UNKNOWN_ERROR:I = 0x200

.field public static final UNSUPPORTED_LAYER:I = 0x201


# instance fields
.field private filter1:Ljavazoom/jl/decoder/SynthesisFilter;

.field private filter2:Ljavazoom/jl/decoder/SynthesisFilter;

.field private initialized:Z

.field private l1decoder:Ljavazoom/jl/decoder/LayerIDecoder;

.field private l2decoder:Ljavazoom/jl/decoder/LayerIIDecoder;

.field private l3decoder:Ljavazoom/jl/decoder/LayerIIIDecoder;

.field private output:Ljavazoom/jl/decoder/OutputBuffer;

.field private outputChannels:I

.field private outputFrequency:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method private initialize(Ljavazoom/jl/decoder/Header;)V
    .registers 10
    .param p1, "header"  # Ljavazoom/jl/decoder/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavazoom/jl/decoder/DecoderException;
        }
    .end annotation

    .line 153
    const v0, 0x46ff7800  # 32700.0f

    .line 155
    .local v0, "scalefactor":F
    invoke-virtual {p1}, Ljavazoom/jl/decoder/Header;->mode()I

    move-result v1

    .line 156
    .local v1, "mode":I
    invoke-virtual {p1}, Ljavazoom/jl/decoder/Header;->layer()I

    .line 157
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v2, :cond_11

    move v2, v4

    goto :goto_12

    :cond_11
    move v2, v3

    .line 160
    .local v2, "channels":I
    :goto_12
    iget-object v5, p0, Ljavazoom/jl/decoder/MP3Decoder;->output:Ljavazoom/jl/decoder/OutputBuffer;

    if-eqz v5, :cond_33

    .line 162
    new-instance v5, Ljavazoom/jl/decoder/SynthesisFilter;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v0, v7}, Ljavazoom/jl/decoder/SynthesisFilter;-><init>(IF[F)V

    iput-object v5, p0, Ljavazoom/jl/decoder/MP3Decoder;->filter1:Ljavazoom/jl/decoder/SynthesisFilter;

    .line 165
    if-ne v2, v3, :cond_28

    new-instance v3, Ljavazoom/jl/decoder/SynthesisFilter;

    invoke-direct {v3, v4, v0, v7}, Ljavazoom/jl/decoder/SynthesisFilter;-><init>(IF[F)V

    iput-object v3, p0, Ljavazoom/jl/decoder/MP3Decoder;->filter2:Ljavazoom/jl/decoder/SynthesisFilter;

    .line 167
    :cond_28
    iput v2, p0, Ljavazoom/jl/decoder/MP3Decoder;->outputChannels:I

    .line 168
    invoke-virtual {p1}, Ljavazoom/jl/decoder/Header;->frequency()I

    move-result v3

    iput v3, p0, Ljavazoom/jl/decoder/MP3Decoder;->outputFrequency:I

    .line 170
    iput-boolean v4, p0, Ljavazoom/jl/decoder/MP3Decoder;->initialized:Z

    .line 171
    return-void

    .line 160
    :cond_33
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Output buffer was not set."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public decodeFrame(Ljavazoom/jl/decoder/Header;Ljavazoom/jl/decoder/Bitstream;)Ljavazoom/jl/decoder/OutputBuffer;
    .registers 6
    .param p1, "header"  # Ljavazoom/jl/decoder/Header;
    .param p2, "stream"  # Ljavazoom/jl/decoder/Bitstream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavazoom/jl/decoder/DecoderException;
        }
    .end annotation

    .line 70
    iget-boolean v0, p0, Ljavazoom/jl/decoder/MP3Decoder;->initialized:Z

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Ljavazoom/jl/decoder/MP3Decoder;->initialize(Ljavazoom/jl/decoder/Header;)V

    .line 72
    :cond_7
    invoke-virtual {p1}, Ljavazoom/jl/decoder/Header;->layer()I

    move-result v0

    .line 74
    .local v0, "layer":I
    invoke-virtual {p0, p1, p2, v0}, Ljavazoom/jl/decoder/MP3Decoder;->retrieveDecoder(Ljavazoom/jl/decoder/Header;Ljavazoom/jl/decoder/Bitstream;I)Ljavazoom/jl/decoder/FrameDecoder;

    move-result-object v1

    .line 76
    .local v1, "decoder":Ljavazoom/jl/decoder/FrameDecoder;
    invoke-interface {v1}, Ljavazoom/jl/decoder/FrameDecoder;->decodeFrame()V

    .line 78
    iget-object v2, p0, Ljavazoom/jl/decoder/MP3Decoder;->output:Ljavazoom/jl/decoder/OutputBuffer;

    return-object v2
.end method

.method public getOutputChannels()I
    .registers 2

    .line 106
    iget v0, p0, Ljavazoom/jl/decoder/MP3Decoder;->outputChannels:I

    return v0
.end method

.method public getOutputFrequency()I
    .registers 2

    .line 95
    iget v0, p0, Ljavazoom/jl/decoder/MP3Decoder;->outputFrequency:I

    return v0
.end method

.method protected newDecoderException(I)Ljavazoom/jl/decoder/DecoderException;
    .registers 4
    .param p1, "errorcode"  # I

    .line 110
    new-instance v0, Ljavazoom/jl/decoder/DecoderException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljavazoom/jl/decoder/DecoderException;-><init>(ILjava/lang/Throwable;)V

    return-object v0
.end method

.method protected newDecoderException(ILjava/lang/Throwable;)Ljavazoom/jl/decoder/DecoderException;
    .registers 4
    .param p1, "errorcode"  # I
    .param p2, "throwable"  # Ljava/lang/Throwable;

    .line 114
    new-instance v0, Ljavazoom/jl/decoder/DecoderException;

    invoke-direct {v0, p1, p2}, Ljavazoom/jl/decoder/DecoderException;-><init>(ILjava/lang/Throwable;)V

    return-object v0
.end method

.method protected retrieveDecoder(Ljavazoom/jl/decoder/Header;Ljavazoom/jl/decoder/Bitstream;I)Ljavazoom/jl/decoder/FrameDecoder;
    .registers 13
    .param p1, "header"  # Ljavazoom/jl/decoder/Header;
    .param p2, "stream"  # Ljavazoom/jl/decoder/Bitstream;
    .param p3, "layer"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavazoom/jl/decoder/DecoderException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    .line 122
    .local v0, "decoder":Ljavazoom/jl/decoder/FrameDecoder;
    packed-switch p3, :pswitch_data_60

    goto :goto_54

    .line 124
    :pswitch_5  #0x3
    iget-object v1, p0, Ljavazoom/jl/decoder/MP3Decoder;->l3decoder:Ljavazoom/jl/decoder/LayerIIIDecoder;

    if-nez v1, :cond_1a

    .line 125
    new-instance v1, Ljavazoom/jl/decoder/LayerIIIDecoder;

    iget-object v5, p0, Ljavazoom/jl/decoder/MP3Decoder;->filter1:Ljavazoom/jl/decoder/SynthesisFilter;

    iget-object v6, p0, Ljavazoom/jl/decoder/MP3Decoder;->filter2:Ljavazoom/jl/decoder/SynthesisFilter;

    iget-object v7, p0, Ljavazoom/jl/decoder/MP3Decoder;->output:Ljavazoom/jl/decoder/OutputBuffer;

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Ljavazoom/jl/decoder/LayerIIIDecoder;-><init>(Ljavazoom/jl/decoder/Bitstream;Ljavazoom/jl/decoder/Header;Ljavazoom/jl/decoder/SynthesisFilter;Ljavazoom/jl/decoder/SynthesisFilter;Ljavazoom/jl/decoder/OutputBuffer;I)V

    iput-object v1, p0, Ljavazoom/jl/decoder/MP3Decoder;->l3decoder:Ljavazoom/jl/decoder/LayerIIIDecoder;

    .line 127
    :cond_1a
    iget-object v0, p0, Ljavazoom/jl/decoder/MP3Decoder;->l3decoder:Ljavazoom/jl/decoder/LayerIIIDecoder;

    .line 128
    goto :goto_54

    .line 130
    :pswitch_1d  #0x2
    iget-object v1, p0, Ljavazoom/jl/decoder/MP3Decoder;->l2decoder:Ljavazoom/jl/decoder/LayerIIDecoder;

    if-nez v1, :cond_36

    .line 131
    new-instance v1, Ljavazoom/jl/decoder/LayerIIDecoder;

    invoke-direct {v1}, Ljavazoom/jl/decoder/LayerIIDecoder;-><init>()V

    iput-object v1, p0, Ljavazoom/jl/decoder/MP3Decoder;->l2decoder:Ljavazoom/jl/decoder/LayerIIDecoder;

    .line 132
    iget-object v2, p0, Ljavazoom/jl/decoder/MP3Decoder;->l2decoder:Ljavazoom/jl/decoder/LayerIIDecoder;

    iget-object v5, p0, Ljavazoom/jl/decoder/MP3Decoder;->filter1:Ljavazoom/jl/decoder/SynthesisFilter;

    iget-object v6, p0, Ljavazoom/jl/decoder/MP3Decoder;->filter2:Ljavazoom/jl/decoder/SynthesisFilter;

    iget-object v7, p0, Ljavazoom/jl/decoder/MP3Decoder;->output:Ljavazoom/jl/decoder/OutputBuffer;

    const/4 v8, 0x0

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v2 .. v8}, Ljavazoom/jl/decoder/LayerIIDecoder;->create(Ljavazoom/jl/decoder/Bitstream;Ljavazoom/jl/decoder/Header;Ljavazoom/jl/decoder/SynthesisFilter;Ljavazoom/jl/decoder/SynthesisFilter;Ljavazoom/jl/decoder/OutputBuffer;I)V

    .line 134
    :cond_36
    iget-object v0, p0, Ljavazoom/jl/decoder/MP3Decoder;->l2decoder:Ljavazoom/jl/decoder/LayerIIDecoder;

    .line 135
    goto :goto_54

    .line 137
    :pswitch_39  #0x1
    iget-object v1, p0, Ljavazoom/jl/decoder/MP3Decoder;->l1decoder:Ljavazoom/jl/decoder/LayerIDecoder;

    if-nez v1, :cond_52

    .line 138
    new-instance v1, Ljavazoom/jl/decoder/LayerIDecoder;

    invoke-direct {v1}, Ljavazoom/jl/decoder/LayerIDecoder;-><init>()V

    iput-object v1, p0, Ljavazoom/jl/decoder/MP3Decoder;->l1decoder:Ljavazoom/jl/decoder/LayerIDecoder;

    .line 139
    iget-object v2, p0, Ljavazoom/jl/decoder/MP3Decoder;->l1decoder:Ljavazoom/jl/decoder/LayerIDecoder;

    iget-object v5, p0, Ljavazoom/jl/decoder/MP3Decoder;->filter1:Ljavazoom/jl/decoder/SynthesisFilter;

    iget-object v6, p0, Ljavazoom/jl/decoder/MP3Decoder;->filter2:Ljavazoom/jl/decoder/SynthesisFilter;

    iget-object v7, p0, Ljavazoom/jl/decoder/MP3Decoder;->output:Ljavazoom/jl/decoder/OutputBuffer;

    const/4 v8, 0x0

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v2 .. v8}, Ljavazoom/jl/decoder/LayerIDecoder;->create(Ljavazoom/jl/decoder/Bitstream;Ljavazoom/jl/decoder/Header;Ljavazoom/jl/decoder/SynthesisFilter;Ljavazoom/jl/decoder/SynthesisFilter;Ljavazoom/jl/decoder/OutputBuffer;I)V

    .line 141
    :cond_52
    iget-object v0, p0, Ljavazoom/jl/decoder/MP3Decoder;->l1decoder:Ljavazoom/jl/decoder/LayerIDecoder;

    .line 145
    :goto_54
    if-eqz v0, :cond_57

    .line 147
    return-object v0

    .line 145
    :cond_57
    const/16 v1, 0x201

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljavazoom/jl/decoder/MP3Decoder;->newDecoderException(ILjava/lang/Throwable;)Ljavazoom/jl/decoder/DecoderException;

    move-result-object v1

    throw v1

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_39  #00000001
        :pswitch_1d  #00000002
        :pswitch_5  #00000003
    .end packed-switch
.end method

.method public setOutputBuffer(Ljavazoom/jl/decoder/OutputBuffer;)V
    .registers 2
    .param p1, "out"  # Ljavazoom/jl/decoder/OutputBuffer;

    .line 85
    iput-object p1, p0, Ljavazoom/jl/decoder/MP3Decoder;->output:Ljavazoom/jl/decoder/OutputBuffer;

    .line 86
    return-void
.end method
