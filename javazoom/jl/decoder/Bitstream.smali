.class public final Ljavazoom/jl/decoder/Bitstream;
.super Ljava/lang/Object;
.source "Bitstream.java"


# static fields
.field public static final BITSTREAM_ERROR:I = 0x100

.field public static final BITSTREAM_LAST:I = 0x1ff

.field private static final BUFFER_INT_SIZE:I = 0x1b1

.field static INITIAL_SYNC:B = 0x0t

.field public static final INVALIDFRAME:I = 0x105

.field public static final STREAM_EOF:I = 0x104

.field public static final STREAM_ERROR:I = 0x102

.field static STRICT_SYNC:B = 0x0t

.field public static final UNEXPECTED_EOF:I = 0x103

.field public static final UNKNOWN_ERROR:I = 0x100

.field public static final UNKNOWN_SAMPLE_RATE:I = 0x101


# instance fields
.field private bitindex:I

.field private final bitmask:[I

.field private crc:[Ljavazoom/jl/decoder/Crc16;

.field private firstframe:Z

.field private frame_bytes:[B

.field private final framebuffer:[I

.field private framesize:I

.field private final header:Ljavazoom/jl/decoder/Header;

.field private header_pos:I

.field private rawid3v2:[B

.field private replayGainScale:Ljava/lang/Float;

.field private single_ch_mode:Z

.field private final source:Ljava/io/PushbackInputStream;

.field private final syncbuf:[B

.field private syncword:I

.field private wordpointer:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const/4 v0, 0x0

    sput-byte v0, Ljavazoom/jl/decoder/Bitstream;->INITIAL_SYNC:B

    .line 55
    const/4 v0, 0x1

    sput-byte v0, Ljavazoom/jl/decoder/Bitstream;->STRICT_SYNC:B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 5
    .param p1, "in"  # Ljava/io/InputStream;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/16 v0, 0x1b1

    new-array v0, v0, [I

    iput-object v0, p0, Ljavazoom/jl/decoder/Bitstream;->framebuffer:[I

    .line 76
    const/16 v0, 0x6c4

    new-array v1, v0, [B

    iput-object v1, p0, Ljavazoom/jl/decoder/Bitstream;->frame_bytes:[B

    .line 96
    const/4 v1, 0x0

    iput v1, p0, Ljavazoom/jl/decoder/Bitstream;->header_pos:I

    .line 107
    const/16 v1, 0x12

    new-array v1, v1, [I

    fill-array-data v1, :array_52

    iput-object v1, p0, Ljavazoom/jl/decoder/Bitstream;->bitmask:[I

    .line 114
    new-instance v1, Ljavazoom/jl/decoder/Header;

    invoke-direct {v1}, Ljavazoom/jl/decoder/Header;-><init>()V

    iput-object v1, p0, Ljavazoom/jl/decoder/Bitstream;->header:Ljavazoom/jl/decoder/Header;

    .line 116
    const/4 v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Ljavazoom/jl/decoder/Bitstream;->syncbuf:[B

    .line 118
    const/4 v1, 0x1

    new-array v2, v1, [Ljavazoom/jl/decoder/Crc16;

    iput-object v2, p0, Ljavazoom/jl/decoder/Bitstream;->crc:[Ljavazoom/jl/decoder/Crc16;

    .line 120
    const/4 v2, 0x0

    iput-object v2, p0, Ljavazoom/jl/decoder/Bitstream;->rawid3v2:[B

    .line 122
    iput-boolean v1, p0, Ljavazoom/jl/decoder/Bitstream;->firstframe:Z

    .line 130
    if-eqz p1, :cond_49

    .line 131
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v2

    .line 132
    invoke-direct {p0, p1}, Ljavazoom/jl/decoder/Bitstream;->loadID3v2(Ljava/io/InputStream;)V

    .line 133
    iput-boolean v1, p0, Ljavazoom/jl/decoder/Bitstream;->firstframe:Z

    .line 135
    new-instance v1, Ljava/io/PushbackInputStream;

    invoke-direct {v1, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Ljavazoom/jl/decoder/Bitstream;->source:Ljava/io/PushbackInputStream;

    .line 137
    invoke-virtual {p0}, Ljavazoom/jl/decoder/Bitstream;->closeFrame()V

    .line 140
    return-void

    .line 130
    :cond_49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_52
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
        0x1ffff
    .end array-data
.end method

.method private loadID3v2(Ljava/io/InputStream;)V
    .registers 6
    .param p1, "in"  # Ljava/io/InputStream;

    .line 156
    const/4 v0, -0x1

    .line 159
    .local v0, "size":I
    const/16 v1, 0xa

    :try_start_3
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    .line 160
    invoke-direct {p0, p1}, Ljavazoom/jl/decoder/Bitstream;->readID3v2Header(Ljava/io/InputStream;)I

    move-result v1

    move v0, v1

    .line 161
    iput v0, p0, Ljavazoom/jl/decoder/Bitstream;->header_pos:I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_1a
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    .line 166
    :try_start_d
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_11

    .line 168
    :goto_10
    goto :goto_1f

    .line 167
    :catch_11
    move-exception v1

    .line 169
    goto :goto_1f

    .line 164
    :catchall_13
    move-exception v1

    .line 166
    :try_start_14
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_18

    .line 168
    goto :goto_19

    .line 167
    :catch_18
    move-exception v2

    .line 168
    :goto_19
    throw v1

    .line 162
    :catch_1a
    move-exception v1

    .line 166
    :try_start_1b
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_11

    goto :goto_10

    .line 172
    :goto_1f
    if-lez v0, :cond_36

    .line 173
    :try_start_21
    new-array v1, v0, [B

    iput-object v1, p0, Ljavazoom/jl/decoder/Bitstream;->rawid3v2:[B

    .line 174
    iget-object v1, p0, Ljavazoom/jl/decoder/Bitstream;->rawid3v2:[B

    iget-object v2, p0, Ljavazoom/jl/decoder/Bitstream;->rawid3v2:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    .line 175
    iget-object v1, p0, Ljavazoom/jl/decoder/Bitstream;->rawid3v2:[B

    invoke-direct {p0, v1}, Ljavazoom/jl/decoder/Bitstream;->parseID3v2Frames([B)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_33} :catch_34

    goto :goto_36

    .line 177
    :catch_34
    move-exception v1

    goto :goto_37

    .line 178
    :cond_36
    :goto_36
    nop

    .line 179
    :goto_37
    return-void
.end method

.method private nextFrame()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavazoom/jl/decoder/BitstreamException;
        }
    .end annotation

    .line 350
    iget-object v0, p0, Ljavazoom/jl/decoder/Bitstream;->header:Ljavazoom/jl/decoder/Header;

    iget-object v1, p0, Ljavazoom/jl/decoder/Bitstream;->crc:[Ljavazoom/jl/decoder/Crc16;

    invoke-virtual {v0, p0, v1}, Ljavazoom/jl/decoder/Header;->read_header(Ljavazoom/jl/decoder/Bitstream;[Ljavazoom/jl/decoder/Crc16;)V

    .line 351
    return-void
.end method

.method private parseID3v2Frames([B)V
    .registers 23
    .param p1, "bframes"  # [B

    .line 215
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_7

    return-void

    .line 216
    :cond_7
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const-string v5, "ID3"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    return-void

    .line 217
    :cond_17
    aget-byte v0, v2, v4

    and-int/lit16 v5, v0, 0xff

    .line 218
    .local v5, "v2version":I
    const/4 v0, 0x2

    if-lt v5, v0, :cond_175

    const/4 v6, 0x4

    if-le v5, v6, :cond_23

    goto/16 :goto_175

    .line 222
    :cond_23
    const/4 v7, 0x0

    .local v7, "replayGain":Ljava/lang/Float;
    const/4 v8, 0x0

    .line 224
    .local v8, "replayGainPeak":Ljava/lang/Float;
    const/4 v9, 0x0

    .line 225
    .local v9, "value":Ljava/lang/String;
    const/16 v10, 0xa

    .local v10, "i":I
    :goto_28
    :try_start_28
    array-length v11, v2

    if-ge v10, v11, :cond_142

    aget-byte v11, v2, v10
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_2d} :catch_173

    if-lez v11, :cond_142

    .line 226
    const-string v12, ""

    const-string v13, " dB"

    const-string v14, "replaygain_track_gain"

    const-string v15, "replaygain_track_peak"

    const-string v11, "\u0000"

    const-string v0, "TXXX"

    const/4 v3, 0x1

    if-eq v5, v4, :cond_bb

    if-ne v5, v6, :cond_42

    goto/16 :goto_bb

    .line 249
    :cond_42
    :try_start_42
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2, v10, v4}, Ljava/lang/String;-><init>([BII)V

    .line 250
    .local v6, "scode":Ljava/lang/String;
    add-int/lit8 v19, v10, 0x3

    aget-byte v19, v2, v19

    shl-int/lit8 v19, v19, 0x10

    const/16 v17, 0x0

    add-int/lit8 v19, v19, 0x0

    add-int/lit8 v20, v10, 0x4

    aget-byte v20, v2, v20

    shl-int/lit8 v20, v20, 0x8

    add-int v19, v19, v20

    add-int/lit8 v20, v10, 0x5

    aget-byte v20, v2, v20

    add-int v4, v19, v20

    .line 251
    .local v4, "size":I
    add-int/lit8 v10, v10, 0x6

    .line 252
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 253
    invoke-direct {v1, v2, v10, v4, v3}, Ljavazoom/jl/decoder/Bitstream;->parseText([BIII)Ljava/lang/String;

    move-result-object v0

    .line 254
    .end local v9  # "value":Ljava/lang/String;
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 255
    .local v9, "values":[Ljava/lang/String;
    array-length v11, v9

    const/4 v3, 0x2

    if-ne v11, v3, :cond_b4

    .line 256
    const/4 v3, 0x0

    aget-object v11, v9, v3

    move-object v3, v11

    .line 257
    .local v3, "name":Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v11, v9, v11

    move-object v0, v11

    .line 258
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_92

    .line 259
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    move-object v8, v11

    .line 260
    move-object v9, v0

    if-eqz v7, :cond_8f

    goto/16 :goto_142

    :cond_8f
    const/4 v11, 0x2

    goto/16 :goto_13b

    .line 261
    :cond_92
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b0

    .line 262
    invoke-virtual {v0, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    const/high16 v12, 0x40400000  # 3.0f

    add-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    move-object v7, v11

    .line 263
    move-object v9, v0

    if-eqz v8, :cond_ad

    goto/16 :goto_142

    :cond_ad
    const/4 v11, 0x2

    goto/16 :goto_13b

    .line 261
    :cond_b0
    move-object v9, v0

    const/4 v11, 0x2

    goto/16 :goto_13b

    .line 255
    .end local v3  # "name":Ljava/lang/String;
    :cond_b4
    move-object v9, v0

    const/4 v11, 0x2

    goto/16 :goto_13b

    .line 252
    .end local v0  # "value":Ljava/lang/String;
    .local v9, "value":Ljava/lang/String;
    :cond_b8
    const/4 v11, 0x2

    goto/16 :goto_13b

    .line 228
    .end local v4  # "size":I
    .end local v6  # "scode":Ljava/lang/String;
    :cond_bb
    :goto_bb
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x4

    invoke-direct {v3, v2, v10, v4}, Ljava/lang/String;-><init>([BII)V

    .line 229
    .local v3, "code":Ljava/lang/String;
    add-int/lit8 v6, v10, 0x4

    aget-byte v6, v2, v6

    shl-int/lit8 v6, v6, 0x18

    const/high16 v18, -0x1000000

    and-int v6, v6, v18

    add-int/lit8 v18, v10, 0x5

    aget-byte v18, v2, v18

    shl-int/lit8 v18, v18, 0x10

    const/high16 v20, 0xff0000

    and-int v18, v18, v20

    or-int v6, v6, v18

    add-int/lit8 v18, v10, 0x6

    aget-byte v18, v2, v18

    shl-int/lit8 v18, v18, 0x8

    const v20, 0xff00

    and-int v18, v18, v20

    or-int v6, v6, v18

    add-int/lit8 v18, v10, 0x7

    aget-byte v4, v2, v18

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v6

    .line 231
    .restart local v4  # "size":I
    add-int/lit8 v10, v10, 0xa

    .line 232
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_139

    .line 233
    const/4 v0, 0x1

    invoke-direct {v1, v2, v10, v4, v0}, Ljavazoom/jl/decoder/Bitstream;->parseText([BIII)Ljava/lang/String;

    move-result-object v6

    move-object v9, v6

    .line 234
    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "values":[Ljava/lang/String;
    array-length v6, v0

    const/4 v11, 0x2

    if-ne v6, v11, :cond_13a

    .line 236
    const/4 v6, 0x0

    aget-object v16, v0, v6

    move-object/from16 v17, v16

    .line 237
    .local v17, "name":Ljava/lang/String;
    const/16 v16, 0x1

    aget-object v16, v0, v16

    move-object/from16 v9, v16

    .line 238
    move-object/from16 v6, v17

    .end local v17  # "name":Ljava/lang/String;
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_120

    .line 239
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    move-object v8, v12

    .line 240
    if-eqz v7, :cond_13a

    goto :goto_142

    .line 241
    :cond_120
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13a

    .line 242
    invoke-virtual {v9, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    const/high16 v13, 0x40400000  # 3.0f

    add-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    move-object v7, v12

    .line 243
    if-eqz v8, :cond_13a

    goto :goto_142

    .line 232
    .end local v0  # "values":[Ljava/lang/String;
    .end local v6  # "name":Ljava/lang/String;
    :cond_139
    const/4 v11, 0x2

    .line 247
    .end local v3  # "code":Ljava/lang/String;
    :cond_13a
    nop

    .line 225
    :goto_13b
    add-int/2addr v10, v4

    move v0, v11

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v6, 0x4

    goto/16 :goto_28

    .line 269
    .end local v4  # "size":I
    .end local v10  # "i":I
    :cond_142
    :goto_142
    if-eqz v7, :cond_172

    if-eqz v8, :cond_172

    .line 270
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v3, 0x41a00000  # 20.0f

    div-float/2addr v0, v3

    float-to-double v3, v0

    const-wide/high16 v10, 0x4024000000000000L  # 10.0

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v1, Ljavazoom/jl/decoder/Bitstream;->replayGainScale:Ljava/lang/Float;

    .line 272
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v3, 0x3f800000  # 1.0f

    div-float/2addr v3, v0

    iget-object v0, v1, Ljavazoom/jl/decoder/Bitstream;->replayGainScale:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v1, Ljavazoom/jl/decoder/Bitstream;->replayGainScale:Ljava/lang/Float;
    :try_end_172
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_172} :catch_173

    .line 275
    .end local v7  # "replayGain":Ljava/lang/Float;
    .end local v8  # "replayGainPeak":Ljava/lang/Float;
    .end local v9  # "value":Ljava/lang/String;
    :cond_172
    goto :goto_174

    .line 274
    :catch_173
    move-exception v0

    .line 276
    :goto_174
    return-void

    .line 219
    :cond_175
    :goto_175
    return-void
.end method

.method private parseText([BIII)Ljava/lang/String;
    .registers 11
    .param p1, "bframes"  # [B
    .param p2, "offset"  # I
    .param p3, "size"  # I
    .param p4, "skip"  # I

    .line 279
    const/4 v0, 0x0

    .line 281
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x4

    :try_start_2
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "UTF16"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "UTF-16BE"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "UTF-8"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 282
    .local v1, "ENC_TYPES":[Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    add-int v3, p2, p4

    sub-int v4, p3, p4

    aget-byte v5, p1, p2

    aget-object v5, v1, v5

    invoke-direct {v2, p1, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_25
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_25} :catch_27

    move-object v0, v2

    .line 284
    .end local v1  # "ENC_TYPES":[Ljava/lang/String;
    goto :goto_28

    .line 283
    :catch_27
    move-exception v1

    .line 285
    :goto_28
    return-object v0
.end method

.method private readBytes([BII)I
    .registers 7
    .param p1, "b"  # [B
    .param p2, "offs"  # I
    .param p3, "len"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavazoom/jl/decoder/BitstreamException;
        }
    .end annotation

    .line 597
    const/4 v0, 0x0

    .line 599
    .local v0, "totalBytesRead":I
    :goto_1
    if-lez p3, :cond_19

    .line 600
    :try_start_3
    iget-object v1, p0, Ljavazoom/jl/decoder/Bitstream;->source:Ljava/io/PushbackInputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_11

    .line 601
    .local v1, "bytesread":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    goto :goto_19

    .line 602
    :cond_d
    add-int/2addr v0, v1

    .line 603
    add-int/2addr p2, v1

    .line 604
    sub-int/2addr p3, v1

    .line 605
    .end local v1  # "bytesread":I
    goto :goto_1

    .line 606
    :catch_11
    move-exception v1

    .line 607
    .local v1, "ex":Ljava/io/IOException;
    const/16 v2, 0x102

    invoke-virtual {p0, v2, v1}, Ljavazoom/jl/decoder/Bitstream;->newBitstreamException(ILjava/lang/Throwable;)Ljavazoom/jl/decoder/BitstreamException;

    move-result-object v2

    throw v2

    .line 608
    .end local v1  # "ex":Ljava/io/IOException;
    :cond_19
    :goto_19
    nop

    .line 609
    return v0
.end method

.method private readFully([BII)I
    .registers 8
    .param p1, "b"  # [B
    .param p2, "offs"  # I
    .param p3, "len"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavazoom/jl/decoder/BitstreamException;
        }
    .end annotation

    .line 573
    const/4 v0, 0x0

    .line 575
    .local v0, "nRead":I
    :goto_1
    if-lez p3, :cond_2b

    .line 576
    :try_start_3
    iget-object v1, p0, Ljavazoom/jl/decoder/Bitstream;->source:Ljava/io/PushbackInputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_20

    .line 577
    .local v1, "bytesread":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1c

    .line 578
    :goto_c
    add-int/lit8 v2, p3, -0x1

    .end local p3  # "len":I
    .local v2, "len":I
    if-lez p3, :cond_1a

    .line 579
    add-int/lit8 p3, p2, 0x1

    .end local p2  # "offs":I
    .local p3, "offs":I
    const/4 v3, 0x0

    :try_start_13
    aput-byte v3, p1, p2
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_15} :catch_18

    move p2, p3

    move p3, v2

    goto :goto_c

    .line 587
    .end local v1  # "bytesread":I
    :catch_18
    move-exception p2

    goto :goto_24

    .line 578
    .end local p3  # "offs":I
    .restart local v1  # "bytesread":I
    .restart local p2  # "offs":I
    :cond_1a
    move p3, v2

    goto :goto_2b

    .line 583
    .end local v2  # "len":I
    .local p3, "len":I
    :cond_1c
    add-int/2addr v0, v1

    .line 584
    add-int/2addr p2, v1

    .line 585
    sub-int/2addr p3, v1

    .line 586
    .end local v1  # "bytesread":I
    goto :goto_1

    .line 587
    :catch_20
    move-exception v1

    move v2, p3

    move p3, p2

    move-object p2, v1

    .line 588
    .restart local v2  # "len":I
    .local p2, "ex":Ljava/io/IOException;
    .local p3, "offs":I
    :goto_24
    const/16 v1, 0x102

    invoke-virtual {p0, v1, p2}, Ljavazoom/jl/decoder/Bitstream;->newBitstreamException(ILjava/lang/Throwable;)Ljavazoom/jl/decoder/BitstreamException;

    move-result-object v1

    throw v1

    .line 589
    .end local v2  # "len":I
    .local p2, "offs":I
    .local p3, "len":I
    :cond_2b
    :goto_2b
    nop

    .line 590
    return v0
.end method

.method private readID3v2Header(Ljava/io/InputStream;)I
    .registers 11
    .param p1, "in"  # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 190
    .local v1, "id3header":[B
    const/16 v2, -0xa

    .line 191
    .local v2, "size":I
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {p1, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    .line 193
    aget-byte v5, v1, v3

    const/16 v6, 0x49

    if-ne v5, v6, :cond_36

    const/4 v5, 0x1

    aget-byte v6, v1, v5

    const/16 v7, 0x44

    if-ne v6, v7, :cond_36

    const/4 v6, 0x2

    aget-byte v7, v1, v6

    const/16 v8, 0x33

    if-ne v7, v8, :cond_36

    .line 194
    invoke-virtual {p1, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    .line 195
    invoke-virtual {p1, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    .line 196
    aget-byte v0, v1, v3

    shl-int/lit8 v0, v0, 0x15

    aget-byte v3, v1, v5

    shl-int/lit8 v3, v3, 0xe

    add-int/2addr v0, v3

    aget-byte v3, v1, v6

    shl-int/lit8 v3, v3, 0x7

    add-int/2addr v0, v3

    aget-byte v3, v1, v4

    add-int v2, v0, v3

    .line 198
    :cond_36
    add-int/lit8 v0, v2, 0xa

    return v0
.end method

.method private readNextFrame()Ljavazoom/jl/decoder/Header;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavazoom/jl/decoder/BitstreamException;
        }
    .end annotation

    .line 340
    iget v0, p0, Ljavazoom/jl/decoder/Bitstream;->framesize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-direct {p0}, Ljavazoom/jl/decoder/Bitstream;->nextFrame()V

    .line 341
    :cond_8
    iget-object v0, p0, Ljavazoom/jl/decoder/Bitstream;->header:Ljavazoom/jl/decoder/Header;

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavazoom/jl/decoder/BitstreamException;
        }
    .end annotation

    .line 298
    :try_start_0
    iget-object v0, p0, Ljavazoom/jl/decoder/Bitstream;->source:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    .line 301
    nop

    .line 302
    return-void

    .line 299
    :catch_7
    move-exception v0

    .line 300
    .local v0, "ex":Ljava/io/IOException;
    const/16 v1, 0x102

    invoke-virtual {p0, v1, v0}, Ljavazoom/jl/decoder/Bitstream;->newBitstreamException(ILjava/lang/Throwable;)Ljavazoom/jl/decoder/BitstreamException;

    move-result-object v1

    throw v1
.end method

.method public closeFrame()V
    .registers 2

    .line 370
    const/4 v0, -0x1

    iput v0, p0, Ljavazoom/jl/decoder/Bitstream;->framesize:I

    .line 371
    iput v0, p0, Ljavazoom/jl/decoder/Bitstream;->wordpointer:I

    .line 372
    iput v0, p0, Ljavazoom/jl/decoder/Bitstream;->bitindex:I

    .line 373
    return-void
.end method

.method public getRawID3v2()Ljava/io/InputStream;
    .registers 3

    .line 206
    iget-object v0, p0, Ljavazoom/jl/decoder/Bitstream;->rawid3v2:[B

    if-nez v0, :cond_6

    .line 207
    const/4 v0, 0x0

    return-object v0

    .line 209
    :cond_6
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Ljavazoom/jl/decoder/Bitstream;->rawid3v2:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 210
    .local v0, "bain":Ljava/io/ByteArrayInputStream;
    return-object v0
.end method

.method public getReplayGainScale()Ljava/lang/Float;
    .registers 2

    .line 289
    iget-object v0, p0, Ljavazoom/jl/decoder/Bitstream;->replayGainScale:Ljava/lang/Float;

    return-object v0
.end method

.method public get_bits(I)I
    .registers 9
    .param p1, "number_of_bits"  # I

    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, "returnvalue":I
    iget v1, p0, Ljavazoom/jl/decoder/Bitstream;->bitindex:I

    add-int/2addr v1, p1

    .line 526
    .local v1, "sum":I
    iget v2, p0, Ljavazoom/jl/decoder/Bitstream;->wordpointer:I

    const/4 v3, 0x0

    if-gez v2, :cond_b

    iput v3, p0, Ljavazoom/jl/decoder/Bitstream;->wordpointer:I

    .line 529
    :cond_b
    const/16 v2, 0x20

    if-gt v1, v2, :cond_2e

    .line 531
    iget-object v4, p0, Ljavazoom/jl/decoder/Bitstream;->framebuffer:[I

    iget v5, p0, Ljavazoom/jl/decoder/Bitstream;->wordpointer:I

    aget v4, v4, v5

    rsub-int/lit8 v5, v1, 0x20

    ushr-int/2addr v4, v5

    iget-object v5, p0, Ljavazoom/jl/decoder/Bitstream;->bitmask:[I

    aget v5, v5, p1

    and-int v0, v4, v5

    .line 533
    iget v4, p0, Ljavazoom/jl/decoder/Bitstream;->bitindex:I

    add-int/2addr v4, p1

    iput v4, p0, Ljavazoom/jl/decoder/Bitstream;->bitindex:I

    if-ne v4, v2, :cond_2d

    .line 534
    iput v3, p0, Ljavazoom/jl/decoder/Bitstream;->bitindex:I

    .line 535
    iget v2, p0, Ljavazoom/jl/decoder/Bitstream;->wordpointer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljavazoom/jl/decoder/Bitstream;->wordpointer:I

    .line 537
    :cond_2d
    return v0

    .line 544
    :cond_2e
    iget-object v2, p0, Ljavazoom/jl/decoder/Bitstream;->framebuffer:[I

    iget v3, p0, Ljavazoom/jl/decoder/Bitstream;->wordpointer:I

    aget v2, v2, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 545
    .local v2, "Right":I
    iget v4, p0, Ljavazoom/jl/decoder/Bitstream;->wordpointer:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljavazoom/jl/decoder/Bitstream;->wordpointer:I

    .line 546
    iget-object v4, p0, Ljavazoom/jl/decoder/Bitstream;->framebuffer:[I

    iget v5, p0, Ljavazoom/jl/decoder/Bitstream;->wordpointer:I

    aget v4, v4, v5

    const/high16 v5, -0x10000

    and-int/2addr v4, v5

    .line 547
    .local v4, "Left":I
    shl-int/lit8 v6, v2, 0x10

    and-int/2addr v5, v6

    ushr-int/lit8 v6, v4, 0x10

    and-int/2addr v3, v6

    or-int v0, v5, v3

    .line 549
    rsub-int/lit8 v3, v1, 0x30

    ushr-int/2addr v0, v3

    .line 550
    iget-object v3, p0, Ljavazoom/jl/decoder/Bitstream;->bitmask:[I

    aget v3, v3, p1

    and-int/2addr v0, v3

    .line 551
    add-int/lit8 v3, v1, -0x20

    iput v3, p0, Ljavazoom/jl/decoder/Bitstream;->bitindex:I

    .line 552
    return v0
.end method

.method public header_pos()I
    .registers 2

    .line 147
    iget v0, p0, Ljavazoom/jl/decoder/Bitstream;->header_pos:I

    return v0
.end method

.method public isSyncCurrentPosition(I)Z
    .registers 7
    .param p1, "syncmode"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavazoom/jl/decoder/BitstreamException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Ljavazoom/jl/decoder/Bitstream;->syncbuf:[B

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Ljavazoom/jl/decoder/Bitstream;->readBytes([BII)I

    move-result v0

    .line 380
    .local v0, "read":I
    iget-object v1, p0, Ljavazoom/jl/decoder/Bitstream;->syncbuf:[B

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    iget-object v3, p0, Ljavazoom/jl/decoder/Bitstream;->syncbuf:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x10

    const/high16 v4, 0xff0000

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    iget-object v3, p0, Ljavazoom/jl/decoder/Bitstream;->syncbuf:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    iget-object v3, p0, Ljavazoom/jl/decoder/Bitstream;->syncbuf:[B

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    shl-int/2addr v3, v2

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 384
    .local v1, "headerstring":I
    :try_start_31
    iget-object v3, p0, Ljavazoom/jl/decoder/Bitstream;->source:Ljava/io/PushbackInputStream;

    iget-object v4, p0, Ljavazoom/jl/decoder/Bitstream;->syncbuf:[B

    invoke-virtual {v3, v4, v2, v0}, Ljava/io/PushbackInputStream;->unread([BII)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_38} :catch_39

    .line 386
    goto :goto_3a

    .line 385
    :catch_39
    move-exception v2

    .line 388
    :goto_3a
    const/4 v2, 0x0

    .line 389
    .local v2, "sync":Z
    sparse-switch v0, :sswitch_data_4a

    goto :goto_48

    .line 394
    :sswitch_3f
    iget v3, p0, Ljavazoom/jl/decoder/Bitstream;->syncword:I

    invoke-virtual {p0, v1, p1, v3}, Ljavazoom/jl/decoder/Bitstream;->isSyncMark(III)Z

    move-result v2

    goto :goto_48

    .line 391
    :sswitch_46
    const/4 v2, 0x1

    .line 392
    nop

    .line 398
    :goto_48
    return v2

    nop

    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_46
        0x4 -> :sswitch_3f
    .end sparse-switch
.end method

.method public isSyncMark(III)Z
    .registers 9
    .param p1, "headerstring"  # I
    .param p2, "syncmode"  # I
    .param p3, "word"  # I

    .line 453
    const/4 v0, 0x0

    .line 455
    .local v0, "sync":Z
    sget-byte v1, Ljavazoom/jl/decoder/Bitstream;->INITIAL_SYNC:B

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v1, :cond_12

    .line 456
    const/high16 v1, -0x200000

    and-int v4, p1, v1

    if-ne v4, v1, :cond_f

    move v1, v3

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    move v0, v1

    goto :goto_29

    .line 458
    :cond_12
    const v1, -0x7f400

    and-int/2addr v1, p1

    if-ne v1, p3, :cond_27

    and-int/lit16 v1, p1, 0xc0

    const/16 v4, 0xc0

    if-ne v1, v4, :cond_20

    move v1, v3

    goto :goto_21

    :cond_20
    move v1, v2

    :goto_21
    iget-boolean v4, p0, Ljavazoom/jl/decoder/Bitstream;->single_ch_mode:Z

    if-ne v1, v4, :cond_27

    move v1, v3

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    move v0, v1

    .line 461
    :goto_29
    const/4 v1, 0x3

    if-eqz v0, :cond_35

    ushr-int/lit8 v4, p1, 0xa

    and-int/2addr v4, v1

    if-eq v4, v1, :cond_33

    move v4, v3

    goto :goto_34

    :cond_33
    move v4, v2

    :goto_34
    move v0, v4

    .line 463
    :cond_35
    if-eqz v0, :cond_40

    ushr-int/lit8 v4, p1, 0x11

    and-int/2addr v4, v1

    if-eqz v4, :cond_3e

    move v4, v3

    goto :goto_3f

    :cond_3e
    move v4, v2

    :goto_3f
    move v0, v4

    .line 465
    :cond_40
    if-eqz v0, :cond_49

    ushr-int/lit8 v4, p1, 0x13

    and-int/2addr v1, v4

    if-eq v1, v3, :cond_48

    move v2, v3

    :cond_48
    move v0, v2

    .line 467
    :cond_49
    return v0
.end method

.method protected newBitstreamException(I)Ljavazoom/jl/decoder/BitstreamException;
    .registers 4
    .param p1, "errorcode"  # I

    .line 414
    new-instance v0, Ljavazoom/jl/decoder/BitstreamException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljavazoom/jl/decoder/BitstreamException;-><init>(ILjava/lang/Throwable;)V

    return-object v0
.end method

.method protected newBitstreamException(ILjava/lang/Throwable;)Ljavazoom/jl/decoder/BitstreamException;
    .registers 4
    .param p1, "errorcode"  # I
    .param p2, "throwable"  # Ljava/lang/Throwable;

    .line 418
    new-instance v0, Ljavazoom/jl/decoder/BitstreamException;

    invoke-direct {v0, p1, p2}, Ljavazoom/jl/decoder/BitstreamException;-><init>(ILjava/lang/Throwable;)V

    return-object v0
.end method

.method parse_frame()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavazoom/jl/decoder/BitstreamException;
        }
    .end annotation

    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, "b":I
    iget-object v1, p0, Ljavazoom/jl/decoder/Bitstream;->frame_bytes:[B

    .line 489
    .local v1, "byteread":[B
    iget v2, p0, Ljavazoom/jl/decoder/Bitstream;->framesize:I

    .line 501
    .local v2, "bytesize":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_6
    if-ge v3, v2, :cond_45

    .line 502
    const/4 v4, 0x0

    .line 503
    .local v4, "b0":B
    const/4 v5, 0x0

    .line 504
    .local v5, "b1":B
    const/4 v6, 0x0

    .line 505
    .local v6, "b2":B
    const/4 v7, 0x0

    .line 506
    .local v7, "b3":B
    aget-byte v4, v1, v3

    .line 507
    add-int/lit8 v8, v3, 0x1

    if-ge v8, v2, :cond_16

    add-int/lit8 v8, v3, 0x1

    aget-byte v5, v1, v8

    .line 508
    :cond_16
    add-int/lit8 v8, v3, 0x2

    if-ge v8, v2, :cond_1e

    add-int/lit8 v8, v3, 0x2

    aget-byte v6, v1, v8

    .line 509
    :cond_1e
    add-int/lit8 v8, v3, 0x3

    if-ge v8, v2, :cond_26

    add-int/lit8 v8, v3, 0x3

    aget-byte v7, v1, v8

    .line 510
    :cond_26
    iget-object v8, p0, Ljavazoom/jl/decoder/Bitstream;->framebuffer:[I

    add-int/lit8 v9, v0, 0x1

    .end local v0  # "b":I
    .local v9, "b":I
    shl-int/lit8 v10, v4, 0x18

    const/high16 v11, -0x1000000

    and-int/2addr v10, v11

    shl-int/lit8 v11, v5, 0x10

    const/high16 v12, 0xff0000

    and-int/2addr v11, v12

    or-int/2addr v10, v11

    shl-int/lit8 v11, v6, 0x8

    const v12, 0xff00

    and-int/2addr v11, v12

    or-int/2addr v10, v11

    and-int/lit16 v11, v7, 0xff

    or-int/2addr v10, v11

    aput v10, v8, v0

    .line 501
    .end local v4  # "b0":B
    .end local v5  # "b1":B
    .end local v6  # "b2":B
    .end local v7  # "b3":B
    add-int/lit8 v3, v3, 0x4

    move v0, v9

    goto :goto_6

    .line 512
    .end local v3  # "k":I
    .end local v9  # "b":I
    .restart local v0  # "b":I
    :cond_45
    const/4 v3, 0x0

    iput v3, p0, Ljavazoom/jl/decoder/Bitstream;->wordpointer:I

    .line 513
    iput v3, p0, Ljavazoom/jl/decoder/Bitstream;->bitindex:I

    .line 514
    return-void
.end method

.method public readBits(I)I
    .registers 3
    .param p1, "n"  # I

    .line 405
    invoke-virtual {p0, p1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v0

    return v0
.end method

.method public readCheckedBits(I)I
    .registers 3
    .param p1, "n"  # I

    .line 410
    invoke-virtual {p0, p1}, Ljavazoom/jl/decoder/Bitstream;->get_bits(I)I

    move-result v0

    return v0
.end method

.method public readFrame()Ljavazoom/jl/decoder/Header;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavazoom/jl/decoder/BitstreamException;
        }
    .end annotation

    .line 309
    const/4 v0, 0x0

    .line 311
    .local v0, "result":Ljavazoom/jl/decoder/Header;
    :try_start_1
    invoke-direct {p0}, Ljavazoom/jl/decoder/Bitstream;->readNextFrame()Ljavazoom/jl/decoder/Header;

    move-result-object v1

    move-object v0, v1

    .line 313
    iget-boolean v1, p0, Ljavazoom/jl/decoder/Bitstream;->firstframe:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 314
    iget-object v1, p0, Ljavazoom/jl/decoder/Bitstream;->frame_bytes:[B

    invoke-virtual {v0, v1}, Ljavazoom/jl/decoder/Header;->parseVBR([B)V

    .line 315
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljavazoom/jl/decoder/Bitstream;->firstframe:Z
    :try_end_13
    .catch Ljavazoom/jl/decoder/BitstreamException; {:try_start_1 .. :try_end_13} :catch_14

    .line 330
    :cond_13
    goto :goto_3f

    .line 317
    :catch_14
    move-exception v1

    .line 318
    .local v1, "ex":Ljavazoom/jl/decoder/BitstreamException;
    invoke-virtual {v1}, Ljavazoom/jl/decoder/BitstreamException;->getErrorCode()I

    move-result v2

    const/16 v3, 0x105

    const/16 v4, 0x104

    if-ne v2, v3, :cond_39

    .line 322
    :try_start_1f
    invoke-virtual {p0}, Ljavazoom/jl/decoder/Bitstream;->closeFrame()V

    .line 323
    invoke-direct {p0}, Ljavazoom/jl/decoder/Bitstream;->readNextFrame()Ljavazoom/jl/decoder/Header;

    move-result-object v2
    :try_end_26
    .catch Ljavazoom/jl/decoder/BitstreamException; {:try_start_1f .. :try_end_26} :catch_28

    move-object v0, v2

    .line 327
    :goto_27
    goto :goto_3f

    .line 324
    :catch_28
    move-exception v2

    .line 325
    .local v2, "e":Ljavazoom/jl/decoder/BitstreamException;
    invoke-virtual {v2}, Ljavazoom/jl/decoder/BitstreamException;->getErrorCode()I

    move-result v3

    if-ne v3, v4, :cond_30

    .end local v2  # "e":Ljavazoom/jl/decoder/BitstreamException;
    goto :goto_27

    .line 326
    .restart local v2  # "e":Ljavazoom/jl/decoder/BitstreamException;
    :cond_30
    invoke-virtual {v2}, Ljavazoom/jl/decoder/BitstreamException;->getErrorCode()I

    move-result v3

    invoke-virtual {p0, v3, v2}, Ljavazoom/jl/decoder/Bitstream;->newBitstreamException(ILjava/lang/Throwable;)Ljavazoom/jl/decoder/BitstreamException;

    move-result-object v3

    throw v3

    .line 328
    .end local v2  # "e":Ljavazoom/jl/decoder/BitstreamException;
    :cond_39
    invoke-virtual {v1}, Ljavazoom/jl/decoder/BitstreamException;->getErrorCode()I

    move-result v2

    if-ne v2, v4, :cond_40

    .line 331
    .end local v1  # "ex":Ljavazoom/jl/decoder/BitstreamException;
    :goto_3f
    return-object v0

    .line 329
    .restart local v1  # "ex":Ljavazoom/jl/decoder/BitstreamException;
    :cond_40
    invoke-virtual {v1}, Ljavazoom/jl/decoder/BitstreamException;->getErrorCode()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Ljavazoom/jl/decoder/Bitstream;->newBitstreamException(ILjava/lang/Throwable;)Ljavazoom/jl/decoder/BitstreamException;

    move-result-object v2

    throw v2
.end method

.method read_frame_data(I)I
    .registers 5
    .param p1, "bytesize"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavazoom/jl/decoder/BitstreamException;
        }
    .end annotation

    .line 474
    const/4 v0, 0x0

    .line 475
    .local v0, "numread":I
    iget-object v1, p0, Ljavazoom/jl/decoder/Bitstream;->frame_bytes:[B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p1}, Ljavazoom/jl/decoder/Bitstream;->readFully([BII)I

    move-result v0

    .line 476
    iput p1, p0, Ljavazoom/jl/decoder/Bitstream;->framesize:I

    .line 477
    const/4 v1, -0x1

    iput v1, p0, Ljavazoom/jl/decoder/Bitstream;->wordpointer:I

    .line 478
    iput v1, p0, Ljavazoom/jl/decoder/Bitstream;->bitindex:I

    .line 479
    return v0
.end method

.method set_syncword(I)V
    .registers 4
    .param p1, "syncword0"  # I

    .line 559
    and-int/lit16 v0, p1, -0xc1

    iput v0, p0, Ljavazoom/jl/decoder/Bitstream;->syncword:I

    .line 560
    and-int/lit16 v0, p1, 0xc0

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iput-boolean v0, p0, Ljavazoom/jl/decoder/Bitstream;->single_ch_mode:Z

    .line 561
    return-void
.end method

.method syncHeader(B)I
    .registers 11
    .param p1, "syncmode"  # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavazoom/jl/decoder/BitstreamException;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Ljavazoom/jl/decoder/Bitstream;->syncbuf:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Ljavazoom/jl/decoder/Bitstream;->readBytes([BII)I

    move-result v0

    .line 432
    .local v0, "bytesRead":I
    const/4 v3, 0x0

    const/16 v4, 0x104

    if-ne v0, v2, :cond_4b

    .line 434
    iget-object v5, p0, Ljavazoom/jl/decoder/Bitstream;->syncbuf:[B

    aget-byte v5, v5, v1

    shl-int/lit8 v5, v5, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    iget-object v6, p0, Ljavazoom/jl/decoder/Bitstream;->syncbuf:[B

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    shl-int/lit8 v6, v6, 0x8

    const v8, 0xff00

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    iget-object v6, p0, Ljavazoom/jl/decoder/Bitstream;->syncbuf:[B

    const/4 v8, 0x2

    aget-byte v6, v6, v8

    shl-int/lit8 v1, v6, 0x0

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v5

    .line 437
    .local v1, "headerstring":I
    :cond_2c
    shl-int/lit8 v1, v1, 0x8

    .line 439
    iget-object v5, p0, Ljavazoom/jl/decoder/Bitstream;->syncbuf:[B

    invoke-direct {p0, v5, v2, v7}, Ljavazoom/jl/decoder/Bitstream;->readBytes([BII)I

    move-result v5

    if-ne v5, v7, :cond_46

    .line 441
    iget-object v5, p0, Ljavazoom/jl/decoder/Bitstream;->syncbuf:[B

    aget-byte v5, v5, v2

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 443
    iget v5, p0, Ljavazoom/jl/decoder/Bitstream;->syncword:I

    invoke-virtual {p0, v1, p1, v5}, Ljavazoom/jl/decoder/Bitstream;->isSyncMark(III)Z

    move-result v5

    .line 444
    .local v5, "sync":Z
    if-eqz v5, :cond_2c

    .line 449
    return v1

    .line 439
    .end local v5  # "sync":Z
    :cond_46
    invoke-virtual {p0, v4, v3}, Ljavazoom/jl/decoder/Bitstream;->newBitstreamException(ILjava/lang/Throwable;)Ljavazoom/jl/decoder/BitstreamException;

    move-result-object v2

    throw v2

    .line 432
    .end local v1  # "headerstring":I
    :cond_4b
    invoke-virtual {p0, v4, v3}, Ljavazoom/jl/decoder/Bitstream;->newBitstreamException(ILjava/lang/Throwable;)Ljavazoom/jl/decoder/BitstreamException;

    move-result-object v1

    throw v1
.end method

.method public unreadFrame()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavazoom/jl/decoder/BitstreamException;
        }
    .end annotation

    .line 359
    iget v0, p0, Ljavazoom/jl/decoder/Bitstream;->wordpointer:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    iget v0, p0, Ljavazoom/jl/decoder/Bitstream;->bitindex:I

    if-ne v0, v1, :cond_20

    iget v0, p0, Ljavazoom/jl/decoder/Bitstream;->framesize:I

    if-lez v0, :cond_20

    .line 360
    :try_start_d
    iget-object v0, p0, Ljavazoom/jl/decoder/Bitstream;->source:Ljava/io/PushbackInputStream;

    iget-object v1, p0, Ljavazoom/jl/decoder/Bitstream;->frame_bytes:[B

    iget v2, p0, Ljavazoom/jl/decoder/Bitstream;->framesize:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/PushbackInputStream;->unread([BII)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_18

    .line 363
    goto :goto_20

    .line 361
    :catch_18
    move-exception v0

    .line 362
    .local v0, "ex":Ljava/io/IOException;
    const/16 v1, 0x102

    invoke-virtual {p0, v1}, Ljavazoom/jl/decoder/Bitstream;->newBitstreamException(I)Ljavazoom/jl/decoder/BitstreamException;

    move-result-object v1

    throw v1

    .line 364
    .end local v0  # "ex":Ljava/io/IOException;
    :cond_20
    :goto_20
    return-void
.end method
