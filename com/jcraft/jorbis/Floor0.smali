.class Lcom/jcraft/jorbis/Floor0;
.super Lcom/jcraft/jorbis/FuncFloor;
.source "Floor0.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jorbis/Floor0$EchstateFloor0;,
        Lcom/jcraft/jorbis/Floor0$LookFloor0;,
        Lcom/jcraft/jorbis/Floor0$InfoFloor0;
    }
.end annotation


# instance fields
.field lsp:[F


# direct methods
.method constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/jcraft/jorbis/FuncFloor;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jorbis/Floor0;->lsp:[F

    .line 329
    return-void
.end method

.method static fromdB(F)F
    .registers 5
    .param p0, "x"  # F

    .line 240
    float-to-double v0, p0

    const-wide v2, 0x3fbd791c4b90214bL  # 0.11512925

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method static lpc_to_curve([F[FFLcom/jcraft/jorbis/Floor0$LookFloor0;Ljava/lang/String;I)V
    .registers 10
    .param p0, "curve"  # [F
    .param p1, "lpc"  # [F
    .param p2, "amp"  # F
    .param p3, "l"  # Lcom/jcraft/jorbis/Floor0$LookFloor0;
    .param p4, "name"  # Ljava/lang/String;
    .param p5, "frameno"  # I

    .line 294
    iget v0, p3, Lcom/jcraft/jorbis/Floor0$LookFloor0;->ln:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p3, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [F

    .line 296
    .local v0, "lcurve":[F
    const/4 v1, 0x0

    cmpl-float v2, p2, v1

    if-nez v2, :cond_20

    .line 297
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_16
    iget v3, p3, Lcom/jcraft/jorbis/Floor0$LookFloor0;->n:I

    if-ge v2, v3, :cond_1f

    .line 298
    aput v1, p0, v2

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 299
    .end local v2  # "j":I
    :cond_1f
    return-void

    .line 301
    :cond_20
    iget-object v1, p3, Lcom/jcraft/jorbis/Floor0$LookFloor0;->lpclook:Lcom/jcraft/jorbis/Lpc;

    invoke-virtual {v1, v0, p1, p2}, Lcom/jcraft/jorbis/Lpc;->lpc_to_curve([F[FF)V

    .line 303
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_26
    iget v2, p3, Lcom/jcraft/jorbis/Floor0$LookFloor0;->n:I

    if-ge v1, v2, :cond_35

    .line 304
    iget-object v2, p3, Lcom/jcraft/jorbis/Floor0$LookFloor0;->linearmap:[I

    aget v2, v2, v1

    aget v2, v0, v2

    aput v2, p0, v1

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 305
    .end local v1  # "i":I
    :cond_35
    return-void
.end method

.method static lsp_to_lpc([F[FI)V
    .registers 18
    .param p0, "lsp"  # [F
    .param p1, "lpc"  # [F
    .param p2, "m"  # I

    .line 244
    div-int/lit8 v0, p2, 0x2

    .line 245
    .local v0, "m2":I
    new-array v1, v0, [F

    .line 246
    .local v1, "O":[F
    new-array v2, v0, [F

    .line 248
    .local v2, "E":[F
    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [F

    .line 249
    .local v3, "Ae":[F
    add-int/lit8 v4, v0, 0x1

    new-array v4, v4, [F

    .line 251
    .local v4, "Ao":[F
    new-array v5, v0, [F

    .line 252
    .local v5, "Be":[F
    new-array v6, v0, [F

    .line 256
    .local v6, "Bo":[F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_13
    if-ge v7, v0, :cond_36

    .line 257
    mul-int/lit8 v8, v7, 0x2

    aget v8, p0, v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide/high16 v10, -0x4000000000000000L  # -2.0

    mul-double/2addr v8, v10

    double-to-float v8, v8

    aput v8, v1, v7

    .line 258
    mul-int/lit8 v8, v7, 0x2

    add-int/lit8 v8, v8, 0x1

    aget v8, p0, v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v10

    double-to-float v8, v8

    aput v8, v2, v7

    .line 256
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 262
    :cond_36
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_37
    const/4 v9, 0x0

    const/high16 v10, 0x3f800000  # 1.0f

    if-ge v8, v0, :cond_47

    .line 263
    aput v9, v3, v8

    .line 264
    aput v10, v4, v8

    .line 265
    aput v9, v5, v8

    .line 266
    aput v10, v6, v8

    .line 262
    add-int/lit8 v8, v8, 0x1

    goto :goto_37

    .line 268
    :cond_47
    aput v10, v4, v8

    .line 269
    aput v10, v3, v8

    .line 272
    const/4 v7, 0x1

    :goto_4c
    add-int/lit8 v10, p2, 0x1

    if-ge v7, v10, :cond_8b

    .line 273
    move v10, v9

    .local v10, "B":F
    move v11, v9

    .line 274
    .local v11, "A":F
    const/4 v8, 0x0

    :goto_53
    if-ge v8, v0, :cond_76

    .line 275
    aget v12, v1, v8

    aget v13, v4, v8

    mul-float/2addr v12, v13

    aget v13, v3, v8

    add-float/2addr v12, v13

    .line 276
    .local v12, "temp":F
    aget v13, v4, v8

    aput v13, v3, v8

    .line 277
    aput v11, v4, v8

    .line 278
    add-float/2addr v11, v12

    .line 280
    aget v13, v2, v8

    aget v14, v6, v8

    mul-float/2addr v13, v14

    aget v14, v5, v8

    add-float/2addr v13, v14

    .line 281
    .end local v12  # "temp":F
    .local v13, "temp":F
    aget v12, v6, v8

    aput v12, v5, v8

    .line 282
    aput v10, v6, v8

    .line 283
    add-float/2addr v10, v13

    .line 274
    add-int/lit8 v8, v8, 0x1

    goto :goto_53

    .line 285
    .end local v13  # "temp":F
    :cond_76
    add-int/lit8 v12, v7, -0x1

    aget v13, v4, v8

    add-float/2addr v13, v11

    add-float/2addr v13, v10

    aget v14, v3, v8

    sub-float/2addr v13, v14

    const/high16 v14, 0x40000000  # 2.0f

    div-float/2addr v13, v14

    aput v13, p1, v12

    .line 286
    aput v11, v4, v8

    .line 287
    aput v10, v3, v8

    .line 272
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c

    .line 289
    .end local v10  # "B":F
    .end local v11  # "A":F
    :cond_8b
    return-void
.end method

.method static toBARK(F)F
    .registers 7
    .param p0, "f"  # F

    .line 98
    const-wide v0, 0x3f483f91e646f156L  # 7.4E-4

    float-to-double v2, p0

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const-wide v2, 0x402a333333333333L  # 13.1

    mul-double/2addr v0, v2

    mul-float v2, p0, p0

    float-to-double v2, v2

    const-wide v4, 0x3e53dd3dc46ce81cL  # 1.85E-8

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    const-wide v4, 0x4001eb851eb851ecL  # 2.24

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x3f1a36e2eb1c432dL  # 1.0E-4

    float-to-double v4, p0

    mul-double/2addr v4, v2

    add-double/2addr v0, v4

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method forward(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[F[FLjava/lang/Object;)I
    .registers 7
    .param p1, "vb"  # Lcom/jcraft/jorbis/Block;
    .param p2, "i"  # Ljava/lang/Object;
    .param p3, "in"  # [F
    .param p4, "out"  # [F
    .param p5, "vs"  # Ljava/lang/Object;

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method free_info(Ljava/lang/Object;)V
    .registers 2
    .param p1, "i"  # Ljava/lang/Object;

    .line 113
    return-void
.end method

.method free_look(Ljava/lang/Object;)V
    .registers 2
    .param p1, "i"  # Ljava/lang/Object;

    .line 116
    return-void
.end method

.method free_state(Ljava/lang/Object;)V
    .registers 2
    .param p1, "vs"  # Ljava/lang/Object;

    .line 119
    return-void
.end method

.method inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[F)I
    .registers 27
    .param p1, "vb"  # Lcom/jcraft/jorbis/Block;
    .param p2, "i"  # Ljava/lang/Object;
    .param p3, "out"  # [F

    .line 129
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p2

    check-cast v11, Lcom/jcraft/jorbis/Floor0$LookFloor0;

    .line 130
    .local v11, "look":Lcom/jcraft/jorbis/Floor0$LookFloor0;
    iget-object v12, v11, Lcom/jcraft/jorbis/Floor0$LookFloor0;->vi:Lcom/jcraft/jorbis/Floor0$InfoFloor0;

    .line 131
    .local v12, "info":Lcom/jcraft/jorbis/Floor0$InfoFloor0;
    iget-object v0, v2, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    iget v3, v12, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->ampbits:I

    invoke-virtual {v0, v3}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v13

    .line 132
    .local v13, "ampraw":I
    const/4 v0, 0x0

    if-lez v13, :cond_e3

    .line 133
    iget v3, v12, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->ampbits:I

    const/4 v14, 0x1

    shl-int v3, v14, v3

    add-int/lit8 v15, v3, -0x1

    .line 134
    .local v15, "maxval":I
    int-to-float v3, v13

    int-to-float v4, v15

    div-float/2addr v3, v4

    iget v4, v12, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->ampdB:I

    int-to-float v4, v4

    mul-float v16, v3, v4

    .line 135
    .local v16, "amp":F
    iget-object v3, v2, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    iget v4, v12, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->numbooks:I

    invoke-static {v4}, Lcom/jcraft/jorbis/Util;->ilog(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v10

    .line 137
    .local v10, "booknum":I
    const/4 v3, -0x1

    if-eq v10, v3, :cond_e1

    iget v4, v12, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->numbooks:I

    if-ge v10, v4, :cond_e1

    .line 139
    monitor-enter p0

    .line 140
    :try_start_38
    iget-object v4, v1, Lcom/jcraft/jorbis/Floor0;->lsp:[F
    :try_end_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_da

    const/4 v5, 0x0

    if-eqz v4, :cond_56

    :try_start_3d
    iget-object v4, v1, Lcom/jcraft/jorbis/Floor0;->lsp:[F

    array-length v4, v4

    iget v6, v11, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    if-ge v4, v6, :cond_45

    goto :goto_56

    .line 144
    :cond_45
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_46
    iget v6, v11, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    if-ge v4, v6, :cond_5c

    .line 145
    iget-object v6, v1, Lcom/jcraft/jorbis/Floor0;->lsp:[F

    aput v5, v6, v4
    :try_end_4e
    .catchall {:try_start_3d .. :try_end_4e} :catchall_51

    .line 144
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 171
    .end local v4  # "j":I
    :catchall_51
    move-exception v0

    move/from16 v19, v10

    goto/16 :goto_dd

    .line 141
    :cond_56
    :goto_56
    :try_start_56
    iget v4, v11, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    new-array v4, v4, [F

    iput-object v4, v1, Lcom/jcraft/jorbis/Floor0;->lsp:[F

    .line 148
    :cond_5c
    iget-object v4, v2, Lcom/jcraft/jorbis/Block;->vd:Lcom/jcraft/jorbis/DspState;

    iget-object v4, v4, Lcom/jcraft/jorbis/DspState;->fullbooks:[Lcom/jcraft/jorbis/CodeBook;

    iget-object v6, v12, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->books:[I

    aget v6, v6, v10

    aget-object v4, v4, v6

    move-object v9, v4

    .line 149
    .local v9, "b":Lcom/jcraft/jorbis/CodeBook;
    const/4 v4, 0x0

    .line 151
    .local v4, "last":F
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_69
    iget v7, v11, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I
    :try_end_6b
    .catchall {:try_start_56 .. :try_end_6b} :catchall_da

    if-ge v6, v7, :cond_72

    .line 152
    :try_start_6d
    aput v5, p3, v6
    :try_end_6f
    .catchall {:try_start_6d .. :try_end_6f} :catchall_51

    .line 151
    add-int/lit8 v6, v6, 0x1

    goto :goto_69

    .line 154
    .end local v6  # "j":I
    :cond_72
    const/4 v6, 0x0

    .restart local v6  # "j":I
    :goto_73
    :try_start_73
    iget v7, v11, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I
    :try_end_75
    .catchall {:try_start_73 .. :try_end_75} :catchall_da

    if-ge v6, v7, :cond_9d

    .line 155
    :try_start_77
    iget-object v7, v1, Lcom/jcraft/jorbis/Floor0;->lsp:[F

    iget-object v8, v2, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    const/16 v21, 0x1

    const/16 v22, -0x1

    move-object/from16 v17, v9

    move-object/from16 v18, v7

    move/from16 v19, v6

    move-object/from16 v20, v8

    invoke-virtual/range {v17 .. v22}, Lcom/jcraft/jorbis/CodeBook;->decodevs([FILcom/jcraft/jogg/Buffer;II)I

    move-result v7

    if-ne v7, v3, :cond_99

    .line 156
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_8e
    iget v7, v11, Lcom/jcraft/jorbis/Floor0$LookFloor0;->n:I

    if-ge v3, v7, :cond_97

    .line 157
    aput v5, p3, v3

    .line 156
    add-int/lit8 v3, v3, 0x1

    goto :goto_8e

    .line 158
    .end local v3  # "k":I
    :cond_97
    monitor-exit p0

    return v0

    .line 154
    :cond_99
    iget v7, v9, Lcom/jcraft/jorbis/CodeBook;->dim:I
    :try_end_9b
    .catchall {:try_start_77 .. :try_end_9b} :catchall_51

    add-int/2addr v6, v7

    goto :goto_73

    .line 161
    .end local v6  # "j":I
    :cond_9d
    const/4 v0, 0x0

    move/from16 v17, v4

    .end local v4  # "last":F
    .local v0, "j":I
    .local v17, "last":F
    :goto_a0
    :try_start_a0
    iget v3, v11, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I
    :try_end_a2
    .catchall {:try_start_a0 .. :try_end_a2} :catchall_da

    if-ge v0, v3, :cond_bf

    .line 162
    const/4 v3, 0x0

    .restart local v3  # "k":I
    :goto_a5
    :try_start_a5
    iget v4, v9, Lcom/jcraft/jorbis/CodeBook;->dim:I

    if-ge v3, v4, :cond_b6

    .line 163
    iget-object v4, v1, Lcom/jcraft/jorbis/Floor0;->lsp:[F

    aget v5, v4, v0

    add-float v5, v5, v17

    aput v5, v4, v0

    .line 162
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_a5

    .line 164
    .end local v3  # "k":I
    :cond_b6
    iget-object v3, v1, Lcom/jcraft/jorbis/Floor0;->lsp:[F

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4
    :try_end_bc
    .catchall {:try_start_a5 .. :try_end_bc} :catchall_51

    move/from16 v17, v3

    goto :goto_a0

    .line 167
    .end local v0  # "j":I
    :cond_bf
    :try_start_bf
    iget-object v4, v11, Lcom/jcraft/jorbis/Floor0$LookFloor0;->linearmap:[I

    iget v5, v11, Lcom/jcraft/jorbis/Floor0$LookFloor0;->n:I

    iget v6, v11, Lcom/jcraft/jorbis/Floor0$LookFloor0;->ln:I

    iget-object v7, v1, Lcom/jcraft/jorbis/Floor0;->lsp:[F

    iget v8, v11, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    iget v0, v12, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->ampdB:I
    :try_end_cb
    .catchall {:try_start_bf .. :try_end_cb} :catchall_da

    int-to-float v0, v0

    move-object/from16 v3, p3

    move-object/from16 v18, v9

    .end local v9  # "b":Lcom/jcraft/jorbis/CodeBook;
    .local v18, "b":Lcom/jcraft/jorbis/CodeBook;
    move/from16 v9, v16

    move/from16 v19, v10

    .end local v10  # "booknum":I
    .local v19, "booknum":I
    move v10, v0

    :try_start_d5
    invoke-static/range {v3 .. v10}, Lcom/jcraft/jorbis/Lsp;->lsp_to_curve([F[III[FIFF)V

    .line 170
    monitor-exit p0

    return v14

    .line 171
    .end local v17  # "last":F
    .end local v18  # "b":Lcom/jcraft/jorbis/CodeBook;
    .end local v19  # "booknum":I
    .restart local v10  # "booknum":I
    :catchall_da
    move-exception v0

    move/from16 v19, v10

    .end local v10  # "booknum":I
    .restart local v19  # "booknum":I
    :goto_dd
    monitor-exit p0
    :try_end_de
    .catchall {:try_start_d5 .. :try_end_de} :catchall_df

    throw v0

    :catchall_df
    move-exception v0

    goto :goto_dd

    .line 137
    .end local v19  # "booknum":I
    .restart local v10  # "booknum":I
    :cond_e1
    move/from16 v19, v10

    .line 174
    .end local v10  # "booknum":I
    .end local v15  # "maxval":I
    .end local v16  # "amp":F
    :cond_e3
    return v0
.end method

.method inverse1(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20
    .param p1, "vb"  # Lcom/jcraft/jorbis/Block;
    .param p2, "i"  # Ljava/lang/Object;
    .param p3, "memo"  # Ljava/lang/Object;

    .line 178
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    check-cast v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;

    .line 179
    .local v2, "look":Lcom/jcraft/jorbis/Floor0$LookFloor0;
    iget-object v3, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->vi:Lcom/jcraft/jorbis/Floor0$InfoFloor0;

    .line 180
    .local v3, "info":Lcom/jcraft/jorbis/Floor0$InfoFloor0;
    const/4 v4, 0x0

    .line 181
    .local v4, "lsp":[F
    instance-of v5, v1, [F

    if-eqz v5, :cond_15

    .line 182
    move-object v5, v1

    check-cast v5, [F

    move-object v4, v5

    check-cast v4, [F

    .line 185
    :cond_15
    iget-object v5, v0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    iget v6, v3, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->ampbits:I

    invoke-virtual {v5, v6}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v5

    .line 186
    .local v5, "ampraw":I
    const/4 v6, 0x0

    if-lez v5, :cond_95

    .line 187
    iget v7, v3, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->ampbits:I

    const/4 v8, 0x1

    shl-int v7, v8, v7

    sub-int/2addr v7, v8

    .line 188
    .local v7, "maxval":I
    int-to-float v9, v5

    int-to-float v10, v7

    div-float/2addr v9, v10

    iget v10, v3, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->ampdB:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    .line 189
    .local v9, "amp":F
    iget-object v10, v0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    iget v11, v3, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->numbooks:I

    invoke-static {v11}, Lcom/jcraft/jorbis/Util;->ilog(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v10

    .line 191
    .local v10, "booknum":I
    const/4 v11, -0x1

    if-eq v10, v11, :cond_95

    iget v12, v3, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->numbooks:I

    if-ge v10, v12, :cond_95

    .line 192
    iget-object v12, v0, Lcom/jcraft/jorbis/Block;->vd:Lcom/jcraft/jorbis/DspState;

    iget-object v12, v12, Lcom/jcraft/jorbis/DspState;->fullbooks:[Lcom/jcraft/jorbis/CodeBook;

    iget-object v13, v3, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->books:[I

    aget v13, v13, v10

    aget-object v12, v12, v13

    .line 193
    .local v12, "b":Lcom/jcraft/jorbis/CodeBook;
    const/4 v13, 0x0

    .line 195
    .local v13, "last":F
    if-eqz v4, :cond_5e

    array-length v14, v4

    iget v15, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    add-int/2addr v15, v8

    if-ge v14, v15, :cond_54

    goto :goto_5e

    .line 199
    :cond_54
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_55
    array-length v14, v4

    if-ge v8, v14, :cond_63

    .line 200
    const/4 v14, 0x0

    aput v14, v4, v8

    .line 199
    add-int/lit8 v8, v8, 0x1

    goto :goto_55

    .line 196
    .end local v8  # "j":I
    :cond_5e
    :goto_5e
    iget v14, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    add-int/2addr v14, v8

    new-array v4, v14, [F

    .line 203
    :cond_63
    const/4 v8, 0x0

    .restart local v8  # "j":I
    :goto_64
    iget v14, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    if-ge v8, v14, :cond_77

    .line 204
    iget-object v14, v0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    iget v15, v12, Lcom/jcraft/jorbis/CodeBook;->dim:I

    invoke-virtual {v12, v4, v8, v14, v15}, Lcom/jcraft/jorbis/CodeBook;->decodev_set([FILcom/jcraft/jogg/Buffer;I)I

    move-result v14

    if-ne v14, v11, :cond_73

    .line 205
    return-object v6

    .line 203
    :cond_73
    iget v14, v12, Lcom/jcraft/jorbis/CodeBook;->dim:I

    add-int/2addr v8, v14

    goto :goto_64

    .line 209
    .end local v8  # "j":I
    :cond_77
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_78
    iget v8, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    if-ge v6, v8, :cond_90

    .line 210
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_7d
    iget v11, v12, Lcom/jcraft/jorbis/CodeBook;->dim:I

    if-ge v8, v11, :cond_8b

    .line 211
    aget v11, v4, v6

    add-float/2addr v11, v13

    aput v11, v4, v6

    .line 210
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_7d

    .line 212
    .end local v8  # "k":I
    :cond_8b
    add-int/lit8 v8, v6, -0x1

    aget v13, v4, v8

    goto :goto_78

    .line 214
    .end local v6  # "j":I
    :cond_90
    iget v6, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    aput v9, v4, v6

    .line 215
    return-object v4

    .line 218
    .end local v7  # "maxval":I
    .end local v9  # "amp":F
    .end local v10  # "booknum":I
    .end local v12  # "b":Lcom/jcraft/jorbis/CodeBook;
    .end local v13  # "last":F
    :cond_95
    return-object v6
.end method

.method inverse2(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;Ljava/lang/Object;[F)I
    .registers 17
    .param p1, "vb"  # Lcom/jcraft/jorbis/Block;
    .param p2, "i"  # Ljava/lang/Object;
    .param p3, "memo"  # Ljava/lang/Object;
    .param p4, "out"  # [F

    .line 222
    move-object v0, p2

    check-cast v0, Lcom/jcraft/jorbis/Floor0$LookFloor0;

    .line 223
    .local v0, "look":Lcom/jcraft/jorbis/Floor0$LookFloor0;
    iget-object v1, v0, Lcom/jcraft/jorbis/Floor0$LookFloor0;->vi:Lcom/jcraft/jorbis/Floor0$InfoFloor0;

    .line 225
    .local v1, "info":Lcom/jcraft/jorbis/Floor0$InfoFloor0;
    if-eqz p3, :cond_24

    .line 226
    move-object v2, p3

    check-cast v2, [F

    check-cast v2, [F

    .line 227
    .local v2, "lsp":[F
    iget v3, v0, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    aget v11, v2, v3

    .line 229
    .local v11, "amp":F
    iget-object v4, v0, Lcom/jcraft/jorbis/Floor0$LookFloor0;->linearmap:[I

    iget v5, v0, Lcom/jcraft/jorbis/Floor0$LookFloor0;->n:I

    iget v6, v0, Lcom/jcraft/jorbis/Floor0$LookFloor0;->ln:I

    iget v8, v0, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    iget v3, v1, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->ampdB:I

    int-to-float v10, v3

    move-object/from16 v3, p4

    move-object v7, v2

    move v9, v11

    invoke-static/range {v3 .. v10}, Lcom/jcraft/jorbis/Lsp;->lsp_to_curve([F[III[FIFF)V

    .line 231
    const/4 v3, 0x1

    return v3

    .line 233
    .end local v2  # "lsp":[F
    .end local v11  # "amp":F
    :cond_24
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_25
    iget v3, v0, Lcom/jcraft/jorbis/Floor0$LookFloor0;->n:I

    if-ge v2, v3, :cond_2f

    .line 234
    const/4 v3, 0x0

    aput v3, p4, v2

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 236
    .end local v2  # "j":I
    :cond_2f
    const/4 v2, 0x0

    return v2
.end method

.method look(Lcom/jcraft/jorbis/DspState;Lcom/jcraft/jorbis/InfoMode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .param p1, "vd"  # Lcom/jcraft/jorbis/DspState;
    .param p2, "mi"  # Lcom/jcraft/jorbis/InfoMode;
    .param p3, "i"  # Ljava/lang/Object;

    .line 69
    iget-object v0, p1, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    .line 70
    .local v0, "vi":Lcom/jcraft/jorbis/Info;
    move-object v1, p3

    check-cast v1, Lcom/jcraft/jorbis/Floor0$InfoFloor0;

    .line 71
    .local v1, "info":Lcom/jcraft/jorbis/Floor0$InfoFloor0;
    new-instance v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;

    invoke-direct {v2, p0}, Lcom/jcraft/jorbis/Floor0$LookFloor0;-><init>(Lcom/jcraft/jorbis/Floor0;)V

    .line 72
    .local v2, "look":Lcom/jcraft/jorbis/Floor0$LookFloor0;
    iget v3, v1, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->order:I

    iput v3, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    .line 73
    iget-object v3, v0, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    iget v4, p2, Lcom/jcraft/jorbis/InfoMode;->blockflag:I

    aget v3, v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->n:I

    .line 74
    iget v3, v1, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->barkmap:I

    iput v3, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->ln:I

    .line 75
    iput-object v1, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->vi:Lcom/jcraft/jorbis/Floor0$InfoFloor0;

    .line 76
    iget-object v3, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->lpclook:Lcom/jcraft/jorbis/Lpc;

    iget v4, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->ln:I

    iget v5, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    invoke-virtual {v3, v4, v5}, Lcom/jcraft/jorbis/Lpc;->init(II)V

    .line 79
    iget v3, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->ln:I

    int-to-float v3, v3

    iget v4, v1, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->rate:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L  # 2.0

    div-double/2addr v4, v6

    double-to-float v4, v4

    invoke-static {v4}, Lcom/jcraft/jorbis/Floor0;->toBARK(F)F

    move-result v4

    div-float/2addr v3, v4

    .line 87
    .local v3, "scale":F
    iget v4, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->n:I

    new-array v4, v4, [I

    iput-object v4, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->linearmap:[I

    .line 88
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3d
    iget v5, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->n:I

    if-ge v4, v5, :cond_64

    .line 89
    iget v5, v1, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->rate:I

    int-to-double v8, v5

    div-double/2addr v8, v6

    iget v5, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->n:I

    int-to-double v10, v5

    div-double/2addr v8, v10

    int-to-double v10, v4

    mul-double/2addr v8, v10

    double-to-float v5, v8

    invoke-static {v5}, Lcom/jcraft/jorbis/Floor0;->toBARK(F)F

    move-result v5

    mul-float/2addr v5, v3

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v5, v8

    .line 90
    .local v5, "val":I
    iget v8, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->ln:I

    if-lt v5, v8, :cond_5d

    .line 91
    iget v5, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->ln:I

    .line 92
    :cond_5d
    iget-object v8, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->linearmap:[I

    aput v5, v8, v4

    .line 88
    .end local v5  # "val":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 94
    .end local v4  # "j":I
    :cond_64
    return-object v2
.end method

.method pack(Ljava/lang/Object;Lcom/jcraft/jogg/Buffer;)V
    .registers 7
    .param p1, "i"  # Ljava/lang/Object;
    .param p2, "opb"  # Lcom/jcraft/jogg/Buffer;

    .line 34
    move-object v0, p1

    check-cast v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;

    .line 35
    .local v0, "info":Lcom/jcraft/jorbis/Floor0$InfoFloor0;
    iget v1, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->order:I

    const/16 v2, 0x8

    invoke-virtual {p2, v1, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 36
    iget v1, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->rate:I

    const/16 v3, 0x10

    invoke-virtual {p2, v1, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 37
    iget v1, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->barkmap:I

    invoke-virtual {p2, v1, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 38
    iget v1, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->ampbits:I

    const/4 v3, 0x6

    invoke-virtual {p2, v1, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 39
    iget v1, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->ampdB:I

    invoke-virtual {p2, v1, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 40
    iget v1, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->numbooks:I

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x4

    invoke-virtual {p2, v1, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 41
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2a
    iget v3, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->numbooks:I

    if-ge v1, v3, :cond_38

    .line 42
    iget-object v3, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->books:[I

    aget v3, v3, v1

    invoke-virtual {p2, v3, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 43
    .end local v1  # "j":I
    :cond_38
    return-void
.end method

.method state(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "i"  # Ljava/lang/Object;

    .line 102
    new-instance v0, Lcom/jcraft/jorbis/Floor0$EchstateFloor0;

    invoke-direct {v0, p0}, Lcom/jcraft/jorbis/Floor0$EchstateFloor0;-><init>(Lcom/jcraft/jorbis/Floor0;)V

    .line 103
    .local v0, "state":Lcom/jcraft/jorbis/Floor0$EchstateFloor0;
    move-object v1, p1

    check-cast v1, Lcom/jcraft/jorbis/Floor0$InfoFloor0;

    .line 106
    .local v1, "info":Lcom/jcraft/jorbis/Floor0$InfoFloor0;
    iget v2, v1, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->order:I

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/jcraft/jorbis/Floor0$EchstateFloor0;->codewords:[I

    .line 107
    iget v2, v1, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->barkmap:I

    new-array v2, v2, [F

    iput-object v2, v0, Lcom/jcraft/jorbis/Floor0$EchstateFloor0;->curve:[F

    .line 108
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/jcraft/jorbis/Floor0$EchstateFloor0;->frameno:J

    .line 109
    return-object v0
.end method

.method unpack(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jogg/Buffer;)Ljava/lang/Object;
    .registers 9
    .param p1, "vi"  # Lcom/jcraft/jorbis/Info;
    .param p2, "opb"  # Lcom/jcraft/jogg/Buffer;

    .line 46
    new-instance v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;

    invoke-direct {v0, p0}, Lcom/jcraft/jorbis/Floor0$InfoFloor0;-><init>(Lcom/jcraft/jorbis/Floor0;)V

    .line 47
    .local v0, "info":Lcom/jcraft/jorbis/Floor0$InfoFloor0;
    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    iput v2, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->order:I

    .line 48
    const/16 v2, 0x10

    invoke-virtual {p2, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    iput v3, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->rate:I

    .line 49
    invoke-virtual {p2, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    iput v2, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->barkmap:I

    .line 50
    const/4 v2, 0x6

    invoke-virtual {p2, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    iput v2, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->ampbits:I

    .line 51
    invoke-virtual {p2, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    iput v2, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->ampdB:I

    .line 52
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->numbooks:I

    .line 54
    iget v2, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->order:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_64

    iget v2, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->rate:I

    if-lt v2, v3, :cond_64

    iget v2, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->barkmap:I

    if-lt v2, v3, :cond_64

    iget v2, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->numbooks:I

    if-ge v2, v3, :cond_43

    goto :goto_64

    .line 58
    :cond_43
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_44
    iget v3, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->numbooks:I

    if-ge v2, v3, :cond_63

    .line 59
    iget-object v3, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->books:[I

    invoke-virtual {p2, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v5

    aput v5, v3, v2

    .line 60
    iget-object v3, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->books:[I

    aget v3, v3, v2

    if-ltz v3, :cond_62

    iget-object v3, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->books:[I

    aget v3, v3, v2

    iget v5, p1, Lcom/jcraft/jorbis/Info;->books:I

    if-lt v3, v5, :cond_5f

    goto :goto_62

    .line 58
    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 61
    :cond_62
    :goto_62
    return-object v4

    .line 64
    .end local v2  # "j":I
    :cond_63
    return-object v0

    .line 55
    :cond_64
    :goto_64
    return-object v4
.end method
