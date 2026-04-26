.class Lcom/jcraft/jorbis/Mdct;
.super Ljava/lang/Object;
.source "Mdct.java"


# instance fields
.field _w:[F

.field _x:[F

.field bitrev:[I

.field log2n:I

.field n:I

.field scale:F

.field trig:[F


# direct methods
.method constructor <init>()V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/16 v0, 0x400

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jcraft/jorbis/Mdct;->_x:[F

    .line 87
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jcraft/jorbis/Mdct;->_w:[F

    return-void
.end method

.method private mdct_kernel([F[FIIII)[F
    .registers 32
    .param p1, "x"  # [F
    .param p2, "w"  # [F
    .param p3, "n"  # I
    .param p4, "n2"  # I
    .param p5, "n4"  # I
    .param p6, "n8"  # I

    .line 159
    move-object/from16 v0, p0

    move/from16 v1, p5

    .line 160
    .local v1, "xA":I
    const/4 v2, 0x0

    .line 161
    .local v2, "xB":I
    move/from16 v3, p5

    .line 162
    .local v3, "w2":I
    move/from16 v4, p4

    .line 164
    .local v4, "A":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_a
    const/4 v6, 0x1

    move/from16 v7, p5

    if-ge v5, v7, :cond_5b

    .line 165
    aget v8, p1, v1

    aget v9, p1, v2

    sub-float/2addr v8, v9

    .line 167
    .local v8, "x0":F
    add-int v9, v3, v5

    add-int/lit8 v10, v1, 0x1

    .end local v1  # "xA":I
    .local v10, "xA":I
    aget v1, p1, v1

    add-int/lit8 v11, v2, 0x1

    .end local v2  # "xB":I
    .local v11, "xB":I
    aget v2, p1, v2

    add-float/2addr v1, v2

    aput v1, p2, v9

    .line 169
    aget v1, p1, v10

    aget v2, p1, v11

    sub-float/2addr v1, v2

    .line 170
    .local v1, "x1":F
    add-int/lit8 v4, v4, -0x4

    .line 172
    add-int/lit8 v2, v5, 0x1

    .end local v5  # "i":I
    .local v2, "i":I
    iget-object v9, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    aget v9, v9, v4

    mul-float/2addr v9, v8

    iget-object v12, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    add-int/lit8 v13, v4, 0x1

    aget v12, v12, v13

    mul-float/2addr v12, v1

    add-float/2addr v9, v12

    aput v9, p2, v5

    .line 173
    iget-object v5, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    aget v5, v5, v4

    mul-float/2addr v5, v1

    iget-object v9, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    add-int/lit8 v12, v4, 0x1

    aget v9, v9, v12

    mul-float/2addr v9, v8

    sub-float/2addr v5, v9

    aput v5, p2, v2

    .line 175
    add-int v5, v3, v2

    add-int/lit8 v9, v10, 0x1

    .end local v10  # "xA":I
    .local v9, "xA":I
    aget v10, p1, v10

    add-int/lit8 v12, v11, 0x1

    .end local v11  # "xB":I
    .local v12, "xB":I
    aget v11, p1, v11

    add-float/2addr v10, v11

    aput v10, p2, v5

    .line 176
    nop

    .end local v1  # "x1":F
    .end local v8  # "x0":F
    add-int/lit8 v5, v2, 0x1

    .line 177
    .end local v2  # "i":I
    .restart local v5  # "i":I
    move v1, v9

    move v2, v12

    goto :goto_a

    .line 182
    .end local v5  # "i":I
    .end local v9  # "xA":I
    .end local v12  # "xB":I
    .local v1, "xA":I
    .local v2, "xB":I
    :cond_5b
    const/4 v5, 0x0

    move v8, v4

    move v9, v5

    move-object/from16 v4, p2

    move v5, v3

    move-object/from16 v3, p1

    .end local p1  # "x":[F
    .end local p2  # "w":[F
    .local v3, "x":[F
    .local v4, "w":[F
    .local v5, "w2":I
    .local v8, "A":I
    .local v9, "i":I
    :goto_63
    iget v10, v0, Lcom/jcraft/jorbis/Mdct;->log2n:I

    add-int/lit8 v10, v10, -0x3

    if-ge v9, v10, :cond_ee

    .line 183
    add-int/lit8 v10, v9, 0x2

    ushr-int v10, p3, v10

    .line 184
    .local v10, "k0":I
    add-int/lit8 v11, v9, 0x3

    shl-int v11, v6, v11

    .line 185
    .local v11, "k1":I
    add-int/lit8 v12, p4, -0x2

    .line 187
    .local v12, "wbase":I
    const/4 v8, 0x0

    .line 190
    const/4 v13, 0x0

    .local v13, "r":I
    :goto_75
    ushr-int/lit8 v14, v10, 0x2

    if-ge v13, v14, :cond_e0

    .line 191
    move v14, v12

    .line 192
    .local v14, "w1":I
    shr-int/lit8 v15, v10, 0x1

    sub-int v5, v14, v15

    .line 193
    iget-object v15, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    aget v15, v15, v8

    .line 194
    .local v15, "AEv":F
    iget-object v6, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    add-int/lit8 v17, v8, 0x1

    aget v6, v6, v17

    .line 195
    .local v6, "AOv":F
    add-int/lit8 v12, v12, -0x2

    .line 197
    add-int/lit8 v10, v10, 0x1

    .line 198
    const/16 v17, 0x0

    move/from16 v24, v17

    move/from16 v17, v1

    move/from16 v1, v24

    .local v1, "s":I
    .local v17, "xA":I
    :goto_94
    const/16 v18, 0x2

    move/from16 v19, v2

    .end local v2  # "xB":I
    .local v19, "xB":I
    shl-int v2, v18, v9

    if-ge v1, v2, :cond_d5

    .line 199
    aget v2, v4, v14

    aget v18, v4, v5

    sub-float v2, v2, v18

    .line 200
    .local v2, "wB":F
    aget v18, v4, v14

    aget v20, v4, v5

    add-float v18, v18, v20

    aput v18, v3, v14

    .line 202
    add-int/lit8 v14, v14, 0x1

    aget v18, v4, v14

    add-int/lit8 v5, v5, 0x1

    aget v20, v4, v5

    sub-float v18, v18, v20

    .line 203
    .local v18, "wA":F
    aget v20, v4, v14

    aget v21, v4, v5

    add-float v20, v20, v21

    aput v20, v3, v14

    .line 205
    mul-float v20, v18, v15

    mul-float v21, v2, v6

    sub-float v20, v20, v21

    aput v20, v3, v5

    .line 206
    add-int/lit8 v20, v5, -0x1

    mul-float v21, v2, v15

    mul-float v22, v18, v6

    add-float v21, v21, v22

    aput v21, v3, v20

    .line 208
    sub-int/2addr v14, v10

    .line 209
    sub-int/2addr v5, v10

    .line 198
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v19

    goto :goto_94

    .line 211
    .end local v1  # "s":I
    .end local v2  # "wB":F
    .end local v18  # "wA":F
    :cond_d5
    add-int/lit8 v10, v10, -0x1

    .line 212
    add-int/2addr v8, v11

    .line 190
    .end local v6  # "AOv":F
    .end local v14  # "w1":I
    .end local v15  # "AEv":F
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v17

    move/from16 v2, v19

    const/4 v6, 0x1

    goto :goto_75

    .end local v17  # "xA":I
    .end local v19  # "xB":I
    .local v1, "xA":I
    .local v2, "xB":I
    :cond_e0
    move/from16 v17, v1

    move/from16 v19, v2

    .line 215
    .end local v1  # "xA":I
    .end local v2  # "xB":I
    .end local v13  # "r":I
    .restart local v17  # "xA":I
    .restart local v19  # "xB":I
    move-object v1, v4

    .line 216
    .local v1, "temp":[F
    move-object v4, v3

    .line 217
    move-object v3, v1

    .line 182
    .end local v1  # "temp":[F
    .end local v10  # "k0":I
    .end local v11  # "k1":I
    .end local v12  # "wbase":I
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, v17

    const/4 v6, 0x1

    goto/16 :goto_63

    .end local v17  # "xA":I
    .end local v19  # "xB":I
    .local v1, "xA":I
    .restart local v2  # "xB":I
    :cond_ee
    move/from16 v17, v1

    move/from16 v19, v2

    .line 223
    .end local v1  # "xA":I
    .end local v2  # "xB":I
    .end local v9  # "i":I
    .restart local v17  # "xA":I
    .restart local v19  # "xB":I
    move/from16 v1, p3

    .line 224
    .local v1, "C":I
    const/4 v2, 0x0

    .line 225
    .local v2, "bit":I
    const/4 v6, 0x0

    .line 226
    .local v6, "x1":I
    add-int/lit8 v9, p4, -0x1

    .line 228
    .local v9, "x2":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_f9
    move/from16 v11, p6

    if-ge v10, v11, :cond_17e

    .line 229
    iget-object v12, v0, Lcom/jcraft/jorbis/Mdct;->bitrev:[I

    add-int/lit8 v13, v2, 0x1

    .end local v2  # "bit":I
    .local v13, "bit":I
    aget v2, v12, v2

    .line 230
    .local v2, "t1":I
    iget-object v12, v0, Lcom/jcraft/jorbis/Mdct;->bitrev:[I

    add-int/lit8 v14, v13, 0x1

    .end local v13  # "bit":I
    .local v14, "bit":I
    aget v12, v12, v13

    .line 232
    .local v12, "t2":I
    aget v13, v4, v2

    add-int/lit8 v15, v12, 0x1

    aget v15, v4, v15

    sub-float/2addr v13, v15

    .line 233
    .local v13, "wA":F
    add-int/lit8 v15, v2, -0x1

    aget v15, v4, v15

    aget v16, v4, v12

    add-float v15, v15, v16

    .line 234
    .local v15, "wB":F
    aget v16, v4, v2

    add-int/lit8 v18, v12, 0x1

    aget v18, v4, v18

    add-float v16, v16, v18

    .line 235
    .local v16, "wC":F
    add-int/lit8 v18, v2, -0x1

    aget v18, v4, v18

    aget v20, v4, v12

    move/from16 p1, v2

    .end local v2  # "t1":I
    .local p1, "t1":I
    sub-float v2, v18, v20

    .line 237
    .local v2, "wD":F
    move-object/from16 p2, v4

    .end local v4  # "w":[F
    .restart local p2  # "w":[F
    iget-object v4, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    aget v4, v4, v1

    mul-float/2addr v4, v13

    .line 238
    .local v4, "wACE":F
    move/from16 v18, v5

    .end local v5  # "w2":I
    .local v18, "w2":I
    iget-object v5, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    add-int/lit8 v20, v1, 0x1

    .end local v1  # "C":I
    .local v20, "C":I
    aget v1, v5, v1

    mul-float/2addr v1, v15

    .line 239
    .local v1, "wBCE":F
    iget-object v5, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    aget v5, v5, v20

    mul-float/2addr v5, v13

    .line 240
    .local v5, "wACO":F
    iget-object v7, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    add-int/lit8 v21, v20, 0x1

    .end local v20  # "C":I
    .local v21, "C":I
    aget v7, v7, v20

    mul-float/2addr v7, v15

    .line 242
    .local v7, "wBCO":F
    add-int/lit8 v20, v6, 0x1

    .end local v6  # "x1":I
    .local v20, "x1":I
    add-float v22, v16, v5

    add-float v22, v22, v1

    const/high16 v23, 0x3f000000  # 0.5f

    mul-float v22, v22, v23

    aput v22, v3, v6

    .line 243
    add-int/lit8 v6, v9, -0x1

    .end local v9  # "x2":I
    .local v6, "x2":I
    neg-float v0, v2

    add-float/2addr v0, v7

    sub-float/2addr v0, v4

    mul-float v0, v0, v23

    aput v0, v3, v9

    .line 244
    add-int/lit8 v0, v20, 0x1

    .end local v20  # "x1":I
    .local v0, "x1":I
    add-float v9, v2, v7

    sub-float/2addr v9, v4

    mul-float v9, v9, v23

    aput v9, v3, v20

    .line 245
    add-int/lit8 v9, v6, -0x1

    .end local v6  # "x2":I
    .restart local v9  # "x2":I
    sub-float v20, v16, v5

    sub-float v20, v20, v1

    mul-float v20, v20, v23

    aput v20, v3, v6

    .line 228
    .end local v1  # "wBCE":F
    .end local v2  # "wD":F
    .end local v4  # "wACE":F
    .end local v5  # "wACO":F
    .end local v7  # "wBCO":F
    .end local v12  # "t2":I
    .end local v13  # "wA":F
    .end local v15  # "wB":F
    .end local v16  # "wC":F
    .end local p1  # "t1":I
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, p2

    move/from16 v7, p5

    move v6, v0

    move v2, v14

    move/from16 v5, v18

    move/from16 v1, v21

    move-object/from16 v0, p0

    goto/16 :goto_f9

    .line 248
    .end local v0  # "x1":I
    .end local v9  # "x2":I
    .end local v10  # "i":I
    .end local v14  # "bit":I
    .end local v18  # "w2":I
    .end local v21  # "C":I
    .end local p2  # "w":[F
    .local v4, "w":[F
    .local v5, "w2":I
    :cond_17e
    return-object v3
.end method


# virtual methods
.method declared-synchronized backward([F[F)V
    .registers 22
    .param p1, "in"  # [F
    .param p2, "out"  # [F

    move-object/from16 v8, p0

    monitor-enter p0

    .line 90
    :try_start_3
    iget-object v0, v8, Lcom/jcraft/jorbis/Mdct;->_x:[F

    array-length v0, v0

    iget v1, v8, Lcom/jcraft/jorbis/Mdct;->n:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_14

    .line 91
    iget v0, v8, Lcom/jcraft/jorbis/Mdct;->n:I

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, v8, Lcom/jcraft/jorbis/Mdct;->_x:[F

    .line 93
    .end local p0  # "this":Lcom/jcraft/jorbis/Mdct;
    :cond_14
    iget-object v0, v8, Lcom/jcraft/jorbis/Mdct;->_w:[F

    array-length v0, v0

    iget v1, v8, Lcom/jcraft/jorbis/Mdct;->n:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_25

    .line 94
    iget v0, v8, Lcom/jcraft/jorbis/Mdct;->n:I

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, v8, Lcom/jcraft/jorbis/Mdct;->_w:[F

    .line 96
    :cond_25
    iget-object v0, v8, Lcom/jcraft/jorbis/Mdct;->_x:[F

    .line 97
    .local v0, "x":[F
    iget-object v3, v8, Lcom/jcraft/jorbis/Mdct;->_w:[F

    .line 98
    .local v3, "w":[F
    iget v1, v8, Lcom/jcraft/jorbis/Mdct;->n:I

    ushr-int/lit8 v9, v1, 0x1

    .line 99
    .local v9, "n2":I
    iget v1, v8, Lcom/jcraft/jorbis/Mdct;->n:I

    ushr-int/lit8 v10, v1, 0x2

    .line 100
    .local v10, "n4":I
    iget v1, v8, Lcom/jcraft/jorbis/Mdct;->n:I

    ushr-int/lit8 v11, v1, 0x3

    .line 104
    .local v11, "n8":I
    const/4 v1, 0x1

    .line 105
    .local v1, "inO":I
    const/4 v2, 0x0

    .line 106
    .local v2, "xO":I
    move v4, v9

    .line 109
    .local v4, "A":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_39
    if-ge v5, v11, :cond_71

    .line 110
    add-int/lit8 v4, v4, -0x2

    .line 111
    add-int/lit8 v6, v2, 0x1

    .end local v2  # "xO":I
    .local v6, "xO":I
    add-int/lit8 v7, v1, 0x2

    aget v7, p1, v7

    neg-float v7, v7

    iget-object v12, v8, Lcom/jcraft/jorbis/Mdct;->trig:[F

    add-int/lit8 v13, v4, 0x1

    aget v12, v12, v13

    mul-float/2addr v7, v12

    aget v12, p1, v1

    iget-object v13, v8, Lcom/jcraft/jorbis/Mdct;->trig:[F

    aget v13, v13, v4

    mul-float/2addr v12, v13

    sub-float/2addr v7, v12

    aput v7, v0, v2

    .line 112
    add-int/lit8 v2, v6, 0x1

    .end local v6  # "xO":I
    .restart local v2  # "xO":I
    aget v7, p1, v1

    iget-object v12, v8, Lcom/jcraft/jorbis/Mdct;->trig:[F

    add-int/lit8 v13, v4, 0x1

    aget v12, v12, v13

    mul-float/2addr v7, v12

    add-int/lit8 v12, v1, 0x2

    aget v12, p1, v12

    iget-object v13, v8, Lcom/jcraft/jorbis/Mdct;->trig:[F

    aget v13, v13, v4

    mul-float/2addr v12, v13

    sub-float/2addr v7, v12

    aput v7, v0, v6

    .line 113
    add-int/lit8 v1, v1, 0x4

    .line 109
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 116
    :cond_71
    add-int/lit8 v1, v9, -0x4

    .line 118
    const/4 v5, 0x0

    :goto_74
    if-ge v5, v11, :cond_ab

    .line 119
    add-int/lit8 v4, v4, -0x2

    .line 120
    add-int/lit8 v6, v2, 0x1

    .end local v2  # "xO":I
    .restart local v6  # "xO":I
    aget v7, p1, v1

    iget-object v12, v8, Lcom/jcraft/jorbis/Mdct;->trig:[F

    add-int/lit8 v13, v4, 0x1

    aget v12, v12, v13

    mul-float/2addr v7, v12

    add-int/lit8 v12, v1, 0x2

    aget v12, p1, v12

    iget-object v13, v8, Lcom/jcraft/jorbis/Mdct;->trig:[F

    aget v13, v13, v4

    mul-float/2addr v12, v13

    add-float/2addr v7, v12

    aput v7, v0, v2

    .line 121
    add-int/lit8 v2, v6, 0x1

    .end local v6  # "xO":I
    .restart local v2  # "xO":I
    aget v7, p1, v1

    iget-object v12, v8, Lcom/jcraft/jorbis/Mdct;->trig:[F

    aget v12, v12, v4

    mul-float/2addr v7, v12

    add-int/lit8 v12, v1, 0x2

    aget v12, p1, v12

    iget-object v13, v8, Lcom/jcraft/jorbis/Mdct;->trig:[F

    add-int/lit8 v14, v4, 0x1

    aget v13, v13, v14

    mul-float/2addr v12, v13

    sub-float/2addr v7, v12

    aput v7, v0, v6

    .line 122
    add-int/lit8 v1, v1, -0x4

    .line 118
    add-int/lit8 v5, v5, 0x1

    goto :goto_74

    .line 126
    .end local v1  # "inO":I
    .end local v2  # "xO":I
    .end local v4  # "A":I
    .end local v5  # "i":I
    :cond_ab
    iget v4, v8, Lcom/jcraft/jorbis/Mdct;->n:I

    move-object/from16 v1, p0

    move-object v2, v0

    move v5, v9

    move v6, v10

    move v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/jcraft/jorbis/Mdct;->mdct_kernel([F[FIIII)[F

    move-result-object v1

    .line 127
    .local v1, "xxx":[F
    const/4 v2, 0x0

    .line 132
    .local v2, "xx":I
    move v4, v9

    .line 133
    .local v4, "B":I
    move v5, v10

    .local v5, "o1":I
    add-int/lit8 v6, v5, -0x1

    .line 134
    .local v6, "o2":I
    add-int v7, v10, v9

    .local v7, "o3":I
    add-int/lit8 v12, v7, -0x1

    .line 136
    .local v12, "o4":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_c1
    if-ge v13, v10, :cond_10b

    .line 137
    aget v14, v1, v2

    iget-object v15, v8, Lcom/jcraft/jorbis/Mdct;->trig:[F

    add-int/lit8 v16, v4, 0x1

    aget v15, v15, v16

    mul-float/2addr v14, v15

    add-int/lit8 v15, v2, 0x1

    aget v15, v1, v15

    move-object/from16 v16, v0

    .end local v0  # "x":[F
    .local v16, "x":[F
    iget-object v0, v8, Lcom/jcraft/jorbis/Mdct;->trig:[F

    aget v0, v0, v4

    mul-float/2addr v15, v0

    sub-float/2addr v14, v15

    .line 138
    .local v14, "temp1":F
    aget v0, v1, v2

    iget-object v15, v8, Lcom/jcraft/jorbis/Mdct;->trig:[F

    aget v15, v15, v4

    mul-float/2addr v0, v15

    add-int/lit8 v15, v2, 0x1

    aget v15, v1, v15

    move-object/from16 v17, v1

    .end local v1  # "xxx":[F
    .local v17, "xxx":[F
    iget-object v1, v8, Lcom/jcraft/jorbis/Mdct;->trig:[F

    add-int/lit8 v18, v4, 0x1

    aget v1, v1, v18

    mul-float/2addr v15, v1

    add-float/2addr v0, v15

    neg-float v0, v0

    .line 140
    .local v0, "temp2":F
    neg-float v1, v14

    aput v1, p2, v5

    .line 141
    aput v14, p2, v6

    .line 142
    aput v0, p2, v7

    .line 143
    aput v0, p2, v12
    :try_end_f7
    .catchall {:try_start_3 .. :try_end_f7} :catchall_10d

    .line 145
    add-int/lit8 v5, v5, 0x1

    .line 146
    add-int/lit8 v6, v6, -0x1

    .line 147
    add-int/lit8 v7, v7, 0x1

    .line 148
    add-int/lit8 v12, v12, -0x1

    .line 149
    add-int/lit8 v2, v2, 0x2

    .line 150
    nop

    .end local v0  # "temp2":F
    .end local v14  # "temp1":F
    add-int/lit8 v4, v4, 0x2

    .line 136
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    goto :goto_c1

    .line 153
    .end local v4  # "B":I
    .end local v5  # "o1":I
    .end local v6  # "o2":I
    .end local v7  # "o3":I
    .end local v12  # "o4":I
    .end local v13  # "i":I
    .end local v16  # "x":[F
    .end local v17  # "xxx":[F
    .local v0, "x":[F
    .restart local v1  # "xxx":[F
    :cond_10b
    monitor-exit p0

    return-void

    .line 89
    .end local v0  # "x":[F
    .end local v1  # "xxx":[F
    .end local v2  # "xx":I
    .end local v3  # "w":[F
    .end local v9  # "n2":I
    .end local v10  # "n4":I
    .end local v11  # "n8":I
    .end local p1  # "in":[F
    .end local p2  # "out":[F
    :catchall_10d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method clear()V
    .registers 1

    .line 81
    return-void
.end method

.method forward([F[F)V
    .registers 3
    .param p1, "in"  # [F
    .param p2, "out"  # [F

    .line 84
    return-void
.end method

.method init(I)V
    .registers 18
    .param p1, "n"  # I

    .line 40
    move-object/from16 v0, p0

    move/from16 v1, p1

    div-int/lit8 v2, v1, 0x4

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/jcraft/jorbis/Mdct;->bitrev:[I

    .line 41
    div-int/lit8 v2, v1, 0x4

    add-int/2addr v2, v1

    new-array v2, v2, [F

    iput-object v2, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    .line 43
    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Lcom/jcraft/jorbis/Mdct;->log2n:I

    .line 44
    iput v1, v0, Lcom/jcraft/jorbis/Mdct;->n:I

    .line 46
    const/4 v2, 0x0

    .line 47
    .local v2, "AE":I
    const/4 v3, 0x1

    .line 48
    .local v3, "AO":I
    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v2

    .line 49
    .local v4, "BE":I
    add-int/lit8 v5, v4, 0x1

    .line 50
    .local v5, "BO":I
    div-int/lit8 v6, v1, 0x2

    add-int/2addr v6, v4

    .line 51
    .local v6, "CE":I
    add-int/lit8 v7, v6, 0x1

    .line 53
    .local v7, "CO":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_33
    div-int/lit8 v9, v1, 0x4

    const-wide v10, 0x400921fb54442d18L  # Math.PI

    if-ge v8, v9, :cond_a3

    .line 54
    iget-object v9, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    mul-int/lit8 v13, v8, 0x2

    add-int/2addr v13, v2

    int-to-double v14, v1

    div-double v14, v10, v14

    mul-int/lit8 v12, v8, 0x4

    int-to-double v10, v12

    mul-double/2addr v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    aput v10, v9, v13

    .line 55
    iget-object v9, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    mul-int/lit8 v10, v8, 0x2

    add-int/2addr v10, v3

    int-to-double v11, v1

    const-wide v13, 0x400921fb54442d18L  # Math.PI

    div-double v11, v13, v11

    mul-int/lit8 v13, v8, 0x4

    int-to-double v13, v13

    mul-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    neg-double v11, v11

    double-to-float v11, v11

    aput v11, v9, v10

    .line 56
    iget-object v9, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    mul-int/lit8 v10, v8, 0x2

    add-int/2addr v10, v4

    mul-int/lit8 v11, v1, 0x2

    int-to-double v11, v11

    const-wide v13, 0x400921fb54442d18L  # Math.PI

    div-double v11, v13, v11

    mul-int/lit8 v13, v8, 0x2

    const/4 v14, 0x1

    add-int/2addr v13, v14

    int-to-double v13, v13

    mul-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    aput v11, v9, v10

    .line 57
    iget-object v9, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    mul-int/lit8 v10, v8, 0x2

    add-int/2addr v10, v5

    mul-int/lit8 v11, v1, 0x2

    int-to-double v11, v11

    const-wide v13, 0x400921fb54442d18L  # Math.PI

    div-double v11, v13, v11

    mul-int/lit8 v13, v8, 0x2

    const/4 v14, 0x1

    add-int/2addr v13, v14

    int-to-double v13, v13

    mul-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    aput v11, v9, v10

    .line 53
    add-int/lit8 v8, v8, 0x1

    goto :goto_33

    .line 59
    .end local v8  # "i":I
    :cond_a3
    const/4 v8, 0x0

    .restart local v8  # "i":I
    :goto_a4
    div-int/lit8 v9, v1, 0x8

    if-ge v8, v9, :cond_e0

    .line 60
    iget-object v9, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    mul-int/lit8 v10, v8, 0x2

    add-int/2addr v10, v6

    int-to-double v11, v1

    const-wide v13, 0x400921fb54442d18L  # Math.PI

    div-double v11, v13, v11

    mul-int/lit8 v13, v8, 0x4

    add-int/lit8 v13, v13, 0x2

    int-to-double v13, v13

    mul-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    aput v11, v9, v10

    .line 61
    iget-object v9, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    mul-int/lit8 v10, v8, 0x2

    add-int/2addr v10, v7

    int-to-double v11, v1

    const-wide v13, 0x400921fb54442d18L  # Math.PI

    div-double v11, v13, v11

    mul-int/lit8 v15, v8, 0x4

    add-int/lit8 v15, v15, 0x2

    int-to-double v13, v15

    mul-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    neg-double v11, v11

    double-to-float v11, v11

    aput v11, v9, v10

    .line 59
    add-int/lit8 v8, v8, 0x1

    goto :goto_a4

    .line 65
    .end local v8  # "i":I
    :cond_e0
    iget v8, v0, Lcom/jcraft/jorbis/Mdct;->log2n:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    shl-int v8, v9, v8

    sub-int/2addr v8, v9

    .line 66
    .local v8, "mask":I
    iget v10, v0, Lcom/jcraft/jorbis/Mdct;->log2n:I

    add-int/lit8 v10, v10, -0x2

    shl-int v10, v9, v10

    .line 67
    .local v10, "msb":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_ee
    div-int/lit8 v11, v1, 0x8

    if-ge v9, v11, :cond_117

    .line 68
    const/4 v11, 0x0

    .line 69
    .local v11, "acc":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_f4
    ushr-int v13, v10, v12

    if-eqz v13, :cond_104

    .line 70
    ushr-int v13, v10, v12

    and-int/2addr v13, v9

    if-eqz v13, :cond_101

    .line 71
    const/4 v13, 0x1

    shl-int v14, v13, v12

    or-int/2addr v11, v14

    .line 69
    :cond_101
    add-int/lit8 v12, v12, 0x1

    goto :goto_f4

    .line 72
    .end local v12  # "j":I
    :cond_104
    iget-object v12, v0, Lcom/jcraft/jorbis/Mdct;->bitrev:[I

    mul-int/lit8 v13, v9, 0x2

    not-int v14, v11

    and-int/2addr v14, v8

    aput v14, v12, v13

    .line 74
    iget-object v12, v0, Lcom/jcraft/jorbis/Mdct;->bitrev:[I

    mul-int/lit8 v13, v9, 0x2

    const/4 v14, 0x1

    add-int/2addr v13, v14

    aput v11, v12, v13

    .line 67
    .end local v11  # "acc":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_ee

    .line 77
    .end local v8  # "mask":I
    .end local v9  # "i":I
    .end local v10  # "msb":I
    :cond_117
    const/high16 v8, 0x40800000  # 4.0f

    int-to-float v9, v1

    div-float/2addr v8, v9

    iput v8, v0, Lcom/jcraft/jorbis/Mdct;->scale:F

    .line 78
    return-void
.end method
