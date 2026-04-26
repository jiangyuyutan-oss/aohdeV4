.class public Lcom/badlogic/gdx/math/Matrix3;
.super Ljava/lang/Object;
.source "Matrix3.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final M00:I = 0x0

.field public static final M01:I = 0x3

.field public static final M02:I = 0x6

.field public static final M10:I = 0x1

.field public static final M11:I = 0x4

.field public static final M12:I = 0x7

.field public static final M20:I = 0x2

.field public static final M21:I = 0x5

.field public static final M22:I = 0x8

.field private static final serialVersionUID:J = 0x6dbd5498495b94acL


# instance fields
.field private tmp:[F

.field public val:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 39
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    .line 42
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix3;->idt()Lcom/badlogic/gdx/math/Matrix3;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Matrix3;)V
    .registers 4
    .param p1, "matrix"  # Lcom/badlogic/gdx/math/Matrix3;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 39
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    .line 46
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix3;->set(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;

    .line 47
    return-void
.end method

.method public constructor <init>([F)V
    .registers 4
    .param p1, "values"  # [F

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 39
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    .line 54
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix3;->set([F)Lcom/badlogic/gdx/math/Matrix3;

    .line 55
    return-void
.end method

.method private static mul([F[F)V
    .registers 22
    .param p0, "mata"  # [F
    .param p1, "matb"  # [F

    .line 599
    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    mul-float/2addr v1, v2

    const/4 v2, 0x3

    aget v3, p0, v2

    const/4 v4, 0x1

    aget v5, p1, v4

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    const/4 v3, 0x6

    aget v5, p0, v3

    const/4 v6, 0x2

    aget v7, p1, v6

    mul-float/2addr v5, v7

    add-float/2addr v1, v5

    .line 600
    .local v1, "v00":F
    aget v5, p0, v0

    aget v7, p1, v2

    mul-float/2addr v5, v7

    aget v7, p0, v2

    const/4 v8, 0x4

    aget v9, p1, v8

    mul-float/2addr v7, v9

    add-float/2addr v5, v7

    aget v7, p0, v3

    const/4 v9, 0x5

    aget v10, p1, v9

    mul-float/2addr v7, v10

    add-float/2addr v5, v7

    .line 601
    .local v5, "v01":F
    aget v7, p0, v0

    aget v10, p1, v3

    mul-float/2addr v7, v10

    aget v10, p0, v2

    const/4 v11, 0x7

    aget v12, p1, v11

    mul-float/2addr v10, v12

    add-float/2addr v7, v10

    aget v10, p0, v3

    const/16 v12, 0x8

    aget v13, p1, v12

    mul-float/2addr v10, v13

    add-float/2addr v7, v10

    .line 603
    .local v7, "v02":F
    aget v10, p0, v4

    aget v13, p1, v0

    mul-float/2addr v10, v13

    aget v13, p0, v8

    aget v14, p1, v4

    mul-float/2addr v13, v14

    add-float/2addr v10, v13

    aget v13, p0, v11

    aget v14, p1, v6

    mul-float/2addr v13, v14

    add-float/2addr v10, v13

    .line 604
    .local v10, "v10":F
    aget v13, p0, v4

    aget v14, p1, v2

    mul-float/2addr v13, v14

    aget v14, p0, v8

    aget v15, p1, v8

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    aget v14, p0, v11

    aget v15, p1, v9

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    .line 605
    .local v13, "v11":F
    aget v14, p0, v4

    aget v15, p1, v3

    mul-float/2addr v14, v15

    aget v15, p0, v8

    aget v16, p1, v11

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    aget v15, p0, v11

    aget v16, p1, v12

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    .line 607
    .local v14, "v12":F
    aget v15, p0, v6

    aget v16, p1, v0

    mul-float v15, v15, v16

    aget v16, p0, v9

    aget v17, p1, v4

    mul-float v16, v16, v17

    add-float v15, v15, v16

    aget v16, p0, v12

    aget v17, p1, v6

    mul-float v16, v16, v17

    add-float v15, v15, v16

    .line 608
    .local v15, "v20":F
    aget v16, p0, v6

    aget v17, p1, v2

    mul-float v16, v16, v17

    aget v17, p0, v9

    aget v18, p1, v8

    mul-float v17, v17, v18

    add-float v16, v16, v17

    aget v17, p0, v12

    aget v18, p1, v9

    mul-float v17, v17, v18

    add-float v16, v16, v17

    .line 609
    .local v16, "v21":F
    aget v17, p0, v6

    aget v18, p1, v3

    mul-float v17, v17, v18

    aget v18, p0, v9

    aget v19, p1, v11

    mul-float v18, v18, v19

    add-float v17, v17, v18

    aget v18, p0, v12

    aget v19, p1, v12

    mul-float v18, v18, v19

    add-float v17, v17, v18

    .line 611
    .local v17, "v22":F
    aput v1, p0, v0

    .line 612
    aput v10, p0, v4

    .line 613
    aput v15, p0, v6

    .line 614
    aput v5, p0, v2

    .line 615
    aput v13, p0, v8

    .line 616
    aput v16, p0, v9

    .line 617
    aput v7, p0, v3

    .line 618
    aput v14, p0, v11

    .line 619
    aput v17, p0, v12

    .line 620
    return-void
.end method


# virtual methods
.method public det()F
    .registers 14

    .line 280
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 281
    .local v0, "val":[F
    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x4

    aget v4, v0, v3

    mul-float/2addr v2, v4

    const/16 v4, 0x8

    aget v5, v0, v4

    mul-float/2addr v2, v5

    const/4 v5, 0x3

    aget v6, v0, v5

    const/4 v7, 0x7

    aget v8, v0, v7

    mul-float/2addr v6, v8

    const/4 v8, 0x2

    aget v9, v0, v8

    mul-float/2addr v6, v9

    add-float/2addr v2, v6

    const/4 v6, 0x6

    aget v9, v0, v6

    const/4 v10, 0x1

    aget v11, v0, v10

    mul-float/2addr v9, v11

    const/4 v11, 0x5

    aget v12, v0, v11

    mul-float/2addr v9, v12

    add-float/2addr v2, v9

    aget v1, v0, v1

    aget v7, v0, v7

    mul-float/2addr v1, v7

    aget v7, v0, v11

    mul-float/2addr v1, v7

    sub-float/2addr v2, v1

    aget v1, v0, v5

    aget v5, v0, v10

    mul-float/2addr v1, v5

    aget v4, v0, v4

    mul-float/2addr v1, v4

    sub-float/2addr v2, v1

    aget v1, v0, v6

    aget v3, v0, v3

    mul-float/2addr v1, v3

    aget v3, v0, v8

    mul-float/2addr v1, v3

    sub-float/2addr v2, v1

    return v2
.end method

.method public getRotation()F
    .registers 5

    .line 537
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    return v0
.end method

.method public getRotationRad()F
    .registers 5

    .line 541
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getScale(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 6
    .param p1, "scale"  # Lcom/badlogic/gdx/math/Vector2;

    .line 530
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 531
    .local v0, "val":[F
    const/4 v1, 0x0

    aget v2, v0, v1

    aget v1, v0, v1

    mul-float/2addr v2, v1

    const/4 v1, 0x3

    aget v3, v0, v1

    aget v1, v0, v1

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 532
    const/4 v1, 0x1

    aget v2, v0, v1

    aget v1, v0, v1

    mul-float/2addr v2, v1

    const/4 v1, 0x4

    aget v3, v0, v1

    aget v1, v0, v1

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 533
    return-object p1
.end method

.method public getTranslation(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 4
    .param p1, "position"  # Lcom/badlogic/gdx/math/Vector2;

    .line 523
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 524
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 525
    return-object p1
.end method

.method public getValues()[F
    .registers 2

    .line 519
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    return-object v0
.end method

.method public idt()Lcom/badlogic/gdx/math/Matrix3;
    .registers 5

    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 61
    .local v0, "val":[F
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v0, v1

    .line 62
    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    .line 63
    const/4 v1, 0x2

    aput v3, v0, v1

    .line 64
    const/4 v1, 0x3

    aput v3, v0, v1

    .line 65
    const/4 v1, 0x4

    aput v2, v0, v1

    .line 66
    const/4 v1, 0x5

    aput v3, v0, v1

    .line 67
    const/4 v1, 0x6

    aput v3, v0, v1

    .line 68
    const/4 v1, 0x7

    aput v3, v0, v1

    .line 69
    const/16 v1, 0x8

    aput v2, v0, v1

    .line 70
    return-object p0
.end method

.method public inv()Lcom/badlogic/gdx/math/Matrix3;
    .registers 18

    .line 289
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/math/Matrix3;->det()F

    move-result v1

    .line 290
    .local v1, "det":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_c5

    .line 292
    const/high16 v2, 0x3f800000  # 1.0f

    div-float/2addr v2, v1

    .line 293
    .local v2, "inv_det":F
    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    .local v3, "tmp":[F
    iget-object v4, v0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 295
    .local v4, "val":[F
    const/4 v5, 0x4

    aget v6, v4, v5

    const/16 v7, 0x8

    aget v8, v4, v7

    mul-float/2addr v6, v8

    const/4 v8, 0x5

    aget v9, v4, v8

    const/4 v10, 0x7

    aget v11, v4, v10

    mul-float/2addr v9, v11

    sub-float/2addr v6, v9

    const/4 v9, 0x0

    aput v6, v3, v9

    .line 296
    const/4 v6, 0x2

    aget v11, v4, v6

    aget v12, v4, v10

    mul-float/2addr v11, v12

    const/4 v12, 0x1

    aget v13, v4, v12

    aget v14, v4, v7

    mul-float/2addr v13, v14

    sub-float/2addr v11, v13

    aput v11, v3, v12

    .line 297
    aget v11, v4, v12

    aget v13, v4, v8

    mul-float/2addr v11, v13

    aget v13, v4, v6

    aget v14, v4, v5

    mul-float/2addr v13, v14

    sub-float/2addr v11, v13

    aput v11, v3, v6

    .line 298
    aget v11, v4, v8

    const/4 v13, 0x6

    aget v14, v4, v13

    mul-float/2addr v11, v14

    const/4 v14, 0x3

    aget v15, v4, v14

    aget v16, v4, v7

    mul-float v15, v15, v16

    sub-float/2addr v11, v15

    aput v11, v3, v14

    .line 299
    aget v11, v4, v9

    aget v15, v4, v7

    mul-float/2addr v11, v15

    aget v15, v4, v6

    aget v16, v4, v13

    mul-float v15, v15, v16

    sub-float/2addr v11, v15

    aput v11, v3, v5

    .line 300
    aget v11, v4, v6

    aget v15, v4, v14

    mul-float/2addr v11, v15

    aget v15, v4, v9

    aget v16, v4, v8

    mul-float v15, v15, v16

    sub-float/2addr v11, v15

    aput v11, v3, v8

    .line 301
    aget v11, v4, v14

    aget v15, v4, v10

    mul-float/2addr v11, v15

    aget v15, v4, v5

    aget v16, v4, v13

    mul-float v15, v15, v16

    sub-float/2addr v11, v15

    aput v11, v3, v13

    .line 302
    aget v11, v4, v12

    aget v15, v4, v13

    mul-float/2addr v11, v15

    aget v15, v4, v9

    aget v16, v4, v10

    mul-float v15, v15, v16

    sub-float/2addr v11, v15

    aput v11, v3, v10

    .line 303
    aget v11, v4, v9

    aget v15, v4, v5

    mul-float/2addr v11, v15

    aget v15, v4, v12

    aget v16, v4, v14

    mul-float v15, v15, v16

    sub-float/2addr v11, v15

    aput v11, v3, v7

    .line 305
    aget v11, v3, v9

    mul-float/2addr v11, v2

    aput v11, v4, v9

    .line 306
    aget v9, v3, v12

    mul-float/2addr v9, v2

    aput v9, v4, v12

    .line 307
    aget v9, v3, v6

    mul-float/2addr v9, v2

    aput v9, v4, v6

    .line 308
    aget v6, v3, v14

    mul-float/2addr v6, v2

    aput v6, v4, v14

    .line 309
    aget v6, v3, v5

    mul-float/2addr v6, v2

    aput v6, v4, v5

    .line 310
    aget v5, v3, v8

    mul-float/2addr v5, v2

    aput v5, v4, v8

    .line 311
    aget v5, v3, v13

    mul-float/2addr v5, v2

    aput v5, v4, v13

    .line 312
    aget v5, v3, v10

    mul-float/2addr v5, v2

    aput v5, v4, v10

    .line 313
    aget v5, v3, v7

    mul-float/2addr v5, v2

    aput v5, v4, v7

    .line 315
    return-object v0

    .line 290
    .end local v2  # "inv_det":F
    .end local v3  # "tmp":[F
    .end local v4  # "val":[F
    :cond_c5
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Can\'t invert a singular matrix"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;
    .registers 23
    .param p1, "m"  # Lcom/badlogic/gdx/math/Matrix3;

    .line 81
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 83
    .local v2, "val":[F
    const/4 v3, 0x0

    aget v4, v2, v3

    iget-object v5, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v5, v5, v3

    mul-float/2addr v4, v5

    const/4 v5, 0x3

    aget v6, v2, v5

    iget-object v7, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    const/4 v6, 0x6

    aget v7, v2, v6

    iget-object v9, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    mul-float/2addr v7, v9

    add-float/2addr v4, v7

    .line 84
    .local v4, "v00":F
    aget v7, v2, v3

    iget-object v9, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v9, v9, v5

    mul-float/2addr v7, v9

    aget v9, v2, v5

    iget-object v11, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x4

    aget v11, v11, v12

    mul-float/2addr v9, v11

    add-float/2addr v7, v9

    aget v9, v2, v6

    iget-object v11, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v13, 0x5

    aget v11, v11, v13

    mul-float/2addr v9, v11

    add-float/2addr v7, v9

    .line 85
    .local v7, "v01":F
    aget v9, v2, v3

    iget-object v11, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v11, v11, v6

    mul-float/2addr v9, v11

    aget v11, v2, v5

    iget-object v14, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v15, 0x7

    aget v14, v14, v15

    mul-float/2addr v11, v14

    add-float/2addr v9, v11

    aget v11, v2, v6

    iget-object v14, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v16, 0x8

    aget v14, v14, v16

    mul-float/2addr v11, v14

    add-float/2addr v9, v11

    .line 87
    .local v9, "v02":F
    aget v11, v2, v8

    iget-object v14, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v14, v14, v3

    mul-float/2addr v11, v14

    aget v14, v2, v12

    iget-object v3, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v3, v3, v8

    mul-float/2addr v14, v3

    add-float/2addr v11, v14

    aget v3, v2, v15

    iget-object v14, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v14, v14, v10

    mul-float/2addr v3, v14

    add-float/2addr v11, v3

    .line 88
    .local v11, "v10":F
    aget v3, v2, v8

    iget-object v14, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v14, v14, v5

    mul-float/2addr v3, v14

    aget v14, v2, v12

    iget-object v5, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v5, v5, v12

    mul-float/2addr v14, v5

    add-float/2addr v3, v14

    aget v5, v2, v15

    iget-object v14, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v14, v14, v13

    mul-float/2addr v5, v14

    add-float/2addr v3, v5

    .line 89
    .local v3, "v11":F
    aget v5, v2, v8

    iget-object v14, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v14, v14, v6

    mul-float/2addr v5, v14

    aget v14, v2, v12

    iget-object v6, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v6, v6, v15

    mul-float/2addr v14, v6

    add-float/2addr v5, v14

    aget v6, v2, v15

    iget-object v14, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v14, v14, v16

    mul-float/2addr v6, v14

    add-float/2addr v5, v6

    .line 91
    .local v5, "v12":F
    aget v6, v2, v10

    iget-object v14, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v17, 0x0

    aget v14, v14, v17

    mul-float/2addr v6, v14

    aget v14, v2, v13

    iget-object v15, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v15, v15, v8

    mul-float/2addr v14, v15

    add-float/2addr v6, v14

    aget v14, v2, v16

    iget-object v15, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v15, v15, v10

    mul-float/2addr v14, v15

    add-float/2addr v6, v14

    .line 92
    .local v6, "v20":F
    aget v14, v2, v10

    iget-object v15, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v18, 0x3

    aget v15, v15, v18

    mul-float/2addr v14, v15

    aget v15, v2, v13

    iget-object v8, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v8, v8, v12

    mul-float/2addr v15, v8

    add-float/2addr v14, v15

    aget v8, v2, v16

    iget-object v15, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v15, v15, v13

    mul-float/2addr v8, v15

    add-float/2addr v14, v8

    .line 93
    .local v14, "v21":F
    aget v8, v2, v10

    iget-object v15, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v19, 0x6

    aget v15, v15, v19

    mul-float/2addr v8, v15

    aget v15, v2, v13

    iget-object v13, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v20, 0x7

    aget v13, v13, v20

    mul-float/2addr v15, v13

    add-float/2addr v8, v15

    aget v13, v2, v16

    iget-object v15, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v15, v15, v16

    mul-float/2addr v13, v15

    add-float/2addr v8, v13

    .line 95
    .local v8, "v22":F
    const/4 v13, 0x0

    aput v4, v2, v13

    .line 96
    const/4 v13, 0x1

    aput v11, v2, v13

    .line 97
    aput v6, v2, v10

    .line 98
    const/4 v10, 0x3

    aput v7, v2, v10

    .line 99
    aput v3, v2, v12

    .line 100
    const/4 v10, 0x5

    aput v14, v2, v10

    .line 101
    const/4 v10, 0x6

    aput v9, v2, v10

    .line 102
    const/4 v10, 0x7

    aput v5, v2, v10

    .line 103
    aput v8, v2, v16

    .line 105
    return-object v0
.end method

.method public mulLeft(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;
    .registers 25
    .param p1, "m"  # Lcom/badlogic/gdx/math/Matrix3;

    .line 116
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 118
    .local v2, "val":[F
    iget-object v3, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    aget v5, v2, v4

    mul-float/2addr v3, v5

    iget-object v5, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    const/4 v7, 0x1

    aget v8, v2, v7

    mul-float/2addr v5, v8

    add-float/2addr v3, v5

    iget-object v5, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v8, 0x6

    aget v5, v5, v8

    const/4 v9, 0x2

    aget v10, v2, v9

    mul-float/2addr v5, v10

    add-float/2addr v3, v5

    .line 119
    .local v3, "v00":F
    iget-object v5, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v5, v5, v4

    aget v10, v2, v6

    mul-float/2addr v5, v10

    iget-object v10, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v10, v10, v6

    const/4 v11, 0x4

    aget v12, v2, v11

    mul-float/2addr v10, v12

    add-float/2addr v5, v10

    iget-object v10, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v10, v10, v8

    const/4 v12, 0x5

    aget v13, v2, v12

    mul-float/2addr v10, v13

    add-float/2addr v5, v10

    .line 120
    .local v5, "v01":F
    iget-object v10, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v10, v10, v4

    aget v13, v2, v8

    mul-float/2addr v10, v13

    iget-object v13, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v13, v13, v6

    const/4 v14, 0x7

    aget v15, v2, v14

    mul-float/2addr v13, v15

    add-float/2addr v10, v13

    iget-object v13, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v13, v13, v8

    const/16 v15, 0x8

    aget v16, v2, v15

    mul-float v13, v13, v16

    add-float/2addr v10, v13

    .line 122
    .local v10, "v02":F
    iget-object v13, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v13, v13, v7

    aget v16, v2, v4

    mul-float v13, v13, v16

    iget-object v4, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v11

    aget v17, v2, v7

    mul-float v4, v4, v17

    add-float/2addr v13, v4

    iget-object v4, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v14

    aget v17, v2, v9

    mul-float v4, v4, v17

    add-float/2addr v13, v4

    .line 123
    .local v13, "v10":F
    iget-object v4, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v7

    aget v17, v2, v6

    mul-float v4, v4, v17

    iget-object v6, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v6, v6, v11

    aget v18, v2, v11

    mul-float v6, v6, v18

    add-float/2addr v4, v6

    iget-object v6, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v6, v6, v14

    aget v18, v2, v12

    mul-float v6, v6, v18

    add-float/2addr v4, v6

    .line 124
    .local v4, "v11":F
    iget-object v6, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v6, v6, v7

    aget v18, v2, v8

    mul-float v6, v6, v18

    iget-object v8, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v8, v8, v11

    aget v19, v2, v14

    mul-float v8, v8, v19

    add-float/2addr v6, v8

    iget-object v8, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v8, v8, v14

    aget v19, v2, v15

    mul-float v8, v8, v19

    add-float/2addr v6, v8

    .line 126
    .local v6, "v12":F
    iget-object v8, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v8, v8, v9

    const/16 v16, 0x0

    aget v19, v2, v16

    mul-float v8, v8, v19

    iget-object v14, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v14, v14, v12

    aget v20, v2, v7

    mul-float v14, v14, v20

    add-float/2addr v8, v14

    iget-object v14, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v14, v14, v15

    aget v20, v2, v9

    mul-float v14, v14, v20

    add-float/2addr v8, v14

    .line 127
    .local v8, "v20":F
    iget-object v14, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v14, v14, v9

    const/16 v17, 0x3

    aget v20, v2, v17

    mul-float v14, v14, v20

    iget-object v7, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v7, v7, v12

    aget v21, v2, v11

    mul-float v7, v7, v21

    add-float/2addr v14, v7

    iget-object v7, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v7, v7, v15

    aget v21, v2, v12

    mul-float v7, v7, v21

    add-float/2addr v14, v7

    .line 128
    .local v14, "v21":F
    iget-object v7, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v7, v7, v9

    const/16 v18, 0x6

    aget v21, v2, v18

    mul-float v7, v7, v21

    iget-object v11, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v11, v11, v12

    const/16 v19, 0x7

    aget v22, v2, v19

    mul-float v11, v11, v22

    add-float/2addr v7, v11

    iget-object v11, v1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v11, v11, v15

    aget v22, v2, v15

    mul-float v11, v11, v22

    add-float/2addr v7, v11

    .line 130
    .local v7, "v22":F
    const/4 v11, 0x0

    aput v3, v2, v11

    .line 131
    const/4 v11, 0x1

    aput v13, v2, v11

    .line 132
    aput v8, v2, v9

    .line 133
    const/4 v9, 0x3

    aput v5, v2, v9

    .line 134
    const/4 v9, 0x4

    aput v4, v2, v9

    .line 135
    aput v14, v2, v12

    .line 136
    const/4 v9, 0x6

    aput v10, v2, v9

    .line 137
    const/4 v9, 0x7

    aput v6, v2, v9

    .line 138
    aput v7, v2, v15

    .line 140
    return-object v0
.end method

.method public rotate(F)Lcom/badlogic/gdx/math/Matrix3;
    .registers 3
    .param p1, "degrees"  # F

    .line 449
    const v0, 0x3c8efa35

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix3;->rotateRad(F)Lcom/badlogic/gdx/math/Matrix3;

    move-result-object v0

    return-object v0
.end method

.method public rotateRad(F)Lcom/badlogic/gdx/math/Matrix3;
    .registers 8
    .param p1, "radians"  # F

    .line 457
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_6

    return-object p0

    .line 458
    :cond_6
    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 459
    .local v1, "cos":F
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 460
    .local v2, "sin":F
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    .line 462
    .local v3, "tmp":[F
    const/4 v4, 0x0

    aput v1, v3, v4

    .line 463
    const/4 v4, 0x1

    aput v2, v3, v4

    .line 464
    const/4 v4, 0x2

    aput v0, v3, v4

    .line 466
    const/4 v4, 0x3

    neg-float v5, v2

    aput v5, v3, v4

    .line 467
    const/4 v4, 0x4

    aput v1, v3, v4

    .line 468
    const/4 v4, 0x5

    aput v0, v3, v4

    .line 470
    const/4 v4, 0x6

    aput v0, v3, v4

    .line 471
    const/4 v4, 0x7

    aput v0, v3, v4

    .line 472
    const/16 v0, 0x8

    const/high16 v4, 0x3f800000  # 1.0f

    aput v4, v3, v0

    .line 473
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    invoke-static {v0, v3}, Lcom/badlogic/gdx/math/Matrix3;->mul([F[F)V

    .line 474
    return-object p0
.end method

.method public scale(FF)Lcom/badlogic/gdx/math/Matrix3;
    .registers 6
    .param p1, "scaleX"  # F
    .param p2, "scaleY"  # F

    .line 483
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    .line 484
    .local v0, "tmp":[F
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 485
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 486
    const/4 v1, 0x2

    aput v2, v0, v1

    .line 487
    const/4 v1, 0x3

    aput v2, v0, v1

    .line 488
    const/4 v1, 0x4

    aput p2, v0, v1

    .line 489
    const/4 v1, 0x5

    aput v2, v0, v1

    .line 490
    const/4 v1, 0x6

    aput v2, v0, v1

    .line 491
    const/4 v1, 0x7

    aput v2, v0, v1

    .line 492
    const/16 v1, 0x8

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v0, v1

    .line 493
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    invoke-static {v1, v0}, Lcom/badlogic/gdx/math/Matrix3;->mul([F[F)V

    .line 494
    return-object p0
.end method

.method public scale(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Matrix3;
    .registers 6
    .param p1, "scale"  # Lcom/badlogic/gdx/math/Vector2;

    .line 502
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    .line 503
    .local v0, "tmp":[F
    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v2, v0, v1

    .line 504
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 505
    const/4 v1, 0x2

    aput v2, v0, v1

    .line 506
    const/4 v1, 0x3

    aput v2, v0, v1

    .line 507
    const/4 v1, 0x4

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v0, v1

    .line 508
    const/4 v1, 0x5

    aput v2, v0, v1

    .line 509
    const/4 v1, 0x6

    aput v2, v0, v1

    .line 510
    const/4 v1, 0x7

    aput v2, v0, v1

    .line 511
    const/16 v1, 0x8

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v0, v1

    .line 512
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    invoke-static {v1, v0}, Lcom/badlogic/gdx/math/Matrix3;->mul([F[F)V

    .line 513
    return-object p0
.end method

.method public scl(F)Lcom/badlogic/gdx/math/Matrix3;
    .registers 5
    .param p1, "scale"  # F

    .line 548
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 549
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 550
    return-object p0
.end method

.method public scl(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Matrix3;
    .registers 6
    .param p1, "scale"  # Lcom/badlogic/gdx/math/Vector2;

    .line 557
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 558
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 559
    return-object p0
.end method

.method public scl(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix3;
    .registers 6
    .param p1, "scale"  # Lcom/badlogic/gdx/math/Vector3;

    .line 566
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 567
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 568
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Matrix3;
    .registers 6
    .param p1, "affine"  # Lcom/badlogic/gdx/math/Affine2;

    .line 330
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 332
    .local v0, "val":[F
    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    aput v2, v0, v1

    .line 333
    const/4 v1, 0x1

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    aput v2, v0, v1

    .line 334
    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 335
    const/4 v1, 0x3

    iget v3, p1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    aput v3, v0, v1

    .line 336
    const/4 v1, 0x4

    iget v3, p1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    aput v3, v0, v1

    .line 337
    const/4 v1, 0x5

    aput v2, v0, v1

    .line 338
    const/4 v1, 0x6

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    aput v2, v0, v1

    .line 339
    const/4 v1, 0x7

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    aput v2, v0, v1

    .line 340
    const/16 v1, 0x8

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v0, v1

    .line 342
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;
    .registers 6
    .param p1, "mat"  # Lcom/badlogic/gdx/math/Matrix3;

    .line 322
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix3;
    .registers 6
    .param p1, "mat"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 349
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 350
    .local v0, "val":[F
    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 351
    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    .line 352
    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    aput v1, v0, v2

    .line 353
    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    const/4 v3, 0x3

    aput v1, v0, v3

    .line 354
    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v1, v1, v3

    aput v1, v0, v2

    .line 355
    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    aput v1, v0, v3

    .line 356
    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v1, v1, v3

    aput v1, v0, v2

    .line 357
    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x9

    aget v1, v1, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 358
    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xa

    aget v1, v1, v2

    aput v1, v0, v3

    .line 359
    return-object p0
.end method

.method public set([F)Lcom/badlogic/gdx/math/Matrix3;
    .registers 5
    .param p1, "values"  # [F

    .line 369
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    return-object p0
.end method

.method public setToRotation(F)Lcom/badlogic/gdx/math/Matrix3;
    .registers 3
    .param p1, "degrees"  # F

    .line 147
    const v0, 0x3c8efa35

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix3;->setToRotationRad(F)Lcom/badlogic/gdx/math/Matrix3;

    move-result-object v0

    return-object v0
.end method

.method public setToRotation(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix3;
    .registers 5
    .param p1, "axis"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "degrees"  # F

    .line 174
    invoke-static {p2}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v0

    invoke-static {p2}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/math/Matrix3;->setToRotation(Lcom/badlogic/gdx/math/Vector3;FF)Lcom/badlogic/gdx/math/Matrix3;

    move-result-object v0

    return-object v0
.end method

.method public setToRotation(Lcom/badlogic/gdx/math/Vector3;FF)Lcom/badlogic/gdx/math/Matrix3;
    .registers 8
    .param p1, "axis"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "cos"  # F
    .param p3, "sin"  # F

    .line 178
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 179
    .local v0, "val":[F
    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v1, p2

    .line 180
    .local v1, "oc":F
    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v3

    add-float/2addr v2, p2

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 181
    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v3, p3

    sub-float/2addr v2, v3

    const/4 v3, 0x3

    aput v2, v0, v3

    .line 182
    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    const/4 v3, 0x6

    aput v2, v0, v3

    .line 183
    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 184
    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v2, p2

    const/4 v3, 0x4

    aput v2, v0, v3

    .line 185
    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, p3

    sub-float/2addr v2, v3

    const/4 v3, 0x7

    aput v2, v0, v3

    .line 186
    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v3, p3

    sub-float/2addr v2, v3

    const/4 v3, 0x2

    aput v2, v0, v3

    .line 187
    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    const/4 v3, 0x5

    aput v2, v0, v3

    .line 188
    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v2, p2

    const/16 v3, 0x8

    aput v2, v0, v3

    .line 189
    return-object p0
.end method

.method public setToRotationRad(F)Lcom/badlogic/gdx/math/Matrix3;
    .registers 8
    .param p1, "radians"  # F

    .line 154
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 155
    .local v0, "cos":F
    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 156
    .local v1, "sin":F
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 158
    .local v2, "val":[F
    const/4 v3, 0x0

    aput v0, v2, v3

    .line 159
    const/4 v3, 0x1

    aput v1, v2, v3

    .line 160
    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 162
    const/4 v3, 0x3

    neg-float v5, v1

    aput v5, v2, v3

    .line 163
    const/4 v3, 0x4

    aput v0, v2, v3

    .line 164
    const/4 v3, 0x5

    aput v4, v2, v3

    .line 166
    const/4 v3, 0x6

    aput v4, v2, v3

    .line 167
    const/4 v3, 0x7

    aput v4, v2, v3

    .line 168
    const/16 v3, 0x8

    const/high16 v4, 0x3f800000  # 1.0f

    aput v4, v2, v3

    .line 170
    return-object p0
.end method

.method public setToScaling(FF)Lcom/badlogic/gdx/math/Matrix3;
    .registers 6
    .param p1, "scaleX"  # F
    .param p2, "scaleY"  # F

    .line 241
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 242
    .local v0, "val":[F
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 243
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 244
    const/4 v1, 0x2

    aput v2, v0, v1

    .line 245
    const/4 v1, 0x3

    aput v2, v0, v1

    .line 246
    const/4 v1, 0x4

    aput p2, v0, v1

    .line 247
    const/4 v1, 0x5

    aput v2, v0, v1

    .line 248
    const/4 v1, 0x6

    aput v2, v0, v1

    .line 249
    const/4 v1, 0x7

    aput v2, v0, v1

    .line 250
    const/16 v1, 0x8

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v0, v1

    .line 251
    return-object p0
.end method

.method public setToScaling(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Matrix3;
    .registers 6
    .param p1, "scale"  # Lcom/badlogic/gdx/math/Vector2;

    .line 258
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 259
    .local v0, "val":[F
    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v2, v0, v1

    .line 260
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 261
    const/4 v1, 0x2

    aput v2, v0, v1

    .line 262
    const/4 v1, 0x3

    aput v2, v0, v1

    .line 263
    const/4 v1, 0x4

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v0, v1

    .line 264
    const/4 v1, 0x5

    aput v2, v0, v1

    .line 265
    const/4 v1, 0x6

    aput v2, v0, v1

    .line 266
    const/4 v1, 0x7

    aput v2, v0, v1

    .line 267
    const/16 v1, 0x8

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v0, v1

    .line 268
    return-object p0
.end method

.method public setToTranslation(FF)Lcom/badlogic/gdx/math/Matrix3;
    .registers 7
    .param p1, "x"  # F
    .param p2, "y"  # F

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 199
    .local v0, "val":[F
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v0, v1

    .line 200
    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    .line 201
    const/4 v1, 0x2

    aput v3, v0, v1

    .line 203
    const/4 v1, 0x3

    aput v3, v0, v1

    .line 204
    const/4 v1, 0x4

    aput v2, v0, v1

    .line 205
    const/4 v1, 0x5

    aput v3, v0, v1

    .line 207
    const/4 v1, 0x6

    aput p1, v0, v1

    .line 208
    const/4 v1, 0x7

    aput p2, v0, v1

    .line 209
    const/16 v1, 0x8

    aput v2, v0, v1

    .line 211
    return-object p0
.end method

.method public setToTranslation(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Matrix3;
    .registers 6
    .param p1, "translation"  # Lcom/badlogic/gdx/math/Vector2;

    .line 218
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 220
    .local v0, "val":[F
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v0, v1

    .line 221
    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    .line 222
    const/4 v1, 0x2

    aput v3, v0, v1

    .line 224
    const/4 v1, 0x3

    aput v3, v0, v1

    .line 225
    const/4 v1, 0x4

    aput v2, v0, v1

    .line 226
    const/4 v1, 0x5

    aput v3, v0, v1

    .line 228
    const/4 v1, 0x6

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v0, v1

    .line 229
    const/4 v1, 0x7

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v0, v1

    .line 230
    const/16 v1, 0x8

    aput v2, v0, v1

    .line 232
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 272
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 273
    .local v0, "val":[F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x3

    aget v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x6

    aget v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]\n["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x4

    aget v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x7

    aget v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x2

    aget v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x5

    aget v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public translate(FF)Lcom/badlogic/gdx/math/Matrix3;
    .registers 8
    .param p1, "x"  # F
    .param p2, "y"  # F

    .line 407
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 408
    .local v0, "val":[F
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    aput v3, v1, v2

    .line 409
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v1, v2

    .line 410
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v2, 0x2

    aput v4, v1, v2

    .line 412
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v2, 0x3

    aput v4, v1, v2

    .line 413
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v2, 0x4

    aput v3, v1, v2

    .line 414
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v2, 0x5

    aput v4, v1, v2

    .line 416
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v2, 0x6

    aput p1, v1, v2

    .line 417
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v2, 0x7

    aput p2, v1, v2

    .line 418
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/16 v2, 0x8

    aput v3, v1, v2

    .line 419
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix3;->mul([F[F)V

    .line 420
    return-object p0
.end method

.method public translate(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Matrix3;
    .registers 7
    .param p1, "translation"  # Lcom/badlogic/gdx/math/Vector2;

    .line 428
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 429
    .local v0, "val":[F
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    aput v3, v1, v2

    .line 430
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v1, v2

    .line 431
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v2, 0x2

    aput v4, v1, v2

    .line 433
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v2, 0x3

    aput v4, v1, v2

    .line 434
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v2, 0x4

    aput v3, v1, v2

    .line 435
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v2, 0x5

    aput v4, v1, v2

    .line 437
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v2, 0x6

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v4, v1, v2

    .line 438
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v2, 0x7

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v4, v1, v2

    .line 439
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/16 v2, 0x8

    aput v3, v1, v2

    .line 440
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix3;->mul([F[F)V

    .line 441
    return-object p0
.end method

.method public transpose()Lcom/badlogic/gdx/math/Matrix3;
    .registers 14

    .line 575
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 576
    .local v0, "val":[F
    const/4 v1, 0x1

    aget v2, v0, v1

    .line 577
    .local v2, "v01":F
    const/4 v3, 0x2

    aget v4, v0, v3

    .line 578
    .local v4, "v02":F
    const/4 v5, 0x3

    aget v6, v0, v5

    .line 579
    .local v6, "v10":F
    const/4 v7, 0x5

    aget v8, v0, v7

    .line 580
    .local v8, "v12":F
    const/4 v9, 0x6

    aget v10, v0, v9

    .line 581
    .local v10, "v20":F
    const/4 v11, 0x7

    aget v12, v0, v11

    .line 582
    .local v12, "v21":F
    aput v2, v0, v5

    .line 583
    aput v4, v0, v9

    .line 584
    aput v6, v0, v1

    .line 585
    aput v8, v0, v11

    .line 586
    aput v10, v0, v3

    .line 587
    aput v12, v0, v7

    .line 588
    return-object p0
.end method

.method public trn(FF)Lcom/badlogic/gdx/math/Matrix3;
    .registers 6
    .param p1, "x"  # F
    .param p2, "y"  # F

    .line 387
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 388
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 389
    return-object p0
.end method

.method public trn(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Matrix3;
    .registers 6
    .param p1, "vector"  # Lcom/badlogic/gdx/math/Vector2;

    .line 377
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 378
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 379
    return-object p0
.end method

.method public trn(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix3;
    .registers 6
    .param p1, "vector"  # Lcom/badlogic/gdx/math/Vector3;

    .line 396
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 397
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 398
    return-object p0
.end method
