.class public Lcom/badlogic/gdx/math/ConvexHull;
.super Ljava/lang/Object;
.source "ConvexHull.java"


# instance fields
.field private final hull:Lcom/badlogic/gdx/utils/FloatArray;

.field private final indices:Lcom/badlogic/gdx/utils/IntArray;

.field private final originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

.field private final quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

.field private sortedPoints:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

    .line 28
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->hull:Lcom/badlogic/gdx/utils/FloatArray;

    .line 29
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->indices:Lcom/badlogic/gdx/utils/IntArray;

    .line 30
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/utils/ShortArray;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    return-void
.end method

.method private ccw(FF)F
    .registers 12
    .param p1, "p3x"  # F
    .param p2, "p3y"  # F

    .line 156
    iget-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->hull:Lcom/badlogic/gdx/utils/FloatArray;

    .line 157
    .local v0, "hull":Lcom/badlogic/gdx/utils/FloatArray;
    iget v1, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 158
    .local v1, "size":I
    add-int/lit8 v2, v1, -0x4

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    .line 159
    .local v2, "p1x":F
    add-int/lit8 v3, v1, -0x3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v3

    .line 160
    .local v3, "p1y":F
    add-int/lit8 v4, v1, -0x2

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v4

    .line 161
    .local v4, "p2x":F
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->peek()F

    move-result v5

    .line 162
    .local v5, "p2y":F
    sub-float v6, v4, v2

    sub-float v7, p2, v3

    mul-float/2addr v6, v7

    sub-float v7, v5, v3

    sub-float v8, p1, v2

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    return v6
.end method

