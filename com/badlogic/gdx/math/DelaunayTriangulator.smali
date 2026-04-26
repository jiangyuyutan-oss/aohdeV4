.class public Lcom/badlogic/gdx/math/DelaunayTriangulator;
.super Ljava/lang/Object;
.source "DelaunayTriangulator.java"


# static fields
.field private static final COMPLETE:I = 0x1

.field private static final EPSILON:F = 1.0E-6f

.field private static final INCOMPLETE:I = 0x2

.field private static final INSIDE:I


# instance fields
.field private final centroid:Lcom/badlogic/gdx/math/Vector2;

.field private final complete:Lcom/badlogic/gdx/utils/BooleanArray;

.field private final edges:Lcom/badlogic/gdx/utils/IntArray;

.field private final originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

.field private final quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

.field private sortedPoints:[F

.field private final superTriangle:[F

.field private final triangles:Lcom/badlogic/gdx/utils/ShortArray;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

    .line 34
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/ShortArray;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->triangles:Lcom/badlogic/gdx/utils/ShortArray;

    .line 35
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/utils/ShortArray;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    .line 36
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->edges:Lcom/badlogic/gdx/utils/IntArray;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/utils/BooleanArray;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->complete:Lcom/badlogic/gdx/utils/BooleanArray;

    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->superTriangle:[F

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->centroid:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method private circumCircle(FFFFFFFF)I
    .registers 21
    .param p1, "xp"  # F
    .param p2, "yp"  # F
    .param p3, "x1"  # F
    .param p4, "y1"  # F
    .param p5, "x2"  # F
    .param p6, "y2"  # F
    .param p7, "x3"  # F
    .param p8, "y3"  # F

    .line 223
    sub-float v0, p4, p6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 224
    .local v0, "y1y2":F
    sub-float v1, p6, p8

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 225
    .local v1, "y2y3":F
    const v2, 0x358637bd  # 1.0E-6f

    cmpg-float v3, v0, v2

    const/4 v4, 0x2

    const/high16 v5, 0x40000000  # 2.0f

    if-gez v3, :cond_2f

    .line 226
    cmpg-float v3, v1, v2

    if-gez v3, :cond_1b

    return v4

    .line 227
    :cond_1b
    sub-float v3, p7, p5

    neg-float v3, v3

    sub-float v6, p8, p6

    div-float/2addr v3, v6

    .line 228
    .local v3, "m2":F
    add-float v6, p5, p7

    div-float/2addr v6, v5

    .line 229
    .local v6, "mx2":F
    add-float v7, p6, p8

    div-float/2addr v7, v5

    .line 230
    .local v7, "my2":F
    add-float v8, p5, p3

    div-float/2addr v8, v5

    .line 231
    .local v8, "xc":F
    sub-float v5, v8, v6

    mul-float/2addr v5, v3

    add-float/2addr v5, v7

    .line 232
    .end local v3  # "m2":F
    .end local v6  # "mx2":F
    .end local v7  # "my2":F
    .local v5, "yc":F
    goto :goto_63

    .line 233
    .end local v5  # "yc":F
    .end local v8  # "xc":F
    :cond_2f
    sub-float v3, p5, p3

    neg-float v3, v3

    sub-float v6, p6, p4

    div-float/2addr v3, v6

    .line 234
    .local v3, "m1":F
    add-float v6, p3, p5

    div-float/2addr v6, v5

    .line 235
    .local v6, "mx1":F
    add-float v7, p4, p6

    div-float/2addr v7, v5

    .line 236
    .local v7, "my1":F
    cmpg-float v8, v1, v2

    if-gez v8, :cond_47

    .line 237
    add-float v8, p7, p5

    div-float/2addr v8, v5

    .line 238
    .restart local v8  # "xc":F
    sub-float v5, v8, v6

    mul-float/2addr v5, v3

    add-float/2addr v5, v7

    .restart local v5  # "yc":F
    goto :goto_63

    .line 240
    .end local v5  # "yc":F
    .end local v8  # "xc":F
    :cond_47
    sub-float v8, p7, p5

    neg-float v8, v8

    sub-float v9, p8, p6

    div-float/2addr v8, v9

    .line 241
    .local v8, "m2":F
    add-float v9, p5, p7

    div-float/2addr v9, v5

    .line 242
    .local v9, "mx2":F
    add-float v10, p6, p8

    div-float/2addr v10, v5

    .line 243
    .local v10, "my2":F
    mul-float v5, v3, v6

    mul-float v11, v8, v9

    sub-float/2addr v5, v11

    add-float/2addr v5, v10

    sub-float/2addr v5, v7

    sub-float v11, v3, v8

    div-float/2addr v5, v11

    .line 244
    .local v5, "xc":F
    sub-float v11, v5, v6

    mul-float/2addr v11, v3

    add-float/2addr v11, v7

    move v8, v5

    move v5, v11

    .line 248
    .end local v3  # "m1":F
    .end local v6  # "mx1":F
    .end local v7  # "my1":F
    .end local v9  # "mx2":F
    .end local v10  # "my2":F
    .local v5, "yc":F
    .local v8, "xc":F
    :goto_63
    sub-float v3, p5, v8

    .line 249
    .local v3, "dx":F
    sub-float v6, p6, v5

    .line 250
    .local v6, "dy":F
    mul-float v7, v3, v3

    mul-float v9, v6, v6

    add-float/2addr v7, v9

    .line 252
    .local v7, "rsqr":F
    sub-float v3, p1, v8

    .line 253
    mul-float/2addr v3, v3

    .line 254
    sub-float v6, p2, v5

    .line 255
    mul-float v9, v6, v6

    add-float/2addr v9, v3

    sub-float/2addr v9, v7

    cmpg-float v2, v9, v2

    if-gtz v2, :cond_7b

    const/4 v2, 0x0

    return v2

    .line 256
    :cond_7b
    cmpl-float v2, p1, v8

    if-lez v2, :cond_84

    cmpl-float v2, v3, v7

    if-lez v2, :cond_84

    const/4 v4, 0x1

    :cond_84
    return v4
.end method

.method private quicksortPartition([FII[S)I
    .registers 12
    .param p1, "values"  # [F
    .param p2, "lower"  # I
    .param p3, "upper"  # I
    .param p4, "originalIndices"  # [S

    .line 293
    aget v0, p1, p2

    .line 294
    .local v0, "value":F
    move v1, p3

    .line 295
    .local v1, "up":I
    add-int/lit8 v2, p2, 0x2

    .line 298
    .local v2, "down":I
    :cond_5
    :goto_5
    if-ge v2, v1, :cond_46

    .line 299
    :goto_7
    if-ge v2, v1, :cond_12

    aget v3, p1, v2

    cmpg-float v3, v3, v0

    if-gtz v3, :cond_12

    .line 300
    add-int/lit8 v2, v2, 0x2

    goto :goto_7

    .line 301
    :cond_12
    :goto_12
    aget v3, p1, v1

    cmpl-float v3, v3, v0

    if-lez v3, :cond_1b

    .line 302
    add-int/lit8 v1, v1, -0x2

    goto :goto_12

    .line 303
    :cond_1b
    if-ge v2, v1, :cond_5

    .line 304
    aget v3, p1, v2

    .line 305
    .local v3, "tempValue":F
    aget v4, p1, v1

    aput v4, p1, v2

    .line 306
    aput v3, p1, v1

    .line 308
    add-int/lit8 v4, v2, 0x1

    aget v3, p1, v4

    .line 309
    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v1, 0x1

    aget v5, p1, v5

    aput v5, p1, v4

    .line 310
    add-int/lit8 v4, v1, 0x1

    aput v3, p1, v4

    .line 312
    div-int/lit8 v4, v2, 0x2

    aget-short v4, p4, v4

    .line 313
    .local v4, "tempIndex":S
    div-int/lit8 v5, v2, 0x2

    div-int/lit8 v6, v1, 0x2

    aget-short v6, p4, v6

    aput-short v6, p4, v5

    .line 314
    div-int/lit8 v5, v1, 0x2

    aput-short v4, p4, v5

    goto :goto_5

    .line 317
    .end local v3  # "tempValue":F
    .end local v4  # "tempIndex":S
    :cond_46
    aget v3, p1, v1

    cmpl-float v3, v0, v3

    if-lez v3, :cond_72

    .line 318
    aget v3, p1, v1

    aput v3, p1, p2

    .line 319
    aput v0, p1, v1

    .line 321
    add-int/lit8 v3, p2, 0x1

    aget v3, p1, v3

    .line 322
    .restart local v3  # "tempValue":F
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, v1, 0x1

    aget v5, p1, v5

    aput v5, p1, v4

    .line 323
    add-int/lit8 v4, v1, 0x1

    aput v3, p1, v4

    .line 325
    div-int/lit8 v4, p2, 0x2

    aget-short v4, p4, v4

    .line 326
    .restart local v4  # "tempIndex":S
    div-int/lit8 v5, p2, 0x2

    div-int/lit8 v6, v1, 0x2

    aget-short v6, p4, v6

    aput-short v6, p4, v5

    .line 327
    div-int/lit8 v5, v1, 0x2

    aput-short v4, p4, v5

    .line 329
    .end local v3  # "tempValue":F
    .end local v4  # "tempIndex":S
    :cond_72
    return v1
.end method

.method private sort([FI)V
    .registers 11
    .param p1, "values"  # [F
    .param p2, "count"  # I

    .line 262
    div-int/lit8 v0, p2, 0x2

    .line 263
    .local v0, "pointCount":I
    iget-object v1, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 264
    iget-object v1, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    .line 265
    iget-object v1, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 266
    .local v1, "originalIndicesArray":[S
    const/4 v2, 0x0

    .local v2, "i":S
    :goto_11
    if-ge v2, v0, :cond_19

    .line 267
    aput-short v2, v1, v2

    .line 266
    add-int/lit8 v3, v2, 0x1

    int-to-short v2, v3

    goto :goto_11

    .line 269
    .end local v2  # "i":S
    :cond_19
    const/4 v2, 0x0

    .line 270
    .local v2, "lower":I
    add-int/lit8 v3, p2, -0x1

    .line 271
    .local v3, "upper":I
    iget-object v4, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

    .line 272
    .local v4, "stack":Lcom/badlogic/gdx/utils/IntArray;
    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 273
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 274
    :goto_26
    iget v5, v4, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lez v5, :cond_5e

    .line 275
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result v3

    .line 276
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result v2

    .line 277
    if-gt v3, v2, :cond_35

    goto :goto_26

    .line 278
    :cond_35
    invoke-direct {p0, p1, v2, v3, v1}, Lcom/badlogic/gdx/math/DelaunayTriangulator;->quicksortPartition([FII[S)I

    move-result v5

    .line 279
    .local v5, "i":I
    sub-int v6, v5, v2

    sub-int v7, v3, v5

    if-le v6, v7, :cond_47

    .line 280
    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 281
    add-int/lit8 v6, v5, -0x2

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 283
    :cond_47
    add-int/lit8 v6, v5, 0x2

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 284
    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 285
    sub-int v6, v3, v5

    sub-int v7, v5, v2

    if-lt v6, v7, :cond_5d

    .line 286
    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 287
    add-int/lit8 v6, v5, -0x2

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 289
    .end local v5  # "i":I
    :cond_5d
    goto :goto_26

    .line 290
    :cond_5e
    return-void
.end method


# virtual methods
.method public computeTriangles(Lcom/badlogic/gdx/utils/FloatArray;Z)Lcom/badlogic/gdx/utils/ShortArray;
    .registers 6
    .param p1, "points"  # Lcom/badlogic/gdx/utils/FloatArray;
    .param p2, "sorted"  # Z

    .line 43
    iget-object v0, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/badlogic/gdx/math/DelaunayTriangulator;->computeTriangles([FIIZ)Lcom/badlogic/gdx/utils/ShortArray;

    move-result-object v0

    return-object v0
.end method

.method public computeTriangles([FIIZ)Lcom/badlogic/gdx/utils/ShortArray;
    .registers 46
    .param p1, "points"  # [F
    .param p2, "offset"  # I
    .param p3, "count"  # I
    .param p4, "sorted"  # Z

    .line 59
    move-object/from16 v9, p0

    move/from16 v10, p3

    const/16 v0, 0x7fff

    if-gt v10, v0, :cond_283

    .line 60
    iget-object v11, v9, Lcom/badlogic/gdx/math/DelaunayTriangulator;->triangles:Lcom/badlogic/gdx/utils/ShortArray;

    .line 61
    .local v11, "triangles":Lcom/badlogic/gdx/utils/ShortArray;
    invoke-virtual {v11}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 62
    const/4 v0, 0x6

    if-ge v10, v0, :cond_11

    return-object v11

    .line 63
    :cond_11
    invoke-virtual {v11, v10}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    .line 65
    const/4 v12, 0x0

    if-nez p4, :cond_36

    .line 66
    iget-object v0, v9, Lcom/badlogic/gdx/math/DelaunayTriangulator;->sortedPoints:[F

    if-eqz v0, :cond_20

    iget-object v0, v9, Lcom/badlogic/gdx/math/DelaunayTriangulator;->sortedPoints:[F

    array-length v0, v0

    if-ge v0, v10, :cond_24

    :cond_20
    new-array v0, v10, [F

    iput-object v0, v9, Lcom/badlogic/gdx/math/DelaunayTriangulator;->sortedPoints:[F

    .line 67
    :cond_24
    iget-object v0, v9, Lcom/badlogic/gdx/math/DelaunayTriangulator;->sortedPoints:[F

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v1, v2, v0, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget-object v0, v9, Lcom/badlogic/gdx/math/DelaunayTriangulator;->sortedPoints:[F

    .line 69
    .end local p1  # "points":[F
    .local v0, "points":[F
    const/4 v1, 0x0

    .line 70
    .end local p2  # "offset":I
    .local v1, "offset":I
    invoke-direct {v9, v0, v10}, Lcom/badlogic/gdx/math/DelaunayTriangulator;->sort([FI)V

    move-object v13, v0

    move v14, v1

    goto :goto_3c

    .line 65
    .end local v0  # "points":[F
    .end local v1  # "offset":I
    .restart local p1  # "points":[F
    .restart local p2  # "offset":I
    :cond_36
    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v13, v1

    move v14, v2

    .line 73
    .end local p1  # "points":[F
    .end local p2  # "offset":I
    .local v13, "points":[F
    .local v14, "offset":I
    :goto_3c
    add-int v15, v14, v10

    .line 76
    .local v15, "end":I
    aget v0, v13, v12

    .local v0, "xmin":F
    const/16 v16, 0x1

    aget v1, v13, v16

    .line 77
    .local v1, "ymin":F
    move v2, v0

    .local v2, "xmax":F
    move v3, v1

    .line 78
    .local v3, "ymax":F
    add-int/lit8 v4, v14, 0x2

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    .end local v0  # "xmin":F
    .end local v1  # "ymin":F
    .end local v2  # "xmax":F
    .end local v3  # "ymax":F
    .local v4, "i":I
    .local v17, "xmin":F
    .local v18, "ymin":F
    .local v19, "xmax":F
    .local v20, "ymax":F
    :goto_50
    if-ge v4, v15, :cond_77

    .line 79
    aget v0, v13, v4

    .line 80
    .local v0, "value":F
    cmpg-float v1, v0, v17

    if-gez v1, :cond_5b

    move v1, v0

    move/from16 v17, v1

    .line 81
    :cond_5b
    cmpl-float v1, v0, v19

    if-lez v1, :cond_62

    move v1, v0

    move/from16 v19, v1

    .line 82
    :cond_62
    add-int/lit8 v4, v4, 0x1

    .line 83
    aget v0, v13, v4

    .line 84
    cmpg-float v1, v0, v18

    if-gez v1, :cond_6d

    move v1, v0

    move/from16 v18, v1

    .line 85
    :cond_6d
    cmpl-float v1, v0, v20

    if-lez v1, :cond_74

    move v1, v0

    move/from16 v20, v1

    .line 78
    .end local v0  # "value":F
    :cond_74
    add-int/lit8 v4, v4, 0x1

    goto :goto_50

    .line 87
    .end local v4  # "i":I
    :cond_77
    sub-float v21, v19, v17

    .local v21, "dx":F
    sub-float v22, v20, v18

    .line 88
    .local v22, "dy":F
    cmpl-float v0, v21, v22

    if-lez v0, :cond_82

    move/from16 v0, v21

    goto :goto_84

    :cond_82
    move/from16 v0, v22

    :goto_84
    const/high16 v1, 0x41a00000  # 20.0f

    mul-float v23, v0, v1

    .line 89
    .local v23, "dmax":F
    add-float v0, v19, v17

    const/high16 v1, 0x40000000  # 2.0f

    div-float v24, v0, v1

    .local v24, "xmid":F
    add-float v0, v20, v18

    div-float v25, v0, v1

    .line 92
    .local v25, "ymid":F
    iget-object v8, v9, Lcom/badlogic/gdx/math/DelaunayTriangulator;->superTriangle:[F

    .line 93
    .local v8, "superTriangle":[F
    sub-float v0, v24, v23

    aput v0, v8, v12

    .line 94
    sub-float v0, v25, v23

    aput v0, v8, v16

    .line 95
    const/16 v26, 0x2

    aput v24, v8, v26

    .line 96
    add-float v0, v25, v23

    const/4 v1, 0x3

    aput v0, v8, v1

    .line 97
    add-float v0, v24, v23

    const/4 v1, 0x4

    aput v0, v8, v1

    .line 98
    const/4 v0, 0x5

    sub-float v1, v25, v23

    aput v1, v8, v0

    .line 100
    iget-object v7, v9, Lcom/badlogic/gdx/math/DelaunayTriangulator;->edges:Lcom/badlogic/gdx/utils/IntArray;

    .line 101
    .local v7, "edges":Lcom/badlogic/gdx/utils/IntArray;
    div-int/lit8 v0, v10, 0x2

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/IntArray;->ensureCapacity(I)[I

    .line 103
    iget-object v6, v9, Lcom/badlogic/gdx/math/DelaunayTriangulator;->complete:Lcom/badlogic/gdx/utils/BooleanArray;

    .line 104
    .local v6, "complete":Lcom/badlogic/gdx/utils/BooleanArray;
    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/BooleanArray;->clear()V

    .line 105
    invoke-virtual {v6, v10}, Lcom/badlogic/gdx/utils/BooleanArray;->ensureCapacity(I)[Z

    .line 108
    invoke-virtual {v11, v15}, Lcom/badlogic/gdx/utils/ShortArray;->add(I)V

    .line 109
    add-int/lit8 v0, v15, 0x2

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/utils/ShortArray;->add(I)V

    .line 110
    add-int/lit8 v0, v15, 0x4

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/utils/ShortArray;->add(I)V

    .line 111
    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/utils/BooleanArray;->add(Z)V

    .line 114
    move v0, v14

    move v5, v0

    .local v5, "pointIndex":I
    :goto_d0
    if-ge v5, v15, :cond_20a

    .line 115
    aget v27, v13, v5

    .local v27, "x":F
    add-int/lit8 v0, v5, 0x1

    aget v28, v13, v0

    .line 118
    .local v28, "y":F
    iget-object v4, v11, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 119
    .local v4, "trianglesArray":[S
    iget-object v3, v6, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 120
    .local v3, "completeArray":[Z
    iget v0, v11, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    .local v2, "triangleIndex":I
    :goto_e1
    if-ltz v2, :cond_199

    .line 121
    div-int/lit8 v1, v2, 0x3

    .line 122
    .local v1, "completeIndex":I
    aget-boolean v0, v3, v1

    if-eqz v0, :cond_fc

    move v9, v2

    move-object/from16 v35, v3

    move-object/from16 v36, v4

    move/from16 v38, v5

    move-object v0, v6

    move-object/from16 v40, v8

    move-object/from16 p1, v13

    move/from16 p2, v14

    move/from16 v37, v15

    move-object v15, v7

    goto/16 :goto_180

    .line 123
    :cond_fc
    add-int/lit8 v0, v2, -0x2

    aget-short v0, v4, v0

    .line 124
    .local v0, "p1":I
    add-int/lit8 v29, v2, -0x1

    aget-short v12, v4, v29

    .line 125
    .local v12, "p2":I
    aget-short v10, v4, v2

    .line 127
    .local v10, "p3":I
    if-lt v0, v15, :cond_111

    .line 128
    sub-int v29, v0, v15

    .line 129
    .local v29, "i":I
    aget v30, v8, v29

    .line 130
    .local v30, "x1":F
    add-int/lit8 v31, v29, 0x1

    aget v29, v8, v31

    .line 131
    .local v29, "y1":F
    goto :goto_117

    .line 132
    .end local v29  # "y1":F
    .end local v30  # "x1":F
    :cond_111
    aget v30, v13, v0

    .line 133
    .restart local v30  # "x1":F
    add-int/lit8 v29, v0, 0x1

    aget v29, v13, v29

    .line 135
    .restart local v29  # "y1":F
    :goto_117
    if-lt v12, v15, :cond_122

    .line 136
    sub-int v31, v12, v15

    .line 137
    .local v31, "i":I
    aget v32, v8, v31

    .line 138
    .local v32, "x2":F
    add-int/lit8 v33, v31, 0x1

    aget v31, v8, v33

    .line 139
    .local v31, "y2":F
    goto :goto_128

    .line 140
    .end local v31  # "y2":F
    .end local v32  # "x2":F
    :cond_122
    aget v32, v13, v12

    .line 141
    .restart local v32  # "x2":F
    add-int/lit8 v31, v12, 0x1

    aget v31, v13, v31

    .line 143
    .restart local v31  # "y2":F
    :goto_128
    if-lt v10, v15, :cond_133

    .line 144
    sub-int v33, v10, v15

    .line 145
    .local v33, "i":I
    aget v34, v8, v33

    .line 146
    .local v34, "x3":F
    add-int/lit8 v35, v33, 0x1

    aget v33, v8, v35

    .line 147
    .local v33, "y3":F
    goto :goto_139

    .line 148
    .end local v33  # "y3":F
    .end local v34  # "x3":F
    :cond_133
    aget v34, v13, v10

    .line 149
    .restart local v34  # "x3":F
    add-int/lit8 v33, v10, 0x1

    aget v33, v13, v33

    .line 151
    .restart local v33  # "y3":F
    :goto_139
    move-object/from16 p1, v13

    move v13, v0

    .end local v0  # "p1":I
    .local v13, "p1":I
    .restart local p1  # "points":[F
    move-object/from16 v0, p0

    move/from16 p2, v14

    move v14, v1

    .end local v1  # "completeIndex":I
    .local v14, "completeIndex":I
    .restart local p2  # "offset":I
    move/from16 v1, v27

    move v9, v2

    .end local v2  # "triangleIndex":I
    .local v9, "triangleIndex":I
    move/from16 v2, v28

    move-object/from16 v35, v3

    .end local v3  # "completeArray":[Z
    .local v35, "completeArray":[Z
    move/from16 v3, v30

    move-object/from16 v36, v4

    .end local v4  # "trianglesArray":[S
    .local v36, "trianglesArray":[S
    move/from16 v4, v29

    move/from16 v37, v15

    move v15, v5

    .end local v5  # "pointIndex":I
    .local v15, "pointIndex":I
    .local v37, "end":I
    move/from16 v5, v32

    move/from16 v38, v15

    move-object v15, v6

    .end local v6  # "complete":Lcom/badlogic/gdx/utils/BooleanArray;
    .local v15, "complete":Lcom/badlogic/gdx/utils/BooleanArray;
    .local v38, "pointIndex":I
    move/from16 v6, v31

    move-object/from16 v39, v15

    move-object v15, v7

    .end local v7  # "edges":Lcom/badlogic/gdx/utils/IntArray;
    .local v15, "edges":Lcom/badlogic/gdx/utils/IntArray;
    .local v39, "complete":Lcom/badlogic/gdx/utils/BooleanArray;
    move/from16 v7, v34

    move-object/from16 v40, v8

    .end local v8  # "superTriangle":[F
    .local v40, "superTriangle":[F
    move/from16 v8, v33

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/math/DelaunayTriangulator;->circumCircle(FFFFFFFF)I

    move-result v0

    packed-switch v0, :pswitch_data_290

    move-object/from16 v0, v39

    .end local v39  # "complete":Lcom/badlogic/gdx/utils/BooleanArray;
    .local v0, "complete":Lcom/badlogic/gdx/utils/BooleanArray;
    goto :goto_180

    .line 153
    .end local v0  # "complete":Lcom/badlogic/gdx/utils/BooleanArray;
    .restart local v39  # "complete":Lcom/badlogic/gdx/utils/BooleanArray;
    :pswitch_16b  #0x1
    aput-boolean v16, v35, v14

    .line 154
    move-object/from16 v0, v39

    goto :goto_180

    .line 156
    :pswitch_170  #0x0
    invoke-virtual {v15, v13, v12, v12, v10}, Lcom/badlogic/gdx/utils/IntArray;->add(IIII)V

    .line 157
    invoke-virtual {v15, v10, v13}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    .line 159
    add-int/lit8 v2, v9, -0x2

    invoke-virtual {v11, v2, v9}, Lcom/badlogic/gdx/utils/ShortArray;->removeRange(II)V

    .line 160
    move-object/from16 v0, v39

    .end local v39  # "complete":Lcom/badlogic/gdx/utils/BooleanArray;
    .restart local v0  # "complete":Lcom/badlogic/gdx/utils/BooleanArray;
    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/utils/BooleanArray;->removeIndex(I)Z

    .line 120
    .end local v10  # "p3":I
    .end local v12  # "p2":I
    .end local v13  # "p1":I
    .end local v14  # "completeIndex":I
    .end local v29  # "y1":F
    .end local v30  # "x1":F
    .end local v31  # "y2":F
    .end local v32  # "x2":F
    .end local v33  # "y3":F
    .end local v34  # "x3":F
    :goto_180
    add-int/lit8 v2, v9, -0x3

    move-object/from16 v9, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    move/from16 v10, p3

    move-object v6, v0

    move-object v7, v15

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    move/from16 v15, v37

    move/from16 v5, v38

    move-object/from16 v8, v40

    const/4 v12, 0x0

    .end local v9  # "triangleIndex":I
    .restart local v2  # "triangleIndex":I
    goto/16 :goto_e1

    .end local v0  # "complete":Lcom/badlogic/gdx/utils/BooleanArray;
    .end local v35  # "completeArray":[Z
    .end local v36  # "trianglesArray":[S
    .end local v37  # "end":I
    .end local v38  # "pointIndex":I
    .end local v40  # "superTriangle":[F
    .end local p1  # "points":[F
    .end local p2  # "offset":I
    .restart local v3  # "completeArray":[Z
    .restart local v4  # "trianglesArray":[S
    .restart local v5  # "pointIndex":I
    .restart local v6  # "complete":Lcom/badlogic/gdx/utils/BooleanArray;
    .restart local v7  # "edges":Lcom/badlogic/gdx/utils/IntArray;
    .restart local v8  # "superTriangle":[F
    .local v13, "points":[F
    .local v14, "offset":I
    .local v15, "end":I
    :cond_199
    move v9, v2

    move-object/from16 v35, v3

    move-object/from16 v36, v4

    move/from16 v38, v5

    move-object v0, v6

    move-object/from16 v40, v8

    move-object/from16 p1, v13

    move/from16 p2, v14

    move/from16 v37, v15

    move-object v15, v7

    .line 165
    .end local v2  # "triangleIndex":I
    .end local v3  # "completeArray":[Z
    .end local v4  # "trianglesArray":[S
    .end local v5  # "pointIndex":I
    .end local v6  # "complete":Lcom/badlogic/gdx/utils/BooleanArray;
    .end local v7  # "edges":Lcom/badlogic/gdx/utils/IntArray;
    .end local v8  # "superTriangle":[F
    .end local v13  # "points":[F
    .end local v14  # "offset":I
    .restart local v0  # "complete":Lcom/badlogic/gdx/utils/BooleanArray;
    .local v15, "edges":Lcom/badlogic/gdx/utils/IntArray;
    .restart local v35  # "completeArray":[Z
    .restart local v36  # "trianglesArray":[S
    .restart local v37  # "end":I
    .restart local v38  # "pointIndex":I
    .restart local v40  # "superTriangle":[F
    .restart local p1  # "points":[F
    .restart local p2  # "offset":I
    iget-object v1, v15, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 166
    .local v1, "edgesArray":[I
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, v15, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v3, "n":I
    :goto_1af
    if-ge v2, v3, :cond_1f1

    .line 168
    aget v4, v1, v2

    .line 169
    .local v4, "p1":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1ba

    move/from16 v5, v38

    const/4 v8, 0x0

    goto :goto_1ec

    .line 170
    :cond_1ba
    add-int/lit8 v6, v2, 0x1

    aget v6, v1, v6

    .line 171
    .local v6, "p2":I
    const/4 v7, 0x0

    .line 172
    .local v7, "skip":Z
    add-int/lit8 v8, v2, 0x2

    .local v8, "ii":I
    :goto_1c1
    if-ge v8, v3, :cond_1d3

    .line 173
    add-int/lit8 v9, v8, 0x1

    aget v9, v1, v9

    if-ne v4, v9, :cond_1d0

    aget v9, v1, v8

    if-ne v6, v9, :cond_1d0

    .line 174
    const/4 v7, 0x1

    .line 175
    aput v5, v1, v8

    .line 172
    :cond_1d0
    add-int/lit8 v8, v8, 0x2

    goto :goto_1c1

    .line 178
    .end local v8  # "ii":I
    :cond_1d3
    if-eqz v7, :cond_1d9

    move/from16 v5, v38

    const/4 v8, 0x0

    goto :goto_1ec

    .line 181
    :cond_1d9
    invoke-virtual {v11, v4}, Lcom/badlogic/gdx/utils/ShortArray;->add(I)V

    .line 182
    add-int/lit8 v5, v2, 0x1

    aget v5, v1, v5

    invoke-virtual {v11, v5}, Lcom/badlogic/gdx/utils/ShortArray;->add(I)V

    .line 183
    move/from16 v5, v38

    .end local v38  # "pointIndex":I
    .restart local v5  # "pointIndex":I
    invoke-virtual {v11, v5}, Lcom/badlogic/gdx/utils/ShortArray;->add(I)V

    .line 184
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/BooleanArray;->add(Z)V

    .line 166
    .end local v4  # "p1":I
    .end local v6  # "p2":I
    .end local v7  # "skip":Z
    :goto_1ec
    add-int/lit8 v2, v2, 0x2

    move/from16 v38, v5

    goto :goto_1af

    .end local v5  # "pointIndex":I
    .restart local v38  # "pointIndex":I
    :cond_1f1
    move/from16 v5, v38

    const/4 v8, 0x0

    .line 186
    .end local v2  # "i":I
    .end local v3  # "n":I
    .end local v38  # "pointIndex":I
    .restart local v5  # "pointIndex":I
    invoke-virtual {v15}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 114
    .end local v1  # "edgesArray":[I
    .end local v27  # "x":F
    .end local v28  # "y":F
    .end local v35  # "completeArray":[Z
    .end local v36  # "trianglesArray":[S
    add-int/lit8 v5, v5, 0x2

    move-object/from16 v9, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    move/from16 v10, p3

    move-object v6, v0

    move v12, v8

    move-object v7, v15

    move/from16 v15, v37

    move-object/from16 v8, v40

    goto/16 :goto_d0

    .end local v0  # "complete":Lcom/badlogic/gdx/utils/BooleanArray;
    .end local v37  # "end":I
    .end local v40  # "superTriangle":[F
    .end local p1  # "points":[F
    .end local p2  # "offset":I
    .local v6, "complete":Lcom/badlogic/gdx/utils/BooleanArray;
    .local v7, "edges":Lcom/badlogic/gdx/utils/IntArray;
    .local v8, "superTriangle":[F
    .restart local v13  # "points":[F
    .restart local v14  # "offset":I
    .local v15, "end":I
    :cond_20a
    move-object v0, v6

    move-object/from16 v40, v8

    move-object/from16 p1, v13

    move/from16 p2, v14

    move/from16 v37, v15

    move-object v15, v7

    .line 190
    .end local v5  # "pointIndex":I
    .end local v6  # "complete":Lcom/badlogic/gdx/utils/BooleanArray;
    .end local v7  # "edges":Lcom/badlogic/gdx/utils/IntArray;
    .end local v8  # "superTriangle":[F
    .end local v13  # "points":[F
    .end local v14  # "offset":I
    .restart local v0  # "complete":Lcom/badlogic/gdx/utils/BooleanArray;
    .local v15, "edges":Lcom/badlogic/gdx/utils/IntArray;
    .restart local v37  # "end":I
    .restart local v40  # "superTriangle":[F
    .restart local p1  # "points":[F
    .restart local p2  # "offset":I
    iget-object v1, v11, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 191
    .local v1, "trianglesArray":[S
    iget v2, v11, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v2, v2, -0x1

    .restart local v2  # "i":I
    :goto_21a
    if-ltz v2, :cond_240

    .line 192
    aget-short v3, v1, v2

    move/from16 v14, v37

    .end local v37  # "end":I
    .local v14, "end":I
    if-ge v3, v14, :cond_22e

    add-int/lit8 v3, v2, -0x1

    aget-short v3, v1, v3

    if-ge v3, v14, :cond_22e

    add-int/lit8 v3, v2, -0x2

    aget-short v3, v1, v3

    if-lt v3, v14, :cond_23b

    .line 193
    :cond_22e
    invoke-virtual {v11, v2}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    .line 194
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    .line 195
    add-int/lit8 v3, v2, -0x2

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    .line 191
    :cond_23b
    add-int/lit8 v2, v2, -0x3

    move/from16 v37, v14

    goto :goto_21a

    .end local v14  # "end":I
    .restart local v37  # "end":I
    :cond_240
    move/from16 v14, v37

    .line 200
    .end local v2  # "i":I
    .end local v37  # "end":I
    .restart local v14  # "end":I
    if-nez p4, :cond_25d

    .line 201
    move-object/from16 v3, p0

    iget-object v2, v3, Lcom/badlogic/gdx/math/DelaunayTriangulator;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 202
    .local v2, "originalIndicesArray":[S
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, v11, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .local v5, "n":I
    :goto_24d
    if-ge v4, v5, :cond_25f

    .line 203
    aget-short v6, v1, v4

    div-int/lit8 v6, v6, 0x2

    aget-short v6, v2, v6

    mul-int/lit8 v6, v6, 0x2

    int-to-short v6, v6

    aput-short v6, v1, v4

    .line 202
    add-int/lit8 v4, v4, 0x1

    goto :goto_24d

    .line 200
    .end local v2  # "originalIndicesArray":[S
    .end local v4  # "i":I
    .end local v5  # "n":I
    :cond_25d
    move-object/from16 v3, p0

    .line 207
    :cond_25f
    if-nez p2, :cond_271

    .line 208
    const/4 v2, 0x0

    .local v2, "i":I
    iget v4, v11, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .local v4, "n":I
    :goto_264
    if-ge v2, v4, :cond_270

    .line 209
    aget-short v5, v1, v2

    div-int/lit8 v5, v5, 0x2

    int-to-short v5, v5

    aput-short v5, v1, v2

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_264

    .end local v2  # "i":I
    .end local v4  # "n":I
    :cond_270
    goto :goto_282

    .line 211
    :cond_271
    const/4 v2, 0x0

    .restart local v2  # "i":I
    iget v4, v11, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .restart local v4  # "n":I
    :goto_274
    if-ge v2, v4, :cond_282

    .line 212
    aget-short v5, v1, v2

    sub-int v5, v5, p2

    div-int/lit8 v5, v5, 0x2

    int-to-short v5, v5

    aput-short v5, v1, v2

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_274

    .line 215
    .end local v2  # "i":I
    .end local v4  # "n":I
    :cond_282
    :goto_282
    return-object v11

    .line 59
    .end local v0  # "complete":Lcom/badlogic/gdx/utils/BooleanArray;
    .end local v1  # "trianglesArray":[S
    .end local v11  # "triangles":Lcom/badlogic/gdx/utils/ShortArray;
    .end local v14  # "end":I
    .end local v15  # "edges":Lcom/badlogic/gdx/utils/IntArray;
    .end local v17  # "xmin":F
    .end local v18  # "ymin":F
    .end local v19  # "xmax":F
    .end local v20  # "ymax":F
    .end local v21  # "dx":F
    .end local v22  # "dy":F
    .end local v23  # "dmax":F
    .end local v24  # "xmid":F
    .end local v25  # "ymid":F
    .end local v40  # "superTriangle":[F
    :cond_283
    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "count must be <= 32767"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_290
    .packed-switch 0x0
        :pswitch_170  #00000000
        :pswitch_16b  #00000001
    .end packed-switch
.end method

.method public computeTriangles([FZ)Lcom/badlogic/gdx/utils/ShortArray;
    .registers 5
    .param p1, "polygon"  # [F
    .param p2, "sorted"  # Z

    .line 48
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/badlogic/gdx/math/DelaunayTriangulator;->computeTriangles([FIIZ)Lcom/badlogic/gdx/utils/ShortArray;

    move-result-object v0

    return-object v0
.end method

.method public trim(Lcom/badlogic/gdx/utils/ShortArray;[F[FII)V
    .registers 20
    .param p1, "triangles"  # Lcom/badlogic/gdx/utils/ShortArray;
    .param p2, "points"  # [F
    .param p3, "hull"  # [F
    .param p4, "offset"  # I
    .param p5, "count"  # I

    .line 335
    move-object v0, p0

    move-object v1, p1

    iget-object v2, v1, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 336
    .local v2, "trianglesArray":[S
    iget v3, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_8
    if-ltz v3, :cond_55

    .line 337
    add-int/lit8 v4, v3, -0x2

    aget-short v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    .line 338
    .local v4, "p1":I
    add-int/lit8 v5, v3, -0x1

    aget-short v5, v2, v5

    mul-int/lit8 v5, v5, 0x2

    .line 339
    .local v5, "p2":I
    aget-short v6, v2, v3

    mul-int/lit8 v6, v6, 0x2

    .line 340
    .local v6, "p3":I
    aget v7, p2, v4

    add-int/lit8 v8, v4, 0x1

    aget v8, p2, v8

    aget v9, p2, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p2, v10

    aget v11, p2, v6

    add-int/lit8 v12, v6, 0x1

    aget v12, p2, v12

    iget-object v13, v0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->centroid:Lcom/badlogic/gdx/math/Vector2;

    invoke-static/range {v7 .. v13}, Lcom/badlogic/gdx/math/GeometryUtils;->triangleCentroid(FFFFFFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 342
    iget-object v7, v0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->centroid:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v8, v0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->centroid:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-static {v9, v10, v11, v7, v8}, Lcom/badlogic/gdx/math/Intersector;->isPointInPolygon([FIIFF)Z

    move-result v7

    if-nez v7, :cond_52

    .line 343
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    .line 344
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v7}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    .line 345
    add-int/lit8 v7, v3, -0x2

    invoke-virtual {p1, v7}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    .line 336
    .end local v4  # "p1":I
    .end local v5  # "p2":I
    .end local v6  # "p3":I
    :cond_52
    add-int/lit8 v3, v3, -0x3

    goto :goto_8

    :cond_55
    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 348
    .end local v3  # "i":I
    return-void
.end method
