.class public Lcom/badlogic/gdx/math/Matrix4;
.super Ljava/lang/Object;
.source "Matrix4.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final M00:I = 0x0

.field public static final M01:I = 0x4

.field public static final M02:I = 0x8

.field public static final M03:I = 0xc

.field public static final M10:I = 0x1

.field public static final M11:I = 0x5

.field public static final M12:I = 0x9

.field public static final M13:I = 0xd

.field public static final M20:I = 0x2

.field public static final M21:I = 0x6

.field public static final M22:I = 0xa

.field public static final M23:I = 0xe

.field public static final M30:I = 0x3

.field public static final M31:I = 0x7

.field public static final M32:I = 0xb

.field public static final M33:I = 0xf

.field static final l_vex:Lcom/badlogic/gdx/math/Vector3;

.field static final l_vey:Lcom/badlogic/gdx/math/Vector3;

.field static final l_vez:Lcom/badlogic/gdx/math/Vector3;

.field static final quat:Lcom/badlogic/gdx/math/Quaternion;

.field static final quat2:Lcom/badlogic/gdx/math/Quaternion;

.field static final right:Lcom/badlogic/gdx/math/Vector3;

.field private static final serialVersionUID:J = -0x25b70d0e1a139be1L

.field static final tmpForward:Lcom/badlogic/gdx/math/Vector3;

.field static final tmpMat:Lcom/badlogic/gdx/math/Matrix4;

.field static final tmpUp:Lcom/badlogic/gdx/math/Vector3;

.field static final tmpVec:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field public final val:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 73
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    .line 74
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat2:Lcom/badlogic/gdx/math/Quaternion;

    .line 75
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    .line 76
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    .line 77
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    .line 78
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    .line 79
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    .line 80
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->right:Lcom/badlogic/gdx/math/Vector3;

    .line 81
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    .line 82
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v0, v1

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aput v2, v0, v1

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xf

    aput v2, v0, v1

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Matrix4;)V
    .registers 3
    .param p1, "matrix"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 97
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Quaternion;)V
    .registers 3
    .param p1, "quaternion"  # Lcom/badlogic/gdx/math/Quaternion;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 110
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Vector3;)V
    .registers 5
    .param p1, "position"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "rotation"  # Lcom/badlogic/gdx/math/Quaternion;
    .param p3, "scale"  # Lcom/badlogic/gdx/math/Vector3;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 119
    return-void
.end method

