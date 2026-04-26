.class public Lcom/jcraft/jorbis/DspState;
.super Ljava/lang/Object;
.source "DspState.java"


# static fields
.field static final M_PI:F = 3.1415927f

.field static final VI_TRANSFORMB:I = 0x1

.field static final VI_WINDOWB:I = 0x1


# instance fields
.field W:I

.field analysisp:I

.field centerW:I

.field envelope_current:I

.field envelope_storage:I

.field eofflag:I

.field floor_bits:J

.field fullbooks:[Lcom/jcraft/jorbis/CodeBook;

.field glue_bits:J

.field granulepos:J

.field header:[B

.field header1:[B

.field header2:[B

.field lW:I

.field mode:[Ljava/lang/Object;

.field modebits:I

.field multipliers:[F

.field nW:I

.field pcm:[[F

.field pcm_current:I

.field pcm_returned:I

.field pcm_storage:I

.field res_bits:J

.field sequence:J

.field time_bits:J

.field transform:[[Ljava/lang/Object;

.field vi:Lcom/jcraft/jorbis/Info;

.field window:[[[[[F


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x2

    new-array v1, v0, [[Ljava/lang/Object;

    iput-object v1, p0, Lcom/jcraft/jorbis/DspState;->transform:[[Ljava/lang/Object;

    .line 79
    new-array v1, v0, [[[[[F

    iput-object v1, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    .line 80
    iget-object v1, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    new-array v2, v0, [[[[F

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 81
    iget-object v1, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v1, v1, v3

    new-array v2, v0, [[[F

    aput-object v2, v1, v3

    .line 82
    iget-object v1, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v1, v1, v3

    new-array v2, v0, [[[F

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 83
    iget-object v1, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v1, v1, v3

    aget-object v1, v1, v3

    new-array v2, v0, [[F

    aput-object v2, v1, v3

    .line 84
    iget-object v1, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v1, v1, v3

    aget-object v1, v1, v3

    new-array v2, v0, [[F

    aput-object v2, v1, v4

    .line 85
    iget-object v1, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v1, v1, v3

    aget-object v1, v1, v4

    new-array v2, v0, [[F

    aput-object v2, v1, v3

    .line 86
    iget-object v1, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v1, v1, v3

    aget-object v1, v1, v4

    new-array v2, v0, [[F

    aput-object v2, v1, v4

    .line 87
    iget-object v1, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    new-array v2, v0, [[[[F

    aput-object v2, v1, v4

    .line 88
    iget-object v1, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v1, v1, v4

    new-array v2, v0, [[[F

    aput-object v2, v1, v3

    .line 89
    iget-object v1, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v1, v1, v4

    new-array v2, v0, [[[F

    aput-object v2, v1, v4

    .line 90
    iget-object v1, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v1, v1, v4

    aget-object v1, v1, v3

    new-array v2, v0, [[F

    aput-object v2, v1, v3

    .line 91
    iget-object v1, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v1, v1, v4

    aget-object v1, v1, v3

    new-array v2, v0, [[F

    aput-object v2, v1, v4

    .line 92
    iget-object v1, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    new-array v2, v0, [[F

    aput-object v2, v1, v3

    .line 93
    iget-object v1, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    new-array v0, v0, [[F

    aput-object v0, v1, v4

    .line 94
    return-void
.end method

.method constructor <init>(Lcom/jcraft/jorbis/Info;)V
    .registers 6
    .param p1, "vi"  # Lcom/jcraft/jorbis/Info;

    .line 226
    invoke-direct {p0}, Lcom/jcraft/jorbis/DspState;-><init>()V

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jorbis/DspState;->init(Lcom/jcraft/jorbis/Info;Z)I

    .line 229
    iget v0, p0, Lcom/jcraft/jorbis/DspState;->centerW:I

    iput v0, p0, Lcom/jcraft/jorbis/DspState;->pcm_returned:I

    .line 230
    iget v0, p0, Lcom/jcraft/jorbis/DspState;->centerW:I

    iget-object v1, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    iget v2, p0, Lcom/jcraft/jorbis/DspState;->W:I

    aget v1, v1, v2

    div-int/lit8 v1, v1, 0x4

    iget-object v2, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    iget v3, p0, Lcom/jcraft/jorbis/DspState;->lW:I

    aget v2, v2, v3

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jorbis/DspState;->centerW:I

    .line 231
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jcraft/jorbis/DspState;->granulepos:J

    .line 232
    iput-wide v0, p0, Lcom/jcraft/jorbis/DspState;->sequence:J

    .line 233
    return-void
.end method

.method static window(IIII)[F
    .registers 21
    .param p0, "type"  # I
    .param p1, "window"  # I
    .param p2, "left"  # I
    .param p3, "right"  # I

    .line 97
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    new-array v3, v0, [F

    .line 98
    .local v3, "ret":[F
    packed-switch p0, :pswitch_data_80

    .line 130
    const/4 v4, 0x0

    return-object v4

    .line 102
    :pswitch_d  #0x0
    div-int/lit8 v4, v0, 0x4

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    .line 103
    .local v4, "leftbegin":I
    div-int/lit8 v5, v0, 0x4

    sub-int v5, v0, v5

    div-int/lit8 v6, v2, 0x2

    sub-int/2addr v5, v6

    .line 105
    .local v5, "rightbegin":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1a
    const-wide/high16 v9, 0x4000000000000000L  # 2.0

    const-wide v11, 0x400921fb60000000L  # 3.1415927410125732

    const-wide/high16 v13, 0x3fe0000000000000L  # 0.5

    if-ge v6, v1, :cond_48

    .line 106
    int-to-double v7, v6

    add-double/2addr v7, v13

    int-to-double v13, v1

    div-double/2addr v7, v13

    mul-double/2addr v7, v11

    div-double/2addr v7, v9

    double-to-float v7, v7

    .line 107
    .local v7, "x":F
    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v7, v8

    .line 108
    mul-float/2addr v7, v7

    .line 109
    float-to-double v8, v7

    const-wide v10, 0x3ff921fb60000000L  # 1.5707963705062866

    mul-double/2addr v8, v10

    double-to-float v7, v8

    .line 110
    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v7, v8

    .line 111
    add-int v8, v6, v4

    aput v7, v3, v8

    .line 105
    .end local v7  # "x":F
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 114
    .end local v6  # "i":I
    :cond_48
    add-int v6, v4, v1

    .restart local v6  # "i":I
    :goto_4a
    if-ge v6, v5, :cond_53

    .line 115
    const/high16 v7, 0x3f800000  # 1.0f

    aput v7, v3, v6

    .line 114
    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    .line 118
    .end local v6  # "i":I
    :cond_53
    const/4 v6, 0x0

    .restart local v6  # "i":I
    :goto_54
    if-ge v6, v2, :cond_7d

    .line 119
    sub-int v7, v2, v6

    int-to-double v7, v7

    sub-double/2addr v7, v13

    int-to-double v13, v2

    div-double/2addr v7, v13

    mul-double/2addr v7, v11

    div-double/2addr v7, v9

    double-to-float v7, v7

    .line 120
    .restart local v7  # "x":F
    float-to-double v13, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v7, v13

    .line 121
    mul-float/2addr v7, v7

    .line 122
    float-to-double v13, v7

    const-wide v15, 0x3ff921fb60000000L  # 1.5707963705062866

    mul-double/2addr v13, v15

    double-to-float v7, v13

    .line 123
    float-to-double v13, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v7, v13

    .line 124
    add-int v8, v6, v5

    aput v7, v3, v8

    .line 118
    .end local v7  # "x":F
    add-int/lit8 v6, v6, 0x1

    const-wide/high16 v13, 0x3fe0000000000000L  # 0.5

    goto :goto_54

    .line 127
    .end local v4  # "leftbegin":I
    .end local v5  # "rightbegin":I
    .end local v6  # "i":I
    :cond_7d
    nop

    .line 132
    return-object v3

    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_d  #00000000
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .registers 1

    .line 375
    return-void
.end method

.method init(Lcom/jcraft/jorbis/Info;Z)I
    .registers 11
    .param p1, "vi"  # Lcom/jcraft/jorbis/Info;
    .param p2, "encp"  # Z

    .line 140
    iput-object p1, p0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    .line 141
    iget v0, p1, Lcom/jcraft/jorbis/Info;->modes:I

    invoke-static {v0}, Lcom/jcraft/jorbis/Util;->ilog2(I)I

    move-result v0

    iput v0, p0, Lcom/jcraft/jorbis/DspState;->modebits:I

    .line 143
    iget-object v0, p0, Lcom/jcraft/jorbis/DspState;->transform:[[Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 144
    iget-object v0, p0, Lcom/jcraft/jorbis/DspState;->transform:[[Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v2, v0, v1

    .line 148
    iget-object v0, p0, Lcom/jcraft/jorbis/DspState;->transform:[[Ljava/lang/Object;

    aget-object v0, v0, v3

    new-instance v2, Lcom/jcraft/jorbis/Mdct;

    invoke-direct {v2}, Lcom/jcraft/jorbis/Mdct;-><init>()V

    aput-object v2, v0, v3

    .line 149
    iget-object v0, p0, Lcom/jcraft/jorbis/DspState;->transform:[[Ljava/lang/Object;

    aget-object v0, v0, v1

    new-instance v2, Lcom/jcraft/jorbis/Mdct;

    invoke-direct {v2}, Lcom/jcraft/jorbis/Mdct;-><init>()V

    aput-object v2, v0, v3

    .line 150
    iget-object v0, p0, Lcom/jcraft/jorbis/DspState;->transform:[[Ljava/lang/Object;

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    check-cast v0, Lcom/jcraft/jorbis/Mdct;

    iget-object v2, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/jcraft/jorbis/Mdct;->init(I)V

    .line 151
    iget-object v0, p0, Lcom/jcraft/jorbis/DspState;->transform:[[Ljava/lang/Object;

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    check-cast v0, Lcom/jcraft/jorbis/Mdct;

    iget-object v2, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/jcraft/jorbis/Mdct;->init(I)V

    .line 153
    iget-object v0, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    new-array v2, v1, [[F

    aput-object v2, v0, v3

    .line 154
    iget-object v0, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    iget-object v2, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v2, v2, v3

    aget-object v2, v2, v3

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 155
    iget-object v0, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v0, v0, v3

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v2, v2, v3

    aget-object v2, v2, v3

    aget-object v2, v2, v3

    aput-object v2, v0, v3

    .line 156
    iget-object v0, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v0, v0, v3

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v2, v2, v3

    aget-object v2, v2, v3

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 157
    iget-object v0, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    new-array v2, v1, [[F

    aput-object v2, v0, v3

    .line 158
    iget-object v0, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    new-array v2, v1, [[F

    aput-object v2, v0, v1

    .line 159
    iget-object v0, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v0, v0, v1

    aget-object v0, v0, v1

    new-array v2, v1, [[F

    aput-object v2, v0, v3

    .line 160
    iget-object v0, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v0, v0, v1

    aget-object v0, v0, v1

    new-array v2, v1, [[F

    aput-object v2, v0, v1

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_af
    if-ge v0, v1, :cond_14b

    .line 163
    iget-object v2, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v2, v2, v3

    aget-object v2, v2, v3

    aget-object v2, v2, v3

    iget-object v4, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v4, v4, v3

    iget-object v5, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v5, v5, v3

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v6, v6, v3

    div-int/lit8 v6, v6, 0x2

    invoke-static {v0, v4, v5, v6}, Lcom/jcraft/jorbis/DspState;->window(IIII)[F

    move-result-object v4

    aput-object v4, v2, v0

    .line 165
    iget-object v2, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v2, v2, v1

    aget-object v2, v2, v3

    aget-object v2, v2, v3

    iget-object v4, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v4, v4, v1

    iget-object v5, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v5, v5, v3

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v6, v6, v3

    div-int/lit8 v6, v6, 0x2

    invoke-static {v0, v4, v5, v6}, Lcom/jcraft/jorbis/DspState;->window(IIII)[F

    move-result-object v4

    aput-object v4, v2, v0

    .line 167
    iget-object v2, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v2, v2, v1

    aget-object v2, v2, v3

    aget-object v2, v2, v1

    iget-object v4, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v4, v4, v1

    iget-object v5, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v5, v5, v3

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v6, v6, v1

    div-int/lit8 v6, v6, 0x2

    invoke-static {v0, v4, v5, v6}, Lcom/jcraft/jorbis/DspState;->window(IIII)[F

    move-result-object v4

    aput-object v4, v2, v0

    .line 169
    iget-object v2, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v2, v2, v1

    aget-object v2, v2, v1

    aget-object v2, v2, v3

    iget-object v4, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v4, v4, v1

    iget-object v5, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v5, v5, v1

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v6, v6, v3

    div-int/lit8 v6, v6, 0x2

    invoke-static {v0, v4, v5, v6}, Lcom/jcraft/jorbis/DspState;->window(IIII)[F

    move-result-object v4

    aput-object v4, v2, v0

    .line 171
    iget-object v2, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v2, v2, v1

    aget-object v2, v2, v1

    aget-object v2, v2, v1

    iget-object v4, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v4, v4, v1

    iget-object v5, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v5, v5, v1

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v6, v6, v1

    div-int/lit8 v6, v6, 0x2

    invoke-static {v0, v4, v5, v6}, Lcom/jcraft/jorbis/DspState;->window(IIII)[F

    move-result-object v4

    aput-object v4, v2, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_af

    .line 175
    .end local v0  # "i":I
    :cond_14b
    iget v0, p1, Lcom/jcraft/jorbis/Info;->books:I

    new-array v0, v0, [Lcom/jcraft/jorbis/CodeBook;

    iput-object v0, p0, Lcom/jcraft/jorbis/DspState;->fullbooks:[Lcom/jcraft/jorbis/CodeBook;

    .line 176
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_152
    iget v2, p1, Lcom/jcraft/jorbis/Info;->books:I

    if-ge v0, v2, :cond_16d

    .line 177
    iget-object v2, p0, Lcom/jcraft/jorbis/DspState;->fullbooks:[Lcom/jcraft/jorbis/CodeBook;

    new-instance v4, Lcom/jcraft/jorbis/CodeBook;

    invoke-direct {v4}, Lcom/jcraft/jorbis/CodeBook;-><init>()V

    aput-object v4, v2, v0

    .line 178
    iget-object v2, p0, Lcom/jcraft/jorbis/DspState;->fullbooks:[Lcom/jcraft/jorbis/CodeBook;

    aget-object v2, v2, v0

    iget-object v4, p1, Lcom/jcraft/jorbis/Info;->book_param:[Lcom/jcraft/jorbis/StaticCodeBook;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Lcom/jcraft/jorbis/CodeBook;->init_decode(Lcom/jcraft/jorbis/StaticCodeBook;)I

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_152

    .line 184
    .end local v0  # "i":I
    :cond_16d
    const/16 v0, 0x2000

    iput v0, p0, Lcom/jcraft/jorbis/DspState;->pcm_storage:I

    .line 187
    iget v0, p1, Lcom/jcraft/jorbis/Info;->channels:I

    new-array v0, v0, [[F

    iput-object v0, p0, Lcom/jcraft/jorbis/DspState;->pcm:[[F

    .line 189
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_178
    iget v2, p1, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v0, v2, :cond_187

    .line 190
    iget-object v2, p0, Lcom/jcraft/jorbis/DspState;->pcm:[[F

    iget v4, p0, Lcom/jcraft/jorbis/DspState;->pcm_storage:I

    new-array v4, v4, [F

    aput-object v4, v2, v0

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_178

    .line 196
    .end local v0  # "i":I
    :cond_187
    iput v3, p0, Lcom/jcraft/jorbis/DspState;->lW:I

    .line 197
    iput v3, p0, Lcom/jcraft/jorbis/DspState;->W:I

    .line 200
    iget-object v0, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v0, v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jcraft/jorbis/DspState;->centerW:I

    .line 202
    iget v0, p0, Lcom/jcraft/jorbis/DspState;->centerW:I

    iput v0, p0, Lcom/jcraft/jorbis/DspState;->pcm_current:I

    .line 205
    iget v0, p1, Lcom/jcraft/jorbis/Info;->modes:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/jcraft/jorbis/DspState;->mode:[Ljava/lang/Object;

    .line 206
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_19e
    iget v1, p1, Lcom/jcraft/jorbis/Info;->modes:I

    if-ge v0, v1, :cond_1c3

    .line 207
    iget-object v1, p1, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/jcraft/jorbis/InfoMode;->mapping:I

    .line 208
    .local v1, "mapnum":I
    iget-object v2, p1, Lcom/jcraft/jorbis/Info;->map_type:[I

    aget v2, v2, v1

    .line 209
    .local v2, "maptype":I
    iget-object v4, p0, Lcom/jcraft/jorbis/DspState;->mode:[Ljava/lang/Object;

    sget-object v5, Lcom/jcraft/jorbis/FuncMapping;->mapping_P:[Lcom/jcraft/jorbis/FuncMapping;

    aget-object v5, v5, v2

    iget-object v6, p1, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v6, v6, v0

    iget-object v7, p1, Lcom/jcraft/jorbis/Info;->map_param:[Ljava/lang/Object;

    aget-object v7, v7, v1

    invoke-virtual {v5, p0, v6, v7}, Lcom/jcraft/jorbis/FuncMapping;->look(Lcom/jcraft/jorbis/DspState;Lcom/jcraft/jorbis/InfoMode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v0

    .line 206
    .end local v1  # "mapnum":I
    .end local v2  # "maptype":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_19e

    .line 212
    .end local v0  # "i":I
    :cond_1c3
    return v3
.end method

.method public synthesis_blockin(Lcom/jcraft/jorbis/Block;)I
    .registers 20
    .param p1, "vb"  # Lcom/jcraft/jorbis/Block;

    .line 242
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/jcraft/jorbis/DspState;->centerW:I

    iget-object v3, v0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget-object v3, v3, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    div-int/lit8 v3, v3, 0x2

    const/4 v5, 0x0

    if-le v2, v3, :cond_54

    iget v2, v0, Lcom/jcraft/jorbis/DspState;->pcm_returned:I

    const/16 v3, 0x2000

    if-le v2, v3, :cond_54

    .line 246
    iget v2, v0, Lcom/jcraft/jorbis/DspState;->centerW:I

    iget-object v3, v0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget-object v3, v3, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v3, v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 247
    .local v2, "shiftPCM":I
    iget v3, v0, Lcom/jcraft/jorbis/DspState;->pcm_returned:I

    if-ge v3, v2, :cond_2a

    iget v3, v0, Lcom/jcraft/jorbis/DspState;->pcm_returned:I

    goto :goto_2b

    :cond_2a
    move v3, v2

    :goto_2b
    move v2, v3

    .line 249
    iget v3, v0, Lcom/jcraft/jorbis/DspState;->pcm_current:I

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/jcraft/jorbis/DspState;->pcm_current:I

    .line 250
    iget v3, v0, Lcom/jcraft/jorbis/DspState;->centerW:I

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/jcraft/jorbis/DspState;->centerW:I

    .line 251
    iget v3, v0, Lcom/jcraft/jorbis/DspState;->pcm_returned:I

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/jcraft/jorbis/DspState;->pcm_returned:I

    .line 252
    if-eqz v2, :cond_54

    .line 253
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3e
    iget-object v6, v0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget v6, v6, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v3, v6, :cond_54

    .line 254
    iget-object v6, v0, Lcom/jcraft/jorbis/DspState;->pcm:[[F

    aget-object v6, v6, v3

    iget-object v7, v0, Lcom/jcraft/jorbis/DspState;->pcm:[[F

    aget-object v7, v7, v3

    iget v8, v0, Lcom/jcraft/jorbis/DspState;->pcm_current:I

    invoke-static {v6, v2, v7, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 259
    .end local v2  # "shiftPCM":I
    .end local v3  # "i":I
    :cond_54
    iget v2, v0, Lcom/jcraft/jorbis/DspState;->W:I

    iput v2, v0, Lcom/jcraft/jorbis/DspState;->lW:I

    .line 260
    iget v2, v1, Lcom/jcraft/jorbis/Block;->W:I

    iput v2, v0, Lcom/jcraft/jorbis/DspState;->W:I

    .line 261
    const/4 v2, -0x1

    iput v2, v0, Lcom/jcraft/jorbis/DspState;->nW:I

    .line 263
    iget-wide v2, v0, Lcom/jcraft/jorbis/DspState;->glue_bits:J

    iget v6, v1, Lcom/jcraft/jorbis/Block;->glue_bits:I

    int-to-long v6, v6

    add-long/2addr v2, v6

    iput-wide v2, v0, Lcom/jcraft/jorbis/DspState;->glue_bits:J

    .line 264
    iget-wide v2, v0, Lcom/jcraft/jorbis/DspState;->time_bits:J

    iget v6, v1, Lcom/jcraft/jorbis/Block;->time_bits:I

    int-to-long v6, v6

    add-long/2addr v2, v6

    iput-wide v2, v0, Lcom/jcraft/jorbis/DspState;->time_bits:J

    .line 265
    iget-wide v2, v0, Lcom/jcraft/jorbis/DspState;->floor_bits:J

    iget v6, v1, Lcom/jcraft/jorbis/Block;->floor_bits:I

    int-to-long v6, v6

    add-long/2addr v2, v6

    iput-wide v2, v0, Lcom/jcraft/jorbis/DspState;->floor_bits:J

    .line 266
    iget-wide v2, v0, Lcom/jcraft/jorbis/DspState;->res_bits:J

    iget v6, v1, Lcom/jcraft/jorbis/Block;->res_bits:I

    int-to-long v6, v6

    add-long/2addr v2, v6

    iput-wide v2, v0, Lcom/jcraft/jorbis/DspState;->res_bits:J

    .line 268
    iget-wide v2, v0, Lcom/jcraft/jorbis/DspState;->sequence:J

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    iget-wide v6, v1, Lcom/jcraft/jorbis/Block;->sequence:J

    cmp-long v2, v2, v6

    const-wide/16 v6, -0x1

    if-eqz v2, :cond_8e

    .line 269
    iput-wide v6, v0, Lcom/jcraft/jorbis/DspState;->granulepos:J

    .line 271
    :cond_8e
    iget-wide v2, v1, Lcom/jcraft/jorbis/Block;->sequence:J

    iput-wide v2, v0, Lcom/jcraft/jorbis/DspState;->sequence:J

    .line 274
    iget-object v2, v0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget-object v2, v2, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    iget v3, v0, Lcom/jcraft/jorbis/DspState;->W:I

    aget v2, v2, v3

    .line 275
    .local v2, "sizeW":I
    iget v3, v0, Lcom/jcraft/jorbis/DspState;->centerW:I

    iget-object v8, v0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget-object v8, v8, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    iget v9, v0, Lcom/jcraft/jorbis/DspState;->lW:I

    aget v8, v8, v9

    div-int/lit8 v8, v8, 0x4

    add-int/2addr v3, v8

    div-int/lit8 v8, v2, 0x4

    add-int/2addr v3, v8

    .line 276
    .local v3, "_centerW":I
    div-int/lit8 v8, v2, 0x2

    sub-int v8, v3, v8

    .line 277
    .local v8, "beginW":I
    add-int v9, v8, v2

    .line 278
    .local v9, "endW":I
    const/4 v10, 0x0

    .line 279
    .local v10, "beginSl":I
    const/4 v11, 0x0

    .line 282
    .local v11, "endSl":I
    iget v12, v0, Lcom/jcraft/jorbis/DspState;->pcm_storage:I

    if-le v9, v12, :cond_dd

    .line 284
    iget-object v12, v0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget-object v12, v12, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v12, v12, v4

    add-int/2addr v12, v9

    iput v12, v0, Lcom/jcraft/jorbis/DspState;->pcm_storage:I

    .line 285
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_c0
    iget-object v13, v0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget v13, v13, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v12, v13, :cond_dd

    .line 286
    iget v13, v0, Lcom/jcraft/jorbis/DspState;->pcm_storage:I

    new-array v13, v13, [F

    .line 287
    .local v13, "foo":[F
    iget-object v14, v0, Lcom/jcraft/jorbis/DspState;->pcm:[[F

    aget-object v14, v14, v12

    iget-object v15, v0, Lcom/jcraft/jorbis/DspState;->pcm:[[F

    aget-object v15, v15, v12

    array-length v15, v15

    invoke-static {v14, v5, v13, v5, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    iget-object v14, v0, Lcom/jcraft/jorbis/DspState;->pcm:[[F

    aput-object v13, v14, v12

    .line 285
    .end local v13  # "foo":[F
    add-int/lit8 v12, v12, 0x1

    goto :goto_c0

    .line 293
    .end local v12  # "i":I
    :cond_dd
    iget v12, v0, Lcom/jcraft/jorbis/DspState;->W:I

    packed-switch v12, :pswitch_data_192

    goto :goto_10e

    .line 299
    :pswitch_e3  #0x1
    iget-object v12, v0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget-object v12, v12, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v12, v12, v4

    div-int/lit8 v12, v12, 0x4

    iget-object v13, v0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget-object v13, v13, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    iget v14, v0, Lcom/jcraft/jorbis/DspState;->lW:I

    aget v13, v13, v14

    div-int/lit8 v13, v13, 0x4

    sub-int v10, v12, v13

    .line 300
    iget-object v12, v0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget-object v12, v12, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    iget v13, v0, Lcom/jcraft/jorbis/DspState;->lW:I

    aget v12, v12, v13

    div-int/lit8 v12, v12, 0x2

    add-int v11, v10, v12

    goto :goto_10e

    .line 295
    :pswitch_104  #0x0
    const/4 v10, 0x0

    .line 296
    iget-object v12, v0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget-object v12, v12, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v12, v12, v5

    div-int/lit8 v11, v12, 0x2

    .line 297
    nop

    .line 304
    :goto_10e
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_10f
    iget-object v13, v0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget v13, v13, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v12, v13, :cond_149

    .line 305
    move v13, v8

    .line 307
    .local v13, "_pcm":I
    const/4 v14, 0x0

    .line 308
    .local v14, "i":I
    move v14, v10

    :goto_118
    if-ge v14, v11, :cond_130

    .line 309
    iget-object v15, v0, Lcom/jcraft/jorbis/DspState;->pcm:[[F

    aget-object v15, v15, v12

    add-int v16, v13, v14

    aget v17, v15, v16

    iget-object v5, v1, Lcom/jcraft/jorbis/Block;->pcm:[[F

    aget-object v5, v5, v12

    aget v5, v5, v14

    add-float v17, v17, v5

    aput v17, v15, v16

    .line 308
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    goto :goto_118

    .line 312
    :cond_130
    :goto_130
    if-ge v14, v2, :cond_144

    .line 313
    iget-object v5, v0, Lcom/jcraft/jorbis/DspState;->pcm:[[F

    aget-object v5, v5, v12

    add-int v15, v13, v14

    iget-object v4, v1, Lcom/jcraft/jorbis/Block;->pcm:[[F

    aget-object v4, v4, v12

    aget v4, v4, v14

    aput v4, v5, v15

    .line 312
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    goto :goto_130

    .line 304
    .end local v13  # "_pcm":I
    .end local v14  # "i":I
    :cond_144
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_10f

    .line 328
    .end local v12  # "j":I
    :cond_149
    iget-wide v4, v0, Lcom/jcraft/jorbis/DspState;->granulepos:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_154

    .line 329
    iget-wide v4, v1, Lcom/jcraft/jorbis/Block;->granulepos:J

    iput-wide v4, v0, Lcom/jcraft/jorbis/DspState;->granulepos:J

    goto :goto_184

    .line 332
    :cond_154
    iget-wide v4, v0, Lcom/jcraft/jorbis/DspState;->granulepos:J

    iget v12, v0, Lcom/jcraft/jorbis/DspState;->centerW:I

    sub-int v12, v3, v12

    int-to-long v12, v12

    add-long/2addr v4, v12

    iput-wide v4, v0, Lcom/jcraft/jorbis/DspState;->granulepos:J

    .line 333
    iget-wide v4, v1, Lcom/jcraft/jorbis/Block;->granulepos:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_184

    iget-wide v4, v0, Lcom/jcraft/jorbis/DspState;->granulepos:J

    iget-wide v6, v1, Lcom/jcraft/jorbis/Block;->granulepos:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_184

    .line 334
    iget-wide v4, v0, Lcom/jcraft/jorbis/DspState;->granulepos:J

    iget-wide v6, v1, Lcom/jcraft/jorbis/Block;->granulepos:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_180

    iget v4, v1, Lcom/jcraft/jorbis/Block;->eofflag:I

    if-eqz v4, :cond_180

    .line 336
    int-to-long v4, v3

    iget-wide v6, v0, Lcom/jcraft/jorbis/DspState;->granulepos:J

    iget-wide v12, v1, Lcom/jcraft/jorbis/Block;->granulepos:J

    sub-long/2addr v6, v12

    sub-long/2addr v4, v6

    long-to-int v3, v4

    .line 339
    :cond_180
    iget-wide v4, v1, Lcom/jcraft/jorbis/Block;->granulepos:J

    iput-wide v4, v0, Lcom/jcraft/jorbis/DspState;->granulepos:J

    .line 345
    :cond_184
    :goto_184
    iput v3, v0, Lcom/jcraft/jorbis/DspState;->centerW:I

    .line 346
    iput v9, v0, Lcom/jcraft/jorbis/DspState;->pcm_current:I

    .line 347
    iget v4, v1, Lcom/jcraft/jorbis/Block;->eofflag:I

    if-eqz v4, :cond_18f

    .line 348
    const/4 v4, 0x1

    iput v4, v0, Lcom/jcraft/jorbis/DspState;->eofflag:I

    .line 350
    .end local v2  # "sizeW":I
    .end local v3  # "_centerW":I
    .end local v8  # "beginW":I
    .end local v9  # "endW":I
    .end local v10  # "beginSl":I
    .end local v11  # "endSl":I
    :cond_18f
    const/4 v2, 0x0

    return v2

    nop

    :pswitch_data_192
    .packed-switch 0x0
        :pswitch_104  #00000000
        :pswitch_e3  #00000001
    .end packed-switch
.end method

.method public synthesis_init(Lcom/jcraft/jorbis/Info;)I
    .registers 7
    .param p1, "vi"  # Lcom/jcraft/jorbis/Info;

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jorbis/DspState;->init(Lcom/jcraft/jorbis/Info;Z)I

    .line 218
    iget v1, p0, Lcom/jcraft/jorbis/DspState;->centerW:I

    iput v1, p0, Lcom/jcraft/jorbis/DspState;->pcm_returned:I

    .line 219
    iget v1, p0, Lcom/jcraft/jorbis/DspState;->centerW:I

    iget-object v2, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    iget v3, p0, Lcom/jcraft/jorbis/DspState;->W:I

    aget v2, v2, v3

    div-int/lit8 v2, v2, 0x4

    iget-object v3, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    iget v4, p0, Lcom/jcraft/jorbis/DspState;->lW:I

    aget v3, v3, v4

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/jcraft/jorbis/DspState;->centerW:I

    .line 220
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/jcraft/jorbis/DspState;->granulepos:J

    .line 221
    iput-wide v1, p0, Lcom/jcraft/jorbis/DspState;->sequence:J

    .line 222
    return v0
.end method

.method public synthesis_pcmout([[[F[I)I
    .registers 6
    .param p1, "_pcm"  # [[[F
    .param p2, "index"  # [I

    .line 355
    iget v0, p0, Lcom/jcraft/jorbis/DspState;->pcm_returned:I

    iget v1, p0, Lcom/jcraft/jorbis/DspState;->centerW:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_21

    .line 356
    if-eqz p1, :cond_1b

    .line 357
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget v1, v1, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v0, v1, :cond_17

    .line 358
    iget v1, p0, Lcom/jcraft/jorbis/DspState;->pcm_returned:I

    aput v1, p2, v0

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 360
    .end local v0  # "i":I
    :cond_17
    iget-object v0, p0, Lcom/jcraft/jorbis/DspState;->pcm:[[F

    aput-object v0, p1, v2

    .line 362
    :cond_1b
    iget v0, p0, Lcom/jcraft/jorbis/DspState;->centerW:I

    iget v1, p0, Lcom/jcraft/jorbis/DspState;->pcm_returned:I

    sub-int/2addr v0, v1

    return v0

    .line 364
    :cond_21
    return v2
.end method

.method public synthesis_read(I)I
    .registers 4
    .param p1, "bytes"  # I

    .line 368
    if-eqz p1, :cond_b

    iget v0, p0, Lcom/jcraft/jorbis/DspState;->pcm_returned:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/jcraft/jorbis/DspState;->centerW:I

    if-le v0, v1, :cond_b

    .line 369
    const/4 v0, -0x1

    return v0

    .line 370
    :cond_b
    iget v0, p0, Lcom/jcraft/jorbis/DspState;->pcm_returned:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/jcraft/jorbis/DspState;->pcm_returned:I

    .line 371
    const/4 v0, 0x0

    return v0
.end method
