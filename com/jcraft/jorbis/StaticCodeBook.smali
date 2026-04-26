.class Lcom/jcraft/jorbis/StaticCodeBook;
.super Ljava/lang/Object;
.source "StaticCodeBook.java"


# static fields
.field static final VQ_FEXP:I = 0xa

.field static final VQ_FEXP_BIAS:I = 0x300

.field static final VQ_FMAN:I = 0x15


# instance fields
.field dim:I

.field entries:I

.field lengthlist:[I

.field maptype:I

.field q_delta:I

.field q_min:I

.field q_quant:I

.field q_sequencep:I

.field quantlist:[I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method static float32_pack(F)J
    .registers 7
    .param p0, "val"  # F

    .line 419
    const/4 v0, 0x0

    .line 422
    .local v0, "sign":I
    const/4 v1, 0x0

    cmpg-float v1, p0, v1

    if-gez v1, :cond_9

    .line 423
    const/high16 v0, -0x80000000

    .line 424
    neg-float p0, p0

    .line 426
    :cond_9
    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L  # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 427
    .local v1, "exp":I
    float-to-double v2, p0

    rsub-int/lit8 v4, v1, 0x14

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 428
    .local v2, "mant":I
    add-int/lit16 v3, v1, 0x300

    shl-int/lit8 v1, v3, 0x15

    .line 429
    or-int v3, v0, v1

    or-int/2addr v3, v2

    int-to-long v3, v3

    return-wide v3
.end method

.method static float32_unpack(I)F
    .registers 4
    .param p0, "val"  # I

    .line 433
    const v0, 0x1fffff

    and-int/2addr v0, p0

    int-to-float v0, v0

    .line 434
    .local v0, "mant":F
    const/high16 v1, 0x7fe00000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x15

    int-to-float v1, v1

    .line 435
    .local v1, "exp":F
    const/high16 v2, -0x80000000

    and-int/2addr v2, p0

    if-eqz v2, :cond_11

    .line 436
    neg-float v0, v0

    .line 437
    :cond_11
    float-to-int v2, v1

    add-int/lit8 v2, v2, -0x14

    add-int/lit16 v2, v2, -0x300

    invoke-static {v0, v2}, Lcom/jcraft/jorbis/StaticCodeBook;->ldexp(FI)F

    move-result v2

    return v2
.end method

.method static ldexp(FI)F
    .registers 8
    .param p0, "foo"  # F
    .param p1, "e"  # I

    .line 441
    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    int-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private maptype1_quantvals()I
    .registers 7

    .line 320
    iget v0, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    int-to-double v0, v0

    iget v2, p0, Lcom/jcraft/jorbis/StaticCodeBook;->dim:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    div-double/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 328
    .local v0, "vals":I
    :goto_12
    const/4 v1, 0x1

    .line 329
    .local v1, "acc":I
    const/4 v2, 0x1

    .line 330
    .local v2, "acc1":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    iget v4, p0, Lcom/jcraft/jorbis/StaticCodeBook;->dim:I

    if-ge v3, v4, :cond_20

    .line 331
    mul-int/2addr v1, v0

    .line 332
    add-int/lit8 v4, v0, 0x1

    mul-int/2addr v2, v4

    .line 330
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 334
    .end local v3  # "i":I
    :cond_20
    iget v3, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-gt v1, v3, :cond_29

    iget v3, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-le v2, v3, :cond_29

    .line 335
    return v0

    .line 338
    :cond_29
    iget v3, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-le v1, v3, :cond_30

    .line 339
    add-int/lit8 v0, v0, -0x1

    goto :goto_32

    .line 342
    :cond_30
    add-int/lit8 v0, v0, 0x1

    .line 345
    .end local v1  # "acc":I
    .end local v2  # "acc1":I
    :goto_32
    goto :goto_12
.end method


# virtual methods
.method clear()V
    .registers 1

    .line 349
    return-void
.end method

.method pack(Lcom/jcraft/jogg/Buffer;)I
    .registers 12
    .param p1, "opb"  # Lcom/jcraft/jogg/Buffer;

    .line 62
    const/4 v0, 0x0

    .line 64
    .local v0, "ordered":Z
    const v1, 0x564342

    const/16 v2, 0x18

    invoke-virtual {p1, v1, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 65
    iget v1, p0, Lcom/jcraft/jorbis/StaticCodeBook;->dim:I

    const/16 v3, 0x10

    invoke-virtual {p1, v1, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 66
    iget v1, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    invoke-virtual {p1, v1, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 71
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_16
    iget v2, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-ge v1, v2, :cond_2a

    .line 72
    iget-object v2, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    if-ge v2, v3, :cond_27

    .line 73
    goto :goto_2a

    .line 71
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 75
    :cond_2a
    :goto_2a
    iget v2, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-ne v1, v2, :cond_2f

    .line 76
    const/4 v0, 0x1

    .line 78
    :cond_2f
    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_74

    .line 83
    const/4 v5, 0x0

    .line 84
    .local v5, "count":I
    invoke-virtual {p1, v4, v4}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 85
    iget-object v6, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aget v6, v6, v3

    sub-int/2addr v6, v4

    invoke-virtual {p1, v6, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 87
    const/4 v1, 0x1

    :goto_41
    iget v2, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-ge v1, v2, :cond_67

    .line 88
    iget-object v2, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aget v2, v2, v1

    .line 89
    .local v2, "_this":I
    iget-object v6, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    add-int/lit8 v7, v1, -0x1

    aget v6, v6, v7

    .line 90
    .local v6, "_last":I
    if-le v2, v6, :cond_64

    .line 91
    move v7, v6

    .local v7, "j":I
    :goto_52
    if-ge v7, v2, :cond_64

    .line 92
    sub-int v8, v1, v5

    iget v9, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    sub-int/2addr v9, v5

    invoke-static {v9}, Lcom/jcraft/jorbis/Util;->ilog(I)I

    move-result v9

    invoke-virtual {p1, v8, v9}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 93
    move v5, v1

    .line 91
    add-int/lit8 v7, v7, 0x1

    goto :goto_52

    .line 87
    .end local v2  # "_this":I
    .end local v6  # "_last":I
    .end local v7  # "j":I
    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 97
    :cond_67
    sub-int v2, v1, v5

    iget v6, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    sub-int/2addr v6, v5

    invoke-static {v6}, Lcom/jcraft/jorbis/Util;->ilog(I)I

    move-result v6

    invoke-virtual {p1, v2, v6}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 98
    .end local v5  # "count":I
    goto :goto_bd

    .line 102
    :cond_74
    invoke-virtual {p1, v3, v4}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 107
    const/4 v1, 0x0

    :goto_78
    iget v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-ge v1, v5, :cond_86

    .line 108
    iget-object v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aget v5, v5, v1

    if-nez v5, :cond_83

    .line 109
    goto :goto_86

    .line 107
    :cond_83
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    .line 112
    :cond_86
    :goto_86
    iget v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-ne v1, v5, :cond_9d

    .line 113
    invoke-virtual {p1, v3, v4}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 114
    const/4 v1, 0x0

    :goto_8e
    iget v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-ge v1, v5, :cond_bd

    .line 115
    iget-object v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aget v5, v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p1, v5, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_8e

    .line 119
    :cond_9d
    invoke-virtual {p1, v4, v4}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 120
    const/4 v1, 0x0

    :goto_a1
    iget v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-ge v1, v5, :cond_bd

    .line 121
    iget-object v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aget v5, v5, v1

    if-nez v5, :cond_af

    .line 122
    invoke-virtual {p1, v3, v4}, Lcom/jcraft/jogg/Buffer;->write(II)V

    goto :goto_ba

    .line 125
    :cond_af
    invoke-virtual {p1, v4, v4}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 126
    iget-object v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aget v5, v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p1, v5, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 120
    :goto_ba
    add-int/lit8 v1, v1, 0x1

    goto :goto_a1

    .line 134
    :cond_bd
    :goto_bd
    iget v2, p0, Lcom/jcraft/jorbis/StaticCodeBook;->maptype:I

    const/4 v5, 0x4

    invoke-virtual {p1, v2, v5}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 135
    iget v2, p0, Lcom/jcraft/jorbis/StaticCodeBook;->maptype:I

    const/4 v6, -0x1

    packed-switch v2, :pswitch_data_110

    .line 176
    return v6

    .line 143
    :pswitch_ca  #0x1, 0x2
    iget-object v2, p0, Lcom/jcraft/jorbis/StaticCodeBook;->quantlist:[I

    if-nez v2, :cond_cf

    .line 145
    return v6

    .line 149
    :cond_cf
    iget v2, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_min:I

    const/16 v6, 0x20

    invoke-virtual {p1, v2, v6}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 150
    iget v2, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_delta:I

    invoke-virtual {p1, v2, v6}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 151
    iget v2, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_quant:I

    sub-int/2addr v2, v4

    invoke-virtual {p1, v2, v5}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 152
    iget v2, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_sequencep:I

    invoke-virtual {p1, v2, v4}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 155
    const/4 v2, 0x0

    .line 156
    .local v2, "quantvals":I
    iget v4, p0, Lcom/jcraft/jorbis/StaticCodeBook;->maptype:I

    packed-switch v4, :pswitch_data_11a

    goto :goto_f9

    .line 164
    :pswitch_ed  #0x2
    iget v4, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    iget v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->dim:I

    mul-int v2, v4, v5

    goto :goto_f9

    .line 160
    :pswitch_f4  #0x1
    invoke-direct {p0}, Lcom/jcraft/jorbis/StaticCodeBook;->maptype1_quantvals()I

    move-result v2

    .line 161
    nop

    .line 169
    :goto_f9
    const/4 v1, 0x0

    :goto_fa
    if-ge v1, v2, :cond_10c

    .line 170
    iget-object v4, p0, Lcom/jcraft/jorbis/StaticCodeBook;->quantlist:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_quant:I

    invoke-virtual {p1, v4, v5}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_fa

    .line 173
    .end local v2  # "quantvals":I
    :cond_10c
    goto :goto_10e

    .line 138
    :pswitch_10d  #0x0
    nop

    .line 178
    :goto_10e
    return v3

    nop

    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_10d  #00000000
        :pswitch_ca  #00000001
        :pswitch_ca  #00000002
    .end packed-switch

    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_f4  #00000001
        :pswitch_ed  #00000002
    .end packed-switch
.end method

.method unpack(Lcom/jcraft/jogg/Buffer;)I
    .registers 10
    .param p1, "opb"  # Lcom/jcraft/jogg/Buffer;

    .line 188
    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    const v2, 0x564342

    const/4 v3, -0x1

    if-eq v1, v2, :cond_10

    .line 190
    invoke-virtual {p0}, Lcom/jcraft/jorbis/StaticCodeBook;->clear()V

    .line 191
    return v3

    .line 195
    :cond_10
    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    iput v1, p0, Lcom/jcraft/jorbis/StaticCodeBook;->dim:I

    .line 196
    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v0

    iput v0, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    .line 197
    iget v0, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-ne v0, v3, :cond_26

    .line 199
    invoke-virtual {p0}, Lcom/jcraft/jorbis/StaticCodeBook;->clear()V

    .line 200
    return v3

    .line 204
    :cond_26
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_10c

    move v0, v5

    .line 263
    .local v0, "i":I
    return v3

    .line 204
    .end local v0  # "i":I
    :pswitch_33  #0x1
    move v1, v5

    .line 244
    .local v1, "i":I
    invoke-virtual {p1, v4}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v4

    add-int/2addr v4, v0

    .line 245
    .local v4, "length":I
    iget v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    .line 247
    const/4 v1, 0x0

    :goto_40
    iget v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-ge v1, v5, :cond_65

    .line 248
    iget v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    sub-int/2addr v5, v1

    invoke-static {v5}, Lcom/jcraft/jorbis/Util;->ilog(I)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v5

    .line 249
    .local v5, "num":I
    if-ne v5, v3, :cond_55

    .line 251
    invoke-virtual {p0}, Lcom/jcraft/jorbis/StaticCodeBook;->clear()V

    .line 252
    return v3

    .line 254
    :cond_55
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_56
    if-ge v6, v5, :cond_61

    .line 255
    iget-object v7, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aput v4, v7, v1

    .line 254
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 257
    .end local v6  # "j":I
    :cond_61
    nop

    .end local v5  # "num":I
    add-int/lit8 v4, v4, 0x1

    .line 258
    goto :goto_40

    .line 260
    .end local v4  # "length":I
    :cond_65
    goto :goto_ad

    .line 207
    .end local v1  # "i":I
    :pswitch_66  #0x0
    iget v1, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    .line 210
    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    if-eqz v1, :cond_95

    .line 213
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_73
    iget v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-ge v1, v5, :cond_ad

    .line 214
    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v5

    if-eqz v5, :cond_8e

    .line 215
    invoke-virtual {p1, v4}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v5

    .line 216
    .restart local v5  # "num":I
    if-ne v5, v3, :cond_87

    .line 218
    invoke-virtual {p0}, Lcom/jcraft/jorbis/StaticCodeBook;->clear()V

    .line 219
    return v3

    .line 221
    :cond_87
    iget-object v6, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    add-int/lit8 v7, v5, 0x1

    aput v7, v6, v1

    .line 222
    .end local v5  # "num":I
    goto :goto_92

    .line 224
    :cond_8e
    iget-object v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aput v2, v5, v1

    .line 213
    :goto_92
    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    .line 230
    .end local v1  # "i":I
    :cond_95
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_96
    iget v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-ge v1, v5, :cond_ad

    .line 231
    invoke-virtual {p1, v4}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v5

    .line 232
    .restart local v5  # "num":I
    if-ne v5, v3, :cond_a4

    .line 234
    invoke-virtual {p0}, Lcom/jcraft/jorbis/StaticCodeBook;->clear()V

    .line 235
    return v3

    .line 237
    :cond_a4
    iget-object v6, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    add-int/lit8 v7, v5, 0x1

    aput v7, v6, v1

    .line 230
    .end local v5  # "num":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_96

    .line 267
    :cond_ad
    :goto_ad
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v5

    iput v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->maptype:I

    packed-switch v5, :pswitch_data_114

    .line 305
    invoke-virtual {p0}, Lcom/jcraft/jorbis/StaticCodeBook;->clear()V

    .line 306
    return v3

    .line 275
    :pswitch_bb  #0x1, 0x2
    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v6

    iput v6, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_min:I

    .line 276
    invoke-virtual {p1, v5}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v5

    iput v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_delta:I

    .line 277
    invoke-virtual {p1, v4}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v4

    add-int/2addr v4, v0

    iput v4, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_quant:I

    .line 278
    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v0

    iput v0, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_sequencep:I

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "quantvals":I
    iget v4, p0, Lcom/jcraft/jorbis/StaticCodeBook;->maptype:I

    packed-switch v4, :pswitch_data_11e

    goto :goto_e9

    .line 287
    :pswitch_dd  #0x2
    iget v4, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    iget v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->dim:I

    mul-int v0, v4, v5

    goto :goto_e9

    .line 284
    :pswitch_e4  #0x1
    invoke-direct {p0}, Lcom/jcraft/jorbis/StaticCodeBook;->maptype1_quantvals()I

    move-result v0

    .line 285
    nop

    .line 292
    :goto_e9
    new-array v4, v0, [I

    iput-object v4, p0, Lcom/jcraft/jorbis/StaticCodeBook;->quantlist:[I

    .line 293
    const/4 v1, 0x0

    :goto_ee
    if-ge v1, v0, :cond_fd

    .line 294
    iget-object v4, p0, Lcom/jcraft/jorbis/StaticCodeBook;->quantlist:[I

    iget v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_quant:I

    invoke-virtual {p1, v5}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v5

    aput v5, v4, v1

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_ee

    .line 296
    :cond_fd
    iget-object v4, p0, Lcom/jcraft/jorbis/StaticCodeBook;->quantlist:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    if-ne v4, v3, :cond_109

    .line 298
    invoke-virtual {p0}, Lcom/jcraft/jorbis/StaticCodeBook;->clear()V

    .line 299
    return v3

    .line 302
    .end local v0  # "quantvals":I
    :cond_109
    goto :goto_10b

    .line 270
    :pswitch_10a  #0x0
    nop

    .line 309
    :goto_10b
    return v2

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_66  #00000000
        :pswitch_33  #00000001
    .end packed-switch

    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_10a  #00000000
        :pswitch_bb  #00000001
        :pswitch_bb  #00000002
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_e4  #00000001
        :pswitch_dd  #00000002
    .end packed-switch
.end method

.method unquantize()[F
    .registers 12

    .line 358
    iget v0, p0, Lcom/jcraft/jorbis/StaticCodeBook;->maptype:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    iget v0, p0, Lcom/jcraft/jorbis/StaticCodeBook;->maptype:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    goto :goto_d

    .line 406
    :cond_b
    const/4 v0, 0x0

    return-object v0

    .line 360
    :cond_d
    :goto_d
    iget v0, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_min:I

    invoke-static {v0}, Lcom/jcraft/jorbis/StaticCodeBook;->float32_unpack(I)F

    move-result v0

    .line 361
    .local v0, "mindel":F
    iget v1, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_delta:I

    invoke-static {v1}, Lcom/jcraft/jorbis/StaticCodeBook;->float32_unpack(I)F

    move-result v1

    .line 362
    .local v1, "delta":F
    iget v2, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    iget v3, p0, Lcom/jcraft/jorbis/StaticCodeBook;->dim:I

    mul-int/2addr v2, v3

    new-array v2, v2, [F

    .line 366
    .local v2, "r":[F
    iget v3, p0, Lcom/jcraft/jorbis/StaticCodeBook;->maptype:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_88

    move v3, v4

    .local v3, "quantvals":I
    goto :goto_87

    .end local v3  # "quantvals":I
    :pswitch_28  #0x2
    move v3, v4

    .line 390
    .restart local v3  # "quantvals":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2a
    iget v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-ge v4, v5, :cond_87

    .line 391
    const/4 v5, 0x0

    .line 392
    .local v5, "last":F
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_30
    iget v7, p0, Lcom/jcraft/jorbis/StaticCodeBook;->dim:I

    if-ge v6, v7, :cond_52

    .line 393
    iget-object v7, p0, Lcom/jcraft/jorbis/StaticCodeBook;->quantlist:[I

    iget v8, p0, Lcom/jcraft/jorbis/StaticCodeBook;->dim:I

    mul-int/2addr v8, v4

    add-int/2addr v8, v6

    aget v7, v7, v8

    int-to-float v7, v7

    .line 395
    .local v7, "val":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float/2addr v8, v1

    add-float/2addr v8, v0

    add-float/2addr v8, v5

    .line 396
    .end local v7  # "val":F
    .local v8, "val":F
    iget v7, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_sequencep:I

    if-eqz v7, :cond_49

    .line 397
    move v5, v8

    .line 398
    :cond_49
    iget v7, p0, Lcom/jcraft/jorbis/StaticCodeBook;->dim:I

    mul-int/2addr v7, v4

    add-int/2addr v7, v6

    aput v8, v2, v7

    .line 392
    .end local v8  # "val":F
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 390
    .end local v5  # "last":F
    .end local v6  # "k":I
    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 374
    .end local v3  # "quantvals":I
    .end local v4  # "j":I
    :pswitch_55  #0x1
    invoke-direct {p0}, Lcom/jcraft/jorbis/StaticCodeBook;->maptype1_quantvals()I

    move-result v3

    .line 375
    .restart local v3  # "quantvals":I
    const/4 v4, 0x0

    .restart local v4  # "j":I
    :goto_5a
    iget v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-ge v4, v5, :cond_86

    .line 376
    const/4 v5, 0x0

    .line 377
    .restart local v5  # "last":F
    const/4 v6, 0x1

    .line 378
    .local v6, "indexdiv":I
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_61
    iget v8, p0, Lcom/jcraft/jorbis/StaticCodeBook;->dim:I

    if-ge v7, v8, :cond_83

    .line 379
    div-int v8, v4, v6

    rem-int/2addr v8, v3

    .line 380
    .local v8, "index":I
    iget-object v9, p0, Lcom/jcraft/jorbis/StaticCodeBook;->quantlist:[I

    aget v9, v9, v8

    int-to-float v9, v9

    .line 381
    .local v9, "val":F
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v10, v1

    add-float/2addr v10, v0

    add-float/2addr v10, v5

    .line 382
    .end local v9  # "val":F
    .local v10, "val":F
    iget v9, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_sequencep:I

    if-eqz v9, :cond_79

    .line 383
    move v5, v10

    .line 384
    :cond_79
    iget v9, p0, Lcom/jcraft/jorbis/StaticCodeBook;->dim:I

    mul-int/2addr v9, v4

    add-int/2addr v9, v7

    aput v10, v2, v9

    .line 385
    mul-int/2addr v6, v3

    .line 378
    .end local v8  # "index":I
    .end local v10  # "val":F
    add-int/lit8 v7, v7, 0x1

    goto :goto_61

    .line 375
    .end local v5  # "last":F
    .end local v6  # "indexdiv":I
    .end local v7  # "k":I
    :cond_83
    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    .line 388
    .end local v4  # "j":I
    :cond_86
    nop

    .line 404
    :cond_87
    :goto_87
    return-object v2

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_55  #00000001
        :pswitch_28  #00000002
    .end packed-switch
.end method
