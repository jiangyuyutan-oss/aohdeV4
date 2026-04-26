.class public final Lcom/badlogic/gdx/math/GeometryUtils;
.super Ljava/lang/Object;
.source "GeometryUtils.java"


# static fields
.field private static final tmp1:Lcom/badlogic/gdx/math/Vector2;

.field private static final tmp2:Lcom/badlogic/gdx/math/Vector2;

.field private static final tmp3:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/GeometryUtils;->tmp1:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/GeometryUtils;->tmp2:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/GeometryUtils;->tmp3:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static barycoordInsideTriangle(Lcom/badlogic/gdx/math/Vector2;)Z
    .registers 3
    .param p0, "barycentric"  # Lcom/badlogic/gdx/math/Vector2;

    .line 58
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1a

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1a

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public static colinear(FFFFFF)Z
    .registers 13
    .param p0, "x1"  # F
    .param p1, "y1"  # F
    .param p2, "x2"  # F
    .param p3, "y2"  # F
    .param p4, "x3"  # F
    .param p5, "y3"  # F

    .line 104
    sub-float v0, p2, p0

    .local v0, "dx21":F
    sub-float v1, p3, p1

    .line 105
    .local v1, "dy21":F
    sub-float v2, p4, p2

    .local v2, "dx32":F
    sub-float v3, p5, p3

    .line 106
    .local v3, "dy32":F
    mul-float v4, v2, v1

    mul-float v5, v0, v3

    sub-float/2addr v4, v5

    .line 107
    .local v4, "det":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x358637bd  # 1.0E-6f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1a

    const/4 v5, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v5, 0x0

    :goto_1b
    return v5
.end method