.method public constructor <init>([F)V
    .registers 3
    .param p1, "values"  # [F

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 104
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set([F)Lcom/badlogic/gdx/math/Matrix4;

    .line 105
    return-void
.end method

.method public static det([F)F
    .registers 17
    .param p0, "values"  # [F

    .line 1410
    const/4 v0, 0x3

    aget v1, p0, v0

    const/4 v2, 0x6

    aget v3, p0, v2

    mul-float/2addr v1, v3

    const/16 v3, 0x9

    aget v4, p0, v3

    mul-float/2addr v1, v4

    const/16 v4, 0xc

    aget v5, p0, v4

    mul-float/2addr v1, v5

    const/4 v5, 0x2

    aget v6, p0, v5

    const/4 v7, 0x7

    aget v8, p0, v7

    mul-float/2addr v6, v8

    aget v8, p0, v3

    mul-float/2addr v6, v8

    aget v8, p0, v4

    mul-float/2addr v6, v8

    sub-float/2addr v1, v6

    aget v6, p0, v0

    const/4 v8, 0x5

    aget v9, p0, v8

    mul-float/2addr v6, v9

    const/16 v9, 0xa

    aget v10, p0, v9

    mul-float/2addr v6, v10

    aget v10, p0, v4

    mul-float/2addr v6, v10

    sub-float/2addr v1, v6

    const/4 v6, 0x1

    aget v10, p0, v6

    aget v11, p0, v7

    mul-float/2addr v10, v11

    aget v11, p0, v9

    mul-float/2addr v10, v11

    aget v11, p0, v4

    mul-float/2addr v10, v11

    add-float/2addr v1, v10

    aget v10, p0, v5

    aget v11, p0, v8

    mul-float/2addr v10, v11

    const/16 v11, 0xb

    aget v12, p0, v11

    mul-float/2addr v10, v12

    aget v12, p0, v4

    mul-float/2addr v10, v12

    add-float/2addr v1, v10

    aget v10, p0, v6

    aget v12, p0, v2

    mul-float/2addr v10, v12

    aget v12, p0, v11

    mul-float/2addr v10, v12

    aget v4, p0, v4

    mul-float/2addr v10, v4

    sub-float/2addr v1, v10

    aget v4, p0, v0

    aget v10, p0, v2

    mul-float/2addr v4, v10

    const/16 v10, 0x8

    aget v12, p0, v10

    mul-float/2addr v4, v12

    const/16 v12, 0xd

    aget v13, p0, v12

    mul-float/2addr v4, v13

    sub-float/2addr v1, v4

    aget v4, p0, v5

    aget v13, p0, v7

    mul-float/2addr v4, v13

    aget v13, p0, v10

    mul-float/2addr v4, v13

    aget v13, p0, v12

    mul-float/2addr v4, v13

    add-float/2addr v1, v4

    aget v4, p0, v0

    const/4 v13, 0x4

    aget v14, p0, v13

    mul-float/2addr v4, v14

    aget v14, p0, v9

    mul-float/2addr v4, v14

    aget v14, p0, v12

    mul-float/2addr v4, v14

    add-float/2addr v1, v4

    const/4 v4, 0x0

    aget v14, p0, v4

    aget v15, p0, v7

    mul-float/2addr v14, v15

    aget v15, p0, v9

    mul-float/2addr v14, v15

    aget v15, p0, v12

    mul-float/2addr v14, v15

    sub-float/2addr v1, v14

    aget v14, p0, v5

    aget v15, p0, v13

    mul-float/2addr v14, v15

    aget v15, p0, v11

    mul-float/2addr v14, v15

    aget v15, p0, v12

    mul-float/2addr v14, v15

    sub-float/2addr v1, v14

    aget v14, p0, v4

    aget v15, p0, v2

    mul-float/2addr v14, v15

    aget v15, p0, v11

    mul-float/2addr v14, v15

    aget v12, p0, v12

    mul-float/2addr v14, v12

    add-float/2addr v1, v14

    aget v12, p0, v0

    aget v14, p0, v8

    mul-float/2addr v12, v14

    aget v14, p0, v10

    mul-float/2addr v12, v14

    const/16 v14, 0xe

    aget v15, p0, v14

    mul-float/2addr v12, v15

    add-float/2addr v1, v12

    aget v12, p0, v6

    aget v15, p0, v7

    mul-float/2addr v12, v15

    aget v15, p0, v10

    mul-float/2addr v12, v15

    aget v15, p0, v14

    mul-float/2addr v12, v15

    sub-float/2addr v1, v12

    aget v0, p0, v0

    aget v12, p0, v13

    mul-float/2addr v0, v12

    aget v12, p0, v3

    mul-float/2addr v0, v12

    aget v12, p0, v14

    mul-float/2addr v0, v12

    sub-float/2addr v1, v0

    aget v0, p0, v4

    aget v7, p0, v7

    mul-float/2addr v0, v7

    aget v7, p0, v3

    mul-float/2addr v0, v7

    aget v7, p0, v14

    mul-float/2addr v0, v7

    add-float/2addr v1, v0

    aget v0, p0, v6

    aget v7, p0, v13

    mul-float/2addr v0, v7

    aget v7, p0, v11

    mul-float/2addr v0, v7

    aget v7, p0, v14

    mul-float/2addr v0, v7

    add-float/2addr v1, v0

    aget v0, p0, v4

    aget v7, p0, v8

    mul-float/2addr v0, v7

    aget v7, p0, v11

    mul-float/2addr v0, v7

    aget v7, p0, v14

    mul-float/2addr v0, v7

    sub-float/2addr v1, v0

    aget v0, p0, v5

    aget v7, p0, v8

    mul-float/2addr v0, v7

    aget v7, p0, v10

    mul-float/2addr v0, v7

    const/16 v7, 0xf

    aget v11, p0, v7

    mul-float/2addr v0, v11

    sub-float/2addr v1, v0

    aget v0, p0, v6

    aget v11, p0, v2

    mul-float/2addr v0, v11

    aget v10, p0, v10

    mul-float/2addr v0, v10

    aget v10, p0, v7

    mul-float/2addr v0, v10

    add-float/2addr v1, v0

    aget v0, p0, v5

    aget v5, p0, v13

    mul-float/2addr v0, v5

    aget v5, p0, v3

    mul-float/2addr v0, v5

    aget v5, p0, v7

    mul-float/2addr v0, v5

    add-float/2addr v1, v0

    aget v0, p0, v4

    aget v2, p0, v2

    mul-float/2addr v0, v2

    aget v2, p0, v3

    mul-float/2addr v0, v2

    aget v2, p0, v7

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    aget v0, p0, v6

    aget v2, p0, v13

    mul-float/2addr v0, v2

    aget v2, p0, v9

    mul-float/2addr v0, v2

    aget v2, p0, v7

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    aget v0, p0, v4

    aget v2, p0, v8

    mul-float/2addr v0, v2

    aget v2, p0, v9

    mul-float/2addr v0, v2

    aget v2, p0, v7

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    return v1
.end method

.method public static inv([F)Z
    .registers 36
    .param p0, "values"  # [F

    .line 1335
    invoke-static/range {p0 .. p0}, Lcom/badlogic/gdx/math/Matrix4;->det([F)F

    move-result v0

    .line 1336
    .local v0, "l_det":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_b

    return v2

    .line 1337
    :cond_b
    const/16 v1, 0x9

    aget v3, p0, v1

    const/16 v4, 0xe

    aget v5, p0, v4

    mul-float/2addr v3, v5

    const/4 v5, 0x7

    aget v6, p0, v5

    mul-float/2addr v3, v6

    const/16 v6, 0xd

    aget v7, p0, v6

    const/16 v8, 0xa

    aget v9, p0, v8

    mul-float/2addr v7, v9

    aget v9, p0, v5

    mul-float/2addr v7, v9

    sub-float/2addr v3, v7

    aget v7, p0, v6

    const/4 v9, 0x6

    aget v10, p0, v9

    mul-float/2addr v7, v10

    const/16 v10, 0xb

    aget v11, p0, v10

    mul-float/2addr v7, v11

    add-float/2addr v3, v7

    const/4 v7, 0x5

    aget v11, p0, v7

    aget v12, p0, v4

    mul-float/2addr v11, v12

    aget v12, p0, v10

    mul-float/2addr v11, v12

    sub-float/2addr v3, v11

    aget v11, p0, v1

    aget v12, p0, v9

    mul-float/2addr v11, v12

    const/16 v12, 0xf

    aget v13, p0, v12

    mul-float/2addr v11, v13

    sub-float/2addr v3, v11

    aget v11, p0, v7

    aget v13, p0, v8

    mul-float/2addr v11, v13

    aget v13, p0, v12

    mul-float/2addr v11, v13

    add-float/2addr v3, v11

    .line 1340
    .local v3, "m00":F
    const/16 v11, 0xc

    aget v13, p0, v11

    aget v14, p0, v8

    mul-float/2addr v13, v14

    aget v14, p0, v5

    mul-float/2addr v13, v14

    const/16 v14, 0x8

    aget v15, p0, v14

    aget v16, p0, v4

    mul-float v15, v15, v16

    aget v16, p0, v5

    mul-float v15, v15, v16

    sub-float/2addr v13, v15

    aget v15, p0, v11

    aget v16, p0, v9

    mul-float v15, v15, v16

    aget v16, p0, v10

    mul-float v15, v15, v16

    sub-float/2addr v13, v15

    const/4 v15, 0x4

    aget v16, p0, v15

    aget v17, p0, v4

    mul-float v16, v16, v17

    aget v17, p0, v10

    mul-float v16, v16, v17

    add-float v13, v13, v16

    aget v16, p0, v14

    aget v17, p0, v9

    mul-float v16, v16, v17

    aget v17, p0, v12

    mul-float v16, v16, v17

    add-float v13, v13, v16

    aget v16, p0, v15

    aget v17, p0, v8

    mul-float v16, v16, v17

    aget v17, p0, v12

    mul-float v16, v16, v17

    sub-float v13, v13, v16

    .line 1343
    .local v13, "m01":F
    aget v16, p0, v14

    aget v17, p0, v6

    mul-float v16, v16, v17

    aget v17, p0, v5

    mul-float v16, v16, v17

    aget v17, p0, v11

    aget v18, p0, v1

    mul-float v17, v17, v18

    aget v18, p0, v5

    mul-float v17, v17, v18

    sub-float v16, v16, v17

    aget v17, p0, v11

    aget v18, p0, v7

    mul-float v17, v17, v18

    aget v18, p0, v10

    mul-float v17, v17, v18

    add-float v16, v16, v17

    aget v17, p0, v15

    aget v18, p0, v6

    mul-float v17, v17, v18

    aget v18, p0, v10

    mul-float v17, v17, v18

    sub-float v16, v16, v17

    aget v17, p0, v14

    aget v18, p0, v7

    mul-float v17, v17, v18

    aget v18, p0, v12

    mul-float v17, v17, v18

    sub-float v16, v16, v17

    aget v17, p0, v15

    aget v18, p0, v1

    mul-float v17, v17, v18

    aget v18, p0, v12

    mul-float v17, v17, v18

    add-float v16, v16, v17

    .line 1346
    .local v16, "m02":F
    aget v17, p0, v11

    aget v18, p0, v1

    mul-float v17, v17, v18

    aget v18, p0, v9

    mul-float v17, v17, v18

    aget v18, p0, v14

    aget v19, p0, v6

    mul-float v18, v18, v19

    aget v19, p0, v9

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    aget v18, p0, v11

    aget v19, p0, v7

    mul-float v18, v18, v19

    aget v19, p0, v8

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    aget v18, p0, v15

    aget v19, p0, v6

    mul-float v18, v18, v19

    aget v19, p0, v8

    mul-float v18, v18, v19

    add-float v17, v17, v18

    aget v18, p0, v14

    aget v19, p0, v7

    mul-float v18, v18, v19

    aget v19, p0, v4

    mul-float v18, v18, v19

    add-float v17, v17, v18

    aget v18, p0, v15

    aget v19, p0, v1

    mul-float v18, v18, v19

    aget v19, p0, v4

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    .line 1349
    .local v17, "m03":F
    aget v18, p0, v6

    aget v19, p0, v8

    mul-float v18, v18, v19

    const/16 v19, 0x3

    aget v20, p0, v19

    mul-float v18, v18, v20

    aget v20, p0, v1

    aget v21, p0, v4

    mul-float v20, v20, v21

    aget v21, p0, v19

    mul-float v20, v20, v21

    sub-float v18, v18, v20

    aget v20, p0, v6

    const/16 v21, 0x2

    aget v22, p0, v21

    mul-float v20, v20, v22

    aget v22, p0, v10

    mul-float v20, v20, v22

    sub-float v18, v18, v20

    const/16 v20, 0x1

    aget v22, p0, v20

    aget v23, p0, v4

    mul-float v22, v22, v23

    aget v23, p0, v10

    mul-float v22, v22, v23

    add-float v18, v18, v22

    aget v22, p0, v1

    aget v23, p0, v21

    mul-float v22, v22, v23

    aget v23, p0, v12

    mul-float v22, v22, v23

    add-float v18, v18, v22

    aget v22, p0, v20

    aget v23, p0, v8

    mul-float v22, v22, v23

    aget v23, p0, v12

    mul-float v22, v22, v23

    sub-float v18, v18, v22

    .line 1352
    .local v18, "m10":F
    aget v22, p0, v14

    aget v23, p0, v4

    mul-float v22, v22, v23

    aget v23, p0, v19

    mul-float v22, v22, v23

    aget v23, p0, v11

    aget v24, p0, v8

    mul-float v23, v23, v24

    aget v24, p0, v19

    mul-float v23, v23, v24

    sub-float v22, v22, v23

    aget v23, p0, v11

    aget v24, p0, v21

    mul-float v23, v23, v24

    aget v24, p0, v10

    mul-float v23, v23, v24

    add-float v22, v22, v23

    aget v23, p0, v2

    aget v24, p0, v4

    mul-float v23, v23, v24

    aget v24, p0, v10

    mul-float v23, v23, v24

    sub-float v22, v22, v23

    aget v23, p0, v14

    aget v24, p0, v21

    mul-float v23, v23, v24

    aget v24, p0, v12

    mul-float v23, v23, v24

    sub-float v22, v22, v23

    aget v23, p0, v2

    aget v24, p0, v8

    mul-float v23, v23, v24

    aget v24, p0, v12

    mul-float v23, v23, v24

    add-float v22, v22, v23

    .line 1355
    .local v22, "m11":F
    aget v23, p0, v11

    aget v24, p0, v1

    mul-float v23, v23, v24

    aget v24, p0, v19

    mul-float v23, v23, v24

    aget v24, p0, v14

    aget v25, p0, v6

    mul-float v24, v24, v25

    aget v25, p0, v19

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    aget v24, p0, v11

    aget v25, p0, v20

    mul-float v24, v24, v25

    aget v25, p0, v10

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    aget v24, p0, v2

    aget v25, p0, v6

    mul-float v24, v24, v25

    aget v25, p0, v10

    mul-float v24, v24, v25

    add-float v23, v23, v24

    aget v24, p0, v14

    aget v25, p0, v20

    mul-float v24, v24, v25

    aget v25, p0, v12

    mul-float v24, v24, v25

    add-float v23, v23, v24

    aget v24, p0, v2

    aget v25, p0, v1

    mul-float v24, v24, v25

    aget v25, p0, v12

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    .line 1358
    .local v23, "m12":F
    aget v24, p0, v14

    aget v25, p0, v6

    mul-float v24, v24, v25

    aget v25, p0, v21

    mul-float v24, v24, v25

    aget v25, p0, v11

    aget v26, p0, v1

    mul-float v25, v25, v26

    aget v26, p0, v21

    mul-float v25, v25, v26

    sub-float v24, v24, v25

    aget v25, p0, v11

    aget v26, p0, v20

    mul-float v25, v25, v26

    aget v26, p0, v8

    mul-float v25, v25, v26

    add-float v24, v24, v25

    aget v25, p0, v2

    aget v26, p0, v6

    mul-float v25, v25, v26

    aget v26, p0, v8

    mul-float v25, v25, v26

    sub-float v24, v24, v25

    aget v25, p0, v14

    aget v26, p0, v20

    mul-float v25, v25, v26

    aget v26, p0, v4

    mul-float v25, v25, v26

    sub-float v24, v24, v25

    aget v25, p0, v2

    aget v26, p0, v1

    mul-float v25, v25, v26

    aget v26, p0, v4

    mul-float v25, v25, v26

    add-float v24, v24, v25

    .line 1361
    .local v24, "m13":F
    aget v25, p0, v7

    aget v26, p0, v4

    mul-float v25, v25, v26

    aget v26, p0, v19

    mul-float v25, v25, v26

    aget v26, p0, v6

    aget v27, p0, v9

    mul-float v26, v26, v27

    aget v27, p0, v19

    mul-float v26, v26, v27

    sub-float v25, v25, v26

    aget v26, p0, v6

    aget v27, p0, v21

    mul-float v26, v26, v27

    aget v27, p0, v5

    mul-float v26, v26, v27

    add-float v25, v25, v26

    aget v26, p0, v20

    aget v27, p0, v4

    mul-float v26, v26, v27

    aget v27, p0, v5

    mul-float v26, v26, v27

    sub-float v25, v25, v26

    aget v26, p0, v7

    aget v27, p0, v21

    mul-float v26, v26, v27

    aget v27, p0, v12

    mul-float v26, v26, v27

    sub-float v25, v25, v26

    aget v26, p0, v20

    aget v27, p0, v9

    mul-float v26, v26, v27

    aget v27, p0, v12

    mul-float v26, v26, v27

    add-float v25, v25, v26

    .line 1364
    .local v25, "m20":F
    aget v26, p0, v11

    aget v27, p0, v9

    mul-float v26, v26, v27

    aget v27, p0, v19

    mul-float v26, v26, v27

    aget v27, p0, v15

    aget v28, p0, v4

    mul-float v27, v27, v28

    aget v28, p0, v19

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    aget v27, p0, v11

    aget v28, p0, v21

    mul-float v27, v27, v28

    aget v28, p0, v5

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    aget v27, p0, v2

    aget v28, p0, v4

    mul-float v27, v27, v28

    aget v28, p0, v5

    mul-float v27, v27, v28

    add-float v26, v26, v27

    aget v27, p0, v15

    aget v28, p0, v21

    mul-float v27, v27, v28

    aget v28, p0, v12

    mul-float v27, v27, v28

    add-float v26, v26, v27

    aget v27, p0, v2

    aget v28, p0, v9

    mul-float v27, v27, v28

    aget v28, p0, v12

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    .line 1367
    .local v26, "m21":F
    aget v27, p0, v15

    aget v28, p0, v6

    mul-float v27, v27, v28

    aget v28, p0, v19

    mul-float v27, v27, v28

    aget v28, p0, v11

    aget v29, p0, v7

    mul-float v28, v28, v29

    aget v29, p0, v19

    mul-float v28, v28, v29

    sub-float v27, v27, v28

    aget v28, p0, v11

    aget v29, p0, v20

    mul-float v28, v28, v29

    aget v29, p0, v5

    mul-float v28, v28, v29

    add-float v27, v27, v28

    aget v28, p0, v2

    aget v29, p0, v6

    mul-float v28, v28, v29

    aget v29, p0, v5

    mul-float v28, v28, v29

    sub-float v27, v27, v28

    aget v28, p0, v15

    aget v29, p0, v20

    mul-float v28, v28, v29

    aget v29, p0, v12

    mul-float v28, v28, v29

    sub-float v27, v27, v28

    aget v28, p0, v2

    aget v29, p0, v7

    mul-float v28, v28, v29

    aget v29, p0, v12

    mul-float v28, v28, v29

    add-float v27, v27, v28

    .line 1370
    .local v27, "m22":F
    aget v28, p0, v11

    aget v29, p0, v7

    mul-float v28, v28, v29

    aget v29, p0, v21

    mul-float v28, v28, v29

    aget v29, p0, v15

    aget v30, p0, v6

    mul-float v29, v29, v30

    aget v30, p0, v21

    mul-float v29, v29, v30

    sub-float v28, v28, v29

    aget v29, p0, v11

    aget v30, p0, v20

    mul-float v29, v29, v30

    aget v30, p0, v9

    mul-float v29, v29, v30

    sub-float v28, v28, v29

    aget v29, p0, v2

    aget v30, p0, v6

    mul-float v29, v29, v30

    aget v30, p0, v9

    mul-float v29, v29, v30

    add-float v28, v28, v29

    aget v29, p0, v15

    aget v30, p0, v20

    mul-float v29, v29, v30

    aget v30, p0, v4

    mul-float v29, v29, v30

    add-float v28, v28, v29

    aget v29, p0, v2

    aget v30, p0, v7

    mul-float v29, v29, v30

    aget v30, p0, v4

    mul-float v29, v29, v30

    sub-float v28, v28, v29

    .line 1373
    .local v28, "m23":F
    aget v29, p0, v1

    aget v30, p0, v9

    mul-float v29, v29, v30

    aget v30, p0, v19

    mul-float v29, v29, v30

    aget v30, p0, v7

    aget v31, p0, v8

    mul-float v30, v30, v31

    aget v31, p0, v19

    mul-float v30, v30, v31

    sub-float v29, v29, v30

    aget v30, p0, v1

    aget v31, p0, v21

    mul-float v30, v30, v31

    aget v31, p0, v5

    mul-float v30, v30, v31

    sub-float v29, v29, v30

    aget v30, p0, v20

    aget v31, p0, v8

    mul-float v30, v30, v31

    aget v31, p0, v5

    mul-float v30, v30, v31

    add-float v29, v29, v30

    aget v30, p0, v7

    aget v31, p0, v21

    mul-float v30, v30, v31

    aget v31, p0, v10

    mul-float v30, v30, v31

    add-float v29, v29, v30

    aget v30, p0, v20

    aget v31, p0, v9

    mul-float v30, v30, v31

    aget v31, p0, v10

    mul-float v30, v30, v31

    sub-float v29, v29, v30

    .line 1376
    .local v29, "m30":F
    aget v30, p0, v15

    aget v31, p0, v8

    mul-float v30, v30, v31

    aget v31, p0, v19

    mul-float v30, v30, v31

    aget v31, p0, v14

    aget v32, p0, v9

    mul-float v31, v31, v32

    aget v32, p0, v19

    mul-float v31, v31, v32

    sub-float v30, v30, v31

    aget v31, p0, v14

    aget v32, p0, v21

    mul-float v31, v31, v32

    aget v32, p0, v5

    mul-float v31, v31, v32

    add-float v30, v30, v31

    aget v31, p0, v2

    aget v32, p0, v8

    mul-float v31, v31, v32

    aget v32, p0, v5

    mul-float v31, v31, v32

    sub-float v30, v30, v31

    aget v31, p0, v15

    aget v32, p0, v21

    mul-float v31, v31, v32

    aget v32, p0, v10

    mul-float v31, v31, v32

    sub-float v30, v30, v31

    aget v31, p0, v2

    aget v32, p0, v9

    mul-float v31, v31, v32

    aget v32, p0, v10

    mul-float v31, v31, v32

    add-float v30, v30, v31

    .line 1379
    .local v30, "m31":F
    aget v31, p0, v14

    aget v32, p0, v7

    mul-float v31, v31, v32

    aget v32, p0, v19

    mul-float v31, v31, v32

    aget v32, p0, v15

    aget v33, p0, v1

    mul-float v32, v32, v33

    aget v33, p0, v19

    mul-float v32, v32, v33

    sub-float v31, v31, v32

    aget v32, p0, v14

    aget v33, p0, v20

    mul-float v32, v32, v33

    aget v33, p0, v5

    mul-float v32, v32, v33

    sub-float v31, v31, v32

    aget v32, p0, v2

    aget v33, p0, v1

    mul-float v32, v32, v33

    aget v33, p0, v5

    mul-float v32, v32, v33

    add-float v31, v31, v32

    aget v32, p0, v15

    aget v33, p0, v20

    mul-float v32, v32, v33

    aget v33, p0, v10

    mul-float v32, v32, v33

    add-float v31, v31, v32

    aget v32, p0, v2

    aget v33, p0, v7

    mul-float v32, v32, v33

    aget v33, p0, v10

    mul-float v32, v32, v33

    sub-float v31, v31, v32

    .line 1382
    .local v31, "m32":F
    aget v32, p0, v15

    aget v33, p0, v1

    mul-float v32, v32, v33

    aget v33, p0, v21

    mul-float v32, v32, v33

    aget v33, p0, v14

    aget v34, p0, v7

    mul-float v33, v33, v34

    aget v34, p0, v21

    mul-float v33, v33, v34

    sub-float v32, v32, v33

    aget v33, p0, v14

    aget v34, p0, v20

    mul-float v33, v33, v34

    aget v34, p0, v9

    mul-float v33, v33, v34

    add-float v32, v32, v33

    aget v33, p0, v2

    aget v34, p0, v1

    mul-float v33, v33, v34

    aget v34, p0, v9

    mul-float v33, v33, v34

    sub-float v32, v32, v33

    aget v33, p0, v15

    aget v34, p0, v20

    mul-float v33, v33, v34

    aget v34, p0, v8

    mul-float v33, v33, v34

    sub-float v32, v32, v33

    aget v33, p0, v2

    aget v34, p0, v7

    mul-float v33, v33, v34

    aget v34, p0, v8

    mul-float v33, v33, v34

    add-float v32, v32, v33

    .line 1385
    .local v32, "m33":F
    const/high16 v33, 0x3f800000  # 1.0f

    div-float v33, v33, v0

    .line 1386
    .local v33, "inv_det":F
    mul-float v34, v3, v33

    aput v34, p0, v2

    .line 1387
    mul-float v2, v18, v33

    aput v2, p0, v20

    .line 1388
    mul-float v2, v25, v33

    aput v2, p0, v21

    .line 1389
    mul-float v2, v29, v33

    aput v2, p0, v19

    .line 1390
    mul-float v2, v13, v33

    aput v2, p0, v15

    .line 1391
    mul-float v2, v22, v33

    aput v2, p0, v7

    .line 1392
    mul-float v2, v26, v33

    aput v2, p0, v9

    .line 1393
    mul-float v2, v30, v33

    aput v2, p0, v5

    .line 1394
    mul-float v2, v16, v33

    aput v2, p0, v14

    .line 1395
    mul-float v2, v23, v33

    aput v2, p0, v1

    .line 1396
    mul-float v1, v27, v33

    aput v1, p0, v8

    .line 1397
    mul-float v1, v31, v33

    aput v1, p0, v10

    .line 1398
    mul-float v1, v17, v33

    aput v1, p0, v11

    .line 1399
    mul-float v1, v24, v33

    aput v1, p0, v6

    .line 1400
    mul-float v1, v28, v33

    aput v1, p0, v4

    .line 1401
    mul-float v1, v32, v33

    aput v1, p0, v12

    .line 1402
    return v20
.end method

.method public static mul([F[F)V
    .registers 36
    .param p0, "mata"  # [F
    .param p1, "matb"  # [F

    .line 1250
    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    mul-float/2addr v1, v2

    const/4 v2, 0x4

    aget v3, p0, v2

    const/4 v4, 0x1

    aget v5, p1, v4

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    const/16 v3, 0x8

    aget v5, p0, v3

    const/4 v6, 0x2

    aget v7, p1, v6

    mul-float/2addr v5, v7

    add-float/2addr v1, v5

    const/16 v5, 0xc

    aget v7, p0, v5

    const/4 v8, 0x3

    aget v9, p1, v8

    mul-float/2addr v7, v9

    add-float/2addr v1, v7

    .line 1251
    .local v1, "m00":F
    aget v7, p0, v0

    aget v9, p1, v2

    mul-float/2addr v7, v9

    aget v9, p0, v2

    const/4 v10, 0x5

    aget v11, p1, v10

    mul-float/2addr v9, v11

    add-float/2addr v7, v9

    aget v9, p0, v3

    const/4 v11, 0x6

    aget v12, p1, v11

    mul-float/2addr v9, v12

    add-float/2addr v7, v9

    aget v9, p0, v5

    const/4 v12, 0x7

    aget v13, p1, v12

    mul-float/2addr v9, v13

    add-float/2addr v7, v9

    .line 1252
    .local v7, "m01":F
    aget v9, p0, v0

    aget v13, p1, v3

    mul-float/2addr v9, v13

    aget v13, p0, v2

    const/16 v14, 0x9

    aget v15, p1, v14

    mul-float/2addr v13, v15

    add-float/2addr v9, v13

    aget v13, p0, v3

    const/16 v15, 0xa

    aget v16, p1, v15

    mul-float v13, v13, v16

    add-float/2addr v9, v13

    aget v13, p0, v5

    const/16 v16, 0xb

    aget v17, p1, v16

    mul-float v13, v13, v17

    add-float/2addr v9, v13

    .line 1253
    .local v9, "m02":F
    aget v13, p0, v0

    aget v17, p1, v5

    mul-float v13, v13, v17

    aget v17, p0, v2

    const/16 v18, 0xd

    aget v19, p1, v18

    mul-float v17, v17, v19

    add-float v13, v13, v17

    aget v17, p0, v3

    const/16 v19, 0xe

    aget v20, p1, v19

    mul-float v17, v17, v20

    add-float v13, v13, v17

    aget v17, p0, v5

    const/16 v20, 0xf

    aget v21, p1, v20

    mul-float v17, v17, v21

    add-float v13, v13, v17

    .line 1254
    .local v13, "m03":F
    aget v17, p0, v4

    aget v21, p1, v0

    mul-float v17, v17, v21

    aget v21, p0, v10

    aget v22, p1, v4

    mul-float v21, v21, v22

    add-float v17, v17, v21

    aget v21, p0, v14

    aget v22, p1, v6

    mul-float v21, v21, v22

    add-float v17, v17, v21

    aget v21, p0, v18

    aget v22, p1, v8

    mul-float v21, v21, v22

    add-float v17, v17, v21

    .line 1255
    .local v17, "m10":F
    aget v21, p0, v4

    aget v22, p1, v2

    mul-float v21, v21, v22

    aget v22, p0, v10

    aget v23, p1, v10

    mul-float v22, v22, v23

    add-float v21, v21, v22

    aget v22, p0, v14

    aget v23, p1, v11

    mul-float v22, v22, v23

    add-float v21, v21, v22

    aget v22, p0, v18

    aget v23, p1, v12

    mul-float v22, v22, v23

    add-float v21, v21, v22

    .line 1256
    .local v21, "m11":F
    aget v22, p0, v4

    aget v23, p1, v3

    mul-float v22, v22, v23

    aget v23, p0, v10

    aget v24, p1, v14

    mul-float v23, v23, v24

    add-float v22, v22, v23

    aget v23, p0, v14

    aget v24, p1, v15

    mul-float v23, v23, v24

    add-float v22, v22, v23

    aget v23, p0, v18

    aget v24, p1, v16

    mul-float v23, v23, v24

    add-float v22, v22, v23

    .line 1257
    .local v22, "m12":F
    aget v23, p0, v4

    aget v24, p1, v5

    mul-float v23, v23, v24

    aget v24, p0, v10

    aget v25, p1, v18

    mul-float v24, v24, v25

    add-float v23, v23, v24

    aget v24, p0, v14

    aget v25, p1, v19

    mul-float v24, v24, v25

    add-float v23, v23, v24

    aget v24, p0, v18

    aget v25, p1, v20

    mul-float v24, v24, v25

    add-float v23, v23, v24

    .line 1258
    .local v23, "m13":F
    aget v24, p0, v6

    aget v25, p1, v0

    mul-float v24, v24, v25

    aget v25, p0, v11

    aget v26, p1, v4

    mul-float v25, v25, v26

    add-float v24, v24, v25

    aget v25, p0, v15

    aget v26, p1, v6

    mul-float v25, v25, v26

    add-float v24, v24, v25

    aget v25, p0, v19

    aget v26, p1, v8

    mul-float v25, v25, v26

    add-float v24, v24, v25

    .line 1259
    .local v24, "m20":F
    aget v25, p0, v6

    aget v26, p1, v2

    mul-float v25, v25, v26

    aget v26, p0, v11

    aget v27, p1, v10

    mul-float v26, v26, v27

    add-float v25, v25, v26

    aget v26, p0, v15

    aget v27, p1, v11

    mul-float v26, v26, v27

    add-float v25, v25, v26

    aget v26, p0, v19

    aget v27, p1, v12

    mul-float v26, v26, v27

    add-float v25, v25, v26

    .line 1260
    .local v25, "m21":F
    aget v26, p0, v6

    aget v27, p1, v3

    mul-float v26, v26, v27

    aget v27, p0, v11

    aget v28, p1, v14

    mul-float v27, v27, v28

    add-float v26, v26, v27

    aget v27, p0, v15

    aget v28, p1, v15

    mul-float v27, v27, v28

    add-float v26, v26, v27

    aget v27, p0, v19

    aget v28, p1, v16

    mul-float v27, v27, v28

    add-float v26, v26, v27

    .line 1261
    .local v26, "m22":F
    aget v27, p0, v6

    aget v28, p1, v5

    mul-float v27, v27, v28

    aget v28, p0, v11

    aget v29, p1, v18

    mul-float v28, v28, v29

    add-float v27, v27, v28

    aget v28, p0, v15

    aget v29, p1, v19

    mul-float v28, v28, v29

    add-float v27, v27, v28

    aget v28, p0, v19

    aget v29, p1, v20

    mul-float v28, v28, v29

    add-float v27, v27, v28

    .line 1262
    .local v27, "m23":F
    aget v28, p0, v8

    aget v29, p1, v0

    mul-float v28, v28, v29

    aget v29, p0, v12

    aget v30, p1, v4

    mul-float v29, v29, v30

    add-float v28, v28, v29

    aget v29, p0, v16

    aget v30, p1, v6

    mul-float v29, v29, v30

    add-float v28, v28, v29

    aget v29, p0, v20

    aget v30, p1, v8

    mul-float v29, v29, v30

    add-float v28, v28, v29

    .line 1263
    .local v28, "m30":F
    aget v29, p0, v8

    aget v30, p1, v2

    mul-float v29, v29, v30

    aget v30, p0, v12

    aget v31, p1, v10

    mul-float v30, v30, v31

    add-float v29, v29, v30

    aget v30, p0, v16

    aget v31, p1, v11

    mul-float v30, v30, v31

    add-float v29, v29, v30

    aget v30, p0, v20

    aget v31, p1, v12

    mul-float v30, v30, v31

    add-float v29, v29, v30

    .line 1264
    .local v29, "m31":F
    aget v30, p0, v8

    aget v31, p1, v3

    mul-float v30, v30, v31

    aget v31, p0, v12

    aget v32, p1, v14

    mul-float v31, v31, v32

    add-float v30, v30, v31

    aget v31, p0, v16

    aget v32, p1, v15

    mul-float v31, v31, v32

    add-float v30, v30, v31

    aget v31, p0, v20

    aget v32, p1, v16

    mul-float v31, v31, v32

    add-float v30, v30, v31

    .line 1265
    .local v30, "m32":F
    aget v31, p0, v8

    aget v32, p1, v5

    mul-float v31, v31, v32

    aget v32, p0, v12

    aget v33, p1, v18

    mul-float v32, v32, v33

    add-float v31, v31, v32

    aget v32, p0, v16

    aget v33, p1, v19

    mul-float v32, v32, v33

    add-float v31, v31, v32

    aget v32, p0, v20

    aget v33, p1, v20

    mul-float v32, v32, v33

    add-float v31, v31, v32

    .line 1266
    .local v31, "m33":F
    aput v1, p0, v0

    .line 1267
    aput v17, p0, v4

    .line 1268
    aput v24, p0, v6

    .line 1269
    aput v28, p0, v8

    .line 1270
    aput v7, p0, v2

    .line 1271
    aput v21, p0, v10

    .line 1272
    aput v25, p0, v11

    .line 1273
    aput v29, p0, v12

    .line 1274
    aput v9, p0, v3

    .line 1275
    aput v22, p0, v14

    .line 1276
    aput v26, p0, v15

    .line 1277
    aput v30, p0, v16

    .line 1278
    aput v13, p0, v5

    .line 1279
    aput v23, p0, v18

    .line 1280
    aput v27, p0, v19

    .line 1281
    aput v31, p0, v20

    .line 1282
    return-void
.end method

.method public static mulVec([F[F)V
    .registers 10
    .param p0, "mat"  # [F
    .param p1, "vec"  # [F

    .line 1291
    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p0, v0

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x4

    aget v4, p0, v4

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p1, v3

    const/16 v5, 0x8

    aget v5, p0, v5

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    const/16 v4, 0xc

    aget v4, p0, v4

    add-float/2addr v1, v4

    .line 1292
    .local v1, "x":F
    aget v4, p1, v0

    aget v5, p0, v2

    mul-float/2addr v4, v5

    aget v5, p1, v2

    const/4 v6, 0x5

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, p1, v3

    const/16 v6, 0x9

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/16 v5, 0xd

    aget v5, p0, v5

    add-float/2addr v4, v5

    .line 1293
    .local v4, "y":F
    aget v5, p1, v0

    aget v6, p0, v3

    mul-float/2addr v5, v6

    aget v6, p1, v2

    const/4 v7, 0x6

    aget v7, p0, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aget v6, p1, v3

    const/16 v7, 0xa

    aget v7, p0, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/16 v6, 0xe

    aget v6, p0, v6

    add-float/2addr v5, v6

    .line 1294
    .local v5, "z":F
    aput v1, p1, v0

    .line 1295
    aput v4, p1, v2

    .line 1296
    aput v5, p1, v3

    .line 1297
    return-void
.end method

.method public static native mulVec([F[FIII)V
.end method

.method public static prj([F[F)V
    .registers 11
    .param p0, "mat"  # [F
    .param p1, "vec"  # [F

    .line 1306
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x3

    aget v2, p0, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x7

    aget v4, p0, v4

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p1, v3

    const/16 v5, 0xb

    aget v5, p0, v5

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    const/16 v4, 0xf

    aget v4, p0, v4

    add-float/2addr v1, v4

    const/high16 v4, 0x3f800000  # 1.0f

    div-float/2addr v4, v1

    .line 1307
    .local v4, "inv_w":F
    aget v1, p1, v0

    aget v5, p0, v0

    mul-float/2addr v1, v5

    aget v5, p1, v2

    const/4 v6, 0x4

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v1, v5

    aget v5, p1, v3

    const/16 v6, 0x8

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v1, v5

    const/16 v5, 0xc

    aget v5, p0, v5

    add-float/2addr v1, v5

    mul-float/2addr v1, v4

    .line 1308
    .local v1, "x":F
    aget v5, p1, v0

    aget v6, p0, v2

    mul-float/2addr v5, v6

    aget v6, p1, v2

    const/4 v7, 0x5

    aget v7, p0, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aget v6, p1, v3

    const/16 v7, 0x9

    aget v7, p0, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/16 v6, 0xd

    aget v6, p0, v6

    add-float/2addr v5, v6

    mul-float/2addr v5, v4

    .line 1309
    .local v5, "y":F
    aget v6, p1, v0

    aget v7, p0, v3

    mul-float/2addr v6, v7

    aget v7, p1, v2

    const/4 v8, 0x6

    aget v8, p0, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aget v7, p1, v3

    const/16 v8, 0xa

    aget v8, p0, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    const/16 v7, 0xe

    aget v7, p0, v7

    add-float/2addr v6, v7

    mul-float/2addr v6, v4

    .line 1310
    .local v6, "z":F
    aput v1, p1, v0

    .line 1311
    aput v5, p1, v2

    .line 1312
    aput v6, p1, v3

    .line 1313
    return-void
.end method

.method public static native prj([F[FIII)V
.end method

.method public static rot([F[F)V
    .registers 10
    .param p0, "mat"  # [F
    .param p1, "vec"  # [F

    .line 1322
    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p0, v0

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x4

    aget v4, p0, v4

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p1, v3

    const/16 v5, 0x8

    aget v5, p0, v5

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 1323
    .local v1, "x":F
    aget v4, p1, v0

    aget v5, p0, v2

    mul-float/2addr v4, v5

    aget v5, p1, v2

    const/4 v6, 0x5

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, p1, v3

    const/16 v6, 0x9

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 1324
    .local v4, "y":F
    aget v5, p1, v0

    aget v6, p0, v3

    mul-float/2addr v5, v6

    aget v6, p1, v2

    const/4 v7, 0x6

    aget v7, p0, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aget v6, p1, v3

    const/16 v7, 0xa

    aget v7, p0, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 1325
    .local v5, "z":F
    aput v1, p1, v0

    .line 1326
    aput v4, p1, v2

    .line 1327
    aput v5, p1, v3

    .line 1328
    return-void
.end method

.method public static native rot([F[FIII)V
.end method


# virtual methods
.method public avg(Lcom/badlogic/gdx/math/Matrix4;F)Lcom/badlogic/gdx/math/Matrix4;
    .registers 7
    .param p1, "other"  # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "w"  # F

    .line 863
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 864
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 866
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 867
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat2:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 869
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 870
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->right:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 872
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float v3, v2, p2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->setToScaling(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 873
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->quat2:Lcom/badlogic/gdx/math/Quaternion;

    sub-float v3, v2, p2

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/math/Quaternion;->slerp(Lcom/badlogic/gdx/math/Quaternion;F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    .line 874
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->right:Lcom/badlogic/gdx/math/Vector3;

    sub-float/2addr v2, p2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 875
    return-object p0
.end method

.method public avg([Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 7
    .param p1, "t"  # [Lcom/badlogic/gdx/math/Matrix4;

    .line 883
    array-length v0, p1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    div-float/2addr v1, v0

    .line 885
    .local v1, "w":F
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 886
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    aget-object v3, p1, v2

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->quat2:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Quaternion;->exp(F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 887
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    aget-object v2, p1, v2

    sget-object v3, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 889
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_3a
    array-length v2, p1

    if-ge v0, v2, :cond_73

    .line 890
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    aget-object v3, p1, v0

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 891
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    aget-object v3, p1, v0

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->quat2:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Quaternion;->exp(F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Quaternion;->mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 892
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    aget-object v3, p1, v0

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 889
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 894
    .end local v0  # "i":I
    :cond_73
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Quaternion;->nor()Lcom/badlogic/gdx/math/Quaternion;

    .line 896
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->setToScaling(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 897
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    .line 898
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 899
    return-object p0
.end method

.method public avg([Lcom/badlogic/gdx/math/Matrix4;[F)Lcom/badlogic/gdx/math/Matrix4;
    .registers 7
    .param p1, "t"  # [Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "w"  # [F

    .line 909
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    sget-object v3, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 910
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    aget-object v2, p1, v1

    sget-object v3, Lcom/badlogic/gdx/math/Matrix4;->quat2:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Quaternion;->exp(F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 911
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    aget-object v2, p1, v1

    sget-object v3, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    aget v1, p2, v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 913
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_3b
    array-length v1, p1

    if-ge v0, v1, :cond_7a

    .line 914
    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    aget-object v2, p1, v0

    sget-object v3, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 915
    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    aget-object v2, p1, v0

    sget-object v3, Lcom/badlogic/gdx/math/Matrix4;->quat2:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Quaternion;->exp(F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Quaternion;->mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 916
    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    aget-object v2, p1, v0

    sget-object v3, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 913
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 918
    .end local v0  # "i":I
    :cond_7a
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Quaternion;->nor()Lcom/badlogic/gdx/math/Quaternion;

    .line 920
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->setToScaling(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 921
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    .line 922
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 923
    return-object p0
.end method

.method public cpy()Lcom/badlogic/gdx/math/Matrix4;
    .registers 2

    .line 282
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/Matrix4;-><init>(Lcom/badlogic/gdx/math/Matrix4;)V

    return-object v0
.end method

.method public det()F
    .registers 17

    .line 453
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    mul-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v3, v3, v5

    mul-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xc

    aget v3, v3, v6

    mul-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x2

    aget v3, v3, v7

    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v9, 0x7

    aget v8, v8, v9

    mul-float/2addr v3, v8

    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v8, v8, v5

    mul-float/2addr v3, v8

    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v8, v8, v6

    mul-float/2addr v3, v8

    sub-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v2

    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v10, 0x5

    aget v8, v8, v10

    mul-float/2addr v3, v8

    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v11, 0xa

    aget v8, v8, v11

    mul-float/2addr v3, v8

    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v8, v8, v6

    mul-float/2addr v3, v8

    sub-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v8, 0x1

    aget v3, v3, v8

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v9

    mul-float/2addr v3, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v11

    mul-float/2addr v3, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v6

    mul-float/2addr v3, v12

    add-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v7

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v10

    mul-float/2addr v3, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v13, 0xb

    aget v12, v12, v13

    mul-float/2addr v3, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v6

    mul-float/2addr v3, v12

    add-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v4

    mul-float/2addr v3, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v13

    mul-float/2addr v3, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v12, v6

    mul-float/2addr v3, v6

    sub-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v2

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v4

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v12, 0x8

    aget v6, v6, v12

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xd

    aget v6, v6, v14

    mul-float/2addr v3, v6

    sub-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v7

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v12

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v14

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v2

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v15, 0x4

    aget v6, v6, v15

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v11

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v14

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x0

    aget v3, v3, v6

    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v9

    mul-float/2addr v3, v5

    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v11

    mul-float/2addr v3, v5

    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v14

    mul-float/2addr v3, v5

    sub-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v7

    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v15

    mul-float/2addr v3, v5

    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v13

    mul-float/2addr v3, v5

    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v14

    mul-float/2addr v3, v5

    sub-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v6

    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v4

    mul-float/2addr v3, v5

    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v13

    mul-float/2addr v3, v5

    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v14

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v2

    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v10

    mul-float/2addr v3, v5

    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    mul-float/2addr v3, v5

    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xe

    aget v5, v5, v14

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v9

    mul-float/2addr v3, v5

    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    mul-float/2addr v3, v5

    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v14

    mul-float/2addr v3, v5

    sub-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v3, v2

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v15

    mul-float/2addr v2, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v3, v3, v5

    mul-float/2addr v2, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v14

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v6

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v9

    mul-float/2addr v2, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v3, v3, v5

    mul-float/2addr v2, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v14

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v15

    mul-float/2addr v2, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v13

    mul-float/2addr v2, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v14

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v6

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    mul-float/2addr v2, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v13

    mul-float/2addr v2, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v14

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v7

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    mul-float/2addr v2, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v12

    mul-float/2addr v2, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v3, v3, v5

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v12

    mul-float/2addr v2, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v7

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v15

    mul-float/2addr v2, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x9

    aget v3, v3, v7

    mul-float/2addr v2, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v6

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x9

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v5

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v15

    mul-float/2addr v2, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v11

    mul-float/2addr v2, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v5

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v6

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    mul-float/2addr v2, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v11

    mul-float/2addr v2, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    return v1
.end method

.method public det3x3()F
    .registers 13

    .line 466
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xa

    aget v2, v2, v4

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x4

    aget v2, v2, v5

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x9

    aget v6, v6, v7

    mul-float/2addr v2, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v8, 0x2

    aget v6, v6, v8

    mul-float/2addr v2, v6

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x8

    aget v2, v2, v6

    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    mul-float/2addr v2, v9

    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v11, 0x6

    aget v9, v9, v11

    mul-float/2addr v2, v9

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v2, v1

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v7

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v11

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v10

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v4

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public extract4x3Matrix([F)V
    .registers 6
    .param p1, "dst"  # [F

    .line 1621
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    aput v0, p1, v1

    .line 1622
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    aput v0, p1, v1

    .line 1623
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    aput v0, p1, v1

    .line 1624
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    aget v0, v0, v1

    const/4 v2, 0x3

    aput v0, p1, v2

    .line 1625
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x5

    aget v0, v0, v2

    aput v0, p1, v1

    .line 1626
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    aget v0, v0, v1

    aput v0, p1, v2

    .line 1627
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x8

    aget v0, v0, v2

    aput v0, p1, v1

    .line 1628
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x9

    aget v0, v0, v1

    const/4 v3, 0x7

    aput v0, p1, v3

    .line 1629
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v0, v0, v3

    aput v0, p1, v2

    .line 1630
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xc

    aget v0, v0, v2

    aput v0, p1, v1

    .line 1631
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aget v0, v0, v1

    aput v0, p1, v3

    .line 1632
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aget v0, v0, v1

    const/16 v1, 0xb

    aput v0, p1, v1

    .line 1633
    return-void
.end method

.method public getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;
    .registers 3
    .param p1, "rotation"  # Lcom/badlogic/gdx/math/Quaternion;

    .line 1059
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/math/Quaternion;->setFromMatrix(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public getRotation(Lcom/badlogic/gdx/math/Quaternion;Z)Lcom/badlogic/gdx/math/Quaternion;
    .registers 4
    .param p1, "rotation"  # Lcom/badlogic/gdx/math/Quaternion;
    .param p2, "normalizeAxes"  # Z

    .line 1052
    invoke-virtual {p1, p2, p0}, Lcom/badlogic/gdx/math/Quaternion;->setFromMatrix(ZLcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .registers 5
    .param p1, "scale"  # Lcom/badlogic/gdx/math/Vector3;

    .line 1098
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getScaleX()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getScaleY()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getScaleZ()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getScaleX()F
    .registers 3

    .line 1079
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x8

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_2b

    .line 1080
    :cond_21
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getScaleXSquared()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1079
    :goto_2b
    return v0
.end method

.method public getScaleXSquared()F
    .registers 5

    .line 1064
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v2, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getScaleY()F
    .registers 3

    .line 1085
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x9

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_2b

    .line 1086
    :cond_21
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getScaleYSquared()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1085
    :goto_2b
    return v0
.end method

.method public getScaleYSquared()F
    .registers 5

    .line 1069
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v2, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x9

    aget v1, v1, v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getScaleZ()F
    .registers 3

    .line 1091
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_2b

    .line 1092
    :cond_21
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getScaleZSquared()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1091
    :goto_2b
    return v0
.end method

.method public getScaleZSquared()F
    .registers 5

    .line 1074
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v2, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xa

    aget v1, v1, v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .registers 4
    .param p1, "position"  # Lcom/badlogic/gdx/math/Vector3;

    .line 1041
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 1042
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 1043
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 1044
    return-object p1
.end method

.method public getValues()[F
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    return-object v0
.end method

.method public hasRotationOrScaling()Z
    .registers 6

    .line 1637
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v0, v2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x5

    aget v0, v0, v4

    invoke-static {v0, v2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xa

    aget v0, v0, v4

    invoke-static {v0, v2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x4

    aget v0, v0, v2

    .line 1638
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x8

    aget v0, v0, v2

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v0, v0, v3

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x9

    aget v0, v0, v2

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x2

    aget v0, v0, v2

    .line 1639
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x6

    aget v0, v0, v2

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-nez v0, :cond_69

    :cond_68
    move v1, v3

    .line 1637
    :cond_69
    return v1
.end method

.method public idt()Lcom/badlogic/gdx/math/Matrix4;
    .registers 5

    .line 366
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v0, v1

    .line 367
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    const/4 v3, 0x0

    aput v3, v0, v1

    .line 368
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 369
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aput v3, v0, v1

    .line 370
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x1

    aput v3, v0, v1

    .line 371
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 372
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 373
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aput v3, v0, v1

    .line 374
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 375
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    aput v3, v0, v1

    .line 376
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aput v2, v0, v1

    .line 377
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput v3, v0, v1

    .line 378
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 379
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 380
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xb

    aput v3, v0, v1

    .line 381
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xf

    aput v2, v0, v1

    .line 382
    return-object p0
.end method

.method public inv()Lcom/badlogic/gdx/math/Matrix4;
    .registers 38

    .line 389
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    mul-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v3, v3, v5

    mul-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xc

    aget v3, v3, v6

    mul-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x2

    aget v3, v3, v7

    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v9, 0x7

    aget v8, v8, v9

    mul-float/2addr v3, v8

    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v8, v8, v5

    mul-float/2addr v3, v8

    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v8, v8, v6

    mul-float/2addr v3, v8

    sub-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v2

    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v10, 0x5

    aget v8, v8, v10

    mul-float/2addr v3, v8

    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v11, 0xa

    aget v8, v8, v11

    mul-float/2addr v3, v8

    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v8, v8, v6

    mul-float/2addr v3, v8

    sub-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v8, 0x1

    aget v3, v3, v8

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v9

    mul-float/2addr v3, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v11

    mul-float/2addr v3, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v6

    mul-float/2addr v3, v12

    add-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v7

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v10

    mul-float/2addr v3, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v13, 0xb

    aget v12, v12, v13

    mul-float/2addr v3, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v6

    mul-float/2addr v3, v12

    add-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v4

    mul-float/2addr v3, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v13

    mul-float/2addr v3, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v6

    mul-float/2addr v3, v12

    sub-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v2

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v4

    mul-float/2addr v3, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0x8

    aget v12, v12, v14

    mul-float/2addr v3, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v15, 0xd

    aget v12, v12, v15

    mul-float/2addr v3, v12

    sub-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v7

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v9

    mul-float/2addr v3, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v14

    mul-float/2addr v3, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v15

    mul-float/2addr v3, v12

    add-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v2

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v16, 0x4

    aget v12, v12, v16

    mul-float/2addr v3, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v11

    mul-float/2addr v3, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v15

    mul-float/2addr v3, v12

    add-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v12, 0x0

    aget v3, v3, v12

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v11

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v15

    mul-float/2addr v3, v6

    sub-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v7

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v16

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v13

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v15

    mul-float/2addr v3, v6

    sub-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v12

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v4

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v13

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v15

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v2

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v10

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v14

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v18, 0xe

    aget v6, v6, v18

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v14

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v18

    mul-float/2addr v3, v6

    sub-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v2

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v16

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v5

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v18

    mul-float/2addr v3, v6

    sub-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v12

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v5

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v18

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v16

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v13

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v18

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v12

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v10

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v13

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v18

    mul-float/2addr v3, v6

    sub-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v7

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v10

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v14

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v19, 0xf

    aget v6, v6, v19

    mul-float/2addr v3, v6

    sub-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v4

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v14

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v19

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v7

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v16

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v5

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v19

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v12

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v4

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v5

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v19

    mul-float/2addr v3, v6

    sub-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v16

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v11

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v19

    mul-float/2addr v3, v6

    sub-float/2addr v1, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v12

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v10

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v11

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v19

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    .line 398
    .local v1, "l_det":F
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_8e2

    .line 399
    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v5

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v18

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v15

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v11

    mul-float/2addr v6, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v9

    mul-float/2addr v6, v12

    sub-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v15

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v4

    mul-float/2addr v6, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v13

    mul-float/2addr v6, v12

    add-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v10

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v18

    mul-float/2addr v6, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v13

    mul-float/2addr v6, v12

    sub-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v5

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v4

    mul-float/2addr v6, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v19

    mul-float/2addr v6, v12

    sub-float/2addr v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v10

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v11

    mul-float/2addr v6, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v19

    mul-float/2addr v6, v12

    add-float/2addr v3, v6

    .line 401
    .local v3, "m00":F
    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v12, 0xc

    aget v6, v6, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v11

    mul-float/2addr v6, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v9

    mul-float/2addr v6, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v14

    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v8, v8, v18

    mul-float/2addr v12, v8

    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v8, v8, v9

    mul-float/2addr v12, v8

    sub-float/2addr v6, v12

    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v12, 0xc

    aget v8, v8, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v4

    mul-float/2addr v8, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v13

    mul-float/2addr v8, v12

    sub-float/2addr v6, v8

    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v8, v8, v16

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v18

    mul-float/2addr v8, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v13

    mul-float/2addr v8, v12

    add-float/2addr v6, v8

    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v8, v8, v14

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v4

    mul-float/2addr v8, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v19

    mul-float/2addr v8, v12

    add-float/2addr v6, v8

    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v8, v8, v16

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v11

    mul-float/2addr v8, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v19

    mul-float/2addr v8, v12

    sub-float/2addr v6, v8

    .line 403
    .local v6, "m01":F
    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v8, v8, v14

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v15

    mul-float/2addr v8, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v9

    mul-float/2addr v8, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v17, 0xc

    aget v12, v12, v17

    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v7, v7, v5

    mul-float/2addr v12, v7

    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v7, v7, v9

    mul-float/2addr v12, v7

    sub-float/2addr v8, v12

    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v7, v7, v17

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v10

    mul-float/2addr v7, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v13

    mul-float/2addr v7, v12

    add-float/2addr v8, v7

    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v7, v7, v16

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v15

    mul-float/2addr v7, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v13

    mul-float/2addr v7, v12

    sub-float/2addr v8, v7

    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v7, v7, v14

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v10

    mul-float/2addr v7, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v19

    mul-float/2addr v7, v12

    sub-float/2addr v8, v7

    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v7, v7, v16

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v5

    mul-float/2addr v7, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v19

    mul-float/2addr v7, v12

    add-float/2addr v8, v7

    .line 405
    .local v8, "m02":F
    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v12, 0xc

    aget v7, v7, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v5

    mul-float/2addr v7, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v4

    mul-float/2addr v7, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v14

    iget-object v9, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v9, v9, v15

    mul-float/2addr v12, v9

    iget-object v9, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v9, v9, v4

    mul-float/2addr v12, v9

    sub-float/2addr v7, v12

    iget-object v9, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v12, 0xc

    aget v9, v9, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v10

    mul-float/2addr v9, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v11

    mul-float/2addr v9, v12

    sub-float/2addr v7, v9

    iget-object v9, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v9, v9, v16

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v15

    mul-float/2addr v9, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v11

    mul-float/2addr v9, v12

    add-float/2addr v7, v9

    iget-object v9, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v9, v9, v14

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v10

    mul-float/2addr v9, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v18

    mul-float/2addr v9, v12

    add-float/2addr v7, v9

    iget-object v9, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v9, v9, v16

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v5

    mul-float/2addr v9, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v18

    mul-float/2addr v9, v12

    sub-float/2addr v7, v9

    .line 407
    .local v7, "m03":F
    iget-object v9, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v9, v9, v15

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v11

    mul-float/2addr v9, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v2

    mul-float/2addr v9, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v5

    iget-object v4, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v18

    mul-float/2addr v12, v4

    iget-object v4, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v2

    mul-float/2addr v12, v4

    sub-float/2addr v9, v12

    iget-object v4, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v15

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v22, 0x2

    aget v12, v12, v22

    mul-float/2addr v4, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v13

    mul-float/2addr v4, v12

    sub-float/2addr v9, v4

    iget-object v4, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v12, 0x1

    aget v4, v4, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v18

    mul-float/2addr v4, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v13

    mul-float/2addr v4, v12

    add-float/2addr v9, v4

    iget-object v4, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v5

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v22, 0x2

    aget v12, v12, v22

    mul-float/2addr v4, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v19

    mul-float/2addr v4, v12

    add-float/2addr v9, v4

    iget-object v4, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v12, 0x1

    aget v4, v4, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v11

    mul-float/2addr v4, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v19

    mul-float/2addr v4, v12

    sub-float/2addr v9, v4

    .line 409
    .local v9, "m10":F
    iget-object v4, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v14

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v18

    mul-float/2addr v4, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v2

    mul-float/2addr v4, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v17, 0xc

    aget v12, v12, v17

    iget-object v10, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v10, v10, v11

    mul-float/2addr v12, v10

    iget-object v10, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v10, v10, v2

    mul-float/2addr v12, v10

    sub-float/2addr v4, v12

    iget-object v10, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v10, v10, v17

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v22, 0x2

    aget v12, v12, v22

    mul-float/2addr v10, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v13

    mul-float/2addr v10, v12

    add-float/2addr v4, v10

    iget-object v10, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v12, 0x0

    aget v10, v10, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v18

    mul-float/2addr v10, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v13

    mul-float/2addr v10, v12

    sub-float/2addr v4, v10

    iget-object v10, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v10, v10, v14

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v22, 0x2

    aget v12, v12, v22

    mul-float/2addr v10, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v19

    mul-float/2addr v10, v12

    sub-float/2addr v4, v10

    iget-object v10, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v12, 0x0

    aget v10, v10, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v11

    mul-float/2addr v10, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v19

    mul-float/2addr v10, v12

    add-float/2addr v4, v10

    .line 411
    .local v4, "m11":F
    iget-object v10, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v12, 0xc

    aget v10, v10, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v5

    mul-float/2addr v10, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v2

    mul-float/2addr v10, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v14

    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v11, v11, v15

    mul-float/2addr v12, v11

    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v11, v11, v2

    mul-float/2addr v12, v11

    sub-float/2addr v10, v12

    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v12, 0xc

    aget v11, v11, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v21, 0x1

    aget v12, v12, v21

    mul-float/2addr v11, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v13

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v15

    mul-float/2addr v11, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v13

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v11, v11, v14

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v21, 0x1

    aget v12, v12, v21

    mul-float/2addr v11, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v19

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v5

    mul-float/2addr v11, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v19

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    .line 413
    .local v10, "m12":F
    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v11, v11, v14

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v15

    mul-float/2addr v11, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v22, 0x2

    aget v12, v12, v22

    mul-float/2addr v11, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v17, 0xc

    aget v12, v12, v17

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v13, v13, v5

    mul-float/2addr v12, v13

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v13, v13, v22

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v17

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v21, 0x1

    aget v13, v13, v21

    mul-float/2addr v12, v13

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v26, 0xa

    aget v13, v13, v26

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v13, v13, v15

    mul-float/2addr v12, v13

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v13, v13, v26

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v14

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v21, 0x1

    aget v13, v13, v21

    mul-float/2addr v12, v13

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v13, v13, v18

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v13, v13, v5

    mul-float/2addr v12, v13

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v13, v13, v18

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    .line 415
    .local v11, "m13":F
    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v13, 0x5

    aget v12, v12, v13

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v13, v13, v18

    mul-float/2addr v12, v13

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v13, v13, v2

    mul-float/2addr v12, v13

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v13, v13, v15

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v24, 0x6

    aget v14, v14, v24

    mul-float/2addr v13, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v14, v14, v2

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v13, v13, v15

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v22, 0x2

    aget v14, v14, v22

    mul-float/2addr v13, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v23, 0x7

    aget v14, v14, v23

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x1

    aget v13, v13, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v14, v14, v18

    mul-float/2addr v13, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v14, v14, v23

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x5

    aget v13, v13, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v22, 0x2

    aget v14, v14, v22

    mul-float/2addr v13, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v14, v14, v19

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x1

    aget v13, v13, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v24, 0x6

    aget v14, v14, v24

    mul-float/2addr v13, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v14, v14, v19

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 417
    .local v12, "m20":F
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xc

    aget v13, v13, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v14, v14, v24

    mul-float/2addr v13, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v14, v14, v2

    mul-float/2addr v13, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v14, v14, v16

    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v18

    mul-float/2addr v14, v5

    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v2

    mul-float/2addr v14, v5

    sub-float/2addr v13, v14

    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xc

    aget v5, v5, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v22, 0x2

    aget v14, v14, v22

    mul-float/2addr v5, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v23, 0x7

    aget v14, v14, v23

    mul-float/2addr v5, v14

    sub-float/2addr v13, v5

    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x0

    aget v5, v5, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v14, v14, v18

    mul-float/2addr v5, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v14, v14, v23

    mul-float/2addr v5, v14

    add-float/2addr v13, v5

    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v16

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v22, 0x2

    aget v14, v14, v22

    mul-float/2addr v5, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v14, v14, v19

    mul-float/2addr v5, v14

    add-float/2addr v13, v5

    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x0

    aget v5, v5, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v24, 0x6

    aget v14, v14, v24

    mul-float/2addr v5, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v14, v14, v19

    mul-float/2addr v5, v14

    sub-float/2addr v13, v5

    .line 419
    .local v13, "m21":F
    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v16

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v14, v14, v15

    mul-float/2addr v5, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v14, v14, v2

    mul-float/2addr v5, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v17, 0xc

    aget v14, v14, v17

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v25, 0x5

    aget v15, v15, v25

    mul-float/2addr v14, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v15, v15, v2

    mul-float/2addr v14, v15

    sub-float/2addr v5, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v14, v14, v17

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v21, 0x1

    aget v15, v15, v21

    mul-float/2addr v14, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v23, 0x7

    aget v15, v15, v23

    mul-float/2addr v14, v15

    add-float/2addr v5, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v15, 0x0

    aget v14, v14, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v30, 0xd

    aget v15, v15, v30

    mul-float/2addr v14, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v15, v15, v23

    mul-float/2addr v14, v15

    sub-float/2addr v5, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v14, v14, v16

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v21, 0x1

    aget v15, v15, v21

    mul-float/2addr v14, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v15, v15, v19

    mul-float/2addr v14, v15

    sub-float/2addr v5, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v15, 0x0

    aget v14, v14, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v25, 0x5

    aget v15, v15, v25

    mul-float/2addr v14, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v15, v15, v19

    mul-float/2addr v14, v15

    add-float/2addr v5, v14

    .line 421
    .local v5, "m22":F
    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v15, 0xc

    aget v14, v14, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v15, v15, v25

    mul-float/2addr v14, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v22, 0x2

    aget v15, v15, v22

    mul-float/2addr v14, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v15, v15, v16

    iget-object v2, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v30, 0xd

    aget v2, v2, v30

    mul-float/2addr v15, v2

    iget-object v2, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v22

    mul-float/2addr v15, v2

    sub-float/2addr v14, v15

    iget-object v2, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v15, 0xc

    aget v2, v2, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v21, 0x1

    aget v15, v15, v21

    mul-float/2addr v2, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v24, 0x6

    aget v15, v15, v24

    mul-float/2addr v2, v15

    sub-float/2addr v14, v2

    iget-object v2, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v15, 0x0

    aget v2, v2, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v30, 0xd

    aget v15, v15, v30

    mul-float/2addr v2, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v15, v15, v24

    mul-float/2addr v2, v15

    add-float/2addr v14, v2

    iget-object v2, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v16

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v21, 0x1

    aget v15, v15, v21

    mul-float/2addr v2, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v15, v15, v18

    mul-float/2addr v2, v15

    add-float/2addr v14, v2

    iget-object v2, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v15, 0x0

    aget v2, v2, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v25, 0x5

    aget v15, v15, v25

    mul-float/2addr v2, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v15, v15, v18

    mul-float/2addr v2, v15

    sub-float/2addr v14, v2

    .line 423
    .local v14, "m23":F
    iget-object v2, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v15, 0x9

    aget v2, v2, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v24, 0x6

    aget v15, v15, v24

    mul-float/2addr v2, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v31, 0x3

    aget v15, v15, v31

    mul-float/2addr v2, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v25, 0x5

    aget v15, v15, v25

    move/from16 v32, v14

    .end local v14  # "m23":F
    .local v32, "m23":F
    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v26, 0xa

    aget v14, v14, v26

    mul-float/2addr v15, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v14, v14, v31

    mul-float/2addr v15, v14

    sub-float/2addr v2, v15

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v15, 0x9

    aget v14, v14, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v22, 0x2

    aget v15, v15, v22

    mul-float/2addr v14, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v23, 0x7

    aget v15, v15, v23

    mul-float/2addr v14, v15

    sub-float/2addr v2, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v15, 0x1

    aget v14, v14, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v26, 0xa

    aget v15, v15, v26

    mul-float/2addr v14, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v15, v15, v23

    mul-float/2addr v14, v15

    add-float/2addr v2, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v15, 0x5

    aget v14, v14, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v22, 0x2

    aget v15, v15, v22

    mul-float/2addr v14, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v27, 0xb

    aget v15, v15, v27

    mul-float/2addr v14, v15

    add-float/2addr v2, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v15, 0x1

    aget v14, v14, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v24, 0x6

    aget v15, v15, v24

    mul-float/2addr v14, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v15, v15, v27

    mul-float/2addr v14, v15

    sub-float/2addr v2, v14

    .line 425
    .local v2, "m30":F
    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v14, v14, v16

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v26, 0xa

    aget v15, v15, v26

    mul-float/2addr v14, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v31, 0x3

    aget v15, v15, v31

    mul-float/2addr v14, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v28, 0x8

    aget v15, v15, v28

    move/from16 v33, v11

    .end local v11  # "m13":F
    .local v33, "m13":F
    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v24, 0x6

    aget v11, v11, v24

    mul-float/2addr v15, v11

    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v11, v11, v31

    mul-float/2addr v15, v11

    sub-float/2addr v14, v15

    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v11, v11, v28

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v22, 0x2

    aget v15, v15, v22

    mul-float/2addr v11, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v23, 0x7

    aget v15, v15, v23

    mul-float/2addr v11, v15

    add-float/2addr v14, v11

    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v15, 0x0

    aget v11, v11, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v26, 0xa

    aget v15, v15, v26

    mul-float/2addr v11, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v15, v15, v23

    mul-float/2addr v11, v15

    sub-float/2addr v14, v11

    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v11, v11, v16

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v22, 0x2

    aget v15, v15, v22

    mul-float/2addr v11, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v27, 0xb

    aget v15, v15, v27

    mul-float/2addr v11, v15

    sub-float/2addr v14, v11

    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v15, 0x0

    aget v11, v11, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v24, 0x6

    aget v15, v15, v24

    mul-float/2addr v11, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v15, v15, v27

    mul-float/2addr v11, v15

    add-float/2addr v14, v11

    .line 427
    .local v14, "m31":F
    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v15, 0x8

    aget v11, v11, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v25, 0x5

    aget v15, v15, v25

    mul-float/2addr v11, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v31, 0x3

    aget v15, v15, v31

    mul-float/2addr v11, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v15, v15, v16

    move/from16 v34, v7

    .end local v7  # "m03":F
    .local v34, "m03":F
    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v29, 0x9

    aget v7, v7, v29

    mul-float/2addr v15, v7

    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v7, v7, v31

    mul-float/2addr v15, v7

    sub-float/2addr v11, v15

    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v15, 0x8

    aget v7, v7, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v21, 0x1

    aget v15, v15, v21

    mul-float/2addr v7, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v23, 0x7

    aget v15, v15, v23

    mul-float/2addr v7, v15

    sub-float/2addr v11, v7

    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v15, 0x0

    aget v7, v7, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v29, 0x9

    aget v15, v15, v29

    mul-float/2addr v7, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v15, v15, v23

    mul-float/2addr v7, v15

    add-float/2addr v11, v7

    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v7, v7, v16

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v21, 0x1

    aget v15, v15, v21

    mul-float/2addr v7, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v27, 0xb

    aget v15, v15, v27

    mul-float/2addr v7, v15

    add-float/2addr v11, v7

    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v15, 0x0

    aget v7, v7, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v25, 0x5

    aget v15, v15, v25

    mul-float/2addr v7, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v15, v15, v27

    mul-float/2addr v7, v15

    sub-float/2addr v11, v7

    .line 429
    .local v11, "m32":F
    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v7, v7, v16

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v29, 0x9

    aget v15, v15, v29

    mul-float/2addr v7, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v22, 0x2

    aget v15, v15, v22

    mul-float/2addr v7, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v28, 0x8

    aget v15, v15, v28

    move/from16 v35, v11

    .end local v11  # "m32":F
    .local v35, "m32":F
    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v25, 0x5

    aget v11, v11, v25

    mul-float/2addr v15, v11

    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v11, v11, v22

    mul-float/2addr v15, v11

    sub-float/2addr v7, v15

    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v11, v11, v28

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v21, 0x1

    aget v15, v15, v21

    mul-float/2addr v11, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v24, 0x6

    aget v15, v15, v24

    mul-float/2addr v11, v15

    add-float/2addr v7, v11

    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v15, 0x0

    aget v11, v11, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v29, 0x9

    aget v15, v15, v29

    mul-float/2addr v11, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v15, v15, v24

    mul-float/2addr v11, v15

    sub-float/2addr v7, v11

    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v11, v11, v16

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v21, 0x1

    aget v15, v15, v21

    mul-float/2addr v11, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v26, 0xa

    aget v15, v15, v26

    mul-float/2addr v11, v15

    sub-float/2addr v7, v11

    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v15, 0x0

    aget v11, v11, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v25, 0x5

    aget v15, v15, v25

    mul-float/2addr v11, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v15, v15, v26

    mul-float/2addr v11, v15

    add-float/2addr v7, v11

    .line 431
    .local v7, "m33":F
    const/high16 v11, 0x3f800000  # 1.0f

    div-float/2addr v11, v1

    .line 432
    .local v11, "inv_det":F
    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    mul-float v36, v3, v11

    const/16 v20, 0x0

    aput v36, v15, v20

    .line 433
    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    mul-float v20, v9, v11

    const/16 v21, 0x1

    aput v20, v15, v21

    .line 434
    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    mul-float v20, v12, v11

    const/16 v21, 0x2

    aput v20, v15, v21

    .line 435
    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    mul-float v20, v2, v11

    const/16 v21, 0x3

    aput v20, v15, v21

    .line 436
    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    mul-float v20, v6, v11

    aput v20, v15, v16

    .line 437
    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    mul-float v16, v4, v11

    const/16 v20, 0x5

    aput v16, v15, v20

    .line 438
    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    mul-float v16, v13, v11

    const/16 v20, 0x6

    aput v16, v15, v20

    .line 439
    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    mul-float v16, v14, v11

    const/16 v20, 0x7

    aput v16, v15, v20

    .line 440
    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    mul-float v16, v8, v11

    const/16 v20, 0x8

    aput v16, v15, v20

    .line 441
    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    mul-float v16, v10, v11

    const/16 v20, 0x9

    aput v16, v15, v20

    .line 442
    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    mul-float v16, v5, v11

    const/16 v20, 0xa

    aput v16, v15, v20

    .line 443
    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    mul-float v16, v35, v11

    const/16 v20, 0xb

    aput v16, v15, v20

    .line 444
    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    mul-float v16, v34, v11

    const/16 v17, 0xc

    aput v16, v15, v17

    .line 445
    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    mul-float v16, v33, v11

    const/16 v17, 0xd

    aput v16, v15, v17

    .line 446
    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    mul-float v16, v32, v11

    aput v16, v15, v18

    .line 447
    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    mul-float v16, v7, v11

    aput v16, v15, v19

    .line 448
    return-object v0

    .line 398
    .end local v2  # "m30":F
    .end local v3  # "m00":F
    .end local v4  # "m11":F
    .end local v5  # "m22":F
    .end local v6  # "m01":F
    .end local v7  # "m33":F
    .end local v8  # "m02":F
    .end local v9  # "m10":F
    .end local v10  # "m12":F
    .end local v11  # "inv_det":F
    .end local v12  # "m20":F
    .end local v13  # "m21":F
    .end local v14  # "m31":F
    .end local v32  # "m23":F
    .end local v33  # "m13":F
    .end local v34  # "m03":F
    .end local v35  # "m32":F
    :cond_8e2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "non-invertible matrix"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public lerp(Lcom/badlogic/gdx/math/Matrix4;F)Lcom/badlogic/gdx/math/Matrix4;
    .registers 7
    .param p1, "matrix"  # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "alpha"  # F

    .line 852
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1a

    .line 853
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v0

    const/high16 v3, 0x3f800000  # 1.0f

    sub-float/2addr v3, p2

    mul-float/2addr v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v0

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 852
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 854
    .end local v0  # "i":I
    :cond_1a
    return-object p0
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 4
    .param p1, "matrix"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 321
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    .line 322
    return-object p0
.end method

.method public mulLeft(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 4
    .param p1, "matrix"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 334
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 335
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    .line 336
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .registers 6
    .param p1, "axisX"  # F
    .param p2, "axisY"  # F
    .param p3, "axisZ"  # F
    .param p4, "degrees"  # F

    .line 1474
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-nez v0, :cond_6

    return-object p0

    .line 1475
    :cond_6
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxis(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    .line 1476
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 50
    .param p1, "rotation"  # Lcom/badlogic/gdx/math/Quaternion;

    .line 1497
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .local v2, "x":F
    iget v3, v1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .local v3, "y":F
    iget v4, v1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .local v4, "z":F
    iget v5, v1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 1498
    .local v5, "w":F
    mul-float v6, v2, v2

    .line 1499
    .local v6, "xx":F
    mul-float v7, v2, v3

    .line 1500
    .local v7, "xy":F
    mul-float v8, v2, v4

    .line 1501
    .local v8, "xz":F
    mul-float v9, v2, v5

    .line 1502
    .local v9, "xw":F
    mul-float v10, v3, v3

    .line 1503
    .local v10, "yy":F
    mul-float v11, v3, v4

    .line 1504
    .local v11, "yz":F
    mul-float v12, v3, v5

    .line 1505
    .local v12, "yw":F
    mul-float v13, v4, v4

    .line 1506
    .local v13, "zz":F
    mul-float v14, v4, v5

    .line 1508
    .local v14, "zw":F
    add-float v15, v10, v13

    const/high16 v16, 0x40000000  # 2.0f

    mul-float v15, v15, v16

    const/high16 v17, 0x3f800000  # 1.0f

    sub-float v15, v17, v15

    .line 1509
    .local v15, "r00":F
    sub-float v18, v7, v14

    mul-float v18, v18, v16

    .line 1510
    .local v18, "r01":F
    add-float v19, v8, v12

    mul-float v19, v19, v16

    .line 1511
    .local v19, "r02":F
    add-float v20, v7, v14

    mul-float v20, v20, v16

    .line 1512
    .local v20, "r10":F
    add-float v21, v6, v13

    mul-float v21, v21, v16

    sub-float v21, v17, v21

    .line 1513
    .local v21, "r11":F
    sub-float v22, v11, v9

    mul-float v22, v22, v16

    .line 1514
    .local v22, "r12":F
    sub-float v23, v8, v12

    mul-float v23, v23, v16

    .line 1515
    .local v23, "r20":F
    add-float v24, v11, v9

    mul-float v24, v24, v16

    .line 1516
    .local v24, "r21":F
    add-float v25, v6, v10

    mul-float v25, v25, v16

    sub-float v17, v17, v25

    .line 1517
    .local v17, "r22":F
    iget-object v1, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v16, 0x0

    aget v1, v1, v16

    mul-float/2addr v1, v15

    move/from16 v25, v2

    .end local v2  # "x":F
    .local v25, "x":F
    iget-object v2, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v26, 0x4

    aget v2, v2, v26

    mul-float v2, v2, v20

    add-float/2addr v1, v2

    iget-object v2, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v27, 0x8

    aget v2, v2, v27

    mul-float v2, v2, v23

    add-float/2addr v1, v2

    .line 1518
    .local v1, "m00":F
    iget-object v2, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v16

    mul-float v2, v2, v18

    move/from16 v28, v3

    .end local v3  # "y":F
    .local v28, "y":F
    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v26

    mul-float v3, v3, v21

    add-float/2addr v2, v3

    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v27

    mul-float v3, v3, v24

    add-float/2addr v2, v3

    .line 1519
    .local v2, "m01":F
    iget-object v3, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v16

    mul-float v3, v3, v19

    move/from16 v29, v4

    .end local v4  # "z":F
    .local v29, "z":F
    iget-object v4, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v26

    mul-float v4, v4, v22

    add-float/2addr v3, v4

    iget-object v4, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v27

    mul-float v4, v4, v17

    add-float/2addr v3, v4

    .line 1520
    .local v3, "m02":F
    iget-object v4, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v30, 0x1

    aget v4, v4, v30

    mul-float/2addr v4, v15

    move/from16 v31, v5

    .end local v5  # "w":F
    .local v31, "w":F
    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v32, 0x5

    aget v5, v5, v32

    mul-float v5, v5, v20

    add-float/2addr v4, v5

    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v33, 0x9

    aget v5, v5, v33

    mul-float v5, v5, v23

    add-float/2addr v4, v5

    .line 1521
    .local v4, "m10":F
    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v30

    mul-float v5, v5, v18

    move/from16 v34, v6

    .end local v6  # "xx":F
    .local v34, "xx":F
    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v32

    mul-float v6, v6, v21

    add-float/2addr v5, v6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v33

    mul-float v6, v6, v24

    add-float/2addr v5, v6

    .line 1522
    .local v5, "m11":F
    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v30

    mul-float v6, v6, v19

    move/from16 v35, v7

    .end local v7  # "xy":F
    .local v35, "xy":F
    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v7, v7, v32

    mul-float v7, v7, v22

    add-float/2addr v6, v7

    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v7, v7, v33

    mul-float v7, v7, v17

    add-float/2addr v6, v7

    .line 1523
    .local v6, "m12":F
    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v36, 0x2

    aget v7, v7, v36

    mul-float/2addr v7, v15

    move/from16 v37, v8

    .end local v8  # "xz":F
    .local v37, "xz":F
    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v38, 0x6

    aget v8, v8, v38

    mul-float v8, v8, v20

    add-float/2addr v7, v8

    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v39, 0xa

    aget v8, v8, v39

    mul-float v8, v8, v23

    add-float/2addr v7, v8

    .line 1524
    .local v7, "m20":F
    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v8, v8, v36

    mul-float v8, v8, v18

    move/from16 v40, v9

    .end local v9  # "xw":F
    .local v40, "xw":F
    iget-object v9, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v9, v9, v38

    mul-float v9, v9, v21

    add-float/2addr v8, v9

    iget-object v9, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v9, v9, v39

    mul-float v9, v9, v24

    add-float/2addr v8, v9

    .line 1525
    .local v8, "m21":F
    iget-object v9, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v9, v9, v36

    mul-float v9, v9, v19

    move/from16 v41, v10

    .end local v10  # "yy":F
    .local v41, "yy":F
    iget-object v10, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v10, v10, v38

    mul-float v10, v10, v22

    add-float/2addr v9, v10

    iget-object v10, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v10, v10, v39

    mul-float v10, v10, v17

    add-float/2addr v9, v10

    .line 1526
    .local v9, "m22":F
    iget-object v10, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v42, 0x3

    aget v10, v10, v42

    mul-float/2addr v10, v15

    move/from16 v43, v11

    .end local v11  # "yz":F
    .local v43, "yz":F
    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v44, 0x7

    aget v11, v11, v44

    mul-float v11, v11, v20

    add-float/2addr v10, v11

    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v45, 0xb

    aget v11, v11, v45

    mul-float v11, v11, v23

    add-float/2addr v10, v11

    .line 1527
    .local v10, "m30":F
    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v11, v11, v42

    mul-float v11, v11, v18

    move/from16 v46, v12

    .end local v12  # "yw":F
    .local v46, "yw":F
    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v44

    mul-float v12, v12, v21

    add-float/2addr v11, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v45

    mul-float v12, v12, v24

    add-float/2addr v11, v12

    .line 1528
    .local v11, "m31":F
    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v42

    mul-float v12, v12, v19

    move/from16 v47, v13

    .end local v13  # "zz":F
    .local v47, "zz":F
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v13, v13, v44

    mul-float v13, v13, v22

    add-float/2addr v12, v13

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v13, v13, v45

    mul-float v13, v13, v17

    add-float/2addr v12, v13

    .line 1529
    .local v12, "m32":F
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aput v1, v13, v16

    .line 1530
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aput v4, v13, v30

    .line 1531
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aput v7, v13, v36

    .line 1532
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aput v10, v13, v42

    .line 1533
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aput v2, v13, v26

    .line 1534
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aput v5, v13, v32

    .line 1535
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aput v8, v13, v38

    .line 1536
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aput v11, v13, v44

    .line 1537
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aput v3, v13, v27

    .line 1538
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aput v6, v13, v33

    .line 1539
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aput v9, v13, v39

    .line 1540
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aput v12, v13, v45

    .line 1541
    return-object v0
.end method

.method public rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;
    .registers 4
    .param p1, "axis"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "degrees"  # F

    .line 1450
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_6

    return-object p0

    .line 1451
    :cond_6
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    .line 1452
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public rotate(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 4
    .param p1, "v1"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "v2"  # Lcom/badlogic/gdx/math/Vector3;

    .line 1549
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->setFromCross(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public rotateRad(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .registers 6
    .param p1, "axisX"  # F
    .param p2, "axisY"  # F
    .param p3, "axisZ"  # F
    .param p4, "radians"  # F

    .line 1487
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-nez v0, :cond_6

    return-object p0

    .line 1488
    :cond_6
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxisRad(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    .line 1489
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public rotateRad(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;
    .registers 4
    .param p1, "axis"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "radians"  # F

    .line 1461
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_6

    return-object p0

    .line 1462
    :cond_6
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxisRad(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    .line 1463
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public rotateTowardDirection(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 21
    .param p1, "direction"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "up"  # Lcom/badlogic/gdx/math/Vector3;

    .line 1557
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 1558
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 1559
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 1560
    iget-object v2, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x0

    aget v2, v2, v4

    sget-object v5, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v5

    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x4

    aget v5, v5, v6

    sget-object v7, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v5, v7

    add-float/2addr v2, v5

    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x8

    aget v5, v5, v7

    sget-object v8, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v5, v8

    add-float/2addr v2, v5

    .line 1561
    .local v2, "m00":F
    iget-object v5, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v4

    sget-object v8, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v5, v8

    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v8, v8, v6

    sget-object v9, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v8, v8, v7

    sget-object v9, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    .line 1562
    .local v5, "m01":F
    iget-object v8, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v8, v8, v4

    sget-object v9, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v9, v9

    mul-float/2addr v8, v9

    iget-object v9, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v9, v9, v6

    sget-object v10, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v10, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v9, v9, v7

    sget-object v10, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v10, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    .line 1563
    .local v8, "m02":F
    iget-object v9, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sget-object v11, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v9, v11

    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v12, 0x5

    aget v11, v11, v12

    sget-object v13, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v11, v13

    add-float/2addr v9, v11

    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v13, 0x9

    aget v11, v11, v13

    sget-object v14, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v11, v14

    add-float/2addr v9, v11

    .line 1564
    .local v9, "m10":F
    iget-object v11, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v11, v11, v10

    sget-object v14, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v11, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v14, v14, v12

    sget-object v15, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v14, v15

    add-float/2addr v11, v14

    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v14, v14, v13

    sget-object v15, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v14, v15

    add-float/2addr v11, v14

    .line 1565
    .local v11, "m11":F
    iget-object v14, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v14, v14, v10

    sget-object v15, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v15, v15

    mul-float/2addr v14, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v15, v15, v12

    sget-object v7, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v7, v7

    mul-float/2addr v15, v7

    add-float/2addr v14, v15

    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v7, v7, v13

    sget-object v15, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v15, v15

    mul-float/2addr v7, v15

    add-float/2addr v14, v7

    .line 1566
    .local v14, "m12":F
    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v15, 0x2

    aget v7, v7, v15

    sget-object v13, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v7, v13

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v16, 0x6

    aget v13, v13, v16

    sget-object v12, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v13, v12

    add-float/2addr v7, v13

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v13, 0xa

    aget v12, v12, v13

    sget-object v6, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1567
    .local v7, "m20":F
    iget-object v6, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v15

    sget-object v12, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v6, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v16

    sget-object v10, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v12, v10

    add-float/2addr v6, v12

    iget-object v10, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v10, v10, v13

    sget-object v12, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v10, v12

    add-float/2addr v6, v10

    .line 1568
    .local v6, "m21":F
    iget-object v10, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v10, v10, v15

    sget-object v12, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v12, v12

    mul-float/2addr v10, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v16

    sget-object v15, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v15, v15

    mul-float/2addr v12, v15

    add-float/2addr v10, v12

    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v12, v12, v13

    sget-object v15, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v15, v15

    mul-float/2addr v12, v15

    add-float/2addr v10, v12

    .line 1569
    .local v10, "m22":F
    iget-object v12, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v15, 0x3

    aget v12, v12, v15

    sget-object v13, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v12, v13

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v17, 0x7

    aget v13, v13, v17

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v13, v4

    add-float/2addr v12, v13

    iget-object v4, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v13, 0xb

    aget v4, v4, v13

    sget-object v13, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v4, v13

    add-float/2addr v12, v4

    .line 1570
    .local v12, "m30":F
    iget-object v4, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v15

    sget-object v13, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v4, v13

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v13, v13, v17

    sget-object v15, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v13, v15

    add-float/2addr v4, v13

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v15, 0xb

    aget v13, v13, v15

    sget-object v15, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v13, v15

    add-float/2addr v4, v13

    .line 1571
    .local v4, "m31":F
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v15, 0x3

    aget v13, v13, v15

    sget-object v15, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v15, v15

    mul-float/2addr v13, v15

    iget-object v15, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v15, v15, v17

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v1, v1

    mul-float/2addr v15, v1

    add-float/2addr v13, v15

    iget-object v1, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v15, 0xb

    aget v1, v1, v15

    sget-object v15, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v15, v15

    mul-float/2addr v1, v15

    add-float/2addr v13, v1

    .line 1572
    .local v13, "m32":F
    iget-object v1, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v15, 0x0

    aput v2, v1, v15

    .line 1573
    iget-object v1, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v15, 0x1

    aput v9, v1, v15

    .line 1574
    iget-object v1, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v15, 0x2

    aput v7, v1, v15

    .line 1575
    iget-object v1, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v15, 0x3

    aput v12, v1, v15

    .line 1576
    iget-object v1, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v15, 0x4

    aput v5, v1, v15

    .line 1577
    iget-object v1, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v15, 0x5

    aput v11, v1, v15

    .line 1578
    iget-object v1, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aput v6, v1, v16

    .line 1579
    iget-object v1, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aput v4, v1, v17

    .line 1580
    iget-object v1, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v15, 0x8

    aput v8, v1, v15

    .line 1581
    iget-object v1, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v15, 0x9

    aput v14, v1, v15

    .line 1582
    iget-object v1, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v15, 0xa

    aput v10, v1, v15

    .line 1583
    iget-object v1, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v15, 0xb

    aput v13, v1, v15

    .line 1584
    return-object v0
.end method

.method public rotateTowardTarget(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 9
    .param p1, "target"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "up"  # Lcom/badlogic/gdx/math/Vector3;

    .line 1592
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xd

    aget v3, v3, v4

    sub-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 1593
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/math/Matrix4;->rotateTowardDirection(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public scale(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .registers 7
    .param p1, "scaleX"  # F
    .param p2, "scaleY"  # F
    .param p3, "scaleZ"  # F

    .line 1603
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 1604
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    aget v2, v0, v1

    mul-float/2addr v2, p2

    aput v2, v0, v1

    .line 1605
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x8

    aget v2, v0, v1

    mul-float/2addr v2, p3

    aput v2, v0, v1

    .line 1606
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 1607
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aget v2, v0, v1

    mul-float/2addr v2, p2

    aput v2, v0, v1

    .line 1608
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x9

    aget v2, v0, v1

    mul-float/2addr v2, p3

    aput v2, v0, v1

    .line 1609
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 1610
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    aget v2, v0, v1

    mul-float/2addr v2, p2

    aput v2, v0, v1

    .line 1611
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aget v2, v0, v1

    mul-float/2addr v2, p3

    aput v2, v0, v1

    .line 1612
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x3

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 1613
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x7

    aget v2, v0, v1

    mul-float/2addr v2, p2

    aput v2, v0, v1

    .line 1614
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xb

    aget v2, v0, v1

    mul-float/2addr v2, p3

    aput v2, v0, v1

    .line 1615
    return-object p0
.end method

.method public scl(F)Lcom/badlogic/gdx/math/Matrix4;
    .registers 5
    .param p1, "scale"  # F

    .line 1034
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 1035
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 1036
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 1037
    return-object p0
.end method

.method public scl(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .registers 7
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "z"  # F

    .line 1027
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 1028
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aget v2, v0, v1

    mul-float/2addr v2, p2

    aput v2, v0, v1

    .line 1029
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aget v2, v0, v1

    mul-float/2addr v2, p3

    aput v2, v0, v1

    .line 1030
    return-object p0
.end method

.method public scl(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 6
    .param p1, "scale"  # Lcom/badlogic/gdx/math/Vector3;

    .line 1020
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 1021
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 1022
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 1023
    return-object p0
.end method

.method public set(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .registers 13
    .param p1, "quaternionX"  # F
    .param p2, "quaternionY"  # F
    .param p3, "quaternionZ"  # F
    .param p4, "quaternionW"  # F

    .line 154
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/math/Matrix4;->set(FFFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public set(FFFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .registers 25
    .param p1, "translationX"  # F
    .param p2, "translationY"  # F
    .param p3, "translationZ"  # F
    .param p4, "quaternionX"  # F
    .param p5, "quaternionY"  # F
    .param p6, "quaternionZ"  # F
    .param p7, "quaternionW"  # F

    .line 176
    move-object/from16 v0, p0

    const/high16 v1, 0x40000000  # 2.0f

    mul-float v2, p4, v1

    .local v2, "xs":F
    mul-float v3, p5, v1

    .local v3, "ys":F
    mul-float v1, v1, p6

    .line 177
    .local v1, "zs":F
    mul-float v4, p7, v2

    .local v4, "wx":F
    mul-float v5, p7, v3

    .local v5, "wy":F
    mul-float v6, p7, v1

    .line 178
    .local v6, "wz":F
    mul-float v7, p4, v2

    .local v7, "xx":F
    mul-float v8, p4, v3

    .local v8, "xy":F
    mul-float v9, p4, v1

    .line 179
    .local v9, "xz":F
    mul-float v10, p5, v3

    .local v10, "yy":F
    mul-float v11, p5, v1

    .local v11, "yz":F
    mul-float v12, p6, v1

    .line 181
    .local v12, "zz":F
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    add-float v14, v10, v12

    const/high16 v15, 0x3f800000  # 1.0f

    sub-float v14, v15, v14

    const/16 v16, 0x0

    aput v14, v13, v16

    .line 182
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x4

    sub-float v16, v8, v6

    aput v16, v13, v14

    .line 183
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0x8

    add-float v16, v9, v5

    aput v16, v13, v14

    .line 184
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xc

    aput p1, v13, v14

    .line 186
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x1

    add-float v16, v8, v6

    aput v16, v13, v14

    .line 187
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    add-float v14, v7, v12

    sub-float v14, v15, v14

    const/16 v16, 0x5

    aput v14, v13, v16

    .line 188
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0x9

    sub-float v16, v11, v4

    aput v16, v13, v14

    .line 189
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xd

    aput p2, v13, v14

    .line 191
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x2

    sub-float v16, v9, v5

    aput v16, v13, v14

    .line 192
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x6

    add-float v16, v11, v4

    aput v16, v13, v14

    .line 193
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    add-float v14, v7, v10

    sub-float v14, v15, v14

    const/16 v16, 0xa

    aput v14, v13, v16

    .line 194
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xe

    aput p3, v13, v14

    .line 196
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x3

    const/16 v16, 0x0

    aput v16, v13, v14

    .line 197
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x7

    aput v16, v13, v14

    .line 198
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xb

    aput v16, v13, v14

    .line 199
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xf

    aput v15, v13, v14

    .line 200
    return-object v0
.end method

.method public set(FFFFFFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .registers 28
    .param p1, "translationX"  # F
    .param p2, "translationY"  # F
    .param p3, "translationZ"  # F
    .param p4, "quaternionX"  # F
    .param p5, "quaternionY"  # F
    .param p6, "quaternionZ"  # F
    .param p7, "quaternionW"  # F
    .param p8, "scaleX"  # F
    .param p9, "scaleY"  # F
    .param p10, "scaleZ"  # F

    .line 227
    move-object/from16 v0, p0

    const/high16 v1, 0x40000000  # 2.0f

    mul-float v2, p4, v1

    .local v2, "xs":F
    mul-float v3, p5, v1

    .local v3, "ys":F
    mul-float v1, v1, p6

    .line 228
    .local v1, "zs":F
    mul-float v4, p7, v2

    .local v4, "wx":F
    mul-float v5, p7, v3

    .local v5, "wy":F
    mul-float v6, p7, v1

    .line 229
    .local v6, "wz":F
    mul-float v7, p4, v2

    .local v7, "xx":F
    mul-float v8, p4, v3

    .local v8, "xy":F
    mul-float v9, p4, v1

    .line 230
    .local v9, "xz":F
    mul-float v10, p5, v3

    .local v10, "yy":F
    mul-float v11, p5, v1

    .local v11, "yz":F
    mul-float v12, p6, v1

    .line 232
    .local v12, "zz":F
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    add-float v14, v10, v12

    const/high16 v15, 0x3f800000  # 1.0f

    sub-float v14, v15, v14

    mul-float v14, v14, p8

    const/16 v16, 0x0

    aput v14, v13, v16

    .line 233
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    sub-float v14, v8, v6

    mul-float v14, v14, p9

    const/16 v16, 0x4

    aput v14, v13, v16

    .line 234
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    add-float v14, v9, v5

    mul-float v14, v14, p10

    const/16 v16, 0x8

    aput v14, v13, v16

    .line 235
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xc

    aput p1, v13, v14

    .line 237
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    add-float v14, v8, v6

    mul-float v14, v14, p8

    const/16 v16, 0x1

    aput v14, v13, v16

    .line 238
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    add-float v14, v7, v12

    sub-float v14, v15, v14

    mul-float v14, v14, p9

    const/16 v16, 0x5

    aput v14, v13, v16

    .line 239
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    sub-float v14, v11, v4

    mul-float v14, v14, p10

    const/16 v16, 0x9

    aput v14, v13, v16

    .line 240
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xd

    aput p2, v13, v14

    .line 242
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    sub-float v14, v9, v5

    mul-float v14, v14, p8

    const/16 v16, 0x2

    aput v14, v13, v16

    .line 243
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    add-float v14, v11, v4

    mul-float v14, v14, p9

    const/16 v16, 0x6

    aput v14, v13, v16

    .line 244
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    add-float v14, v7, v10

    sub-float v14, v15, v14

    mul-float v14, v14, p10

    const/16 v16, 0xa

    aput v14, v13, v16

    .line 245
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xe

    aput p3, v13, v14

    .line 247
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x3

    const/16 v16, 0x0

    aput v16, v13, v14

    .line 248
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x7

    aput v16, v13, v14

    .line 249
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xb

    aput v16, v13, v14

    .line 250
    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xf

    aput v15, v13, v14

    .line 251
    return-object v0
.end method

.method public set(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 7
    .param p1, "affine"  # Lcom/badlogic/gdx/math/Affine2;

    .line 959
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    aput v2, v0, v1

    .line 960
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x1

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    aput v2, v0, v1

    .line 961
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 962
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 963
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    iget v3, p1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    aput v3, v0, v1

    .line 964
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    iget v3, p1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    aput v3, v0, v1

    .line 965
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 966
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 967
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x8

    aput v2, v0, v1

    .line 968
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x9

    aput v2, v0, v1

    .line 969
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    const/high16 v3, 0x3f800000  # 1.0f

    aput v3, v0, v1

    .line 970
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xb

    aput v2, v0, v1

    .line 971
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    iget v4, p1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    aput v4, v0, v1

    .line 972
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    iget v4, p1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    aput v4, v0, v1

    .line 973
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    .line 974
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 975
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 9
    .param p1, "mat"  # Lcom/badlogic/gdx/math/Matrix3;

    .line 929
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 930
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    .line 931
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    aput v1, v0, v2

    .line 932
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 933
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v3, v1

    const/4 v3, 0x4

    aput v1, v0, v3

    .line 934
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v3

    const/4 v3, 0x5

    aput v1, v0, v3

    .line 935
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v3

    const/4 v3, 0x6

    aput v1, v0, v3

    .line 936
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 937
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x8

    aput v2, v0, v4

    .line 938
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aput v2, v0, v5

    .line 939
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    const/high16 v6, 0x3f800000  # 1.0f

    aput v6, v0, v5

    .line 940
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aput v2, v0, v5

    .line 941
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v5, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v3, v5, v3

    const/16 v5, 0xc

    aput v3, v0, v5

    .line 942
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v3, v1

    const/16 v3, 0xd

    aput v1, v0, v3

    .line 943
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    .line 944
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v4

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 945
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 3
    .param p1, "matrix"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 125
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set([F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 6
    .param p1, "quaternion"  # Lcom/badlogic/gdx/math/Quaternion;

    .line 143
    iget v0, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v3, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->set(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 11
    .param p1, "position"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "orientation"  # Lcom/badlogic/gdx/math/Quaternion;

    .line 162
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p2, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v5, p2, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p2, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v7, p2, Lcom/badlogic/gdx/math/Quaternion;->w:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/math/Matrix4;->set(FFFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 15
    .param p1, "position"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "orientation"  # Lcom/badlogic/gdx/math/Quaternion;
    .param p3, "scale"  # Lcom/badlogic/gdx/math/Vector3;

    .line 209
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p2, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v5, p2, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p2, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v7, p2, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v8, p3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v9, p3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v10, p3, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/math/Matrix4;->set(FFFFFFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 8
    .param p1, "xAxis"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "yAxis"  # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "zAxis"  # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "pos"  # Lcom/badlogic/gdx/math/Vector3;

    .line 261
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 263
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x8

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 264
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x1

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 265
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 266
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x9

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 267
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x2

    iget v2, p3, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    iget v2, p3, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 269
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    iget v2, p3, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 270
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    iget v2, p4, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 271
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    iget v2, p4, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 272
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    iget v2, p4, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 273
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 274
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 275
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xb

    aput v2, v0, v1

    .line 276
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xf

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v0, v1

    .line 277
    return-object p0
.end method

.method public set([F)Lcom/badlogic/gdx/math/Matrix4;
    .registers 5
    .param p1, "values"  # [F

    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    return-object p0
.end method

.method public setAsAffine(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 5
    .param p1, "affine"  # Lcom/badlogic/gdx/math/Affine2;

    .line 990
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    aput v2, v0, v1

    .line 991
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x1

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    aput v2, v0, v1

    .line 992
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    aput v2, v0, v1

    .line 993
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    aput v2, v0, v1

    .line 994
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    aput v2, v0, v1

    .line 995
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    aput v2, v0, v1

    .line 996
    return-object p0
.end method

.method public setAsAffine(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 5
    .param p1, "mat"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 1010
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 1011
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    .line 1012
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    aput v1, v0, v2

    .line 1013
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    aput v1, v0, v2

    .line 1014
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xc

    aget v1, v1, v2

    aput v1, v0, v2

    .line 1015
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xd

    aget v1, v1, v2

    aput v1, v0, v2

    .line 1016
    return-object p0
.end method

.method public setFromEulerAngles(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .registers 5
    .param p1, "yaw"  # F
    .param p2, "pitch"  # F
    .param p3, "roll"  # F

    .line 764
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Quaternion;->setEulerAngles(FFF)Lcom/badlogic/gdx/math/Quaternion;

    .line 765
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public setFromEulerAnglesRad(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .registers 5
    .param p1, "yaw"  # F
    .param p2, "pitch"  # F
    .param p3, "roll"  # F

    .line 774
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Quaternion;->setEulerAnglesRad(FFF)Lcom/badlogic/gdx/math/Quaternion;

    .line 775
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public setToLookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 6
    .param p1, "direction"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "up"  # Lcom/badlogic/gdx/math/Vector3;

    .line 809
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 810
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 811
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 812
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 813
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 814
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 815
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 816
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 817
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 818
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 819
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v1, v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 820
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v1, v1

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 821
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v1, v1

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 822
    return-object p0
.end method

.method public setToLookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 8
    .param p1, "position"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "target"  # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "up"  # Lcom/badlogic/gdx/math/Vector3;

    .line 832
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 833
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0, p3}, Lcom/badlogic/gdx/math/Matrix4;->setToLookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 834
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v1, v1

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v2, v2

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 835
    return-object p0
.end method

.method public setToOrtho(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .registers 16
    .param p1, "left"  # F
    .param p2, "right"  # F
    .param p3, "bottom"  # F
    .param p4, "top"  # F
    .param p5, "near"  # F
    .param p6, "far"  # F

    .line 574
    sub-float v0, p2, p1

    const/high16 v1, 0x40000000  # 2.0f

    div-float v0, v1, v0

    .line 575
    .local v0, "x_orth":F
    sub-float v2, p4, p3

    div-float/2addr v1, v2

    .line 576
    .local v1, "y_orth":F
    const/high16 v2, -0x40000000  # -2.0f

    sub-float v3, p6, p5

    div-float/2addr v2, v3

    .line 578
    .local v2, "z_orth":F
    add-float v3, p2, p1

    neg-float v3, v3

    sub-float v4, p2, p1

    div-float/2addr v3, v4

    .line 579
    .local v3, "tx":F
    add-float v4, p4, p3

    neg-float v4, v4

    sub-float v5, p4, p3

    div-float/2addr v4, v5

    .line 580
    .local v4, "ty":F
    add-float v5, p6, p5

    neg-float v5, v5

    sub-float v6, p6, p5

    div-float/2addr v5, v6

    .line 582
    .local v5, "tz":F
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x0

    aput v0, v6, v7

    .line 583
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 584
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x2

    aput v8, v6, v7

    .line 585
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x3

    aput v8, v6, v7

    .line 586
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x4

    aput v8, v6, v7

    .line 587
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x5

    aput v1, v6, v7

    .line 588
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x6

    aput v8, v6, v7

    .line 589
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x7

    aput v8, v6, v7

    .line 590
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x8

    aput v8, v6, v7

    .line 591
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x9

    aput v8, v6, v7

    .line 592
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xa

    aput v2, v6, v7

    .line 593
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xb

    aput v8, v6, v7

    .line 594
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xc

    aput v3, v6, v7

    .line 595
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xd

    aput v4, v6, v7

    .line 596
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xe

    aput v5, v6, v7

    .line 597
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xf

    const/high16 v8, 0x3f800000  # 1.0f

    aput v8, v6, v7

    .line 598
    return-object p0
.end method

.method public setToOrtho2D(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .registers 12
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "width"  # F
    .param p4, "height"  # F

    .line 546
    add-float v2, p1, p3

    add-float v4, p2, p4

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000  # 1.0f

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 547
    return-object p0
.end method

.method public setToOrtho2D(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .registers 14
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "width"  # F
    .param p4, "height"  # F
    .param p5, "near"  # F
    .param p6, "far"  # F

    .line 560
    add-float v2, p1, p3

    add-float v4, p2, p4

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 561
    return-object p0
.end method

.method public setToProjection(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .registers 12
    .param p1, "near"  # F
    .param p2, "far"  # F
    .param p3, "fovy"  # F
    .param p4, "aspectRatio"  # F

    .line 479
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 480
    float-to-double v0, p3

    const-wide v2, 0x3f91df46a2529d39L  # 0.017453292519943295

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    div-double/2addr v2, v0

    double-to-float v0, v2

    .line 481
    .local v0, "l_fd":F
    add-float v1, p2, p1

    sub-float v2, p1, p2

    div-float/2addr v1, v2

    .line 482
    .local v1, "l_a1":F
    const/high16 v2, 0x40000000  # 2.0f

    mul-float/2addr v2, p2

    mul-float/2addr v2, p1

    sub-float v3, p1, p2

    div-float/2addr v2, v3

    .line 483
    .local v2, "l_a2":F
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x0

    div-float v5, v0, p4

    aput v5, v3, v4

    .line 484
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 485
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x2

    aput v5, v3, v4

    .line 486
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x3

    aput v5, v3, v4

    .line 487
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x4

    aput v5, v3, v4

    .line 488
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x5

    aput v0, v3, v4

    .line 489
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x6

    aput v5, v3, v4

    .line 490
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x7

    aput v5, v3, v4

    .line 491
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x8

    aput v5, v3, v4

    .line 492
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x9

    aput v5, v3, v4

    .line 493
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xa

    aput v1, v3, v4

    .line 494
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xb

    const/high16 v6, -0x40800000  # -1.0f

    aput v6, v3, v4

    .line 495
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xc

    aput v5, v3, v4

    .line 496
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xd

    aput v5, v3, v4

    .line 497
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xe

    aput v2, v3, v4

    .line 498
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xf

    aput v5, v3, v4

    .line 499
    return-object p0
.end method

.method public setToProjection(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .registers 18
    .param p1, "left"  # F
    .param p2, "right"  # F
    .param p3, "bottom"  # F
    .param p4, "top"  # F
    .param p5, "near"  # F
    .param p6, "far"  # F

    .line 513
    move-object v0, p0

    const/high16 v1, 0x40000000  # 2.0f

    mul-float v2, p5, v1

    sub-float v3, p2, p1

    div-float/2addr v2, v3

    .line 514
    .local v2, "x":F
    mul-float v3, p5, v1

    sub-float v4, p4, p3

    div-float/2addr v3, v4

    .line 515
    .local v3, "y":F
    add-float v4, p2, p1

    sub-float v5, p2, p1

    div-float/2addr v4, v5

    .line 516
    .local v4, "a":F
    add-float v5, p4, p3

    sub-float v6, p4, p3

    div-float/2addr v5, v6

    .line 517
    .local v5, "b":F
    add-float v6, p6, p5

    sub-float v7, p5, p6

    div-float/2addr v6, v7

    .line 518
    .local v6, "l_a1":F
    mul-float v1, v1, p6

    mul-float v1, v1, p5

    sub-float v7, p5, p6

    div-float/2addr v1, v7

    .line 519
    .local v1, "l_a2":F
    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v8, 0x0

    aput v2, v7, v8

    .line 520
    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 521
    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v8, 0x2

    aput v9, v7, v8

    .line 522
    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v8, 0x3

    aput v9, v7, v8

    .line 523
    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v8, 0x4

    aput v9, v7, v8

    .line 524
    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v8, 0x5

    aput v3, v7, v8

    .line 525
    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v8, 0x6

    aput v9, v7, v8

    .line 526
    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v8, 0x7

    aput v9, v7, v8

    .line 527
    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v8, 0x8

    aput v4, v7, v8

    .line 528
    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v8, 0x9

    aput v5, v7, v8

    .line 529
    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v8, 0xa

    aput v6, v7, v8

    .line 530
    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v8, 0xb

    const/high16 v10, -0x40800000  # -1.0f

    aput v10, v7, v8

    .line 531
    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v8, 0xc

    aput v9, v7, v8

    .line 532
    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v8, 0xd

    aput v9, v7, v8

    .line 533
    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v8, 0xe

    aput v1, v7, v8

    .line 534
    iget-object v7, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v8, 0xf

    aput v9, v7, v8

    .line 535
    return-object v0
.end method

.method public setToRotation(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .registers 6
    .param p1, "axisX"  # F
    .param p2, "axisY"  # F
    .param p3, "axisZ"  # F
    .param p4, "degrees"  # F

    .line 717
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-nez v0, :cond_9

    .line 718
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 719
    return-object p0

    .line 721
    :cond_9
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxis(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public setToRotation(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .registers 14
    .param p1, "x1"  # F
    .param p2, "y1"  # F
    .param p3, "z1"  # F
    .param p4, "x2"  # F
    .param p5, "y2"  # F
    .param p6, "z2"  # F

    .line 755
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/math/Quaternion;->setFromCross(FFFFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public setToRotation(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;
    .registers 4
    .param p1, "axis"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "degrees"  # F

    .line 691
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_9

    .line 692
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 693
    return-object p0

    .line 695
    :cond_9
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public setToRotation(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 4
    .param p1, "v1"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "v2"  # Lcom/badlogic/gdx/math/Vector3;

    .line 743
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->setFromCross(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public setToRotationRad(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .registers 6
    .param p1, "axisX"  # F
    .param p2, "axisY"  # F
    .param p3, "axisZ"  # F
    .param p4, "radians"  # F

    .line 731
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-nez v0, :cond_9

    .line 732
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 733
    return-object p0

    .line 735
    :cond_9
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxisRad(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public setToRotationRad(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;
    .registers 4
    .param p1, "axis"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "radians"  # F

    .line 703
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_9

    .line 704
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 705
    return-object p0

    .line 707
    :cond_9
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxisRad(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public setToScaling(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .registers 6
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "z"  # F

    .line 795
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 796
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 797
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aput p2, v0, v1

    .line 798
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aput p3, v0, v1

    .line 799
    return-object p0
.end method

.method public setToScaling(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 5
    .param p1, "vector"  # Lcom/badlogic/gdx/math/Vector3;

    .line 782
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 783
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 784
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 785
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 786
    return-object p0
.end method

.method public setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .registers 6
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "z"  # F

    .line 642
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 643
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 644
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 645
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput p3, v0, v1

    .line 646
    return-object p0
.end method

.method public setToTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 5
    .param p1, "vector"  # Lcom/badlogic/gdx/math/Vector3;

    .line 628
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 629
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 630
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 631
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 632
    return-object p0
.end method

.method public setToTranslationAndScaling(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .registers 9
    .param p1, "translationX"  # F
    .param p2, "translationY"  # F
    .param p3, "translationZ"  # F
    .param p4, "scalingX"  # F
    .param p5, "scalingY"  # F
    .param p6, "scalingZ"  # F

    .line 676
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 677
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 678
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 679
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput p3, v0, v1

    .line 680
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aput p4, v0, v1

    .line 681
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aput p5, v0, v1

    .line 682
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aput p6, v0, v1

    .line 683
    return-object p0
.end method

.method public setToTranslationAndScaling(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 6
    .param p1, "translation"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "scaling"  # Lcom/badlogic/gdx/math/Vector3;

    .line 655
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 656
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 657
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 658
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 659
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 660
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 661
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 662
    return-object p0
.end method

.method public setToWorld(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 8
    .param p1, "position"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "forward"  # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "up"  # Lcom/badlogic/gdx/math/Vector3;

    .line 840
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 841
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->right:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 842
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->right:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 843
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->right:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    const/high16 v3, -0x40800000  # -1.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 844
    return-object p0
.end method

.method public setTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .registers 6
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "z"  # F

    .line 617
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 618
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 619
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput p3, v0, v1

    .line 620
    return-object p0
.end method

.method public setTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 5
    .param p1, "vector"  # Lcom/badlogic/gdx/math/Vector3;

    .line 605
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 606
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 607
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 608
    return-object p0
.end method

.method public toNormalMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .registers 4

    .line 1103
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 1104
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aput v2, v0, v1

    .line 1105
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    .line 1106
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->inv()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->tra()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]\n["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x9

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xd

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xa

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xe

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xf

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tra()Lcom/badlogic/gdx/math/Matrix4;
    .registers 16

    .line 342
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    aget v0, v0, v1

    .line 343
    .local v0, "m01":F
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    .line 344
    .local v2, "m02":F
    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    .line 345
    .local v4, "m03":F
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x9

    aget v6, v6, v7

    .line 346
    .local v6, "m12":F
    iget-object v8, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v9, 0xd

    aget v8, v8, v9

    .line 347
    .local v8, "m13":F
    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v11, 0xe

    aget v10, v10, v11

    .line 348
    .local v10, "m23":F
    iget-object v12, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v13, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x1

    aget v13, v13, v14

    aput v13, v12, v1

    .line 349
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v12, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v13, 0x2

    aget v12, v12, v13

    aput v12, v1, v3

    .line 350
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v12, 0x3

    aget v3, v3, v12

    aput v3, v1, v5

    .line 351
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aput v0, v1, v14

    .line 352
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v3, v3, v5

    aput v3, v1, v7

    .line 353
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x7

    aget v3, v3, v7

    aput v3, v1, v9

    .line 354
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aput v2, v1, v13

    .line 355
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aput v6, v1, v5

    .line 356
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v3, v3, v5

    aput v3, v1, v11

    .line 357
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aput v4, v1, v12

    .line 358
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aput v8, v1, v7

    .line 359
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aput v10, v1, v5

    .line 360
    return-object p0
.end method

.method public translate(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .registers 10
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "z"  # F

    .line 1437
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aget v2, v0, v1

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    mul-float/2addr v3, p1

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 1438
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aget v2, v0, v1

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v3, p1

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 1439
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aget v2, v0, v1

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    mul-float/2addr v3, p1

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 1440
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xf

    aget v2, v0, v1

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    mul-float/2addr v3, p1

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 1441
    return-object p0
.end method

.method public translate(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 5
    .param p1, "translation"  # Lcom/badlogic/gdx/math/Vector3;

    .line 1427
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public trn(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .registers 7
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "z"  # F

    .line 301
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 302
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 303
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aget v2, v0, v1

    add-float/2addr v2, p3

    aput v2, v0, v1

    .line 304
    return-object p0
.end method

.method public trn(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 6
    .param p1, "vector"  # Lcom/badlogic/gdx/math/Vector3;

    .line 289
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 290
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 291
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 292
    return-object p0
.end method
