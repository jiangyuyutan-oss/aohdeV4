.class Lcom/jcraft/jorbis/Floor1;
.super Lcom/jcraft/jorbis/FuncFloor;
.source "Floor1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jorbis/Floor1$EchstateFloor1;,
        Lcom/jcraft/jorbis/Floor1$Lsfit_acc;,
        Lcom/jcraft/jorbis/Floor1$LookFloor1;,
        Lcom/jcraft/jorbis/Floor1$InfoFloor1;
    }
.end annotation


# static fields
.field private static FLOOR_fromdB_LOOKUP:[F = null

.field static final VIF_POSIT:I = 0x3f

.field static final floor1_rangedb:I = 0x8c


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 393
    const/16 v0, 0x100

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/jcraft/jorbis/Floor1;->FLOOR_fromdB_LOOKUP:[F

    return-void

    :array_a
    .array-data 4
        0x33e4b43e
        0x33f39109
        0x3401b28b
        0x340a203c
        0x34131a23  # 1.369995E-7f
        0x341ca960
        0x3426d7a7
        0x3431af4b
        0x343d3b50
        0x34498770
        0x3456a023
        0x346492b8
        0x34736d55
        0x34819f88
        0x348a0bfc
        0x34930493
        0x349c9269
        0x34a6bf32
        0x34b1953f
        0x34bd1f93
        0x34c969e4
        0x34d680ad
        0x34e47136
        0x34f349a6
        0x35018c88
        0x3509f7c0  # 5.1397E-7f
        0x3512ef06
        0x351c7b76
        0x3526a6c0
        0x35317b37
        0x353d03da
        0x35494c5e
        0x3556613b
        0x35644fb9
        0x357325fc
        0x3581798a
        0x3589e386
        0x3592d97c
        0x359c6485
        0x35a68e52
        0x35b16133
        0x35bce825
        0x35c92edc
        0x35d641ce
        0x35e42e41  # 1.7000785E-6f
        0x35f30257
        0x3601668f
        0x3609cf4f
        0x3612c3f5
        0x361c4d98
        0x362675e8
        0x36314732
        0x363ccc74
        0x3649115e
        0x36562265
        0x36640cce
        0x3672deb8
        0x36815397
        0x3689bb1c
        0x3692ae72
        0x369c36af
        0x36a65d81
        0x36b12d35
        0x36bcb0c7
        0x36c8f3e4
        0x36d60301
        0x36e3eb60
        0x36f2bb1e
        0x370140a2
        0x3709a6eb  # 8.2047E-6f
        0x371298f1
        0x371c1fc9
        0x3726451e
        0x3731133d
        0x373c951e
        0x3748d66f
        0x3755e3a2
        0x3763c9f7
        0x37729789
        0x37812daf
        0x378992be  # 1.6400005E-5f
        0x37928374
        0x379c08e6
        0x37a62cbe
        0x37b0f947
        0x37bc7979
        0x37c8b8fe
        0x37d5c447
        0x37e3a892
        0x37f273f8
        0x38011ac0
        0x38097e93
        0x38126df9
        0x381bf206
        0x38261462
        0x3830df56
        0x383c5dd8
        0x38489b92
        0x3855a4f2
        0x38638733
        0x3872506e
        0x388107d3
        0x38896a6b
        0x38925882
        0x389bdb2a
        0x38a5fc09
        0x38b0c568
        0x38bc423b
        0x38c87e29
        0x38d585a0
        0x38e365d9
        0x38f22ce8
        0x3900f4e9
        0x39095646
        0x3912430e
        0x391bc451
        0x3925e3b5
        0x3930ab7f
        0x393c26a2
        0x394860c5
        0x39556653
        0x39634483
        0x39720968
        0x3980e201
        0x39894224
        0x39922d9d
        0x399bad7b
        0x39a5cb63
        0x39b09199
        0x39bc0b0d
        0x39c84366
        0x39d5470b
        0x39e32332
        0x39f1e5ed
        0x3a00cf1d
        0x3a092e05
        0x3a121830
        0x3a1b96a9
        0x3a25b315
        0x3a3077b7
        0x3a3bef7c
        0x3a48260a
        0x3a5527c7
        0x3a6301e6
        0x3a71c278
        0x3a80bc3b
        0x3a8919e9  # 0.0010459992f
        0x3a9202c6
        0x3a9b7fdb
        0x3aa59acb
        0x3ab05dd8
        0x3abbd3ef
        0x3ac808b3
        0x3ad50888
        0x3ae2e09f
        0x3af19f07
        0x3b00a95c
        0x3b0905d0
        0x3b11ed5e
        0x3b1b690f
        0x3b258284
        0x3b3043fd
        0x3b3bb867
        0x3b47eb61
        0x3b54e94d
        0x3b62bf5d
        0x3b717b9c
        0x3b80967f
        0x3b88f1ba
        0x3b91d7f9
        0x3b9b5247
        0x3ba56a41
        0x3bb02a27
        0x3bbb9ce2
        0x3bc7ce12
        0x3bd4ca17
        0x3be29e20
        0x3bf15835
        0x3c0083a6
        0x3c08dda7
        0x3c11c298
        0x3c1b3b82
        0x3c255201
        0x3c301054
        0x3c3b8161
        0x3c47b0c8
        0x3c54aae5
        0x3c627ce8
        0x3c7134d4
        0x3c8070cf
        0x3c88c996
        0x3c91ad3a
        0x3c9b24c0
        0x3ca539c5
        0x3caff685
        0x3cbb65e5
        0x3cc79382
        0x3cd48bb9
        0x3ce25bb4
        0x3cf11179
        0x3d005dfb
        0x3d08b589
        0x3d1197df
        0x3d1b0e02
        0x3d25218d
        0x3d2fdcb9
        0x3d3b4a6d
        0x3d477640
        0x3d546c91
        0x3d623a85
        0x3d70ee22
        0x3d804b2a
        0x3d88a17f
        0x3d918288
        0x3d9af748
        0x3da50958
        0x3dafc2f2
        0x3dbb2ef8
        0x3dc75903
        0x3dd44d6d
        0x3de2195c  # 0.11039993f
        0x3df0cad1
        0x3e00385b
        0x3e088d77
        0x3e116d33
        0x3e1ae090
        0x3e24f127
        0x3e2fa92e
        0x3e3b1387
        0x3e473bca
        0x3e542e4d
        0x3e61f837
        0x3e70a784
        0x3e80258f
        0x3e887973
        0x3e9157e2
        0x3e9ac9dc
        0x3ea4d8f9  # 0.32196787f
        0x3eaf8f6d
        0x3ebaf81b
        0x3ec71e95
        0x3ed40f33
        0x3ee1d717
        0x3ef0843d
        0x3f0012c6
        0x3f086572
        0x3f114293
        0x3f1ab32b
        0x3f24c0ce
        0x3f2f75b1
        0x3f3adcb2
        0x3f470165
        0x3f53f01d
        0x3f61b5fb
        0x3f7060fb
        0x3f800000  # 1.0f
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/jcraft/jorbis/FuncFloor;-><init>()V

    .line 605
    return-void
.end method

.method private static render_line(IIII[F)V
    .registers 15
    .param p0, "x0"  # I
    .param p1, "x1"  # I
    .param p2, "y0"  # I
    .param p3, "y1"  # I
    .param p4, "d"  # [F

    .line 456
    sub-int v0, p3, p2

    .line 457
    .local v0, "dy":I
    sub-int v1, p1, p0

    .line 458
    .local v1, "adx":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 459
    .local v2, "ady":I
    div-int v3, v0, v1

    .line 460
    .local v3, "base":I
    if-gez v0, :cond_f

    add-int/lit8 v4, v3, -0x1

    goto :goto_11

    :cond_f
    add-int/lit8 v4, v3, 0x1

    .line 461
    .local v4, "sy":I
    :goto_11
    move v5, p0

    .line 462
    .local v5, "x":I
    move v6, p2

    .line 463
    .local v6, "y":I
    const/4 v7, 0x0

    .line 465
    .local v7, "err":I
    mul-int v8, v3, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int/2addr v2, v8

    .line 467
    aget v8, p4, v5

    sget-object v9, Lcom/jcraft/jorbis/Floor1;->FLOOR_fromdB_LOOKUP:[F

    aget v9, v9, v6

    mul-float/2addr v8, v9

    aput v8, p4, v5

    .line 468
    :goto_24
    add-int/lit8 v5, v5, 0x1

    if-ge v5, p1, :cond_39

    .line 469
    add-int/2addr v7, v2

    .line 470
    if-lt v7, v1, :cond_2e

    .line 471
    sub-int/2addr v7, v1

    .line 472
    add-int/2addr v6, v4

    goto :goto_2f

    .line 475
    :cond_2e
    add-int/2addr v6, v3

    .line 477
    :goto_2f
    aget v8, p4, v5

    sget-object v9, Lcom/jcraft/jorbis/Floor1;->FLOOR_fromdB_LOOKUP:[F

    aget v9, v9, v6

    mul-float/2addr v8, v9

    aput v8, p4, v5

    goto :goto_24

    .line 479
    :cond_39
    return-void
.end method

.method private static render_point(IIIII)I
    .registers 11
    .param p0, "x0"  # I
    .param p1, "x1"  # I
    .param p2, "y0"  # I
    .param p3, "y1"  # I
    .param p4, "x"  # I

    .line 342
    and-int/lit16 p2, p2, 0x7fff

    .line 343
    and-int/lit16 p3, p3, 0x7fff

    .line 346
    sub-int v0, p3, p2

    .line 347
    .local v0, "dy":I
    sub-int v1, p1, p0

    .line 348
    .local v1, "adx":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 349
    .local v2, "ady":I
    sub-int v3, p4, p0

    mul-int/2addr v3, v2

    .line 351
    .local v3, "err":I
    div-int v4, v3, v1

    .line 352
    .local v4, "off":I
    if-gez v0, :cond_16

    .line 353
    sub-int v5, p2, v4

    return v5

    .line 354
    :cond_16
    add-int v5, p2, v4

    return v5
.end method


# virtual methods
.method forward(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[F[FLjava/lang/Object;)I
    .registers 7
    .param p1, "vb"  # Lcom/jcraft/jorbis/Block;
    .param p2, "i"  # Ljava/lang/Object;
    .param p3, "in"  # [F
    .param p4, "out"  # [F
    .param p5, "vs"  # Ljava/lang/Object;

    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method free_info(Ljava/lang/Object;)V
    .registers 2
    .param p1, "i"  # Ljava/lang/Object;

    .line 232
    return-void
.end method

.method free_look(Ljava/lang/Object;)V
    .registers 2
    .param p1, "i"  # Ljava/lang/Object;

    .line 235
    return-void
.end method

.method free_state(Ljava/lang/Object;)V
    .registers 2
    .param p1, "vs"  # Ljava/lang/Object;

    .line 238
    return-void
.end method

.method inverse1(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 22
    .param p1, "vb"  # Lcom/jcraft/jorbis/Block;
    .param p2, "ii"  # Ljava/lang/Object;
    .param p3, "memo"  # Ljava/lang/Object;

    .line 245
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    check-cast v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;

    .line 246
    .local v2, "look":Lcom/jcraft/jorbis/Floor1$LookFloor1;
    iget-object v3, v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->vi:Lcom/jcraft/jorbis/Floor1$InfoFloor1;

    .line 247
    .local v3, "info":Lcom/jcraft/jorbis/Floor1$InfoFloor1;
    iget-object v4, v0, Lcom/jcraft/jorbis/Block;->vd:Lcom/jcraft/jorbis/DspState;

    iget-object v4, v4, Lcom/jcraft/jorbis/DspState;->fullbooks:[Lcom/jcraft/jorbis/CodeBook;

    .line 250
    .local v4, "books":[Lcom/jcraft/jorbis/CodeBook;
    iget-object v5, v0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v5

    const/4 v7, 0x0

    if-ne v5, v6, :cond_13e

    .line 251
    const/4 v5, 0x0

    .line 252
    .local v5, "fit_value":[I
    instance-of v8, v1, [I

    if-eqz v8, :cond_23

    .line 253
    move-object v8, v1

    check-cast v8, [I

    move-object v5, v8

    check-cast v5, [I

    .line 255
    :cond_23
    const/4 v8, 0x0

    if-eqz v5, :cond_35

    array-length v9, v5

    iget v10, v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->posts:I

    if-ge v9, v10, :cond_2c

    goto :goto_35

    .line 259
    :cond_2c
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2d
    array-length v10, v5

    if-ge v9, v10, :cond_39

    .line 260
    aput v8, v5, v9

    .line 259
    add-int/lit8 v9, v9, 0x1

    goto :goto_2d

    .line 256
    .end local v9  # "i":I
    :cond_35
    :goto_35
    iget v9, v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->posts:I

    new-array v5, v9, [I

    .line 263
    :cond_39
    iget-object v9, v0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    iget v10, v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->quant_q:I

    sub-int/2addr v10, v6

    invoke-static {v10}, Lcom/jcraft/jorbis/Util;->ilog(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v9

    aput v9, v5, v8

    .line 264
    iget-object v9, v0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    iget v10, v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->quant_q:I

    sub-int/2addr v10, v6

    invoke-static {v10}, Lcom/jcraft/jorbis/Util;->ilog(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v9

    aput v9, v5, v6

    .line 267
    const/4 v9, 0x0

    .restart local v9  # "i":I
    const/4 v10, 0x2

    .local v10, "j":I
    :goto_59
    iget v11, v3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitions:I

    const/4 v12, -0x1

    if-ge v9, v11, :cond_b7

    .line 268
    iget-object v11, v3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    aget v11, v11, v9

    .line 269
    .local v11, "clss":I
    iget-object v13, v3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_dim:[I

    aget v13, v13, v11

    .line 270
    .local v13, "cdim":I
    iget-object v14, v3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subs:[I

    aget v14, v14, v11

    .line 271
    .local v14, "csubbits":I
    shl-int v15, v6, v14

    .line 272
    .local v15, "csub":I
    const/16 v16, 0x0

    .line 275
    .local v16, "cval":I
    if-eqz v14, :cond_81

    .line 276
    iget-object v6, v3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_book:[I

    aget v6, v6, v11

    aget-object v6, v4, v6

    iget-object v8, v0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    invoke-virtual {v6, v8}, Lcom/jcraft/jorbis/CodeBook;->decode(Lcom/jcraft/jogg/Buffer;)I

    move-result v6

    .line 278
    .end local v16  # "cval":I
    .local v6, "cval":I
    if-ne v6, v12, :cond_7f

    .line 279
    return-object v7

    .line 278
    :cond_7f
    move/from16 v16, v6

    .line 283
    .end local v6  # "cval":I
    .restart local v16  # "cval":I
    :cond_81
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_82
    if-ge v6, v13, :cond_af

    .line 284
    iget-object v8, v3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subbook:[[I

    aget-object v8, v8, v11

    add-int/lit8 v17, v15, -0x1

    and-int v17, v16, v17

    aget v8, v8, v17

    .line 285
    .local v8, "book":I
    ushr-int v16, v16, v14

    .line 286
    if-ltz v8, :cond_a5

    .line 287
    add-int v17, v10, v6

    aget-object v7, v4, v8

    iget-object v12, v0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    invoke-virtual {v7, v12}, Lcom/jcraft/jorbis/CodeBook;->decode(Lcom/jcraft/jogg/Buffer;)I

    move-result v7

    aput v7, v5, v17

    const/4 v12, -0x1

    if-ne v7, v12, :cond_a3

    .line 288
    const/4 v7, 0x0

    return-object v7

    .line 287
    :cond_a3
    const/4 v12, 0x0

    goto :goto_aa

    .line 292
    :cond_a5
    add-int v7, v10, v6

    const/4 v12, 0x0

    aput v12, v5, v7

    .line 283
    .end local v8  # "book":I
    :goto_aa
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    const/4 v12, -0x1

    goto :goto_82

    :cond_af
    const/4 v12, 0x0

    .line 295
    .end local v6  # "k":I
    add-int/2addr v10, v13

    .line 267
    .end local v11  # "clss":I
    .end local v13  # "cdim":I
    .end local v14  # "csubbits":I
    .end local v15  # "csub":I
    .end local v16  # "cval":I
    add-int/lit8 v9, v9, 0x1

    move v8, v12

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_59

    .line 299
    .end local v9  # "i":I
    .end local v10  # "j":I
    :cond_b7
    const/4 v6, 0x2

    .local v6, "i":I
    :goto_b8
    iget v7, v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->posts:I

    if-ge v6, v7, :cond_13d

    .line 300
    iget-object v7, v3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    iget-object v8, v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->loneighbor:[I

    add-int/lit8 v9, v6, -0x2

    aget v8, v8, v9

    aget v7, v7, v8

    iget-object v8, v3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    iget-object v9, v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->hineighbor:[I

    add-int/lit8 v10, v6, -0x2

    aget v9, v9, v10

    aget v8, v8, v9

    iget-object v9, v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->loneighbor:[I

    add-int/lit8 v10, v6, -0x2

    aget v9, v9, v10

    aget v9, v5, v9

    iget-object v10, v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->hineighbor:[I

    add-int/lit8 v11, v6, -0x2

    aget v10, v10, v11

    aget v10, v5, v10

    iget-object v11, v3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    aget v11, v11, v6

    invoke-static {v7, v8, v9, v10, v11}, Lcom/jcraft/jorbis/Floor1;->render_point(IIIII)I

    move-result v7

    .line 304
    .local v7, "predicted":I
    iget v8, v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->quant_q:I

    sub-int/2addr v8, v7

    .line 305
    .local v8, "hiroom":I
    move v9, v7

    .line 306
    .local v9, "loroom":I
    if-ge v8, v9, :cond_f0

    move v10, v8

    goto :goto_f1

    :cond_f0
    move v10, v9

    :goto_f1
    const/4 v11, 0x1

    shl-int/2addr v10, v11

    .line 307
    .local v10, "room":I
    aget v11, v5, v6

    .line 309
    .local v11, "val":I
    if-eqz v11, :cond_131

    .line 310
    if-lt v11, v10, :cond_106

    .line 311
    if-le v8, v9, :cond_ff

    .line 312
    sub-int/2addr v11, v9

    const/4 v13, -0x1

    const/4 v14, 0x1

    goto :goto_114

    .line 315
    :cond_ff
    sub-int v12, v11, v8

    const/4 v13, -0x1

    rsub-int/lit8 v11, v12, -0x1

    const/4 v14, 0x1

    goto :goto_114

    .line 319
    :cond_106
    const/4 v13, -0x1

    and-int/lit8 v12, v11, 0x1

    if-eqz v12, :cond_111

    .line 320
    add-int/lit8 v12, v11, 0x1

    const/4 v14, 0x1

    ushr-int/2addr v12, v14

    neg-int v11, v12

    goto :goto_114

    .line 323
    :cond_111
    const/4 v14, 0x1

    shr-int/lit8 v11, v11, 0x1

    .line 327
    :goto_114
    add-int v12, v11, v7

    aput v12, v5, v6

    .line 328
    iget-object v12, v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->loneighbor:[I

    add-int/lit8 v15, v6, -0x2

    aget v12, v12, v15

    aget v15, v5, v12

    and-int/lit16 v15, v15, 0x7fff

    aput v15, v5, v12

    .line 329
    iget-object v12, v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->hineighbor:[I

    add-int/lit8 v15, v6, -0x2

    aget v12, v12, v15

    aget v15, v5, v12

    and-int/lit16 v15, v15, 0x7fff

    aput v15, v5, v12

    goto :goto_139

    .line 332
    :cond_131
    const/4 v13, -0x1

    const/4 v14, 0x1

    const v12, 0x8000

    or-int/2addr v12, v7

    aput v12, v5, v6

    .line 299
    .end local v7  # "predicted":I
    .end local v8  # "hiroom":I
    .end local v9  # "loroom":I
    .end local v10  # "room":I
    .end local v11  # "val":I
    :goto_139
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_b8

    .line 335
    .end local v6  # "i":I
    :cond_13d
    return-object v5

    .line 338
    .end local v5  # "fit_value":[I
    :cond_13e
    const/4 v5, 0x0

    return-object v5
.end method

.method inverse2(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;Ljava/lang/Object;[F)I
    .registers 16
    .param p1, "vb"  # Lcom/jcraft/jorbis/Block;
    .param p2, "i"  # Ljava/lang/Object;
    .param p3, "memo"  # Ljava/lang/Object;
    .param p4, "out"  # [F

    .line 359
    move-object v0, p2

    check-cast v0, Lcom/jcraft/jorbis/Floor1$LookFloor1;

    .line 360
    .local v0, "look":Lcom/jcraft/jorbis/Floor1$LookFloor1;
    iget-object v1, v0, Lcom/jcraft/jorbis/Floor1$LookFloor1;->vi:Lcom/jcraft/jorbis/Floor1$InfoFloor1;

    .line 361
    .local v1, "info":Lcom/jcraft/jorbis/Floor1$InfoFloor1;
    iget-object v2, p1, Lcom/jcraft/jorbis/Block;->vd:Lcom/jcraft/jorbis/DspState;

    iget-object v2, v2, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget-object v2, v2, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    iget v3, p1, Lcom/jcraft/jorbis/Block;->mode:I

    aget v2, v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 363
    .local v2, "n":I
    const/4 v3, 0x0

    if-eqz p3, :cond_51

    .line 365
    move-object v4, p3

    check-cast v4, [I

    check-cast v4, [I

    .line 366
    .local v4, "fit_value":[I
    const/4 v5, 0x0

    .line 367
    .local v5, "hx":I
    const/4 v6, 0x0

    .line 368
    .local v6, "lx":I
    aget v3, v4, v3

    iget v7, v1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->mult:I

    mul-int/2addr v3, v7

    .line 369
    .local v3, "ly":I
    const/4 v7, 0x1

    .local v7, "j":I
    :goto_21
    iget v8, v0, Lcom/jcraft/jorbis/Floor1$LookFloor1;->posts:I

    if-ge v7, v8, :cond_40

    .line 370
    iget-object v8, v0, Lcom/jcraft/jorbis/Floor1$LookFloor1;->forward_index:[I

    aget v8, v8, v7

    .line 371
    .local v8, "current":I
    aget v9, v4, v8

    and-int/lit16 v9, v9, 0x7fff

    .line 372
    .local v9, "hy":I
    aget v10, v4, v8

    if-ne v9, v10, :cond_3d

    .line 373
    iget v10, v1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->mult:I

    mul-int/2addr v9, v10

    .line 374
    iget-object v10, v1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    aget v5, v10, v8

    .line 376
    invoke-static {v6, v5, v3, v9, p4}, Lcom/jcraft/jorbis/Floor1;->render_line(IIII[F)V

    .line 378
    move v6, v5

    .line 379
    move v3, v9

    .line 369
    .end local v8  # "current":I
    .end local v9  # "hy":I
    :cond_3d
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    .line 382
    .end local v7  # "j":I
    :cond_40
    move v7, v5

    .restart local v7  # "j":I
    :goto_41
    if-ge v7, v2, :cond_4f

    .line 383
    aget v8, p4, v7

    add-int/lit8 v9, v7, -0x1

    aget v9, p4, v9

    mul-float/2addr v8, v9

    aput v8, p4, v7

    .line 382
    add-int/lit8 v7, v7, 0x1

    goto :goto_41

    .line 385
    .end local v7  # "j":I
    :cond_4f
    const/4 v7, 0x1

    return v7

    .line 387
    .end local v3  # "ly":I
    .end local v4  # "fit_value":[I
    .end local v5  # "hx":I
    .end local v6  # "lx":I
    :cond_51
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_52
    if-ge v4, v2, :cond_5a

    .line 388
    const/4 v5, 0x0

    aput v5, p4, v4

    .line 387
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    .line 390
    .end local v4  # "j":I
    :cond_5a
    return v3
.end method

.method look(Lcom/jcraft/jorbis/DspState;Lcom/jcraft/jorbis/InfoMode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .param p1, "vd"  # Lcom/jcraft/jorbis/DspState;
    .param p2, "mi"  # Lcom/jcraft/jorbis/InfoMode;
    .param p3, "i"  # Ljava/lang/Object;

    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, "_n":I
    const/16 v1, 0x41

    new-array v1, v1, [I

    .line 139
    .local v1, "sortpointer":[I
    move-object v2, p3

    check-cast v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;

    .line 140
    .local v2, "info":Lcom/jcraft/jorbis/Floor1$InfoFloor1;
    new-instance v3, Lcom/jcraft/jorbis/Floor1$LookFloor1;

    invoke-direct {v3, p0}, Lcom/jcraft/jorbis/Floor1$LookFloor1;-><init>(Lcom/jcraft/jorbis/Floor1;)V

    .line 141
    .local v3, "look":Lcom/jcraft/jorbis/Floor1$LookFloor1;
    iput-object v2, v3, Lcom/jcraft/jorbis/Floor1$LookFloor1;->vi:Lcom/jcraft/jorbis/Floor1$InfoFloor1;

    .line 142
    iget-object v4, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iput v4, v3, Lcom/jcraft/jorbis/Floor1$LookFloor1;->n:I

    .line 151
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_17
    iget v5, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitions:I

    if-ge v4, v5, :cond_27

    .line 152
    iget-object v5, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_dim:[I

    iget-object v6, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    aget v6, v6, v4

    aget v5, v5, v6

    add-int/2addr v0, v5

    .line 151
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 154
    .end local v4  # "j":I
    :cond_27
    add-int/lit8 v0, v0, 0x2

    .line 155
    iput v0, v3, Lcom/jcraft/jorbis/Floor1$LookFloor1;->posts:I

    .line 158
    const/4 v4, 0x0

    .restart local v4  # "j":I
    :goto_2c
    if-ge v4, v0, :cond_33

    .line 159
    aput v4, v1, v4

    .line 158
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 164
    .end local v4  # "j":I
    :cond_33
    const/4 v4, 0x0

    .restart local v4  # "j":I
    :goto_34
    add-int/lit8 v5, v0, -0x1

    if-ge v4, v5, :cond_57

    .line 165
    move v5, v4

    .local v5, "k":I
    :goto_39
    if-ge v5, v0, :cond_54

    .line 166
    iget-object v6, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    aget v7, v1, v4

    aget v6, v6, v7

    iget-object v7, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    aget v8, v1, v5

    aget v7, v7, v8

    if-le v6, v7, :cond_51

    .line 167
    aget v6, v1, v5

    .line 168
    .local v6, "foo":I
    aget v7, v1, v4

    aput v7, v1, v5

    .line 169
    aput v6, v1, v4

    .line 165
    .end local v6  # "foo":I
    :cond_51
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 164
    .end local v5  # "k":I
    :cond_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 175
    .end local v4  # "j":I
    :cond_57
    const/4 v4, 0x0

    .restart local v4  # "j":I
    :goto_58
    if-ge v4, v0, :cond_63

    .line 176
    iget-object v5, v3, Lcom/jcraft/jorbis/Floor1$LookFloor1;->forward_index:[I

    aget v6, v1, v4

    aput v6, v5, v4

    .line 175
    add-int/lit8 v4, v4, 0x1

    goto :goto_58

    .line 179
    .end local v4  # "j":I
    :cond_63
    const/4 v4, 0x0

    .restart local v4  # "j":I
    :goto_64
    if-ge v4, v0, :cond_71

    .line 180
    iget-object v5, v3, Lcom/jcraft/jorbis/Floor1$LookFloor1;->reverse_index:[I

    iget-object v6, v3, Lcom/jcraft/jorbis/Floor1$LookFloor1;->forward_index:[I

    aget v6, v6, v4

    aput v4, v5, v6

    .line 179
    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 183
    .end local v4  # "j":I
    :cond_71
    const/4 v4, 0x0

    .restart local v4  # "j":I
    :goto_72
    if-ge v4, v0, :cond_83

    .line 184
    iget-object v5, v3, Lcom/jcraft/jorbis/Floor1$LookFloor1;->sorted_index:[I

    iget-object v6, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    iget-object v7, v3, Lcom/jcraft/jorbis/Floor1$LookFloor1;->forward_index:[I

    aget v7, v7, v4

    aget v6, v6, v7

    aput v6, v5, v4

    .line 183
    add-int/lit8 v4, v4, 0x1

    goto :goto_72

    .line 188
    .end local v4  # "j":I
    :cond_83
    iget v4, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->mult:I

    packed-switch v4, :pswitch_data_d4

    .line 202
    const/4 v4, -0x1

    iput v4, v3, Lcom/jcraft/jorbis/Floor1$LookFloor1;->quant_q:I

    goto :goto_a0

    .line 199
    :pswitch_8c  #0x4
    const/16 v4, 0x40

    iput v4, v3, Lcom/jcraft/jorbis/Floor1$LookFloor1;->quant_q:I

    .line 200
    goto :goto_a0

    .line 196
    :pswitch_91  #0x3
    const/16 v4, 0x56

    iput v4, v3, Lcom/jcraft/jorbis/Floor1$LookFloor1;->quant_q:I

    .line 197
    goto :goto_a0

    .line 193
    :pswitch_96  #0x2
    const/16 v4, 0x80

    iput v4, v3, Lcom/jcraft/jorbis/Floor1$LookFloor1;->quant_q:I

    .line 194
    goto :goto_a0

    .line 190
    :pswitch_9b  #0x1
    const/16 v4, 0x100

    iput v4, v3, Lcom/jcraft/jorbis/Floor1$LookFloor1;->quant_q:I

    .line 191
    nop

    .line 207
    :goto_a0
    const/4 v4, 0x0

    .restart local v4  # "j":I
    :goto_a1
    add-int/lit8 v5, v0, -0x2

    if-ge v4, v5, :cond_d3

    .line 208
    const/4 v5, 0x0

    .line 209
    .local v5, "lo":I
    const/4 v6, 0x1

    .line 210
    .local v6, "hi":I
    const/4 v7, 0x0

    .line 211
    .local v7, "lx":I
    iget v8, v3, Lcom/jcraft/jorbis/Floor1$LookFloor1;->n:I

    .line 212
    .local v8, "hx":I
    iget-object v9, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    add-int/lit8 v10, v4, 0x2

    aget v9, v9, v10

    .line 213
    .local v9, "currentx":I
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_b1
    add-int/lit8 v11, v4, 0x2

    if-ge v10, v11, :cond_c8

    .line 214
    iget-object v11, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    aget v11, v11, v10

    .line 215
    .local v11, "x":I
    if-le v11, v7, :cond_bf

    if-ge v11, v9, :cond_bf

    .line 216
    move v5, v10

    .line 217
    move v7, v11

    .line 219
    :cond_bf
    if-ge v11, v8, :cond_c5

    if-le v11, v9, :cond_c5

    .line 220
    move v6, v10

    .line 221
    move v8, v11

    .line 213
    .end local v11  # "x":I
    :cond_c5
    add-int/lit8 v10, v10, 0x1

    goto :goto_b1

    .line 224
    .end local v10  # "k":I
    :cond_c8
    iget-object v10, v3, Lcom/jcraft/jorbis/Floor1$LookFloor1;->loneighbor:[I

    aput v5, v10, v4

    .line 225
    iget-object v10, v3, Lcom/jcraft/jorbis/Floor1$LookFloor1;->hineighbor:[I

    aput v6, v10, v4

    .line 207
    .end local v5  # "lo":I
    .end local v6  # "hi":I
    .end local v7  # "lx":I
    .end local v8  # "hx":I
    .end local v9  # "currentx":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_a1

    .line 228
    .end local v4  # "j":I
    :cond_d3
    return-object v3

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_9b  #00000001
        :pswitch_96  #00000002
        :pswitch_91  #00000003
        :pswitch_8c  #00000004
    .end packed-switch
.end method

.method pack(Ljava/lang/Object;Lcom/jcraft/jogg/Buffer;)V
    .registers 13
    .param p1, "i"  # Ljava/lang/Object;
    .param p2, "opb"  # Lcom/jcraft/jogg/Buffer;

    .line 36
    move-object v0, p1

    check-cast v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;

    .line 38
    .local v0, "info":Lcom/jcraft/jorbis/Floor1$InfoFloor1;
    const/4 v1, 0x0

    .line 40
    .local v1, "count":I
    iget-object v2, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 41
    .local v2, "maxposit":I
    const/4 v4, -0x1

    .line 44
    .local v4, "maxclass":I
    iget v5, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitions:I

    const/4 v6, 0x5

    invoke-virtual {p2, v5, v6}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 45
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_11
    iget v6, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitions:I

    const/4 v7, 0x4

    if-ge v5, v6, :cond_2a

    .line 46
    iget-object v6, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    aget v6, v6, v5

    invoke-virtual {p2, v6, v7}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 47
    iget-object v6, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    aget v6, v6, v5

    if-ge v4, v6, :cond_27

    .line 48
    iget-object v6, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    aget v4, v6, v5

    .line 45
    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 52
    .end local v5  # "j":I
    :cond_2a
    const/4 v5, 0x0

    .restart local v5  # "j":I
    :goto_2b
    add-int/lit8 v6, v4, 0x1

    const/4 v8, 0x2

    if-ge v5, v6, :cond_68

    .line 53
    iget-object v6, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_dim:[I

    aget v6, v6, v5

    sub-int/2addr v6, v3

    const/4 v9, 0x3

    invoke-virtual {p2, v6, v9}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 54
    iget-object v6, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subs:[I

    aget v6, v6, v5

    invoke-virtual {p2, v6, v8}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 55
    iget-object v6, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subs:[I

    aget v6, v6, v5

    const/16 v8, 0x8

    if-eqz v6, :cond_4f

    .line 56
    iget-object v6, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_book:[I

    aget v6, v6, v5

    invoke-virtual {p2, v6, v8}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 58
    :cond_4f
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_50
    iget-object v9, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subs:[I

    aget v9, v9, v5

    shl-int v9, v3, v9

    if-ge v6, v9, :cond_65

    .line 59
    iget-object v9, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subbook:[[I

    aget-object v9, v9, v5

    aget v9, v9, v6

    add-int/2addr v9, v3

    invoke-virtual {p2, v9, v8}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 58
    add-int/lit8 v6, v6, 0x1

    goto :goto_50

    .line 52
    .end local v6  # "k":I
    :cond_65
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 64
    .end local v5  # "j":I
    :cond_68
    iget v5, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->mult:I

    sub-int/2addr v5, v3

    invoke-virtual {p2, v5, v8}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 65
    invoke-static {v2}, Lcom/jcraft/jorbis/Util;->ilog2(I)I

    move-result v3

    invoke-virtual {p2, v3, v7}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 66
    invoke-static {v2}, Lcom/jcraft/jorbis/Util;->ilog2(I)I

    move-result v3

    .line 68
    .local v3, "rangebits":I
    const/4 v5, 0x0

    .restart local v5  # "j":I
    const/4 v6, 0x0

    .restart local v6  # "k":I
    :goto_7b
    iget v7, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitions:I

    if-ge v5, v7, :cond_99

    .line 69
    iget-object v7, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_dim:[I

    iget-object v8, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    aget v8, v8, v5

    aget v7, v7, v8

    add-int/2addr v1, v7

    .line 70
    :goto_88
    if-ge v6, v1, :cond_96

    .line 71
    iget-object v7, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    add-int/lit8 v8, v6, 0x2

    aget v7, v7, v8

    invoke-virtual {p2, v7, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 70
    add-int/lit8 v6, v6, 0x1

    goto :goto_88

    .line 68
    :cond_96
    add-int/lit8 v5, v5, 0x1

    goto :goto_7b

    .line 74
    .end local v5  # "j":I
    .end local v6  # "k":I
    :cond_99
    return-void
.end method

.method unpack(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jogg/Buffer;)Ljava/lang/Object;
    .registers 14
    .param p1, "vi"  # Lcom/jcraft/jorbis/Info;
    .param p2, "opb"  # Lcom/jcraft/jogg/Buffer;

    .line 77
    const/4 v0, 0x0

    .local v0, "count":I
    const/4 v1, -0x1

    .line 78
    .local v1, "maxclass":I
    new-instance v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;

    invoke-direct {v2, p0}, Lcom/jcraft/jorbis/Floor1$InfoFloor1;-><init>(Lcom/jcraft/jorbis/Floor1;)V

    .line 81
    .local v2, "info":Lcom/jcraft/jorbis/Floor1$InfoFloor1;
    const/4 v3, 0x5

    invoke-virtual {p2, v3}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    iput v3, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitions:I

    .line 82
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_f
    iget v4, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitions:I

    const/4 v5, 0x4

    if-ge v3, v4, :cond_29

    .line 83
    iget-object v4, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    invoke-virtual {p2, v5}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v5

    aput v5, v4, v3

    .line 84
    iget-object v4, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    aget v4, v4, v3

    if-ge v1, v4, :cond_26

    .line 85
    iget-object v4, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    aget v1, v4, v3

    .line 82
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 89
    .end local v3  # "j":I
    :cond_29
    const/4 v3, 0x0

    .restart local v3  # "j":I
    :goto_2a
    add-int/lit8 v4, v1, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v3, v4, :cond_a2

    .line 90
    iget-object v4, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_dim:[I

    const/4 v9, 0x3

    invoke-virtual {p2, v9}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v9

    add-int/2addr v9, v8

    aput v9, v4, v3

    .line 91
    iget-object v4, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subs:[I

    invoke-virtual {p2, v6}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v6

    aput v6, v4, v3

    .line 92
    iget-object v4, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subs:[I

    aget v4, v4, v3

    if-gez v4, :cond_4d

    .line 93
    invoke-virtual {v2}, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->free()V

    .line 94
    return-object v7

    .line 96
    :cond_4d
    iget-object v4, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subs:[I

    aget v4, v4, v3

    const/16 v6, 0x8

    if-eqz v4, :cond_5d

    .line 97
    iget-object v4, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_book:[I

    invoke-virtual {p2, v6}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v9

    aput v9, v4, v3

    .line 99
    :cond_5d
    iget-object v4, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_book:[I

    aget v4, v4, v3

    if-ltz v4, :cond_9e

    iget-object v4, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_book:[I

    aget v4, v4, v3

    iget v9, p1, Lcom/jcraft/jorbis/Info;->books:I

    if-lt v4, v9, :cond_6c

    goto :goto_9e

    .line 103
    :cond_6c
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_6d
    iget-object v9, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subs:[I

    aget v9, v9, v3

    shl-int v9, v8, v9

    if-ge v4, v9, :cond_9b

    .line 104
    iget-object v9, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subbook:[[I

    aget-object v9, v9, v3

    invoke-virtual {p2, v6}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v10

    sub-int/2addr v10, v8

    aput v10, v9, v4

    .line 105
    iget-object v9, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subbook:[[I

    aget-object v9, v9, v3

    aget v9, v9, v4

    const/4 v10, -0x1

    if-lt v9, v10, :cond_97

    iget-object v9, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subbook:[[I

    aget-object v9, v9, v3

    aget v9, v9, v4

    iget v10, p1, Lcom/jcraft/jorbis/Info;->books:I

    if-lt v9, v10, :cond_94

    goto :goto_97

    .line 103
    :cond_94
    add-int/lit8 v4, v4, 0x1

    goto :goto_6d

    .line 106
    :cond_97
    :goto_97
    invoke-virtual {v2}, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->free()V

    .line 107
    return-object v7

    .line 89
    .end local v4  # "k":I
    :cond_9b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 100
    :cond_9e
    :goto_9e
    invoke-virtual {v2}, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->free()V

    .line 101
    return-object v7

    .line 113
    .end local v3  # "j":I
    :cond_a2
    invoke-virtual {p2, v6}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    add-int/2addr v3, v8

    iput v3, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->mult:I

    .line 114
    invoke-virtual {p2, v5}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    .line 116
    .local v3, "rangebits":I
    const/4 v4, 0x0

    .local v4, "j":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_af
    iget v6, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitions:I

    if-ge v4, v6, :cond_da

    .line 117
    iget-object v6, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_dim:[I

    iget-object v9, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    aget v9, v9, v4

    aget v6, v6, v9

    add-int/2addr v0, v6

    .line 118
    :goto_bc
    if-ge v5, v0, :cond_d7

    .line 119
    iget-object v6, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    add-int/lit8 v9, v5, 0x2

    invoke-virtual {p2, v3}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v10

    aput v10, v6, v9

    move v6, v10

    .line 120
    .local v6, "t":I
    if-ltz v6, :cond_d3

    shl-int v9, v8, v3

    if-lt v6, v9, :cond_d0

    goto :goto_d3

    .line 118
    .end local v6  # "t":I
    :cond_d0
    add-int/lit8 v5, v5, 0x1

    goto :goto_bc

    .line 121
    .restart local v6  # "t":I
    :cond_d3
    :goto_d3
    invoke-virtual {v2}, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->free()V

    .line 122
    return-object v7

    .line 116
    .end local v6  # "t":I
    :cond_d7
    add-int/lit8 v4, v4, 0x1

    goto :goto_af

    .line 126
    .end local v4  # "j":I
    .end local v5  # "k":I
    :cond_da
    iget-object v4, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    const/4 v5, 0x0

    aput v5, v4, v5

    .line 127
    iget-object v4, v2, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    shl-int v5, v8, v3

    aput v5, v4, v8

    .line 129
    return-object v2
.end method