.method public static ensureCCW([F)V
    .registers 3
    .param p0, "polygon"  # [F

    .line 226
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/math/GeometryUtils;->ensureCCW([FII)V

    .line 227
    return-void
.end method

.method public static ensureCCW([FII)V
    .registers 11
    .param p0, "polygon"  # [F
    .param p1, "offset"  # I
    .param p2, "count"  # I

    .line 230
    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/math/GeometryUtils;->isClockwise([FII)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 231
    :cond_7
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x2

    .line 232
    .local v0, "lastX":I
    move v1, p1

    .local v1, "i":I
    div-int/lit8 v2, p2, 0x2

    add-int/2addr v2, p1

    .local v2, "n":I
    :goto_f
    if-ge v1, v2, :cond_2e

    .line 233
    sub-int v3, v0, v1

    .line 234
    .local v3, "other":I
    aget v4, p0, v1

    .line 235
    .local v4, "x":F
    add-int/lit8 v5, v1, 0x1

    aget v5, p0, v5

    .line 236
    .local v5, "y":F
    aget v6, p0, v3

    aput v6, p0, v1

    .line 237
    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v7, v3, 0x1

    aget v7, p0, v7

    aput v7, p0, v6

    .line 238
    aput v4, p0, v3

    .line 239
    add-int/lit8 v6, v3, 0x1

    aput v5, p0, v6

    .line 232
    .end local v3  # "other":I
    .end local v4  # "x":F
    .end local v5  # "y":F
    add-int/lit8 v1, v1, 0x2

    goto :goto_f

    .line 241
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_2e
    return-void
.end method

.method public static fromBarycoord(Lcom/badlogic/gdx/math/Vector2;FFF)F
    .registers 7
    .param p0, "barycentric"  # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "a"  # F
    .param p2, "b"  # F
    .param p3, "c"  # F

    .line 73
    const/high16 v0, 0x3f800000  # 1.0f

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    .line 74
    .local v0, "u":F
    mul-float v1, v0, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    return v1
.end method

.method public static fromBarycoord(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 9
    .param p0, "barycentric"  # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "a"  # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "b"  # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "c"  # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "interpolatedOut"  # Lcom/badlogic/gdx/math/Vector2;

    .line 64
    const/high16 v0, 0x3f800000  # 1.0f

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    .line 65
    .local v0, "u":F
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 66
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 67
    return-object p4
.end method

.method public static isClockwise([FII)Z
    .registers 13
    .param p0, "polygon"  # [F
    .param p1, "offset"  # I
    .param p2, "count"  # I

    .line 244
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-gt p2, v1, :cond_5

    return v0

    .line 245
    :cond_5
    const/4 v2, 0x0

    .line 246
    .local v2, "area":F
    add-int v3, p1, p2

    sub-int/2addr v3, v1

    .line 247
    .local v3, "last":I
    aget v1, p0, v3

    .local v1, "x1":F
    add-int/lit8 v4, v3, 0x1

    aget v4, p0, v4

    .line 248
    .local v4, "y1":F
    move v5, p1

    .local v5, "i":I
    :goto_10
    if-gt v5, v3, :cond_23

    .line 249
    aget v6, p0, v5

    .local v6, "x2":F
    add-int/lit8 v7, v5, 0x1

    aget v7, p0, v7

    .line 250
    .local v7, "y2":F
    mul-float v8, v1, v7

    mul-float v9, v6, v4

    sub-float/2addr v8, v9

    add-float/2addr v2, v8

    .line 251
    move v1, v6

    .line 252
    move v4, v7

    .line 248
    .end local v6  # "x2":F
    .end local v7  # "y2":F
    add-int/lit8 v5, v5, 0x2

    goto :goto_10

    .line 254
    .end local v5  # "i":I
    :cond_23
    const/4 v5, 0x0

    cmpg-float v5, v2, v5

    if-gez v5, :cond_29

    const/4 v0, 0x1

    :cond_29
    return v0
.end method

.method public static lowestPositiveRoot(FFF)F
    .registers 11
    .param p0, "a"  # F
    .param p1, "b"  # F
    .param p2, "c"  # F

    .line 84
    mul-float v0, p1, p1

    const/high16 v1, 0x40800000  # 4.0f

    mul-float/2addr v1, p0

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    .line 85
    .local v0, "det":F
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/high16 v3, 0x7fc00000  # Float.NaN

    if-gez v2, :cond_f

    return v3

    .line 87
    :cond_f
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 88
    .local v2, "sqrtD":F
    const/high16 v4, 0x40000000  # 2.0f

    mul-float/2addr v4, p0

    const/high16 v5, 0x3f800000  # 1.0f

    div-float/2addr v5, v4

    .line 89
    .local v5, "invA":F
    neg-float v4, p1

    sub-float/2addr v4, v2

    mul-float/2addr v4, v5

    .line 90
    .local v4, "r1":F
    neg-float v6, p1

    add-float/2addr v6, v2

    mul-float/2addr v6, v5

    .line 92
    .local v6, "r2":F
    cmpl-float v7, v4, v6

    if-lez v7, :cond_28

    .line 93
    move v7, v6

    .line 94
    .local v7, "tmp":F
    move v6, v4

    .line 95
    move v4, v7

    .line 98
    .end local v7  # "tmp":F
    :cond_28
    cmpl-float v7, v4, v1

    if-lez v7, :cond_2d

    return v4

    .line 99
    :cond_2d
    cmpl-float v1, v6, v1

    if-lez v1, :cond_32

    return v6

    .line 100
    :cond_32
    return v3
.end method

.method public static polygonArea([FII)F
    .registers 12
    .param p0, "polygon"  # [F
    .param p1, "offset"  # I
    .param p2, "count"  # I

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "area":F
    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x2

    .line 215
    .local v1, "last":I
    aget v2, p0, v1

    .local v2, "x1":F
    add-int/lit8 v3, v1, 0x1

    aget v3, p0, v3

    .line 216
    .local v3, "y1":F
    move v4, p1

    .local v4, "i":I
    :goto_c
    if-gt v4, v1, :cond_1f

    .line 217
    aget v5, p0, v4

    .local v5, "x2":F
    add-int/lit8 v6, v4, 0x1

    aget v6, p0, v6

    .line 218
    .local v6, "y2":F
    mul-float v7, v2, v6

    mul-float v8, v5, v3

    sub-float/2addr v7, v8

    add-float/2addr v0, v7

    .line 219
    move v2, v5

    .line 220
    move v3, v6

    .line 216
    .end local v5  # "x2":F
    .end local v6  # "y2":F
    add-int/lit8 v4, v4, 0x2

    goto :goto_c

    .line 222
    .end local v4  # "i":I
    :cond_1f
    const/high16 v4, 0x3f000000  # 0.5f

    mul-float/2addr v4, v0

    return v4
.end method

.method public static polygonCentroid([FIILcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 15
    .param p0, "polygon"  # [F
    .param p1, "offset"  # I
    .param p2, "count"  # I
    .param p3, "centroid"  # Lcom/badlogic/gdx/math/Vector2;

    .line 186
    const/4 v0, 0x6

    if-lt p2, v0, :cond_47

    .line 188
    const/4 v0, 0x0

    .local v0, "area":F
    const/4 v1, 0x0

    .local v1, "x":F
    const/4 v2, 0x0

    .line 189
    .local v2, "y":F
    add-int v3, p1, p2

    add-int/lit8 v3, v3, -0x2

    .line 190
    .local v3, "last":I
    aget v4, p0, v3

    .local v4, "x1":F
    add-int/lit8 v5, v3, 0x1

    aget v5, p0, v5

    .line 191
    .local v5, "y1":F
    move v6, p1

    .local v6, "i":I
    :goto_11
    if-gt v6, v3, :cond_2c

    .line 192
    aget v7, p0, v6

    .local v7, "x2":F
    add-int/lit8 v8, v6, 0x1

    aget v8, p0, v8

    .line 193
    .local v8, "y2":F
    mul-float v9, v4, v8

    mul-float v10, v7, v5

    sub-float/2addr v9, v10

    .line 194
    .local v9, "a":F
    add-float/2addr v0, v9

    .line 195
    add-float v10, v4, v7

    mul-float/2addr v10, v9

    add-float/2addr v1, v10

    .line 196
    add-float v10, v5, v8

    mul-float/2addr v10, v9

    add-float/2addr v2, v10

    .line 197
    move v4, v7

    .line 198
    move v5, v8

    .line 191
    .end local v7  # "x2":F
    .end local v8  # "y2":F
    .end local v9  # "a":F
    add-int/lit8 v6, v6, 0x2

    goto :goto_11

    .line 200
    .end local v6  # "i":I
    :cond_2c
    const/4 v6, 0x0

    cmpl-float v7, v0, v6

    if-nez v7, :cond_36

    .line 201
    iput v6, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 202
    iput v6, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_46

    .line 204
    :cond_36
    const/high16 v6, 0x3f000000  # 0.5f

    mul-float/2addr v0, v6

    .line 205
    const/high16 v6, 0x40c00000  # 6.0f

    mul-float v7, v0, v6

    div-float v7, v1, v7

    iput v7, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 206
    mul-float/2addr v6, v0

    div-float v6, v2, v6

    iput v6, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 208
    :goto_46
    return-object p3

    .line 186
    .end local v0  # "area":F
    .end local v1  # "x":F
    .end local v2  # "y":F
    .end local v3  # "last":I
    .end local v4  # "x1":F
    .end local v5  # "y1":F
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A polygon must have 3 or more coordinate pairs."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static quadrilateralCentroid(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 15
    .param p0, "x1"  # F
    .param p1, "y1"  # F
    .param p2, "x2"  # F
    .param p3, "y2"  # F
    .param p4, "x3"  # F
    .param p5, "y3"  # F
    .param p6, "x4"  # F
    .param p7, "y4"  # F
    .param p8, "centroid"  # Lcom/badlogic/gdx/math/Vector2;

    .line 175
    add-float v0, p0, p2

    add-float/2addr v0, p4

    const/high16 v1, 0x40400000  # 3.0f

    div-float/2addr v0, v1

    .line 176
    .local v0, "avgX1":F
    add-float v2, p1, p3

    add-float/2addr v2, p5

    div-float/2addr v2, v1

    .line 177
    .local v2, "avgY1":F
    add-float v3, p0, p6

    add-float/2addr v3, p4

    div-float/2addr v3, v1

    .line 178
    .local v3, "avgX2":F
    add-float v4, p1, p7

    add-float/2addr v4, p5

    div-float/2addr v4, v1

    .line 179
    .local v4, "avgY2":F
    sub-float v1, v0, v3

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v1, v5

    sub-float v1, v0, v1

    iput v1, p8, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 180
    sub-float v1, v2, v4

    div-float/2addr v1, v5

    sub-float v1, v2, v1

    iput v1, p8, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 181
    return-object p8
.end method

.method public static toBarycoord(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 16
    .param p0, "p"  # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "a"  # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "b"  # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "c"  # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "barycentricOut"  # Lcom/badlogic/gdx/math/Vector2;

    .line 42
    sget-object v0, Lcom/badlogic/gdx/math/GeometryUtils;->tmp1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 43
    .local v0, "v0":Lcom/badlogic/gdx/math/Vector2;
    sget-object v1, Lcom/badlogic/gdx/math/GeometryUtils;->tmp2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    .line 44
    .local v1, "v1":Lcom/badlogic/gdx/math/Vector2;
    sget-object v2, Lcom/badlogic/gdx/math/GeometryUtils;->tmp3:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    .line 45
    .local v2, "v2":Lcom/badlogic/gdx/math/Vector2;
    invoke-virtual {v0, v0}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v3

    .line 46
    .local v3, "d00":F
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v4

    .line 47
    .local v4, "d01":F
    invoke-virtual {v1, v1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v5

    .line 48
    .local v5, "d11":F
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v6

    .line 49
    .local v6, "d20":F
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v7

    .line 50
    .local v7, "d21":F
    mul-float v8, v3, v5

    mul-float v9, v4, v4

    sub-float/2addr v8, v9

    .line 51
    .local v8, "denom":F
    mul-float v9, v5, v6

    mul-float v10, v4, v7

    sub-float/2addr v9, v10

    div-float/2addr v9, v8

    iput v9, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 52
    mul-float v9, v3, v7

    mul-float v10, v4, v6

    sub-float/2addr v9, v10

    div-float/2addr v9, v8

    iput v9, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 53
    return-object p4
.end method

.method public static triangleArea(FFFFFF)F
    .registers 9
    .param p0, "x1"  # F
    .param p1, "y1"  # F
    .param p2, "x2"  # F
    .param p3, "y2"  # F
    .param p4, "x3"  # F
    .param p5, "y3"  # F

    .line 170
    sub-float v0, p0, p4

    sub-float v1, p3, p1

    mul-float/2addr v0, v1

    sub-float v1, p0, p2

    sub-float v2, p5, p1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000  # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method public static triangleCentroid(FFFFFFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 9
    .param p0, "x1"  # F
    .param p1, "y1"  # F
    .param p2, "x2"  # F
    .param p3, "y2"  # F
    .param p4, "x3"  # F
    .param p5, "y3"  # F
    .param p6, "centroid"  # Lcom/badlogic/gdx/math/Vector2;

    .line 111
    add-float v0, p0, p2

    add-float/2addr v0, p4

    const/high16 v1, 0x40400000  # 3.0f

    div-float/2addr v0, v1

    iput v0, p6, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 112
    add-float v0, p1, p3

    add-float/2addr v0, p5

    div-float/2addr v0, v1

    iput v0, p6, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 113
    return-object p6
.end method

.method public static triangleCircumcenter(FFFFFFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 21
    .param p0, "x1"  # F
    .param p1, "y1"  # F
    .param p2, "x2"  # F
    .param p3, "y2"  # F
    .param p4, "x3"  # F
    .param p5, "y3"  # F
    .param p6, "circumcenter"  # Lcom/badlogic/gdx/math/Vector2;

    .line 118
    move-object/from16 v0, p6

    sub-float v1, p2, p0

    .local v1, "dx21":F
    sub-float v2, p3, p1

    .line 119
    .local v2, "dy21":F
    sub-float v3, p4, p2

    .local v3, "dx32":F
    sub-float v4, p5, p3

    .line 120
    .local v4, "dy32":F
    sub-float v5, p0, p4

    .local v5, "dx13":F
    sub-float v6, p1, p5

    .line 121
    .local v6, "dy13":F
    mul-float v7, v3, v2

    mul-float v8, v1, v4

    sub-float/2addr v7, v8

    .line 122
    .local v7, "det":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v9, 0x358637bd  # 1.0E-6f

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_47

    .line 124
    const/high16 v8, 0x40000000  # 2.0f

    mul-float/2addr v7, v8

    .line 125
    mul-float v8, p0, p0

    mul-float v9, p1, p1

    add-float/2addr v8, v9

    .local v8, "sqr1":F
    mul-float v9, p2, p2

    mul-float v10, p3, p3

    add-float/2addr v9, v10

    .local v9, "sqr2":F
    mul-float v10, p4, p4

    mul-float v11, p5, p5

    add-float/2addr v10, v11

    .line 126
    .local v10, "sqr3":F
    mul-float v11, v8, v4

    mul-float v12, v9, v6

    add-float/2addr v11, v12

    mul-float v12, v10, v2

    add-float/2addr v11, v12

    div-float/2addr v11, v7

    mul-float v12, v8, v3

    mul-float v13, v9, v5

    add-float/2addr v12, v13

    mul-float v13, v10, v1

    add-float/2addr v12, v13

    neg-float v12, v12

    div-float/2addr v12, v7

    invoke-virtual {v0, v11, v12}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 127
    return-object v0

    .line 123
    .end local v8  # "sqr1":F
    .end local v9  # "sqr2":F
    .end local v10  # "sqr3":F
    :cond_47
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Triangle points must not be colinear."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static triangleCircumradius(FFFFFF)F
    .registers 14
    .param p0, "x1"  # F
    .param p1, "y1"  # F
    .param p2, "x2"  # F
    .param p3, "y2"  # F
    .param p4, "x3"  # F
    .param p5, "y3"  # F

    .line 132
    sub-float v0, p3, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x358637bd  # 1.0E-6f

    cmpg-float v0, v0, v1

    const/high16 v2, 0x40000000  # 2.0f

    if-gez v0, :cond_23

    .line 133
    sub-float v0, p4, p2

    neg-float v0, v0

    sub-float v1, p5, p3

    div-float/2addr v0, v1

    .line 134
    .local v0, "m2":F
    add-float v1, p2, p4

    div-float/2addr v1, v2

    .line 135
    .local v1, "mx2":F
    add-float v3, p3, p5

    div-float/2addr v3, v2

    .line 136
    .local v3, "my2":F
    add-float v4, p2, p0

    div-float/2addr v4, v2

    .line 137
    .local v4, "x":F
    sub-float v2, v4, v1

    mul-float/2addr v2, v0

    add-float/2addr v2, v3

    .local v2, "y":F
    goto :goto_69

    .line 138
    .end local v0  # "m2":F
    .end local v1  # "mx2":F
    .end local v2  # "y":F
    .end local v3  # "my2":F
    .end local v4  # "x":F
    :cond_23
    sub-float v0, p5, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_41

    .line 139
    sub-float v0, p2, p0

    neg-float v0, v0

    sub-float v1, p3, p1

    div-float/2addr v0, v1

    .line 140
    .local v0, "m1":F
    add-float v1, p0, p2

    div-float/2addr v1, v2

    .line 141
    .local v1, "mx1":F
    add-float v3, p1, p3

    div-float/2addr v3, v2

    .line 142
    .local v3, "my1":F
    add-float v4, p4, p2

    div-float/2addr v4, v2

    .line 143
    .restart local v4  # "x":F
    sub-float v2, v4, v1

    mul-float/2addr v2, v0

    add-float/2addr v2, v3

    .restart local v2  # "y":F
    goto :goto_69

    .line 145
    .end local v0  # "m1":F
    .end local v1  # "mx1":F
    .end local v2  # "y":F
    .end local v3  # "my1":F
    .end local v4  # "x":F
    :cond_41
    sub-float v0, p2, p0

    neg-float v0, v0

    sub-float v1, p3, p1

    div-float/2addr v0, v1

    .line 146
    .restart local v0  # "m1":F
    sub-float v1, p4, p2

    neg-float v1, v1

    sub-float v3, p5, p3

    div-float/2addr v1, v3

    .line 147
    .local v1, "m2":F
    add-float v3, p0, p2

    div-float/2addr v3, v2

    .line 148
    .local v3, "mx1":F
    add-float v4, p2, p4

    div-float/2addr v4, v2

    .line 149
    .local v4, "mx2":F
    add-float v5, p1, p3

    div-float/2addr v5, v2

    .line 150
    .local v5, "my1":F
    add-float v6, p3, p5

    div-float/2addr v6, v2

    .line 151
    .local v6, "my2":F
    mul-float v2, v0, v3

    mul-float v7, v1, v4

    sub-float/2addr v2, v7

    add-float/2addr v2, v6

    sub-float/2addr v2, v5

    sub-float v7, v0, v1

    div-float/2addr v2, v7

    .line 152
    .local v2, "x":F
    sub-float v7, v2, v3

    mul-float/2addr v7, v0

    add-float/2addr v7, v5

    move v4, v2

    move v2, v7

    .line 154
    .end local v0  # "m1":F
    .end local v1  # "m2":F
    .end local v3  # "mx1":F
    .end local v5  # "my1":F
    .end local v6  # "my2":F
    .local v2, "y":F
    .local v4, "x":F
    :goto_69
    sub-float v0, p0, v4

    .local v0, "dx":F
    sub-float v1, p1, v2

    .line 155
    .local v1, "dy":F
    mul-float v3, v0, v0

    mul-float v5, v1, v1

    add-float/2addr v3, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v3, v5

    return v3
.end method

.method public static triangleQuality(FFFFFF)F
    .registers 11
    .param p0, "x1"  # F
    .param p1, "y1"  # F
    .param p2, "x2"  # F
    .param p3, "y2"  # F
    .param p4, "x3"  # F
    .param p5, "y3"  # F

    .line 163
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 164
    .local v0, "length1":F
    mul-float v1, p2, p2

    mul-float v2, p3, p3

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 165
    .local v1, "length2":F
    mul-float v2, p4, p4

    mul-float v3, p5, p5

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 166
    .local v2, "length3":F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static/range {p0 .. p5}, Lcom/badlogic/gdx/math/GeometryUtils;->triangleCircumradius(FFFFFF)F

    move-result v4

    div-float/2addr v3, v4

    return v3
.end method
