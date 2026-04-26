.class Lcom/jcraft/jorbis/Mapping0;
.super Lcom/jcraft/jorbis/FuncMapping;
.source "Mapping0.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jorbis/Mapping0$LookMapping0;,
        Lcom/jcraft/jorbis/Mapping0$InfoMapping0;
    }
.end annotation


# static fields
.field static seq:I


# instance fields
.field floormemo:[Ljava/lang/Object;

.field nonzero:[I

.field pcmbundle:[[F

.field zerobundle:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/jcraft/jorbis/Mapping0;->seq:I

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 31
    invoke-direct {p0}, Lcom/jcraft/jorbis/FuncMapping;-><init>()V

    .line 186
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [[F

    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0;->pcmbundle:[[F

    .line 187
    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0;->zerobundle:[I

    .line 188
    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0;->nonzero:[I

    .line 189
    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0;->floormemo:[Ljava/lang/Object;

    .line 356
    return-void
.end method


# virtual methods
.method free_info(Ljava/lang/Object;)V
    .registers 2
    .param p1, "imap"  # Ljava/lang/Object;

    .line 35
    return-void
.end method

.method free_look(Ljava/lang/Object;)V
    .registers 2
    .param p1, "imap"  # Ljava/lang/Object;

    .line 38
    return-void
.end method

.method declared-synchronized inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;)I
    .registers 22
    .param p1, "vb"  # Lcom/jcraft/jorbis/Block;
    .param p2, "l"  # Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 192
    :try_start_5
    iget-object v2, v0, Lcom/jcraft/jorbis/Block;->vd:Lcom/jcraft/jorbis/DspState;

    move-object v8, v2

    .line 193
    .local v8, "vd":Lcom/jcraft/jorbis/DspState;
    iget-object v2, v8, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    move-object v9, v2

    .line 194
    .local v9, "vi":Lcom/jcraft/jorbis/Info;
    move-object/from16 v2, p2

    check-cast v2, Lcom/jcraft/jorbis/Mapping0$LookMapping0;

    move-object v10, v2

    .line 195
    .local v10, "look":Lcom/jcraft/jorbis/Mapping0$LookMapping0;
    iget-object v2, v10, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->map:Lcom/jcraft/jorbis/Mapping0$InfoMapping0;

    move-object v11, v2

    .line 196
    .local v11, "info":Lcom/jcraft/jorbis/Mapping0$InfoMapping0;
    iget-object v2, v10, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->mode:Lcom/jcraft/jorbis/InfoMode;

    move-object v12, v2

    .line 197
    .local v12, "mode":Lcom/jcraft/jorbis/InfoMode;
    iget-object v2, v9, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    iget v3, v0, Lcom/jcraft/jorbis/Block;->W:I

    aget v2, v2, v3

    iput v2, v0, Lcom/jcraft/jorbis/Block;->pcmend:I

    move v13, v2

    .line 199
    .local v13, "n":I
    iget-object v2, v8, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    iget v3, v0, Lcom/jcraft/jorbis/Block;->W:I

    aget-object v2, v2, v3

    iget v3, v0, Lcom/jcraft/jorbis/Block;->lW:I

    aget-object v2, v2, v3

    iget v3, v0, Lcom/jcraft/jorbis/Block;->nW:I

    aget-object v2, v2, v3

    iget v3, v12, Lcom/jcraft/jorbis/InfoMode;->windowtype:I

    aget-object v2, v2, v3

    move-object v14, v2

    .line 200
    .local v14, "window":[F
    iget-object v2, v1, Lcom/jcraft/jorbis/Mapping0;->pcmbundle:[[F

    if-eqz v2, :cond_3d

    iget-object v2, v1, Lcom/jcraft/jorbis/Mapping0;->pcmbundle:[[F

    array-length v2, v2

    iget v3, v9, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v2, v3, :cond_55

    .line 201
    .end local p0  # "this":Lcom/jcraft/jorbis/Mapping0;
    :cond_3d
    iget v2, v9, Lcom/jcraft/jorbis/Info;->channels:I

    new-array v2, v2, [[F

    iput-object v2, v1, Lcom/jcraft/jorbis/Mapping0;->pcmbundle:[[F

    .line 202
    iget v2, v9, Lcom/jcraft/jorbis/Info;->channels:I

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/jcraft/jorbis/Mapping0;->nonzero:[I

    .line 203
    iget v2, v9, Lcom/jcraft/jorbis/Info;->channels:I

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/jcraft/jorbis/Mapping0;->zerobundle:[I

    .line 204
    iget v2, v9, Lcom/jcraft/jorbis/Info;->channels:I

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v1, Lcom/jcraft/jorbis/Mapping0;->floormemo:[Ljava/lang/Object;

    .line 213
    :cond_55
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_56
    iget v3, v9, Lcom/jcraft/jorbis/Info;->channels:I

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-ge v2, v3, :cond_97

    .line 214
    iget-object v3, v0, Lcom/jcraft/jorbis/Block;->pcm:[[F

    aget-object v3, v3, v2

    .line 215
    .local v3, "pcm":[F
    iget-object v4, v11, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->chmuxlist:[I

    aget v4, v4, v2

    .line 217
    .local v4, "submap":I
    iget-object v5, v1, Lcom/jcraft/jorbis/Mapping0;->floormemo:[Ljava/lang/Object;

    iget-object v6, v10, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->floor_func:[Lcom/jcraft/jorbis/FuncFloor;

    aget-object v6, v6, v4

    iget-object v7, v10, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->floor_look:[Ljava/lang/Object;

    aget-object v7, v7, v4

    iget-object v15, v1, Lcom/jcraft/jorbis/Mapping0;->floormemo:[Ljava/lang/Object;

    aget-object v15, v15, v2

    invoke-virtual {v6, v0, v7, v15}, Lcom/jcraft/jorbis/FuncFloor;->inverse1(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    .line 219
    iget-object v5, v1, Lcom/jcraft/jorbis/Mapping0;->floormemo:[Ljava/lang/Object;

    aget-object v5, v5, v2

    if-eqz v5, :cond_85

    .line 220
    iget-object v5, v1, Lcom/jcraft/jorbis/Mapping0;->nonzero:[I

    aput v17, v5, v2

    goto :goto_8a

    .line 223
    :cond_85
    iget-object v5, v1, Lcom/jcraft/jorbis/Mapping0;->nonzero:[I

    const/4 v6, 0x0

    aput v6, v5, v2

    .line 225
    :goto_8a
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_8b
    div-int/lit8 v6, v13, 0x2

    if-ge v5, v6, :cond_94

    .line 226
    aput v16, v3, v5

    .line 225
    add-int/lit8 v5, v5, 0x1

    goto :goto_8b

    .line 213
    .end local v3  # "pcm":[F
    .end local v4  # "submap":I
    .end local v5  # "j":I
    :cond_94
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 231
    .end local v2  # "i":I
    :cond_97
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_98
    iget v3, v11, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_steps:I

    if-ge v2, v3, :cond_c3

    .line 232
    iget-object v3, v1, Lcom/jcraft/jorbis/Mapping0;->nonzero:[I

    iget-object v4, v11, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_mag:[I

    aget v4, v4, v2

    aget v3, v3, v4

    if-nez v3, :cond_b0

    iget-object v3, v1, Lcom/jcraft/jorbis/Mapping0;->nonzero:[I

    iget-object v4, v11, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_ang:[I

    aget v4, v4, v2

    aget v3, v3, v4

    if-eqz v3, :cond_c0

    .line 233
    :cond_b0
    iget-object v3, v1, Lcom/jcraft/jorbis/Mapping0;->nonzero:[I

    iget-object v4, v11, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_mag:[I

    aget v4, v4, v2

    aput v17, v3, v4

    .line 234
    iget-object v3, v1, Lcom/jcraft/jorbis/Mapping0;->nonzero:[I

    iget-object v4, v11, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_ang:[I

    aget v4, v4, v2

    aput v17, v3, v4

    .line 231
    :cond_c0
    add-int/lit8 v2, v2, 0x1

    goto :goto_98

    .line 240
    .end local v2  # "i":I
    :cond_c3
    const/4 v2, 0x0

    move v15, v2

    .local v15, "i":I
    :goto_c5
    iget v2, v11, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    if-ge v15, v2, :cond_10d

    .line 241
    const/4 v2, 0x0

    .line 242
    .local v2, "ch_in_bundle":I
    const/4 v3, 0x0

    move/from16 v18, v2

    .end local v2  # "ch_in_bundle":I
    .local v3, "j":I
    .local v18, "ch_in_bundle":I
    :goto_cd
    iget v2, v9, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v3, v2, :cond_f6

    .line 243
    iget-object v2, v11, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->chmuxlist:[I

    aget v2, v2, v3

    if-ne v2, v15, :cond_f3

    .line 244
    iget-object v2, v1, Lcom/jcraft/jorbis/Mapping0;->nonzero:[I

    aget v2, v2, v3

    if-eqz v2, :cond_e2

    .line 245
    iget-object v2, v1, Lcom/jcraft/jorbis/Mapping0;->zerobundle:[I

    aput v17, v2, v18

    goto :goto_e7

    .line 248
    :cond_e2
    iget-object v2, v1, Lcom/jcraft/jorbis/Mapping0;->zerobundle:[I

    const/4 v4, 0x0

    aput v4, v2, v18

    .line 250
    :goto_e7
    iget-object v2, v1, Lcom/jcraft/jorbis/Mapping0;->pcmbundle:[[F

    add-int/lit8 v4, v18, 0x1

    .end local v18  # "ch_in_bundle":I
    .local v4, "ch_in_bundle":I
    iget-object v5, v0, Lcom/jcraft/jorbis/Block;->pcm:[[F

    aget-object v5, v5, v3

    aput-object v5, v2, v18

    move/from16 v18, v4

    .line 242
    .end local v4  # "ch_in_bundle":I
    .restart local v18  # "ch_in_bundle":I
    :cond_f3
    add-int/lit8 v3, v3, 0x1

    goto :goto_cd

    .line 254
    .end local v3  # "j":I
    :cond_f6
    iget-object v2, v10, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->residue_func:[Lcom/jcraft/jorbis/FuncResidue;

    aget-object v2, v2, v15

    iget-object v3, v10, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->residue_look:[Ljava/lang/Object;

    aget-object v4, v3, v15

    iget-object v5, v1, Lcom/jcraft/jorbis/Mapping0;->pcmbundle:[[F

    iget-object v6, v1, Lcom/jcraft/jorbis/Mapping0;->zerobundle:[I

    move-object/from16 v3, p1

    move/from16 v7, v18

    invoke-virtual/range {v2 .. v7}, Lcom/jcraft/jorbis/FuncResidue;->inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[[F[II)I

    .line 240
    nop

    .end local v18  # "ch_in_bundle":I
    add-int/lit8 v15, v15, 0x1

    goto :goto_c5

    .line 258
    .end local v15  # "i":I
    :cond_10d
    iget v2, v11, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_steps:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_111
    if-ltz v2, :cond_159

    .line 259
    iget-object v3, v0, Lcom/jcraft/jorbis/Block;->pcm:[[F

    iget-object v4, v11, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_mag:[I

    aget v4, v4, v2

    aget-object v3, v3, v4

    .line 260
    .local v3, "pcmM":[F
    iget-object v4, v0, Lcom/jcraft/jorbis/Block;->pcm:[[F

    iget-object v5, v11, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_ang:[I

    aget v5, v5, v2

    aget-object v4, v4, v5

    .line 262
    .local v4, "pcmA":[F
    const/4 v5, 0x0

    .restart local v5  # "j":I
    :goto_124
    div-int/lit8 v6, v13, 0x2

    if-ge v5, v6, :cond_156

    .line 263
    aget v6, v3, v5

    .line 264
    .local v6, "mag":F
    aget v7, v4, v5

    .line 266
    .local v7, "ang":F
    cmpl-float v15, v6, v16

    if-lez v15, :cond_142

    .line 267
    cmpl-float v15, v7, v16

    if-lez v15, :cond_13b

    .line 268
    aput v6, v3, v5

    .line 269
    sub-float v15, v6, v7

    aput v15, v4, v5

    goto :goto_153

    .line 272
    :cond_13b
    aput v6, v4, v5

    .line 273
    add-float v15, v6, v7

    aput v15, v3, v5

    goto :goto_153

    .line 277
    :cond_142
    cmpl-float v15, v7, v16

    if-lez v15, :cond_14d

    .line 278
    aput v6, v3, v5

    .line 279
    add-float v15, v6, v7

    aput v15, v4, v5

    goto :goto_153

    .line 282
    :cond_14d
    aput v6, v4, v5

    .line 283
    sub-float v15, v6, v7

    aput v15, v3, v5

    .line 262
    .end local v6  # "mag":F
    .end local v7  # "ang":F
    :goto_153
    add-int/lit8 v5, v5, 0x1

    goto :goto_124

    .line 258
    .end local v3  # "pcmM":[F
    .end local v4  # "pcmA":[F
    .end local v5  # "j":I
    :cond_156
    add-int/lit8 v2, v2, -0x1

    goto :goto_111

    .line 291
    .end local v2  # "i":I
    :cond_159
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_15a
    iget v3, v9, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v2, v3, :cond_179

    .line 292
    iget-object v3, v0, Lcom/jcraft/jorbis/Block;->pcm:[[F

    aget-object v3, v3, v2

    .line 293
    .local v3, "pcm":[F
    iget-object v4, v11, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->chmuxlist:[I

    aget v4, v4, v2

    .line 294
    .local v4, "submap":I
    iget-object v5, v10, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->floor_func:[Lcom/jcraft/jorbis/FuncFloor;

    aget-object v5, v5, v4

    iget-object v6, v10, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->floor_look:[Ljava/lang/Object;

    aget-object v6, v6, v4

    iget-object v7, v1, Lcom/jcraft/jorbis/Mapping0;->floormemo:[Ljava/lang/Object;

    aget-object v7, v7, v2

    invoke-virtual {v5, v0, v6, v7, v3}, Lcom/jcraft/jorbis/FuncFloor;->inverse2(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;Ljava/lang/Object;[F)I

    .line 291
    nop

    .end local v3  # "pcm":[F
    .end local v4  # "submap":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_15a

    .line 301
    .end local v2  # "i":I
    :cond_179
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_17a
    iget v3, v9, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v2, v3, :cond_193

    .line 302
    iget-object v3, v0, Lcom/jcraft/jorbis/Block;->pcm:[[F

    aget-object v3, v3, v2

    .line 304
    .restart local v3  # "pcm":[F
    iget-object v4, v8, Lcom/jcraft/jorbis/DspState;->transform:[[Ljava/lang/Object;

    iget v5, v0, Lcom/jcraft/jorbis/Block;->W:I

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Lcom/jcraft/jorbis/Mdct;

    invoke-virtual {v4, v3, v3}, Lcom/jcraft/jorbis/Mdct;->backward([F[F)V

    .line 301
    .end local v3  # "pcm":[F
    add-int/lit8 v2, v2, 0x1

    goto :goto_17a

    .line 311
    .end local v2  # "i":I
    :cond_193
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_194
    iget v3, v9, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v2, v3, :cond_1bb

    .line 312
    iget-object v3, v0, Lcom/jcraft/jorbis/Block;->pcm:[[F

    aget-object v3, v3, v2

    .line 313
    .restart local v3  # "pcm":[F
    iget-object v4, v1, Lcom/jcraft/jorbis/Mapping0;->nonzero:[I

    aget v4, v4, v2

    if-eqz v4, :cond_1b0

    .line 314
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1a3
    if-ge v4, v13, :cond_1af

    .line 315
    aget v5, v3, v4

    aget v6, v14, v4

    mul-float/2addr v5, v6

    aput v5, v3, v4

    .line 314
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a3

    .end local v4  # "j":I
    :cond_1af
    goto :goto_1b8

    .line 319
    :cond_1b0
    const/4 v4, 0x0

    .restart local v4  # "j":I
    :goto_1b1
    if-ge v4, v13, :cond_1b8

    .line 320
    aput v16, v3, v4
    :try_end_1b5
    .catchall {:try_start_5 .. :try_end_1b5} :catchall_1be

    .line 319
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b1

    .line 311
    .end local v3  # "pcm":[F
    .end local v4  # "j":I
    :cond_1b8
    :goto_1b8
    add-int/lit8 v2, v2, 0x1

    goto :goto_194

    .line 328
    .end local v2  # "i":I
    :cond_1bb
    monitor-exit p0

    const/4 v2, 0x0

    return v2

    .line 191
    .end local v8  # "vd":Lcom/jcraft/jorbis/DspState;
    .end local v9  # "vi":Lcom/jcraft/jorbis/Info;
    .end local v10  # "look":Lcom/jcraft/jorbis/Mapping0$LookMapping0;
    .end local v11  # "info":Lcom/jcraft/jorbis/Mapping0$InfoMapping0;
    .end local v12  # "mode":Lcom/jcraft/jorbis/InfoMode;
    .end local v13  # "n":I
    .end local v14  # "window":[F
    .end local p1  # "vb":Lcom/jcraft/jorbis/Block;
    .end local p2  # "l":Ljava/lang/Object;
    :catchall_1be
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method look(Lcom/jcraft/jorbis/DspState;Lcom/jcraft/jorbis/InfoMode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .param p1, "vd"  # Lcom/jcraft/jorbis/DspState;
    .param p2, "vm"  # Lcom/jcraft/jorbis/InfoMode;
    .param p3, "m"  # Ljava/lang/Object;

    .line 42
    iget-object v0, p1, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    .line 43
    .local v0, "vi":Lcom/jcraft/jorbis/Info;
    new-instance v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;

    invoke-direct {v1, p0}, Lcom/jcraft/jorbis/Mapping0$LookMapping0;-><init>(Lcom/jcraft/jorbis/Mapping0;)V

    .line 44
    .local v1, "look":Lcom/jcraft/jorbis/Mapping0$LookMapping0;
    move-object v2, p3

    check-cast v2, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;

    iput-object v2, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->map:Lcom/jcraft/jorbis/Mapping0$InfoMapping0;

    .line 45
    .local v2, "info":Lcom/jcraft/jorbis/Mapping0$InfoMapping0;
    iput-object p2, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->mode:Lcom/jcraft/jorbis/InfoMode;

    .line 47
    iget v3, v2, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->time_look:[Ljava/lang/Object;

    .line 48
    iget v3, v2, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->floor_look:[Ljava/lang/Object;

    .line 49
    iget v3, v2, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->residue_look:[Ljava/lang/Object;

    .line 51
    iget v3, v2, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    new-array v3, v3, [Lcom/jcraft/jorbis/FuncTime;

    iput-object v3, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->time_func:[Lcom/jcraft/jorbis/FuncTime;

    .line 52
    iget v3, v2, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    new-array v3, v3, [Lcom/jcraft/jorbis/FuncFloor;

    iput-object v3, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->floor_func:[Lcom/jcraft/jorbis/FuncFloor;

    .line 53
    iget v3, v2, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    new-array v3, v3, [Lcom/jcraft/jorbis/FuncResidue;

    iput-object v3, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->residue_func:[Lcom/jcraft/jorbis/FuncResidue;

    .line 55
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_33
    iget v4, v2, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    if-ge v3, v4, :cond_9a

    .line 56
    iget-object v4, v2, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->timesubmap:[I

    aget v4, v4, v3

    .line 57
    .local v4, "timenum":I
    iget-object v5, v2, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->floorsubmap:[I

    aget v5, v5, v3

    .line 58
    .local v5, "floornum":I
    iget-object v6, v2, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->residuesubmap:[I

    aget v6, v6, v3

    .line 60
    .local v6, "resnum":I
    iget-object v7, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->time_func:[Lcom/jcraft/jorbis/FuncTime;

    sget-object v8, Lcom/jcraft/jorbis/FuncTime;->time_P:[Lcom/jcraft/jorbis/FuncTime;

    iget-object v9, v0, Lcom/jcraft/jorbis/Info;->time_type:[I

    aget v9, v9, v4

    aget-object v8, v8, v9

    aput-object v8, v7, v3

    .line 61
    iget-object v7, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->time_look:[Ljava/lang/Object;

    iget-object v8, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->time_func:[Lcom/jcraft/jorbis/FuncTime;

    aget-object v8, v8, v3

    iget-object v9, v0, Lcom/jcraft/jorbis/Info;->time_param:[Ljava/lang/Object;

    aget-object v9, v9, v4

    invoke-virtual {v8, p1, p2, v9}, Lcom/jcraft/jorbis/FuncTime;->look(Lcom/jcraft/jorbis/DspState;Lcom/jcraft/jorbis/InfoMode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v3

    .line 62
    iget-object v7, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->floor_func:[Lcom/jcraft/jorbis/FuncFloor;

    sget-object v8, Lcom/jcraft/jorbis/FuncFloor;->floor_P:[Lcom/jcraft/jorbis/FuncFloor;

    iget-object v9, v0, Lcom/jcraft/jorbis/Info;->floor_type:[I

    aget v9, v9, v5

    aget-object v8, v8, v9

    aput-object v8, v7, v3

    .line 63
    iget-object v7, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->floor_look:[Ljava/lang/Object;

    iget-object v8, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->floor_func:[Lcom/jcraft/jorbis/FuncFloor;

    aget-object v8, v8, v3

    iget-object v9, v0, Lcom/jcraft/jorbis/Info;->floor_param:[Ljava/lang/Object;

    aget-object v9, v9, v5

    invoke-virtual {v8, p1, p2, v9}, Lcom/jcraft/jorbis/FuncFloor;->look(Lcom/jcraft/jorbis/DspState;Lcom/jcraft/jorbis/InfoMode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v3

    .line 65
    iget-object v7, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->residue_func:[Lcom/jcraft/jorbis/FuncResidue;

    sget-object v8, Lcom/jcraft/jorbis/FuncResidue;->residue_P:[Lcom/jcraft/jorbis/FuncResidue;

    iget-object v9, v0, Lcom/jcraft/jorbis/Info;->residue_type:[I

    aget v9, v9, v6

    aget-object v8, v8, v9

    aput-object v8, v7, v3

    .line 66
    iget-object v7, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->residue_look:[Ljava/lang/Object;

    iget-object v8, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->residue_func:[Lcom/jcraft/jorbis/FuncResidue;

    aget-object v8, v8, v3

    iget-object v9, v0, Lcom/jcraft/jorbis/Info;->residue_param:[Ljava/lang/Object;

    aget-object v9, v9, v6

    invoke-virtual {v8, p1, p2, v9}, Lcom/jcraft/jorbis/FuncResidue;->look(Lcom/jcraft/jorbis/DspState;Lcom/jcraft/jorbis/InfoMode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v3

    .line 55
    .end local v4  # "timenum":I
    .end local v5  # "floornum":I
    .end local v6  # "resnum":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 71
    .end local v3  # "i":I
    :cond_9a
    iget v3, v0, Lcom/jcraft/jorbis/Info;->psys:I

    if-eqz v3, :cond_a0

    iget v3, p1, Lcom/jcraft/jorbis/DspState;->analysisp:I

    .line 75
    :cond_a0
    iget v3, v0, Lcom/jcraft/jorbis/Info;->channels:I

    iput v3, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->ch:I

    .line 77
    return-object v1
.end method

.method pack(Lcom/jcraft/jorbis/Info;Ljava/lang/Object;Lcom/jcraft/jogg/Buffer;)V
    .registers 12
    .param p1, "vi"  # Lcom/jcraft/jorbis/Info;
    .param p2, "imap"  # Ljava/lang/Object;
    .param p3, "opb"  # Lcom/jcraft/jogg/Buffer;

    .line 81
    move-object v0, p2

    check-cast v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;

    .line 90
    .local v0, "info":Lcom/jcraft/jorbis/Mapping0$InfoMapping0;
    iget v1, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v4, :cond_14

    .line 91
    invoke-virtual {p3, v4, v4}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 92
    iget v1, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    sub-int/2addr v1, v4

    invoke-virtual {p3, v1, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    goto :goto_17

    .line 95
    :cond_14
    invoke-virtual {p3, v3, v4}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 98
    :goto_17
    iget v1, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_steps:I

    const/16 v5, 0x8

    if-lez v1, :cond_49

    .line 99
    invoke-virtual {p3, v4, v4}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 100
    iget v1, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_steps:I

    sub-int/2addr v1, v4

    invoke-virtual {p3, v1, v5}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 101
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_27
    iget v6, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_steps:I

    if-ge v1, v6, :cond_48

    .line 102
    iget-object v6, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_mag:[I

    aget v6, v6, v1

    iget v7, p1, Lcom/jcraft/jorbis/Info;->channels:I

    invoke-static {v7}, Lcom/jcraft/jorbis/Util;->ilog2(I)I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 103
    iget-object v6, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_ang:[I

    aget v6, v6, v1

    iget v7, p1, Lcom/jcraft/jorbis/Info;->channels:I

    invoke-static {v7}, Lcom/jcraft/jorbis/Util;->ilog2(I)I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .end local v1  # "i":I
    :cond_48
    goto :goto_4c

    .line 107
    :cond_49
    invoke-virtual {p3, v3, v4}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 110
    :goto_4c
    const/4 v1, 0x2

    invoke-virtual {p3, v3, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 113
    iget v1, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    if-le v1, v4, :cond_63

    .line 114
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_55
    iget v3, p1, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v1, v3, :cond_63

    .line 115
    iget-object v3, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->chmuxlist:[I

    aget v3, v3, v1

    invoke-virtual {p3, v3, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 117
    .end local v1  # "i":I
    :cond_63
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_64
    iget v2, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    if-ge v1, v2, :cond_80

    .line 118
    iget-object v2, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->timesubmap:[I

    aget v2, v2, v1

    invoke-virtual {p3, v2, v5}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 119
    iget-object v2, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->floorsubmap:[I

    aget v2, v2, v1

    invoke-virtual {p3, v2, v5}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 120
    iget-object v2, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->residuesubmap:[I

    aget v2, v2, v1

    invoke-virtual {p3, v2, v5}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 122
    .end local v1  # "i":I
    :cond_80
    return-void
.end method

.method unpack(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jogg/Buffer;)Ljava/lang/Object;
    .registers 12
    .param p1, "vi"  # Lcom/jcraft/jorbis/Info;
    .param p2, "opb"  # Lcom/jcraft/jogg/Buffer;

    .line 126
    new-instance v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;

    invoke-direct {v0, p0}, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;-><init>(Lcom/jcraft/jorbis/Mapping0;)V

    .line 128
    .local v0, "info":Lcom/jcraft/jorbis/Mapping0$InfoMapping0;
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_15

    .line 129
    invoke-virtual {p2, v3}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    goto :goto_17

    .line 132
    :cond_15
    iput v1, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    .line 135
    :goto_17
    invoke-virtual {p2, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v2, :cond_60

    .line 136
    invoke-virtual {p2, v4}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_steps:I

    .line 138
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    iget v6, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_steps:I

    if-ge v2, v6, :cond_60

    .line 139
    iget-object v6, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_mag:[I

    iget v7, p1, Lcom/jcraft/jorbis/Info;->channels:I

    invoke-static {v7}, Lcom/jcraft/jorbis/Util;->ilog2(I)I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v7

    aput v7, v6, v2

    move v6, v7

    .line 140
    .local v6, "testM":I
    iget-object v7, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_ang:[I

    iget v8, p1, Lcom/jcraft/jorbis/Info;->channels:I

    invoke-static {v8}, Lcom/jcraft/jorbis/Util;->ilog2(I)I

    move-result v8

    invoke-virtual {p2, v8}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v8

    aput v8, v7, v2

    move v7, v8

    .line 142
    .local v7, "testA":I
    if-ltz v6, :cond_5c

    if-ltz v7, :cond_5c

    if-eq v6, v7, :cond_5c

    iget v8, p1, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v6, v8, :cond_5c

    iget v8, p1, Lcom/jcraft/jorbis/Info;->channels:I

    if-lt v7, v8, :cond_59

    goto :goto_5c

    .line 138
    .end local v6  # "testM":I
    .end local v7  # "testA":I
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 145
    .restart local v6  # "testM":I
    .restart local v7  # "testA":I
    :cond_5c
    :goto_5c
    invoke-virtual {v0}, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->free()V

    .line 146
    return-object v5

    .line 151
    .end local v2  # "i":I
    .end local v6  # "testM":I
    .end local v7  # "testA":I
    :cond_60
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    if-lez v2, :cond_6b

    .line 152
    invoke-virtual {v0}, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->free()V

    .line 153
    return-object v5

    .line 156
    :cond_6b
    iget v2, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    if-le v2, v1, :cond_8b

    .line 157
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_70
    iget v2, p1, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v1, v2, :cond_8b

    .line 158
    iget-object v2, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->chmuxlist:[I

    invoke-virtual {p2, v3}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v6

    aput v6, v2, v1

    .line 159
    iget-object v2, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->chmuxlist:[I

    aget v2, v2, v1

    iget v6, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    if-lt v2, v6, :cond_88

    .line 160
    invoke-virtual {v0}, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->free()V

    .line 161
    return-object v5

    .line 157
    :cond_88
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 166
    .end local v1  # "i":I
    :cond_8b
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_8c
    iget v2, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    if-ge v1, v2, :cond_cf

    .line 167
    iget-object v2, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->timesubmap:[I

    invoke-virtual {p2, v4}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    aput v3, v2, v1

    .line 168
    iget-object v2, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->timesubmap:[I

    aget v2, v2, v1

    iget v3, p1, Lcom/jcraft/jorbis/Info;->times:I

    if-lt v2, v3, :cond_a4

    .line 169
    invoke-virtual {v0}, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->free()V

    .line 170
    return-object v5

    .line 172
    :cond_a4
    iget-object v2, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->floorsubmap:[I

    invoke-virtual {p2, v4}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    aput v3, v2, v1

    .line 173
    iget-object v2, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->floorsubmap:[I

    aget v2, v2, v1

    iget v3, p1, Lcom/jcraft/jorbis/Info;->floors:I

    if-lt v2, v3, :cond_b8

    .line 174
    invoke-virtual {v0}, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->free()V

    .line 175
    return-object v5

    .line 177
    :cond_b8
    iget-object v2, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->residuesubmap:[I

    invoke-virtual {p2, v4}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    aput v3, v2, v1

    .line 178
    iget-object v2, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->residuesubmap:[I

    aget v2, v2, v1

    iget v3, p1, Lcom/jcraft/jorbis/Info;->residues:I

    if-lt v2, v3, :cond_cc

    .line 179
    invoke-virtual {v0}, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->free()V

    .line 180
    return-object v5

    .line 166
    :cond_cc
    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    .line 183
    .end local v1  # "i":I
    :cond_cf
    return-object v0
.end method