.method private quicksortPartition([FII)I
    .registers 11
    .param p1, "values"  # [F
    .param p2, "lower"  # I
    .param p3, "upper"  # I

    .line 192
    aget v0, p1, p2

    .line 193
    .local v0, "x":F
    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    .line 194
    .local v1, "y":F
    move v2, p3

    .line 195
    .local v2, "up":I
    move v3, p2

    .line 197
    .local v3, "down":I
    :goto_8
    if-ge v3, v2, :cond_4a

    move v4, v3

    .line 198
    .end local v3  # "down":I
    .local v4, "down":I
    :goto_b
    if-ge v4, v2, :cond_16

    aget v3, p1, v4

    cmpg-float v3, v3, v0

    if-gtz v3, :cond_16

    .line 199
    add-int/lit8 v4, v4, 0x2

    goto :goto_b

    .line 200
    :cond_16
    :goto_16
    aget v3, p1, v2

    cmpl-float v3, v3, v0

    if-gtz v3, :cond_47

    aget v3, p1, v2

    cmpl-float v3, v3, v0

    if-nez v3, :cond_2b

    add-int/lit8 v3, v2, 0x1

    aget v3, p1, v3

    cmpg-float v3, v3, v1

    if-gez v3, :cond_2b

    goto :goto_47

    .line 202
    :cond_2b
    if-ge v4, v2, :cond_45

    .line 203
    aget v3, p1, v4

    .line 204
    .local v3, "temp":F
    aget v5, p1, v2

    aput v5, p1, v4

    .line 205
    aput v3, p1, v2

    .line 207
    add-int/lit8 v5, v4, 0x1

    aget v3, p1, v5

    .line 208
    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    aput v6, p1, v5

    .line 209
    add-int/lit8 v5, v2, 0x1

    aput v3, p1, v5

    .line 197
    .end local v3  # "temp":F
    :cond_45
    move v3, v4

    goto :goto_8

    .line 201
    :cond_47
    :goto_47
    add-int/lit8 v2, v2, -0x2

    goto :goto_16

    .line 212
    .end local v4  # "down":I
    .local v3, "down":I
    :cond_4a
    aget v4, p1, v2

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_5e

    aget v4, p1, v2

    cmpl-float v4, v0, v4

    if-nez v4, :cond_70

    add-int/lit8 v4, v2, 0x1

    aget v4, p1, v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_70

    .line 213
    :cond_5e
    aget v4, p1, v2

    aput v4, p1, p2

    .line 214
    aput v0, p1, v2

    .line 216
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, v2, 0x1

    aget v5, p1, v5

    aput v5, p1, v4

    .line 217
    add-int/lit8 v4, v2, 0x1

    aput v1, p1, v4

    .line 219
    :cond_70
    return v2
.end method

.method private quicksortPartitionWithIndices([FIIZ[S)I
    .registers 14
    .param p1, "values"  # [F
    .param p2, "lower"  # I
    .param p3, "upper"  # I
    .param p4, "yDown"  # Z
    .param p5, "originalIndices"  # [S

    .line 257
    aget v0, p1, p2

    .line 258
    .local v0, "x":F
    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    .line 259
    .local v1, "y":F
    move v2, p3

    .line 260
    .local v2, "up":I
    move v3, p2

    .line 263
    .local v3, "down":I
    :goto_8
    if-ge v3, v2, :cond_73

    move v4, v3

    .line 264
    .end local v3  # "down":I
    .local v4, "down":I
    :goto_b
    if-ge v4, v2, :cond_16

    aget v3, p1, v4

    cmpg-float v3, v3, v0

    if-gtz v3, :cond_16

    .line 265
    add-int/lit8 v4, v4, 0x2

    goto :goto_b

    .line 266
    :cond_16
    if-eqz p4, :cond_2f

    .line 267
    :goto_18
    aget v3, p1, v2

    cmpl-float v3, v3, v0

    if-gtz v3, :cond_2c

    aget v3, p1, v2

    cmpl-float v3, v3, v0

    if-nez v3, :cond_44

    add-int/lit8 v3, v2, 0x1

    aget v3, p1, v3

    cmpg-float v3, v3, v1

    if-gez v3, :cond_44

    .line 268
    :cond_2c
    add-int/lit8 v2, v2, -0x2

    goto :goto_18

    .line 270
    :cond_2f
    :goto_2f
    aget v3, p1, v2

    cmpl-float v3, v3, v0

    if-gtz v3, :cond_70

    aget v3, p1, v2

    cmpl-float v3, v3, v0

    if-nez v3, :cond_44

    add-int/lit8 v3, v2, 0x1

    aget v3, p1, v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_44

    goto :goto_70

    .line 273
    :cond_44
    if-ge v4, v2, :cond_6e

    .line 274
    aget v3, p1, v4

    .line 275
    .local v3, "temp":F
    aget v5, p1, v2

    aput v5, p1, v4

    .line 276
    aput v3, p1, v2

    .line 278
    add-int/lit8 v5, v4, 0x1

    aget v3, p1, v5

    .line 279
    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    aput v6, p1, v5

    .line 280
    add-int/lit8 v5, v2, 0x1

    aput v3, p1, v5

    .line 282
    div-int/lit8 v5, v4, 0x2

    aget-short v5, p5, v5

    .line 283
    .local v5, "tempIndex":S
    div-int/lit8 v6, v4, 0x2

    div-int/lit8 v7, v2, 0x2

    aget-short v7, p5, v7

    aput-short v7, p5, v6

    .line 284
    div-int/lit8 v6, v2, 0x2

    aput-short v5, p5, v6

    .line 263
    .end local v3  # "temp":F
    .end local v5  # "tempIndex":S
    :cond_6e
    move v3, v4

    goto :goto_8

    .line 271
    :cond_70
    :goto_70
    add-int/lit8 v2, v2, -0x2

    goto :goto_2f

    .line 287
    .end local v4  # "down":I
    .local v3, "down":I
    :cond_73
    aget v4, p1, v2

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_90

    aget v4, p1, v2

    cmpl-float v4, v0, v4

    if-nez v4, :cond_b2

    add-int/lit8 v4, v2, 0x1

    if-eqz p4, :cond_8a

    aget v4, p1, v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_b2

    goto :goto_90

    :cond_8a
    aget v4, p1, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_b2

    .line 288
    :cond_90
    :goto_90
    aget v4, p1, v2

    aput v4, p1, p2

    .line 289
    aput v0, p1, v2

    .line 291
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, v2, 0x1

    aget v5, p1, v5

    aput v5, p1, v4

    .line 292
    add-int/lit8 v4, v2, 0x1

    aput v1, p1, v4

    .line 294
    div-int/lit8 v4, p2, 0x2

    aget-short v4, p5, v4

    .line 295
    .local v4, "tempIndex":S
    div-int/lit8 v5, p2, 0x2

    div-int/lit8 v6, v2, 0x2

    aget-short v6, p5, v6

    aput-short v6, p5, v5

    .line 296
    div-int/lit8 v5, v2, 0x2

    aput-short v4, p5, v5

    .line 298
    .end local v4  # "tempIndex":S
    :cond_b2
    return v2
.end method

.method private sort([FI)V
    .registers 9
    .param p1, "values"  # [F
    .param p2, "count"  # I

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "lower":I
    add-int/lit8 v1, p2, -0x1

    .line 170
    .local v1, "upper":I
    iget-object v2, p0, Lcom/badlogic/gdx/math/ConvexHull;->quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

    .line 171
    .local v2, "stack":Lcom/badlogic/gdx/utils/IntArray;
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 172
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 173
    :goto_d
    iget v3, v2, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lez v3, :cond_45

    .line 174
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result v1

    .line 175
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result v0

    .line 176
    if-gt v1, v0, :cond_1c

    goto :goto_d

    .line 177
    :cond_1c
    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/math/ConvexHull;->quicksortPartition([FII)I

    move-result v3

    .line 178
    .local v3, "i":I
    sub-int v4, v3, v0

    sub-int v5, v1, v3

    if-le v4, v5, :cond_2e

    .line 179
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 180
    add-int/lit8 v4, v3, -0x2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 182
    :cond_2e
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 183
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 184
    sub-int v4, v1, v3

    sub-int v5, v3, v0

    if-lt v4, v5, :cond_44

    .line 185
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 186
    add-int/lit8 v4, v3, -0x2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 188
    .end local v3  # "i":I
    :cond_44
    goto :goto_d

    .line 189
    :cond_45
    return-void
.end method

.method private sortWithIndices([FIZ)V
    .registers 15
    .param p1, "values"  # [F
    .param p2, "count"  # I
    .param p3, "yDown"  # Z

    .line 225
    div-int/lit8 v0, p2, 0x2

    .line 226
    .local v0, "pointCount":I
    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 227
    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    .line 228
    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 229
    .local v1, "originalIndicesArray":[S
    const/4 v2, 0x0

    .local v2, "i":S
    :goto_11
    if-ge v2, v0, :cond_19

    .line 230
    aput-short v2, v1, v2

    .line 229
    add-int/lit8 v3, v2, 0x1

    int-to-short v2, v3

    goto :goto_11

    .line 232
    .end local v2  # "i":S
    :cond_19
    const/4 v2, 0x0

    .line 233
    .local v2, "lower":I
    add-int/lit8 v3, p2, -0x1

    .line 234
    .local v3, "upper":I
    iget-object v8, p0, Lcom/badlogic/gdx/math/ConvexHull;->quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

    .line 235
    .local v8, "stack":Lcom/badlogic/gdx/utils/IntArray;
    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 236
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 237
    :goto_26
    iget v4, v8, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lez v4, :cond_67

    .line 238
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result v9

    .line 239
    .end local v3  # "upper":I
    .local v9, "upper":I
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result v10

    .line 240
    .end local v2  # "lower":I
    .local v10, "lower":I
    if-gt v9, v10, :cond_35

    goto :goto_64

    .line 241
    :cond_35
    move-object v2, p0

    move-object v3, p1

    move v4, v10

    move v5, v9

    move v6, p3

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/math/ConvexHull;->quicksortPartitionWithIndices([FIIZ[S)I

    move-result v2

    .line 242
    .local v2, "i":I
    sub-int v3, v2, v10

    sub-int v4, v9, v2

    if-le v3, v4, :cond_4d

    .line 243
    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 244
    add-int/lit8 v3, v2, -0x2

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 246
    :cond_4d
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 247
    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 248
    sub-int v3, v9, v2

    sub-int v4, v2, v10

    if-lt v3, v4, :cond_63

    .line 249
    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 250
    add-int/lit8 v3, v2, -0x2

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 252
    .end local v2  # "i":I
    :cond_63
    nop

    .line 237
    :goto_64
    move v3, v9

    move v2, v10

    goto :goto_26

    .line 253
    .end local v9  # "upper":I
    .end local v10  # "lower":I
    .local v2, "lower":I
    .restart local v3  # "upper":I
    :cond_67
    return-void
.end method


# virtual methods
.method public computeIndices(Lcom/badlogic/gdx/utils/FloatArray;ZZ)Lcom/badlogic/gdx/utils/IntArray;
    .registers 10
    .param p1, "points"  # Lcom/badlogic/gdx/utils/FloatArray;
    .param p2, "sorted"  # Z
    .param p3, "yDown"  # Z

    .line 89
    iget-object v1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v2, 0x0

    iget v3, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/math/ConvexHull;->computeIndices([FIIZZ)Lcom/badlogic/gdx/utils/IntArray;

    move-result-object v0

    return-object v0
.end method

.method public computeIndices([FIIZZ)Lcom/badlogic/gdx/utils/IntArray;
    .registers 16
    .param p1, "points"  # [F
    .param p2, "offset"  # I
    .param p3, "count"  # I
    .param p4, "sorted"  # Z
    .param p5, "yDown"  # Z

    .line 100
    const/16 v0, 0x7fff

    if-gt p3, v0, :cond_ad

    .line 101
    add-int v0, p2, p3

    .line 103
    .local v0, "end":I
    if-nez p4, :cond_21

    .line 104
    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    array-length v1, v1

    if-ge v1, p3, :cond_15

    :cond_11
    new-array v1, p3, [F

    iput-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    .line 105
    :cond_15
    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget-object p1, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    .line 107
    const/4 p2, 0x0

    .line 108
    invoke-direct {p0, p1, p3, p5}, Lcom/badlogic/gdx/math/ConvexHull;->sortWithIndices([FIZ)V

    .line 111
    :cond_21
    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->indices:Lcom/badlogic/gdx/utils/IntArray;

    .line 112
    .local v1, "indices":Lcom/badlogic/gdx/utils/IntArray;
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 114
    iget-object v2, p0, Lcom/badlogic/gdx/math/ConvexHull;->hull:Lcom/badlogic/gdx/utils/FloatArray;

    .line 115
    .local v2, "hull":Lcom/badlogic/gdx/utils/FloatArray;
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 118
    move v3, p2

    .local v3, "i":I
    div-int/lit8 v4, v3, 0x2

    .local v4, "index":I
    :goto_2e
    const/4 v5, 0x0

    if-ge v3, v0, :cond_5f

    .line 119
    aget v6, p1, v3

    .line 120
    .local v6, "x":F
    add-int/lit8 v7, v3, 0x1

    aget v7, p1, v7

    .line 121
    .local v7, "y":F
    :goto_37
    iget v8, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v9, 0x4

    if-lt v8, v9, :cond_51

    invoke-direct {p0, v6, v7}, Lcom/badlogic/gdx/math/ConvexHull;->ccw(FF)F

    move-result v8

    cmpg-float v8, v8, v5

    if-gtz v8, :cond_51

    .line 122
    iget v8, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v8, v8, -0x2

    iput v8, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 123
    iget v8, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    goto :goto_37

    .line 125
    :cond_51
    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 126
    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 127
    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 118
    .end local v6  # "x":F
    .end local v7  # "y":F
    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 131
    .end local v3  # "i":I
    .end local v4  # "index":I
    :cond_5f
    add-int/lit8 v3, v0, -0x4

    .restart local v3  # "i":I
    div-int/lit8 v4, v3, 0x2

    .restart local v4  # "index":I
    iget v6, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v6, v6, 0x2

    .local v6, "t":I
    :goto_67
    if-lt v3, p2, :cond_96

    .line 132
    aget v7, p1, v3

    .line 133
    .local v7, "x":F
    add-int/lit8 v8, v3, 0x1

    aget v8, p1, v8

    .line 134
    .local v8, "y":F
    :goto_6f
    iget v9, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lt v9, v6, :cond_88

    invoke-direct {p0, v7, v8}, Lcom/badlogic/gdx/math/ConvexHull;->ccw(FF)F

    move-result v9

    cmpg-float v9, v9, v5

    if-gtz v9, :cond_88

    .line 135
    iget v9, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v9, v9, -0x2

    iput v9, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 136
    iget v9, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v9, v9, -0x1

    iput v9, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    goto :goto_6f

    .line 138
    :cond_88
    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 139
    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 140
    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 131
    .end local v7  # "x":F
    .end local v8  # "y":F
    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v4, v4, -0x1

    goto :goto_67

    .line 144
    .end local v3  # "i":I
    .end local v4  # "index":I
    .end local v6  # "t":I
    :cond_96
    if-nez p4, :cond_ac

    .line 145
    iget-object v3, p0, Lcom/badlogic/gdx/math/ConvexHull;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 146
    .local v3, "originalIndicesArray":[S
    iget-object v4, v1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 147
    .local v4, "indicesArray":[I
    const/4 v5, 0x0

    .local v5, "i":I
    iget v6, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v6, "n":I
    :goto_a1
    if-ge v5, v6, :cond_ac

    .line 148
    aget v7, v4, v5

    aget-short v7, v3, v7

    aput v7, v4, v5

    .line 147
    add-int/lit8 v5, v5, 0x1

    goto :goto_a1

    .line 151
    .end local v3  # "originalIndicesArray":[S
    .end local v4  # "indicesArray":[I
    .end local v5  # "i":I
    .end local v6  # "n":I
    :cond_ac
    return-object v1

    .line 100
    .end local v0  # "end":I
    .end local v1  # "indices":Lcom/badlogic/gdx/utils/IntArray;
    .end local v2  # "hull":Lcom/badlogic/gdx/utils/FloatArray;
    :cond_ad
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count must be <= 32767"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public computeIndices([FZZ)Lcom/badlogic/gdx/utils/IntArray;
    .registers 10
    .param p1, "polygon"  # [F
    .param p2, "sorted"  # Z
    .param p3, "yDown"  # Z

    .line 94
    const/4 v2, 0x0

    array-length v3, p1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/math/ConvexHull;->computeIndices([FIIZZ)Lcom/badlogic/gdx/utils/IntArray;

    move-result-object v0

    return-object v0
.end method

.method public computePolygon(Lcom/badlogic/gdx/utils/FloatArray;Z)Lcom/badlogic/gdx/utils/FloatArray;
    .registers 6
    .param p1, "points"  # Lcom/badlogic/gdx/utils/FloatArray;
    .param p2, "sorted"  # Z

    .line 34
    iget-object v0, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/badlogic/gdx/math/ConvexHull;->computePolygon([FIIZ)Lcom/badlogic/gdx/utils/FloatArray;

    move-result-object v0

    return-object v0
.end method

.method public computePolygon([FIIZ)Lcom/badlogic/gdx/utils/FloatArray;
    .registers 13
    .param p1, "points"  # [F
    .param p2, "offset"  # I
    .param p3, "count"  # I
    .param p4, "sorted"  # Z

    .line 51
    add-int v0, p2, p3

    .line 53
    .local v0, "end":I
    if-nez p4, :cond_1d

    .line 54
    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    array-length v1, v1

    if-ge v1, p3, :cond_11

    :cond_d
    new-array v1, p3, [F

    iput-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    .line 55
    :cond_11
    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iget-object p1, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    .line 57
    const/4 p2, 0x0

    .line 58
    invoke-direct {p0, p1, p3}, Lcom/badlogic/gdx/math/ConvexHull;->sort([FI)V

    .line 61
    :cond_1d
    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->hull:Lcom/badlogic/gdx/utils/FloatArray;

    .line 62
    .local v1, "hull":Lcom/badlogic/gdx/utils/FloatArray;
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 65
    move v2, p2

    .local v2, "i":I
    :goto_23
    const/4 v3, 0x0

    if-ge v2, v0, :cond_49

    .line 66
    aget v4, p1, v2

    .line 67
    .local v4, "x":F
    add-int/lit8 v5, v2, 0x1

    aget v5, p1, v5

    .line 68
    .local v5, "y":F
    :goto_2c
    iget v6, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v7, 0x4

    if-lt v6, v7, :cond_40

    invoke-direct {p0, v4, v5}, Lcom/badlogic/gdx/math/ConvexHull;->ccw(FF)F

    move-result v6

    cmpg-float v6, v6, v3

    if-gtz v6, :cond_40

    .line 69
    iget v6, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v6, v6, -0x2

    iput v6, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    goto :goto_2c

    .line 70
    :cond_40
    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 71
    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 65
    .end local v4  # "x":F
    .end local v5  # "y":F
    add-int/lit8 v2, v2, 0x2

    goto :goto_23

    .line 75
    .end local v2  # "i":I
    :cond_49
    add-int/lit8 v2, v0, -0x4

    .restart local v2  # "i":I
    iget v4, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v4, v4, 0x2

    .local v4, "t":I
    :goto_4f
    if-lt v2, p2, :cond_73

    .line 76
    aget v5, p1, v2

    .line 77
    .local v5, "x":F
    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    .line 78
    .local v6, "y":F
    :goto_57
    iget v7, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lt v7, v4, :cond_6a

    invoke-direct {p0, v5, v6}, Lcom/badlogic/gdx/math/ConvexHull;->ccw(FF)F

    move-result v7

    cmpg-float v7, v7, v3

    if-gtz v7, :cond_6a

    .line 79
    iget v7, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v7, v7, -0x2

    iput v7, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    goto :goto_57

    .line 80
    :cond_6a
    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 81
    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 75
    .end local v5  # "x":F
    .end local v6  # "y":F
    add-int/lit8 v2, v2, -0x2

    goto :goto_4f

    .line 84
    .end local v2  # "i":I
    .end local v4  # "t":I
    :cond_73
    return-object v1
.end method

.method public computePolygon([FZ)Lcom/badlogic/gdx/utils/FloatArray;
    .registers 5
    .param p1, "polygon"  # [F
    .param p2, "sorted"  # Z

    .line 39
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/badlogic/gdx/math/ConvexHull;->computePolygon([FIIZ)Lcom/badlogic/gdx/utils/FloatArray;

    move-result-object v0

    return-object v0
.end method
