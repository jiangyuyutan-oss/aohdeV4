.class Lcom/jcraft/jorbis/CodeBook;
.super Ljava/lang/Object;
.source "CodeBook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jorbis/CodeBook$DecodeAux;
    }
.end annotation


# instance fields
.field c:Lcom/jcraft/jorbis/StaticCodeBook;

.field codelist:[I

.field decode_tree:Lcom/jcraft/jorbis/CodeBook$DecodeAux;

.field dim:I

.field entries:I

.field private t:[I

.field valuelist:[F


# direct methods
.method constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/jcraft/jorbis/StaticCodeBook;

    invoke-direct {v0}, Lcom/jcraft/jorbis/StaticCodeBook;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jorbis/CodeBook;->c:Lcom/jcraft/jorbis/StaticCodeBook;

    .line 84
    const/16 v0, 0xf

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jcraft/jorbis/CodeBook;->t:[I

    .line 469
    return-void
.end method

.method private static dist(I[FI[FI)F
    .registers 9
    .param p0, "el"  # I
    .param p1, "ref"  # [F
    .param p2, "index"  # I
    .param p3, "b"  # [F
    .param p4, "step"  # I

    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, "acc":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p0, :cond_13

    .line 311
    add-int v2, p2, v1

    aget v2, p1, v2

    mul-int v3, v1, p4

    aget v3, p3, v3

    sub-float/2addr v2, v3

    .line 312
    .local v2, "val":F
    mul-float v3, v2, v2

    add-float/2addr v0, v3

    .line 310
    .end local v2  # "val":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 314
    .end local v1  # "i":I
    :cond_13
    return v0
.end method

.method static make_words([II)[I
    .registers 11
    .param p0, "l"  # [I
    .param p1, "n"  # I

    .line 335
    const/16 v0, 0x21

    new-array v1, v0, [I

    .line 336
    .local v1, "marker":[I
    new-array v2, p1, [I

    .line 338
    .local v2, "r":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    const/4 v4, 0x1

    if-ge v3, p1, :cond_54

    .line 339
    aget v5, p0, v3

    .line 340
    .local v5, "length":I
    if-lez v5, :cond_51

    .line 341
    aget v6, v1, v5

    .line 349
    .local v6, "entry":I
    const/16 v7, 0x20

    if-ge v5, v7, :cond_1a

    ushr-int v7, v6, v5

    if-eqz v7, :cond_1a

    .line 352
    const/4 v0, 0x0

    return-object v0

    .line 354
    :cond_1a
    aput v6, v2, v3

    .line 359
    move v7, v5

    .local v7, "j":I
    :goto_1d
    if-lez v7, :cond_3c

    .line 360
    aget v8, v1, v7

    and-int/2addr v8, v4

    if-eqz v8, :cond_34

    .line 362
    if-ne v7, v4, :cond_2c

    .line 363
    aget v8, v1, v4

    add-int/2addr v8, v4

    aput v8, v1, v4

    goto :goto_3c

    .line 365
    :cond_2c
    add-int/lit8 v8, v7, -0x1

    aget v8, v1, v8

    shl-int/2addr v8, v4

    aput v8, v1, v7

    .line 366
    goto :goto_3c

    .line 369
    :cond_34
    aget v8, v1, v7

    add-int/2addr v8, v4

    aput v8, v1, v7

    .line 359
    add-int/lit8 v7, v7, -0x1

    goto :goto_1d

    .line 376
    .end local v7  # "j":I
    :cond_3c
    :goto_3c
    add-int/lit8 v7, v5, 0x1

    .restart local v7  # "j":I
    :goto_3e
    if-ge v7, v0, :cond_51

    .line 377
    aget v8, v1, v7

    ushr-int/2addr v8, v4

    if-ne v8, v6, :cond_51

    .line 378
    aget v6, v1, v7

    .line 379
    add-int/lit8 v8, v7, -0x1

    aget v8, v1, v8

    shl-int/2addr v8, v4

    aput v8, v1, v7

    .line 376
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e

    .line 338
    .end local v5  # "length":I
    .end local v6  # "entry":I
    .end local v7  # "j":I
    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 390
    .end local v3  # "i":I
    :cond_54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_55
    if-ge v0, p1, :cond_6c

    .line 391
    const/4 v3, 0x0

    .line 392
    .local v3, "temp":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_59
    aget v6, p0, v0

    if-ge v5, v6, :cond_67

    .line 393
    shl-int/lit8 v3, v3, 0x1

    .line 394
    aget v6, v2, v0

    ushr-int/2addr v6, v5

    and-int/2addr v6, v4

    or-int/2addr v3, v6

    .line 392
    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    .line 396
    .end local v5  # "j":I
    :cond_67
    aput v3, v2, v0

    .line 390
    .end local v3  # "temp":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 399
    .end local v0  # "i":I
    :cond_6c
    return-object v2
.end method


# virtual methods
.method best([FI)I
    .registers 9
    .param p1, "a"  # [F
    .param p2, "step"  # I

    .line 265
    const/4 v0, -0x1

    .line 266
    .local v0, "besti":I
    const/4 v1, 0x0

    .line 267
    .local v1, "best":F
    const/4 v2, 0x0

    .line 268
    .local v2, "e":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    iget v4, p0, Lcom/jcraft/jorbis/CodeBook;->entries:I

    if-ge v3, v4, :cond_27

    .line 269
    iget-object v4, p0, Lcom/jcraft/jorbis/CodeBook;->c:Lcom/jcraft/jorbis/StaticCodeBook;

    iget-object v4, v4, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aget v4, v4, v3

    if-lez v4, :cond_21

    .line 270
    iget v4, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    iget-object v5, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    invoke-static {v4, v5, v2, p1, p2}, Lcom/jcraft/jorbis/CodeBook;->dist(I[FI[FI)F

    move-result v4

    .line 271
    .local v4, "_this":F
    const/4 v5, -0x1

    if-eq v0, v5, :cond_1f

    cmpg-float v5, v4, v1

    if-gez v5, :cond_21

    .line 272
    :cond_1f
    move v1, v4

    .line 273
    move v0, v3

    .line 276
    .end local v4  # "_this":F
    :cond_21
    iget v4, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    add-int/2addr v2, v4

    .line 268
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 278
    .end local v3  # "i":I
    :cond_27
    return v0
.end method

.method besterror([FII)I
    .registers 10
    .param p1, "a"  # [F
    .param p2, "step"  # I
    .param p3, "addmul"  # I

    .line 284
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jorbis/CodeBook;->best([FI)I

    move-result v0

    .line 285
    .local v0, "best":I
    packed-switch p3, :pswitch_data_40

    goto :goto_3f

    .line 291
    :pswitch_8  #0x1
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "o":I
    :goto_a
    iget v3, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    if-ge v1, v3, :cond_3f

    .line 292
    iget-object v3, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    iget v4, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    aget v3, v3, v4

    .line 293
    .local v3, "val":F
    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-nez v5, :cond_1e

    .line 294
    aput v4, p1, v2

    goto :goto_23

    .line 297
    :cond_1e
    aget v4, p1, v2

    div-float/2addr v4, v3

    aput v4, p1, v2

    .line 291
    .end local v3  # "val":F
    :goto_23
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, p2

    goto :goto_a

    .line 287
    .end local v1  # "i":I
    .end local v2  # "o":I
    :pswitch_27  #0x0
    const/4 v1, 0x0

    .restart local v1  # "i":I
    const/4 v2, 0x0

    .restart local v2  # "o":I
    :goto_29
    iget v3, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    if-ge v1, v3, :cond_3e

    .line 288
    aget v3, p1, v2

    iget-object v4, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    iget v5, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v1

    aget v4, v4, v5

    sub-float/2addr v3, v4

    aput v3, p1, v2

    .line 287
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, p2

    goto :goto_29

    .line 289
    .end local v1  # "i":I
    .end local v2  # "o":I
    :cond_3e
    nop

    .line 302
    :cond_3f
    :goto_3f
    return v0

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_27  #00000000
        :pswitch_8  #00000001
    .end packed-switch
.end method

.method clear()V
    .registers 1

    .line 306
    return-void
.end method

.method decode(Lcom/jcraft/jogg/Buffer;)I
    .registers 6
    .param p1, "b"  # Lcom/jcraft/jogg/Buffer;

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "ptr":I
    iget-object v1, p0, Lcom/jcraft/jorbis/CodeBook;->decode_tree:Lcom/jcraft/jorbis/CodeBook$DecodeAux;

    .line 212
    .local v1, "t":Lcom/jcraft/jorbis/CodeBook$DecodeAux;
    iget v2, v1, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->tabn:I

    invoke-virtual {p1, v2}, Lcom/jcraft/jogg/Buffer;->look(I)I

    move-result v2

    .line 214
    .local v2, "lok":I
    if-ltz v2, :cond_1a

    .line 215
    iget-object v3, v1, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->tab:[I

    aget v0, v3, v2

    .line 216
    iget-object v3, v1, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->tabl:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Lcom/jcraft/jogg/Buffer;->adv(I)V

    .line 217
    if-gtz v0, :cond_1a

    .line 218
    neg-int v3, v0

    return v3

    .line 222
    :cond_1a
    invoke-virtual {p1}, Lcom/jcraft/jogg/Buffer;->read1()I

    move-result v3

    packed-switch v3, :pswitch_data_32

    .line 231
    const/4 v3, -0x1

    return v3

    .line 227
    :pswitch_23  #0x1
    iget-object v3, v1, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->ptr1:[I

    aget v0, v3, v0

    .line 228
    goto :goto_2d

    .line 224
    :pswitch_28  #0x0
    iget-object v3, v1, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->ptr0:[I

    aget v0, v3, v0

    .line 225
    nop

    .line 234
    :goto_2d
    if-gtz v0, :cond_1a

    .line 235
    neg-int v3, v0

    return v3

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_28  #00000000
        :pswitch_23  #00000001
    .end packed-switch
.end method

.method decodev_add([FILcom/jcraft/jogg/Buffer;I)I
    .registers 14
    .param p1, "a"  # [F
    .param p2, "offset"  # I
    .param p3, "b"  # Lcom/jcraft/jogg/Buffer;
    .param p4, "n"  # I

    .line 114
    iget v0, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    const/16 v1, 0x8

    const/4 v2, -0x1

    if-le v0, v1, :cond_2b

    .line 115
    const/4 v0, 0x0

    .local v0, "i":I
    :cond_8
    if-ge v0, p4, :cond_ca

    .line 116
    invoke-virtual {p0, p3}, Lcom/jcraft/jorbis/CodeBook;->decode(Lcom/jcraft/jogg/Buffer;)I

    move-result v1

    .line 117
    .local v1, "entry":I
    if-ne v1, v2, :cond_11

    .line 118
    return v2

    .line 119
    :cond_11
    iget v3, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    mul-int/2addr v3, v1

    .line 120
    .local v3, "t":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_15
    iget v5, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    if-ge v4, v5, :cond_8

    .line 121
    add-int/lit8 v5, v0, 0x1

    .end local v0  # "i":I
    .local v5, "i":I
    add-int/2addr v0, p2

    aget v6, p1, v0

    iget-object v7, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    add-int/lit8 v8, v4, 0x1

    .end local v4  # "j":I
    .local v8, "j":I
    add-int/2addr v4, v3

    aget v4, v7, v4

    add-float/2addr v6, v4

    aput v6, p1, v0

    move v0, v5

    move v4, v8

    goto :goto_15

    .line 126
    .end local v1  # "entry":I
    .end local v3  # "t":I
    .end local v5  # "i":I
    .end local v8  # "j":I
    :cond_2b
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_2c
    if-ge v0, p4, :cond_ca

    .line 127
    invoke-virtual {p0, p3}, Lcom/jcraft/jorbis/CodeBook;->decode(Lcom/jcraft/jogg/Buffer;)I

    move-result v1

    .line 128
    .restart local v1  # "entry":I
    if-ne v1, v2, :cond_35

    .line 129
    return v2

    .line 130
    :cond_35
    iget v3, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    mul-int/2addr v3, v1

    .line 131
    .restart local v3  # "t":I
    const/4 v4, 0x0

    .line 132
    .restart local v4  # "j":I
    iget v5, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    packed-switch v5, :pswitch_data_cc

    goto/16 :goto_c8

    .line 134
    :pswitch_40  #0x8
    add-int/lit8 v5, v0, 0x1

    .end local v0  # "i":I
    .restart local v5  # "i":I
    add-int/2addr v0, p2

    aget v6, p1, v0

    iget-object v7, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    add-int/lit8 v8, v4, 0x1

    .end local v4  # "j":I
    .restart local v8  # "j":I
    add-int/2addr v4, v3

    aget v4, v7, v4

    add-float/2addr v6, v4

    aput v6, p1, v0

    move v0, v5

    move v4, v8

    .line 136
    .end local v5  # "i":I
    .end local v8  # "j":I
    .restart local v0  # "i":I
    .restart local v4  # "j":I
    :pswitch_51  #0x7
    add-int/lit8 v5, v0, 0x1

    .end local v0  # "i":I
    .restart local v5  # "i":I
    add-int/2addr v0, p2

    aget v6, p1, v0

    iget-object v7, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    add-int/lit8 v8, v4, 0x1

    .end local v4  # "j":I
    .restart local v8  # "j":I
    add-int/2addr v4, v3

    aget v4, v7, v4

    add-float/2addr v6, v4

    aput v6, p1, v0

    move v0, v5

    move v4, v8

    .line 138
    .end local v5  # "i":I
    .end local v8  # "j":I
    .restart local v0  # "i":I
    .restart local v4  # "j":I
    :pswitch_62  #0x6
    add-int/lit8 v5, v0, 0x1

    .end local v0  # "i":I
    .restart local v5  # "i":I
    add-int/2addr v0, p2

    aget v6, p1, v0

    iget-object v7, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    add-int/lit8 v8, v4, 0x1

    .end local v4  # "j":I
    .restart local v8  # "j":I
    add-int/2addr v4, v3

    aget v4, v7, v4

    add-float/2addr v6, v4

    aput v6, p1, v0

    move v0, v5

    move v4, v8

    .line 140
    .end local v5  # "i":I
    .end local v8  # "j":I
    .restart local v0  # "i":I
    .restart local v4  # "j":I
    :pswitch_73  #0x5
    add-int/lit8 v5, v0, 0x1

    .end local v0  # "i":I
    .restart local v5  # "i":I
    add-int/2addr v0, p2

    aget v6, p1, v0

    iget-object v7, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    add-int/lit8 v8, v4, 0x1

    .end local v4  # "j":I
    .restart local v8  # "j":I
    add-int/2addr v4, v3

    aget v4, v7, v4

    add-float/2addr v6, v4

    aput v6, p1, v0

    move v0, v5

    move v4, v8

    .line 142
    .end local v5  # "i":I
    .end local v8  # "j":I
    .restart local v0  # "i":I
    .restart local v4  # "j":I
    :pswitch_84  #0x4
    add-int/lit8 v5, v0, 0x1

    .end local v0  # "i":I
    .restart local v5  # "i":I
    add-int/2addr v0, p2

    aget v6, p1, v0

    iget-object v7, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    add-int/lit8 v8, v4, 0x1

    .end local v4  # "j":I
    .restart local v8  # "j":I
    add-int/2addr v4, v3

    aget v4, v7, v4

    add-float/2addr v6, v4

    aput v6, p1, v0

    move v0, v5

    move v4, v8

    .line 144
    .end local v5  # "i":I
    .end local v8  # "j":I
    .restart local v0  # "i":I
    .restart local v4  # "j":I
    :pswitch_95  #0x3
    add-int/lit8 v5, v0, 0x1

    .end local v0  # "i":I
    .restart local v5  # "i":I
    add-int/2addr v0, p2

    aget v6, p1, v0

    iget-object v7, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    add-int/lit8 v8, v4, 0x1

    .end local v4  # "j":I
    .restart local v8  # "j":I
    add-int/2addr v4, v3

    aget v4, v7, v4

    add-float/2addr v6, v4

    aput v6, p1, v0

    move v0, v5

    move v4, v8

    .line 146
    .end local v5  # "i":I
    .end local v8  # "j":I
    .restart local v0  # "i":I
    .restart local v4  # "j":I
    :pswitch_a6  #0x2
    add-int/lit8 v5, v0, 0x1

    .end local v0  # "i":I
    .restart local v5  # "i":I
    add-int/2addr v0, p2

    aget v6, p1, v0

    iget-object v7, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    add-int/lit8 v8, v4, 0x1

    .end local v4  # "j":I
    .restart local v8  # "j":I
    add-int/2addr v4, v3

    aget v4, v7, v4

    add-float/2addr v6, v4

    aput v6, p1, v0

    move v0, v5

    move v4, v8

    .line 148
    .end local v5  # "i":I
    .end local v8  # "j":I
    .restart local v0  # "i":I
    .restart local v4  # "j":I
    :pswitch_b7  #0x1
    add-int/lit8 v5, v0, 0x1

    .end local v0  # "i":I
    .restart local v5  # "i":I
    add-int/2addr v0, p2

    aget v6, p1, v0

    iget-object v7, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    add-int/lit8 v8, v4, 0x1

    .end local v4  # "j":I
    .restart local v8  # "j":I
    add-int/2addr v4, v3

    aget v4, v7, v4

    add-float/2addr v6, v4

    aput v6, p1, v0

    move v0, v5

    move v4, v8

    .line 150
    .end local v5  # "i":I
    .end local v8  # "j":I
    .restart local v0  # "i":I
    .restart local v4  # "j":I
    :goto_c8
    goto/16 :goto_2c

    .line 154
    .end local v1  # "entry":I
    .end local v3  # "t":I
    .end local v4  # "j":I
    :cond_ca
    const/4 v1, 0x0

    return v1

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_b7  #00000001
        :pswitch_a6  #00000002
        :pswitch_95  #00000003
        :pswitch_84  #00000004
        :pswitch_73  #00000005
        :pswitch_62  #00000006
        :pswitch_51  #00000007
        :pswitch_40  #00000008
    .end packed-switch
.end method

.method decodev_set([FILcom/jcraft/jogg/Buffer;I)I
    .registers 12
    .param p1, "a"  # [F
    .param p2, "offset"  # I
    .param p3, "b"  # Lcom/jcraft/jogg/Buffer;
    .param p4, "n"  # I

    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    :cond_1
    if-ge v0, p4, :cond_22

    .line 162
    invoke-virtual {p0, p3}, Lcom/jcraft/jorbis/CodeBook;->decode(Lcom/jcraft/jogg/Buffer;)I

    move-result v1

    .line 163
    .local v1, "entry":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    .line 164
    return v2

    .line 165
    :cond_b
    iget v2, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    mul-int/2addr v2, v1

    .line 166
    .local v2, "t":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_f
    iget v4, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    if-ge v3, v4, :cond_1

    .line 167
    add-int/lit8 v4, v0, 0x1

    .end local v0  # "i":I
    .local v4, "i":I
    add-int/2addr v0, p2

    iget-object v5, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    add-int/lit8 v6, v3, 0x1

    .end local v3  # "j":I
    .local v6, "j":I
    add-int/2addr v3, v2

    aget v3, v5, v3

    aput v3, p1, v0

    move v0, v4

    move v3, v6

    goto :goto_f

    .line 170
    .end local v1  # "entry":I
    .end local v2  # "t":I
    .end local v4  # "i":I
    .end local v6  # "j":I
    .restart local v0  # "i":I
    :cond_22
    const/4 v1, 0x0

    return v1
.end method

.method decodevs([FILcom/jcraft/jogg/Buffer;II)I
    .registers 13
    .param p1, "a"  # [F
    .param p2, "index"  # I
    .param p3, "b"  # Lcom/jcraft/jogg/Buffer;
    .param p4, "step"  # I
    .param p5, "addmul"  # I

    .line 240
    invoke-virtual {p0, p3}, Lcom/jcraft/jorbis/CodeBook;->decode(Lcom/jcraft/jogg/Buffer;)I

    move-result v0

    .line 241
    .local v0, "entry":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 242
    return v1

    .line 243
    :cond_8
    packed-switch p5, :pswitch_data_58

    goto :goto_57

    .line 253
    :pswitch_c  #0x1
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "o":I
    :goto_e
    iget v3, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    if-ge v1, v3, :cond_25

    .line 254
    add-int v3, p2, v2

    aget v4, p1, v3

    iget-object v5, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    iget v6, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v1

    aget v5, v5, v6

    mul-float/2addr v4, v5

    aput v4, p1, v3

    .line 253
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, p4

    goto :goto_e

    .line 255
    .end local v1  # "i":I
    .end local v2  # "o":I
    :cond_25
    goto :goto_57

    .line 249
    :pswitch_26  #0x0
    const/4 v1, 0x0

    .restart local v1  # "i":I
    const/4 v2, 0x0

    .restart local v2  # "o":I
    :goto_28
    iget v3, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    if-ge v1, v3, :cond_3f

    .line 250
    add-int v3, p2, v2

    aget v4, p1, v3

    iget-object v5, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    iget v6, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v1

    aget v5, v5, v6

    add-float/2addr v4, v5

    aput v4, p1, v3

    .line 249
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, p4

    goto :goto_28

    .line 251
    .end local v1  # "i":I
    .end local v2  # "o":I
    :cond_3f
    goto :goto_57

    .line 245
    :pswitch_40  #0xffffffff
    const/4 v1, 0x0

    .restart local v1  # "i":I
    const/4 v2, 0x0

    .restart local v2  # "o":I
    :goto_42
    iget v3, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    if-ge v1, v3, :cond_56

    .line 246
    add-int v3, p2, v2

    iget-object v4, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    iget v5, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v1

    aget v4, v4, v5

    aput v4, p1, v3

    .line 245
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, p4

    goto :goto_42

    .line 247
    .end local v1  # "i":I
    .end local v2  # "o":I
    :cond_56
    nop

    .line 259
    :goto_57
    return v0

    :pswitch_data_58
    .packed-switch -0x1
        :pswitch_40  #ffffffff
        :pswitch_26  #00000000
        :pswitch_c  #00000001
    .end packed-switch
.end method

.method declared-synchronized decodevs_add([FILcom/jcraft/jogg/Buffer;I)I
    .registers 13
    .param p1, "a"  # [F
    .param p2, "offset"  # I
    .param p3, "b"  # Lcom/jcraft/jogg/Buffer;
    .param p4, "n"  # I

    monitor-enter p0

    .line 87
    :try_start_1
    iget v0, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    div-int v0, p4, v0

    .line 91
    .local v0, "step":I
    iget-object v1, p0, Lcom/jcraft/jorbis/CodeBook;->t:[I

    array-length v1, v1

    if-ge v1, v0, :cond_e

    .line 92
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/jcraft/jorbis/CodeBook;->t:[I

    .line 95
    .end local p0  # "this":Lcom/jcraft/jorbis/CodeBook;
    :cond_e
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_24

    .line 96
    invoke-virtual {p0, p3}, Lcom/jcraft/jorbis/CodeBook;->decode(Lcom/jcraft/jogg/Buffer;)I

    move-result v2
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_48

    .line 97
    .local v2, "entry":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1a

    .line 98
    monitor-exit p0

    return v3

    .line 99
    :cond_1a
    :try_start_1a
    iget-object v3, p0, Lcom/jcraft/jorbis/CodeBook;->t:[I

    iget v4, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    mul-int/2addr v4, v2

    aput v4, v3, v1

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 101
    .end local v2  # "entry":I
    :cond_24
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "o":I
    :goto_26
    iget v3, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    if-ge v1, v3, :cond_45

    .line 102
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2b
    if-ge v3, v0, :cond_41

    .line 103
    add-int v4, p2, v2

    add-int/2addr v4, v3

    aget v5, p1, v4

    iget-object v6, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    iget-object v7, p0, Lcom/jcraft/jorbis/CodeBook;->t:[I

    aget v7, v7, v3

    add-int/2addr v7, v1

    aget v6, v6, v7

    add-float/2addr v5, v6

    aput v5, p1, v4
    :try_end_3e
    .catchall {:try_start_1a .. :try_end_3e} :catchall_48

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 101
    :cond_41
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v0

    goto :goto_26

    .line 107
    .end local v3  # "j":I
    :cond_45
    monitor-exit p0

    const/4 v3, 0x0

    return v3

    .line 86
    .end local v0  # "step":I
    .end local v1  # "i":I
    .end local v2  # "o":I
    .end local p1  # "a":[F
    .end local p2  # "offset":I
    .end local p3  # "b":Lcom/jcraft/jogg/Buffer;
    .end local p4  # "n":I
    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method decodevv_add([[FIILcom/jcraft/jogg/Buffer;I)I
    .registers 15
    .param p1, "a"  # [[F
    .param p2, "offset"  # I
    .param p3, "ch"  # I
    .param p4, "b"  # Lcom/jcraft/jogg/Buffer;
    .param p5, "n"  # I

    .line 175
    const/4 v0, 0x0

    .line 177
    .local v0, "chptr":I
    div-int v1, p2, p3

    .local v1, "i":I
    :goto_3
    add-int v2, p2, p5

    div-int/2addr v2, p3

    if-ge v1, v2, :cond_32

    .line 178
    invoke-virtual {p0, p4}, Lcom/jcraft/jorbis/CodeBook;->decode(Lcom/jcraft/jogg/Buffer;)I

    move-result v2

    .line 179
    .local v2, "entry":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_10

    .line 180
    return v3

    .line 182
    :cond_10
    iget v3, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    mul-int/2addr v3, v2

    .line 183
    .local v3, "t":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_14
    iget v5, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    if-ge v4, v5, :cond_31

    .line 184
    add-int/lit8 v5, v0, 0x1

    .end local v0  # "chptr":I
    .local v5, "chptr":I
    aget-object v0, p1, v0

    aget v6, v0, v1

    iget-object v7, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    add-int v8, v3, v4

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v0, v1

    .line 185
    if-ne v5, p3, :cond_2d

    .line 186
    const/4 v0, 0x0

    .line 187
    .end local v5  # "chptr":I
    .restart local v0  # "chptr":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 185
    .end local v0  # "chptr":I
    .restart local v5  # "chptr":I
    :cond_2d
    move v0, v5

    .line 183
    .end local v5  # "chptr":I
    .restart local v0  # "chptr":I
    :goto_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 190
    .end local v3  # "t":I
    :cond_31
    goto :goto_3

    .line 191
    .end local v2  # "entry":I
    .end local v4  # "j":I
    :cond_32
    const/4 v2, 0x0

    return v2
.end method

.method encode(ILcom/jcraft/jogg/Buffer;)I
    .registers 5
    .param p1, "a"  # I
    .param p2, "b"  # Lcom/jcraft/jogg/Buffer;

    .line 42
    iget-object v0, p0, Lcom/jcraft/jorbis/CodeBook;->codelist:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/jcraft/jorbis/CodeBook;->c:Lcom/jcraft/jorbis/StaticCodeBook;

    iget-object v1, v1, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aget v1, v1, p1

    invoke-virtual {p2, v0, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 43
    iget-object v0, p0, Lcom/jcraft/jorbis/CodeBook;->c:Lcom/jcraft/jorbis/StaticCodeBook;

    iget-object v0, v0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aget v0, v0, p1

    return v0
.end method

.method encodev(I[FLcom/jcraft/jogg/Buffer;)I
    .registers 7
    .param p1, "best"  # I
    .param p2, "a"  # [F
    .param p3, "b"  # Lcom/jcraft/jogg/Buffer;

    .line 71
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_1
    iget v1, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    if-ge v0, v1, :cond_12

    .line 72
    iget-object v1, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    iget v2, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    mul-int/2addr v2, p1

    add-int/2addr v2, v0

    aget v1, v1, v2

    aput v1, p2, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    .end local v0  # "k":I
    :cond_12
    invoke-virtual {p0, p1, p3}, Lcom/jcraft/jorbis/CodeBook;->encode(ILcom/jcraft/jogg/Buffer;)I

    move-result v0

    return v0
.end method

.method encodevs([FLcom/jcraft/jogg/Buffer;II)I
    .registers 7
    .param p1, "a"  # [F
    .param p2, "b"  # Lcom/jcraft/jogg/Buffer;
    .param p3, "step"  # I
    .param p4, "addmul"  # I

    .line 80
    invoke-virtual {p0, p1, p3, p4}, Lcom/jcraft/jorbis/CodeBook;->besterror([FII)I

    move-result v0

    .line 81
    .local v0, "best":I
    invoke-virtual {p0, v0, p2}, Lcom/jcraft/jorbis/CodeBook;->encode(ILcom/jcraft/jogg/Buffer;)I

    move-result v1

    return v1
.end method

.method errorv([F)I
    .registers 6
    .param p1, "a"  # [F

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jorbis/CodeBook;->best([FI)I

    move-result v0

    .line 63
    .local v0, "best":I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_6
    iget v2, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    if-ge v1, v2, :cond_17

    .line 64
    iget-object v2, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    iget v3, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v1

    aget v2, v2, v3

    aput v2, p1, v1

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 66
    .end local v1  # "k":I
    :cond_17
    return v0
.end method

.method init_decode(Lcom/jcraft/jorbis/StaticCodeBook;)I
    .registers 3
    .param p1, "s"  # Lcom/jcraft/jorbis/StaticCodeBook;

    .line 318
    iput-object p1, p0, Lcom/jcraft/jorbis/CodeBook;->c:Lcom/jcraft/jorbis/StaticCodeBook;

    .line 319
    iget v0, p1, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    iput v0, p0, Lcom/jcraft/jorbis/CodeBook;->entries:I

    .line 320
    iget v0, p1, Lcom/jcraft/jorbis/StaticCodeBook;->dim:I

    iput v0, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    .line 321
    invoke-virtual {p1}, Lcom/jcraft/jorbis/StaticCodeBook;->unquantize()[F

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    .line 323
    invoke-virtual {p0}, Lcom/jcraft/jorbis/CodeBook;->make_decode_tree()Lcom/jcraft/jorbis/CodeBook$DecodeAux;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jorbis/CodeBook;->decode_tree:Lcom/jcraft/jorbis/CodeBook$DecodeAux;

    .line 324
    iget-object v0, p0, Lcom/jcraft/jorbis/CodeBook;->decode_tree:Lcom/jcraft/jorbis/CodeBook$DecodeAux;

    if-nez v0, :cond_1f

    .line 325
    invoke-virtual {p0}, Lcom/jcraft/jorbis/CodeBook;->clear()V

    .line 326
    const/4 v0, -0x1

    return v0

    .line 328
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method make_decode_tree()Lcom/jcraft/jorbis/CodeBook$DecodeAux;
    .registers 12

    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, "top":I
    new-instance v1, Lcom/jcraft/jorbis/CodeBook$DecodeAux;

    invoke-direct {v1, p0}, Lcom/jcraft/jorbis/CodeBook$DecodeAux;-><init>(Lcom/jcraft/jorbis/CodeBook;)V

    .line 406
    .local v1, "t":Lcom/jcraft/jorbis/CodeBook$DecodeAux;
    iget v2, p0, Lcom/jcraft/jorbis/CodeBook;->entries:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->ptr0:[I

    .line 407
    .local v2, "ptr0":[I
    iget v3, p0, Lcom/jcraft/jorbis/CodeBook;->entries:I

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    iput-object v3, v1, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->ptr1:[I

    .line 408
    .local v3, "ptr1":[I
    iget-object v4, p0, Lcom/jcraft/jorbis/CodeBook;->c:Lcom/jcraft/jorbis/StaticCodeBook;

    iget-object v4, v4, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    iget-object v5, p0, Lcom/jcraft/jorbis/CodeBook;->c:Lcom/jcraft/jorbis/StaticCodeBook;

    iget v5, v5, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    invoke-static {v4, v5}, Lcom/jcraft/jorbis/CodeBook;->make_words([II)[I

    move-result-object v4

    .line 410
    .local v4, "codelist":[I
    if-nez v4, :cond_26

    .line 411
    const/4 v5, 0x0

    return-object v5

    .line 412
    :cond_26
    iget v5, p0, Lcom/jcraft/jorbis/CodeBook;->entries:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, v1, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->aux:I

    .line 414
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2d
    iget v6, p0, Lcom/jcraft/jorbis/CodeBook;->entries:I

    const/4 v7, 0x1

    if-ge v5, v6, :cond_73

    .line 415
    iget-object v6, p0, Lcom/jcraft/jorbis/CodeBook;->c:Lcom/jcraft/jorbis/StaticCodeBook;

    iget-object v6, v6, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aget v6, v6, v5

    if-lez v6, :cond_70

    .line 416
    const/4 v6, 0x0

    .line 418
    .local v6, "ptr":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3c
    iget-object v9, p0, Lcom/jcraft/jorbis/CodeBook;->c:Lcom/jcraft/jorbis/StaticCodeBook;

    iget-object v9, v9, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aget v9, v9, v5

    sub-int/2addr v9, v7

    if-ge v8, v9, :cond_63

    .line 419
    aget v9, v4, v5

    ushr-int/2addr v9, v8

    and-int/2addr v9, v7

    .line 420
    .local v9, "bit":I
    if-nez v9, :cond_56

    .line 421
    aget v10, v2, v6

    if-nez v10, :cond_53

    .line 422
    add-int/lit8 v0, v0, 0x1

    aput v0, v2, v6

    .line 424
    :cond_53
    aget v6, v2, v6

    goto :goto_60

    .line 427
    :cond_56
    aget v10, v3, v6

    if-nez v10, :cond_5e

    .line 428
    add-int/lit8 v0, v0, 0x1

    aput v0, v3, v6

    .line 430
    :cond_5e
    aget v6, v3, v6

    .line 418
    .end local v9  # "bit":I
    :goto_60
    add-int/lit8 v8, v8, 0x1

    goto :goto_3c

    .line 434
    :cond_63
    aget v9, v4, v5

    ushr-int/2addr v9, v8

    and-int/2addr v7, v9

    if-nez v7, :cond_6d

    .line 435
    neg-int v7, v5

    aput v7, v2, v6

    goto :goto_70

    .line 438
    :cond_6d
    neg-int v7, v5

    aput v7, v3, v6

    .line 414
    .end local v6  # "ptr":I
    .end local v8  # "j":I
    :cond_70
    :goto_70
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 444
    .end local v5  # "i":I
    :cond_73
    iget v5, p0, Lcom/jcraft/jorbis/CodeBook;->entries:I

    invoke-static {v5}, Lcom/jcraft/jorbis/Util;->ilog(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    iput v5, v1, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->tabn:I

    .line 446
    iget v5, v1, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->tabn:I

    const/4 v6, 0x5

    if-ge v5, v6, :cond_84

    .line 447
    iput v6, v1, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->tabn:I

    .line 448
    :cond_84
    iget v5, v1, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->tabn:I

    shl-int v5, v7, v5

    .line 449
    .local v5, "n":I
    new-array v6, v5, [I

    iput-object v6, v1, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->tab:[I

    .line 450
    new-array v6, v5, [I

    iput-object v6, v1, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->tabl:[I

    .line 451
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_91
    if-ge v6, v5, :cond_b6

    .line 452
    const/4 v8, 0x0

    .line 453
    .local v8, "p":I
    const/4 v9, 0x0

    .line 454
    .local v9, "j":I
    const/4 v9, 0x0

    :goto_96
    iget v10, v1, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->tabn:I

    if-ge v9, v10, :cond_ab

    if-gtz v8, :cond_9e

    if-nez v9, :cond_ab

    .line 455
    :cond_9e
    shl-int v10, v7, v9

    and-int/2addr v10, v6

    if-eqz v10, :cond_a6

    .line 456
    aget v8, v3, v8

    goto :goto_a8

    .line 459
    :cond_a6
    aget v8, v2, v8

    .line 454
    :goto_a8
    add-int/lit8 v9, v9, 0x1

    goto :goto_96

    .line 462
    :cond_ab
    iget-object v10, v1, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->tab:[I

    aput v8, v10, v6

    .line 463
    iget-object v10, v1, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->tabl:[I

    aput v9, v10, v6

    .line 451
    .end local v8  # "p":I
    .end local v9  # "j":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_91

    .line 466
    .end local v6  # "i":I
    :cond_b6
    return-object v1
.end method
