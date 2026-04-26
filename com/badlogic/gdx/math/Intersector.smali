.class public final Lcom/badlogic/gdx/math/Intersector;
.super Ljava/lang/Object;
.source "Intersector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;,
        Lcom/badlogic/gdx/math/Intersector$SplitTriangle;
    }
.end annotation


# static fields
.field static best:Lcom/badlogic/gdx/math/Vector3;

.field private static final dir:Lcom/badlogic/gdx/math/Vector3;

.field private static final e:Lcom/badlogic/gdx/math/Vector2;

.field private static final ep1:Lcom/badlogic/gdx/math/Vector2;

.field private static final ep2:Lcom/badlogic/gdx/math/Vector2;

.field private static final floatArray:Lcom/badlogic/gdx/utils/FloatArray;

.field private static final floatArray2:Lcom/badlogic/gdx/utils/FloatArray;

.field private static final i:Lcom/badlogic/gdx/math/Vector3;

.field static intersection:Lcom/badlogic/gdx/math/Vector3;

.field private static final ip:Lcom/badlogic/gdx/math/Vector2;

.field private static final p:Lcom/badlogic/gdx/math/Plane;

.field private static final s:Lcom/badlogic/gdx/math/Vector2;

.field private static final start:Lcom/badlogic/gdx/math/Vector3;

.field static tmp:Lcom/badlogic/gdx/math/Vector3;

.field static tmp1:Lcom/badlogic/gdx/math/Vector3;

.field static tmp2:Lcom/badlogic/gdx/math/Vector3;

.field static tmp3:Lcom/badlogic/gdx/math/Vector3;

.field private static final v0:Lcom/badlogic/gdx/math/Vector3;

.field private static final v1:Lcom/badlogic/gdx/math/Vector3;

.field private static final v2:Lcom/badlogic/gdx/math/Vector3;

.field static v2a:Lcom/badlogic/gdx/math/Vector2;

.field static v2b:Lcom/badlogic/gdx/math/Vector2;

.field static v2c:Lcom/badlogic/gdx/math/Vector2;

.field static v2d:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 36
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->floatArray:Lcom/badlogic/gdx/utils/FloatArray;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->floatArray2:Lcom/badlogic/gdx/utils/FloatArray;

    .line 147
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->ip:Lcom/badlogic/gdx/math/Vector2;

    .line 148
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->ep1:Lcom/badlogic/gdx/math/Vector2;

    .line 149
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->ep2:Lcom/badlogic/gdx/math/Vector2;

    .line 150
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->s:Lcom/badlogic/gdx/math/Vector2;

    .line 151
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->e:Lcom/badlogic/gdx/math/Vector2;

    .line 243
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v2a:Lcom/badlogic/gdx/math/Vector2;

    .line 244
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v2b:Lcom/badlogic/gdx/math/Vector2;

    .line 245
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v2c:Lcom/badlogic/gdx/math/Vector2;

    .line 246
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v2d:Lcom/badlogic/gdx/math/Vector2;

    .line 431
    new-instance v0, Lcom/badlogic/gdx/math/Plane;

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Plane;-><init>(Lcom/badlogic/gdx/math/Vector3;F)V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->p:Lcom/badlogic/gdx/math/Plane;

    .line 432
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector3;

    .line 479
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->dir:Lcom/badlogic/gdx/math/Vector3;

    .line 480
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->start:Lcom/badlogic/gdx/math/Vector3;

    .line 769
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    .line 770
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 771
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    .line 772
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    .line 773
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    .line 1379
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static det(FFFF)F
    .registers 6
    .param p0, "a"  # F
    .param p1, "b"  # F
    .param p2, "c"  # F
    .param p3, "d"  # F

    .line 1080
    mul-float v0, p0, p3

    mul-float v1, p1, p2

    sub-float/2addr v0, v1

    return v0
.end method

.method static detd(DDDD)D
    .registers 12
    .param p0, "a"  # D
    .param p2, "b"  # D
    .param p4, "c"  # D
    .param p6, "d"  # D

    .line 1084
    mul-double v0, p0, p6

    mul-double v2, p2, p4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static distanceLinePoint(FFFFFF)F
    .registers 10
    .param p0, "startX"  # F
    .param p1, "startY"  # F
    .param p2, "endX"  # F
    .param p3, "endY"  # F
    .param p4, "pointX"  # F
    .param p5, "pointY"  # F

    .line 250
    sub-float v0, p2, p0

    sub-float v1, p2, p0

    mul-float/2addr v0, v1

    sub-float v1, p3, p1

    sub-float v2, p3, p1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 251
    .local v0, "normalLength":F
    sub-float v1, p4, p0

    sub-float v2, p3, p1

    mul-float/2addr v1, v2

    sub-float v2, p5, p1

    sub-float v3, p2, p0

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    return v1
.end method

.method public static distanceSegmentPoint(FFFFFF)F
    .registers 13
    .param p0, "startX"  # F
    .param p1, "startY"  # F
    .param p2, "endX"  # F
    .param p3, "endY"  # F
    .param p4, "pointX"  # F
    .param p5, "pointY"  # F

    .line 256
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v2a:Lcom/badlogic/gdx/math/Vector2;

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->nearestSegmentPoint(FFFFFFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/badlogic/gdx/math/Vector2;->dst(FF)F

    move-result v0

    return v0
.end method

.method public static distanceSegmentPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F
    .registers 4
    .param p0, "start"  # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "end"  # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "point"  # Lcom/badlogic/gdx/math/Vector2;

    .line 261
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v2a:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/math/Intersector;->nearestSegmentPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    return v0
.end method

.method public static intersectBoundsPlaneFast(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;F)Z
    .registers 7
    .param p0, "center"  # Lcom/badlogic/gdx/math/Vector3;
    .param p1, "halfDimensions"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "normal"  # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "distance"  # F

    .line 893
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 894
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 897
    .local v0, "radius":F
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    sub-float/2addr v1, p3

    .line 900
    .local v1, "s":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_2c

    const/4 v2, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    return v2
.end method

.method public static intersectBoundsPlaneFast(Lcom/badlogic/gdx/math/collision/BoundingBox;Lcom/badlogic/gdx/math/Plane;)Z
    .registers 6
    .param p0, "box"  # Lcom/badlogic/gdx/math/collision/BoundingBox;
    .param p1, "plane"  # Lcom/badlogic/gdx/math/Plane;

    .line 882
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCenter(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getDimensions(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    const/high16 v2, 0x3f000000  # 0.5f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    iget-object v2, p1, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget v3, p1, Lcom/badlogic/gdx/math/Plane;->d:F

    invoke-static {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Intersector;->intersectBoundsPlaneFast(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;F)Z

    move-result v0

    return v0
.end method

.method public static intersectLinePlane(FFFFFFLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)F
    .registers 14
    .param p0, "x"  # F
    .param p1, "y"  # F
    .param p2, "z"  # F
    .param p3, "x2"  # F
    .param p4, "y2"  # F
    .param p5, "z2"  # F
    .param p6, "plane"  # Lcom/badlogic/gdx/math/Plane;
    .param p7, "intersection"  # Lcom/badlogic/gdx/math/Vector3;

    .line 395
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p3, p4, p5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 396
    .local v0, "direction":Lcom/badlogic/gdx/math/Vector3;
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    .line 397
    .local v1, "origin":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {p6}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    .line 398
    .local v2, "denom":F
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_3a

    .line 399
    invoke-virtual {p6}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v3

    invoke-virtual {p6}, Lcom/badlogic/gdx/math/Plane;->getD()F

    move-result v4

    add-float/2addr v3, v4

    neg-float v3, v3

    div-float/2addr v3, v2

    .line 400
    .local v3, "t":F
    if-eqz p7, :cond_39

    invoke-virtual {p7, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 401
    :cond_39
    return v3

    .line 402
    .end local v3  # "t":F
    :cond_3a
    invoke-virtual {p6, v1}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v4, v5, :cond_48

    .line 403
    if-eqz p7, :cond_47

    invoke-virtual {p7, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 404
    :cond_47
    return v3

    .line 407
    :cond_48
    const/high16 v3, -0x40800000  # -1.0f

    return v3
.end method

.method public static intersectLinePolygon(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Polygon;)Z
    .registers 22
    .param p0, "p1"  # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "p2"  # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "polygon"  # Lcom/badlogic/gdx/math/Polygon;

    .line 943
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v2

    .line 944
    .local v2, "vertices":[F
    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v3, "x1":F
    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v4, "y1":F
    iget v5, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v5, "x2":F
    iget v6, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 945
    .local v6, "y2":F
    array-length v7, v2

    .line 946
    .local v7, "n":I
    add-int/lit8 v8, v7, -0x2

    aget v8, v2, v8

    .local v8, "x3":F
    add-int/lit8 v9, v7, -0x1

    aget v9, v2, v9

    .line 947
    .local v9, "y3":F
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1a
    if-ge v10, v7, :cond_53

    .line 948
    aget v11, v2, v10

    .local v11, "x4":F
    add-int/lit8 v12, v10, 0x1

    aget v12, v2, v12

    .line 949
    .local v12, "y4":F
    sub-float v13, v12, v9

    sub-float v14, v5, v3

    mul-float/2addr v13, v14

    sub-float v14, v11, v8

    sub-float v15, v6, v4

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    .line 950
    .local v13, "d":F
    const/4 v14, 0x0

    cmpl-float v15, v13, v14

    if-eqz v15, :cond_4e

    .line 951
    sub-float v15, v4, v9

    .line 952
    .local v15, "yd":F
    sub-float v16, v3, v8

    .line 953
    .local v16, "xd":F
    sub-float v17, v11, v8

    mul-float v17, v17, v15

    sub-float v18, v12, v9

    mul-float v18, v18, v16

    sub-float v17, v17, v18

    div-float v17, v17, v13

    .line 954
    .local v17, "ua":F
    cmpl-float v14, v17, v14

    if-ltz v14, :cond_4e

    const/high16 v14, 0x3f800000  # 1.0f

    cmpg-float v14, v17, v14

    if-gtz v14, :cond_4e

    .line 955
    const/4 v14, 0x1

    return v14

    .line 958
    .end local v15  # "yd":F
    .end local v16  # "xd":F
    .end local v17  # "ua":F
    :cond_4e
    move v8, v11

    .line 959
    move v9, v12

    .line 947
    .end local v11  # "x4":F
    .end local v12  # "y4":F
    .end local v13  # "d":F
    add-int/lit8 v10, v10, 0x2

    goto :goto_1a

    .line 961
    .end local v10  # "i":I
    :cond_53
    const/4 v10, 0x0

    return v10
.end method

.method public static intersectLines(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z
    .registers 13
    .param p0, "x1"  # F
    .param p1, "y1"  # F
    .param p2, "x2"  # F
    .param p3, "y2"  # F
    .param p4, "x3"  # F
    .param p5, "y3"  # F
    .param p6, "x4"  # F
    .param p7, "y4"  # F
    .param p8, "intersection"  # Lcom/badlogic/gdx/math/Vector2;

    .line 928
    sub-float v0, p7, p5

    sub-float v1, p2, p0

    mul-float/2addr v0, v1

    sub-float v1, p6, p4

    sub-float v2, p3, p1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 929
    .local v0, "d":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_12

    const/4 v1, 0x0

    return v1

    .line 931
    :cond_12
    if-eqz p8, :cond_2b

    .line 932
    sub-float v1, p6, p4

    sub-float v2, p1, p5

    mul-float/2addr v1, v2

    sub-float v2, p7, p5

    sub-float v3, p0, p4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    .line 933
    .local v1, "ua":F
    sub-float v2, p2, p0

    mul-float/2addr v2, v1

    add-float/2addr v2, p0

    sub-float v3, p3, p1

    mul-float/2addr v3, v1

    add-float/2addr v3, p1

    invoke-virtual {p8, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 935
    .end local v1  # "ua":F
    :cond_2b
    const/4 v1, 0x1

    return v1
.end method

.method public static intersectLines(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .registers 22
    .param p0, "p1"  # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "p2"  # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "p3"  # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "p4"  # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "intersection"  # Lcom/badlogic/gdx/math/Vector2;

    .line 911
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v5, "x1":F
    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v6, "y1":F
    iget v7, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v7, "x2":F
    iget v8, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v8, "y2":F
    iget v9, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v9, "x3":F
    iget v10, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v10, "y3":F
    iget v11, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v11, "x4":F
    iget v12, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 913
    .local v12, "y4":F
    sub-float v13, v12, v10

    sub-float v14, v7, v5

    mul-float/2addr v13, v14

    sub-float v14, v11, v9

    sub-float v15, v8, v6

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    .line 914
    .local v13, "d":F
    const/4 v14, 0x0

    cmpl-float v14, v13, v14

    if-nez v14, :cond_2c

    const/4 v14, 0x0

    return v14

    .line 916
    :cond_2c
    if-eqz v4, :cond_48

    .line 917
    sub-float v14, v11, v9

    sub-float v15, v6, v10

    mul-float/2addr v14, v15

    sub-float v15, v12, v10

    sub-float v16, v5, v9

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    div-float/2addr v14, v13

    .line 918
    .local v14, "ua":F
    sub-float v15, v7, v5

    mul-float/2addr v15, v14

    add-float/2addr v15, v5

    sub-float v16, v8, v6

    mul-float v16, v16, v14

    add-float v0, v6, v16

    invoke-virtual {v4, v15, v0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 920
    .end local v14  # "ua":F
    :cond_48
    const/4 v0, 0x1

    return v0
.end method

.method public static intersectPlanes(Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)Z
    .registers 9
    .param p0, "a"  # Lcom/badlogic/gdx/math/Plane;
    .param p1, "b"  # Lcom/badlogic/gdx/math/Plane;
    .param p2, "c"  # Lcom/badlogic/gdx/math/Plane;
    .param p3, "intersection"  # Lcom/badlogic/gdx/math/Vector3;

    .line 413
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p1, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 414
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p2, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 415
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p2, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 417
    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    neg-float v0, v0

    .line 418
    .local v0, "f":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x358637bd  # 1.0E-6f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3d

    .line 419
    const/4 v1, 0x0

    return v1

    .line 422
    :cond_3d
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    iget v2, p2, Lcom/badlogic/gdx/math/Plane;->d:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 423
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v2, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 424
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget v2, p1, Lcom/badlogic/gdx/math/Plane;->d:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 426
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v1, v2

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v1, v2

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v2, v3

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v2, v3

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v3, v4

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v3, v4

    invoke-virtual {p3, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 427
    const/high16 v1, 0x3f800000  # 1.0f

    div-float/2addr v1, v0

    invoke-virtual {p3, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 428
    const/4 v1, 0x1

    return v1
.end method

.method public static intersectPolygonEdges(Lcom/badlogic/gdx/utils/FloatArray;Lcom/badlogic/gdx/utils/FloatArray;)Z
    .registers 27
    .param p0, "polygon1"  # Lcom/badlogic/gdx/utils/FloatArray;
    .param p1, "polygon2"  # Lcom/badlogic/gdx/utils/FloatArray;

    .line 225
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v2, v2, -0x2

    .local v2, "last1":I
    iget v3, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v3, v3, -0x2

    .line 226
    .local v3, "last2":I
    iget-object v4, v0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .local v4, "p1":[F
    iget-object v5, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 227
    .local v5, "p2":[F
    aget v6, v4, v2

    .local v6, "x1":F
    add-int/lit8 v7, v2, 0x1

    aget v7, v4, v7

    .line 228
    .local v7, "y1":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_17
    if-gt v8, v2, :cond_5d

    .line 229
    aget v18, v4, v8

    .local v18, "x2":F
    add-int/lit8 v9, v8, 0x1

    aget v19, v4, v9

    .line 230
    .local v19, "y2":F
    aget v9, v5, v3

    .local v9, "x3":F
    add-int/lit8 v10, v3, 0x1

    aget v10, v5, v10

    .line 231
    .local v10, "y3":F
    const/4 v11, 0x0

    move/from16 v20, v9

    move/from16 v21, v10

    move v15, v11

    .end local v9  # "x3":F
    .end local v10  # "y3":F
    .local v15, "j":I
    .local v20, "x3":F
    .local v21, "y3":F
    :goto_2b
    if-gt v15, v3, :cond_54

    .line 232
    aget v22, v5, v15

    .local v22, "x4":F
    add-int/lit8 v9, v15, 0x1

    aget v23, v5, v9

    .line 233
    .local v23, "y4":F
    const/16 v17, 0x0

    move v9, v6

    move v10, v7

    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 v13, v20

    move/from16 v14, v21

    move/from16 v24, v15

    .end local v15  # "j":I
    .local v24, "j":I
    move/from16 v15, v22

    move/from16 v16, v23

    invoke-static/range {v9 .. v17}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z

    move-result v9

    if-eqz v9, :cond_4d

    const/4 v9, 0x1

    return v9

    .line 234
    :cond_4d
    move/from16 v20, v22

    .line 235
    move/from16 v21, v23

    .line 231
    .end local v22  # "x4":F
    .end local v23  # "y4":F
    add-int/lit8 v15, v24, 0x2

    .end local v24  # "j":I
    .restart local v15  # "j":I
    goto :goto_2b

    :cond_54
    move/from16 v24, v15

    .line 237
    .end local v15  # "j":I
    move/from16 v6, v18

    .line 238
    move/from16 v7, v19

    .line 228
    .end local v18  # "x2":F
    .end local v19  # "y2":F
    .end local v20  # "x3":F
    .end local v21  # "y3":F
    add-int/lit8 v8, v8, 0x2

    goto :goto_17

    .line 240
    .end local v8  # "i":I
    :cond_5d
    const/4 v8, 0x0

    return v8
.end method

.method public static intersectPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;)Z
    .registers 19
    .param p0, "p1"  # Lcom/badlogic/gdx/math/Polygon;
    .param p1, "p2"  # Lcom/badlogic/gdx/math/Polygon;
    .param p2, "overlap"  # Lcom/badlogic/gdx/math/Polygon;

    .line 160
    move-object/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_117

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_14

    move v12, v2

    goto/16 :goto_118

    .line 163
    :cond_14
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->ip:Lcom/badlogic/gdx/math/Vector2;

    .local v1, "ip":Lcom/badlogic/gdx/math/Vector2;
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->ep1:Lcom/badlogic/gdx/math/Vector2;

    .local v3, "ep1":Lcom/badlogic/gdx/math/Vector2;
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->ep2:Lcom/badlogic/gdx/math/Vector2;

    .local v4, "ep2":Lcom/badlogic/gdx/math/Vector2;
    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->s:Lcom/badlogic/gdx/math/Vector2;

    .local v5, "s":Lcom/badlogic/gdx/math/Vector2;
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->e:Lcom/badlogic/gdx/math/Vector2;

    .line 164
    .local v6, "e":Lcom/badlogic/gdx/math/Vector2;
    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->floatArray:Lcom/badlogic/gdx/utils/FloatArray;

    .local v7, "floatArray":Lcom/badlogic/gdx/utils/FloatArray;
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->floatArray2:Lcom/badlogic/gdx/utils/FloatArray;

    .line 165
    .local v8, "floatArray2":Lcom/badlogic/gdx/utils/FloatArray;
    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 166
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/FloatArray;->addAll([F)V

    .line 168
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v9

    .line 169
    .local v9, "vertices2":[F
    const/4 v10, 0x0

    .local v10, "i":I
    array-length v11, v9

    const/4 v12, 0x2

    sub-int/2addr v11, v12

    .local v11, "last":I
    :goto_37
    const/4 v13, 0x1

    if-gt v10, v11, :cond_f1

    .line 170
    aget v14, v9, v10

    add-int/lit8 v15, v10, 0x1

    aget v15, v9, v15

    invoke-virtual {v3, v14, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 172
    if-ge v10, v11, :cond_51

    .line 173
    add-int/lit8 v14, v10, 0x2

    aget v14, v9, v14

    add-int/lit8 v15, v10, 0x3

    aget v15, v9, v15

    invoke-virtual {v4, v14, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_58

    .line 175
    :cond_51
    aget v14, v9, v2

    aget v15, v9, v13

    invoke-virtual {v4, v14, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 176
    :goto_58
    iget v14, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-nez v14, :cond_5d

    return v2

    .line 177
    :cond_5d
    iget v14, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v14, v12

    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v14

    iget v15, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v15, v13

    invoke-virtual {v8, v15}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v15

    invoke-virtual {v5, v14, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 178
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_6f
    iget v15, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge v14, v15, :cond_e2

    .line 179
    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v15

    add-int/lit8 v2, v14, 0x1

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    invoke-virtual {v6, v15, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 181
    invoke-static {v4, v3, v5}, Lcom/badlogic/gdx/math/Intersector;->pointLineSide(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)I

    move-result v2

    if-lez v2, :cond_88

    move v2, v13

    goto :goto_89

    :cond_88
    const/4 v2, 0x0

    .line 182
    .local v2, "side":Z
    :goto_89
    invoke-static {v4, v3, v6}, Lcom/badlogic/gdx/math/Intersector;->pointLineSide(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)I

    move-result v15

    if-lez v15, :cond_c7

    .line 183
    if-nez v2, :cond_bc

    .line 184
    invoke-static {v5, v6, v3, v4, v1}, Lcom/badlogic/gdx/math/Intersector;->intersectLines(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    .line 185
    iget v15, v7, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lt v15, v12, :cond_b2

    iget v15, v7, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v15, v12

    invoke-virtual {v7, v15}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v15

    iget v12, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v12, v15, v12

    if-nez v12, :cond_b2

    iget v12, v7, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v12, v13

    .line 186
    invoke-virtual {v7, v12}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v12

    iget v15, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v12, v12, v15

    if-eqz v12, :cond_bc

    .line 187
    :cond_b2
    iget v12, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v7, v12}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 188
    iget v12, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v7, v12}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 191
    :cond_bc
    iget v12, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v7, v12}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 192
    iget v12, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v7, v12}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    goto :goto_d6

    .line 193
    :cond_c7
    if-eqz v2, :cond_d6

    .line 194
    invoke-static {v5, v6, v3, v4, v1}, Lcom/badlogic/gdx/math/Intersector;->intersectLines(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    .line 195
    iget v12, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v7, v12}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 196
    iget v12, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v7, v12}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 198
    :cond_d6
    :goto_d6
    iget v12, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v15, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v5, v12, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 178
    .end local v2  # "side":Z
    add-int/lit8 v14, v14, 0x2

    const/4 v2, 0x0

    const/4 v12, 0x2

    goto :goto_6f

    .line 200
    .end local v14  # "j":I
    :cond_e2
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 201
    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/FloatArray;->addAll(Lcom/badlogic/gdx/utils/FloatArray;)V

    .line 202
    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 169
    add-int/lit8 v10, v10, 0x2

    const/4 v2, 0x0

    const/4 v12, 0x2

    goto/16 :goto_37

    .line 204
    .end local v10  # "i":I
    .end local v11  # "last":I
    :cond_f1
    iget v2, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-eqz v2, :cond_115

    .line 205
    if-eqz v0, :cond_114

    .line 206
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v2

    array-length v2, v2

    iget v10, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ne v2, v10, :cond_10d

    .line 207
    iget-object v2, v8, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v10

    iget v11, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v12, 0x0

    invoke-static {v2, v12, v10, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_114

    .line 209
    :cond_10d
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/FloatArray;->toArray()[F

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Polygon;->setVertices([F)V

    .line 211
    :cond_114
    :goto_114
    return v13

    .line 213
    :cond_115
    const/4 v12, 0x0

    return v12

    .line 160
    .end local v1  # "ip":Lcom/badlogic/gdx/math/Vector2;
    .end local v3  # "ep1":Lcom/badlogic/gdx/math/Vector2;
    .end local v4  # "ep2":Lcom/badlogic/gdx/math/Vector2;
    .end local v5  # "s":Lcom/badlogic/gdx/math/Vector2;
    .end local v6  # "e":Lcom/badlogic/gdx/math/Vector2;
    .end local v7  # "floatArray":Lcom/badlogic/gdx/utils/FloatArray;
    .end local v8  # "floatArray2":Lcom/badlogic/gdx/utils/FloatArray;
    .end local v9  # "vertices2":[F
    :cond_117
    move v12, v2

    .line 161
    :goto_118
    return v12
.end method

.method public static intersectPolygons(Lcom/badlogic/gdx/utils/FloatArray;Lcom/badlogic/gdx/utils/FloatArray;)Z
    .registers 8
    .param p0, "polygon1"  # Lcom/badlogic/gdx/utils/FloatArray;
    .param p1, "polygon2"  # Lcom/badlogic/gdx/utils/FloatArray;

    .line 218
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget-object v2, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v4, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v0, v3, v1, v2, v4}, Lcom/badlogic/gdx/math/Intersector;->isPointInPolygon([FIIFF)Z

    move-result v0

    if-eqz v0, :cond_15

    return v5

    .line 219
    :cond_15
    iget-object v0, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v2, v2, v3

    iget-object v4, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v4, v4, v5

    invoke-static {v0, v3, v1, v2, v4}, Lcom/badlogic/gdx/math/Intersector;->isPointInPolygon([FIIFF)Z

    move-result v0

    if-eqz v0, :cond_28

    return v5

    .line 220
    :cond_28
    invoke-static {p0, p1}, Lcom/badlogic/gdx/math/Intersector;->intersectPolygonEdges(Lcom/badlogic/gdx/utils/FloatArray;Lcom/badlogic/gdx/utils/FloatArray;)Z

    move-result v0

    return v0
.end method

.method public static intersectRayBounds(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/collision/BoundingBox;Lcom/badlogic/gdx/math/Vector3;)Z
    .registers 9
    .param p0, "ray"  # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "box"  # Lcom/badlogic/gdx/math/collision/BoundingBox;
    .param p2, "intersection"  # Lcom/badlogic/gdx/math/Vector3;

    .line 515
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->contains(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 516
    if-eqz p2, :cond_f

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 517
    :cond_f
    const/4 v0, 0x1

    return v0

    .line 519
    :cond_11
    const/4 v0, 0x0

    .line 520
    .local v0, "lowest":F
    const/4 v1, 0x0

    .line 523
    .local v1, "hit":Z
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v2, v2, v3

    const/4 v3, 0x0

    if-gtz v2, :cond_83

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_83

    .line 524
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float/2addr v2, v4

    .line 525
    .local v2, "t":F
    cmpl-float v4, v2, v3

    if-ltz v4, :cond_83

    .line 526
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 527
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_83

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_83

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_83

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_83

    if-eqz v1, :cond_81

    cmpg-float v4, v2, v0

    if-gez v4, :cond_83

    .line 528
    :cond_81
    const/4 v1, 0x1

    .line 529
    move v0, v2

    .line 534
    .end local v2  # "t":F
    :cond_83
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_f2

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_f2

    .line 535
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float/2addr v2, v4

    .line 536
    .restart local v2  # "t":F
    cmpl-float v4, v2, v3

    if-ltz v4, :cond_f2

    .line 537
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 538
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_f2

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_f2

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_f2

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_f2

    if-eqz v1, :cond_f0

    cmpg-float v4, v2, v0

    if-gez v4, :cond_f2

    .line 539
    :cond_f0
    const/4 v1, 0x1

    .line 540
    move v0, v2

    .line 545
    .end local v2  # "t":F
    :cond_f2
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_161

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_161

    .line 546
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float/2addr v2, v4

    .line 547
    .restart local v2  # "t":F
    cmpl-float v4, v2, v3

    if-ltz v4, :cond_161

    .line 548
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 549
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_161

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_161

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_161

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_161

    if-eqz v1, :cond_15f

    cmpg-float v4, v2, v0

    if-gez v4, :cond_161

    .line 550
    :cond_15f
    const/4 v1, 0x1

    .line 551
    move v0, v2

    .line 556
    .end local v2  # "t":F
    :cond_161
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_1d0

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1d0

    .line 557
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float/2addr v2, v4

    .line 558
    .restart local v2  # "t":F
    cmpl-float v4, v2, v3

    if-ltz v4, :cond_1d0

    .line 559
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 560
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1d0

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1d0

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1d0

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1d0

    if-eqz v1, :cond_1ce

    cmpg-float v4, v2, v0

    if-gez v4, :cond_1d0

    .line 561
    :cond_1ce
    const/4 v1, 0x1

    .line 562
    move v0, v2

    .line 567
    .end local v2  # "t":F
    :cond_1d0
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_23f

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_23f

    .line 568
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    div-float/2addr v2, v4

    .line 569
    .restart local v2  # "t":F
    cmpl-float v4, v2, v3

    if-ltz v4, :cond_23f

    .line 570
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 571
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_23f

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_23f

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_23f

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_23f

    if-eqz v1, :cond_23d

    cmpg-float v4, v2, v0

    if-gez v4, :cond_23f

    .line 572
    :cond_23d
    const/4 v1, 0x1

    .line 573
    move v0, v2

    .line 578
    .end local v2  # "t":F
    :cond_23f
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_2ae

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2ae

    .line 579
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    div-float/2addr v2, v4

    .line 580
    .restart local v2  # "t":F
    cmpl-float v3, v2, v3

    if-ltz v3, :cond_2ae

    .line 581
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 582
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2ae

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2ae

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2ae

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2ae

    if-eqz v1, :cond_2ac

    cmpg-float v3, v2, v0

    if-gez v3, :cond_2ae

    .line 583
    :cond_2ac
    const/4 v1, 0x1

    .line 584
    move v0, v2

    .line 588
    .end local v2  # "t":F
    :cond_2ae
    if-eqz v1, :cond_324

    if-eqz p2, :cond_324

    .line 589
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 590
    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2d2

    .line 591
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput v2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    goto :goto_2e2

    .line 592
    :cond_2d2
    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2e2

    .line 593
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput v2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 595
    :cond_2e2
    :goto_2e2
    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2f3

    .line 596
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    goto :goto_303

    .line 597
    :cond_2f3
    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_303

    .line 598
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 600
    :cond_303
    :goto_303
    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_314

    .line 601
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iput v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    goto :goto_324

    .line 602
    :cond_314
    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_324

    .line 603
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iput v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 606
    :cond_324
    :goto_324
    return v1
.end method

.method public static intersectRayBoundsFast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z
    .registers 15
    .param p0, "ray"  # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "center"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "dimensions"  # Lcom/badlogic/gdx/math/Vector3;

    .line 620
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/high16 v1, 0x3f800000  # 1.0f

    div-float v0, v1, v0

    .line 621
    .local v0, "divX":F
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v2, v1, v2

    .line 622
    .local v2, "divY":F
    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    div-float/2addr v1, v3

    .line 624
    .local v1, "divZ":F
    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/high16 v5, 0x3f000000  # 0.5f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    .line 625
    .local v3, "minx":F
    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v6, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v6, v5

    add-float/2addr v4, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v4, v6

    mul-float/2addr v4, v0

    .line 626
    .local v4, "maxx":F
    cmpl-float v6, v3, v4

    if-lez v6, :cond_34

    .line 627
    move v6, v3

    .line 628
    .local v6, "t":F
    move v3, v4

    .line 629
    move v4, v6

    .line 632
    .end local v6  # "t":F
    :cond_34
    iget v6, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v7, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v7, v5

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v2

    .line 633
    .local v6, "miny":F
    iget v7, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v8, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    .line 634
    .local v7, "maxy":F
    cmpl-float v8, v6, v7

    if-lez v8, :cond_53

    .line 635
    move v8, v6

    .line 636
    .local v8, "t":F
    move v6, v7

    .line 637
    move v7, v8

    .line 640
    .end local v8  # "t":F
    :cond_53
    iget v8, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v9, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v1

    .line 641
    .local v8, "minz":F
    iget v9, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v10, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v10, v5

    add-float/2addr v9, v10

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v9, v5

    mul-float/2addr v9, v1

    .line 642
    .local v9, "maxz":F
    cmpl-float v5, v8, v9

    if-lez v5, :cond_72

    .line 643
    move v5, v8

    .line 644
    .local v5, "t":F
    move v8, v9

    .line 645
    move v9, v5

    .line 648
    .end local v5  # "t":F
    :cond_72
    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 649
    .local v5, "min":F
    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 651
    .local v10, "max":F
    const/4 v11, 0x0

    cmpl-float v11, v10, v11

    if-ltz v11, :cond_8d

    cmpl-float v11, v10, v5

    if-ltz v11, :cond_8d

    const/4 v11, 0x1

    goto :goto_8e

    :cond_8d
    const/4 v11, 0x0

    :goto_8e
    return v11
.end method

.method public static intersectRayBoundsFast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/collision/BoundingBox;)Z
    .registers 4
    .param p0, "ray"  # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "box"  # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 612
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCenter(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getDimensions(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/math/Intersector;->intersectRayBoundsFast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    return v0
.end method

.method public static intersectRayOrientedBoundsFast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/collision/BoundingBox;Lcom/badlogic/gdx/math/Matrix4;)Z
    .registers 24
    .param p0, "ray"  # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "bounds"  # Lcom/badlogic/gdx/math/collision/BoundingBox;
    .param p2, "matrix"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 660
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 661
    .local v3, "tMin":F
    const v4, 0x7f7fffff  # Float.MAX_VALUE

    .line 664
    .local v4, "tMax":F
    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    .line 665
    .local v5, "oBBposition":Lcom/badlogic/gdx/math/Vector3;
    iget-object v6, v0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    .line 668
    .local v6, "delta":Lcom/badlogic/gdx/math/Vector3;
    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    .line 669
    .local v7, "xaxis":Lcom/badlogic/gdx/math/Vector3;
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    iget-object v9, v2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v11, v2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    iget-object v13, v2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x2

    aget v13, v13, v14

    invoke-virtual {v8, v9, v11, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 670
    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v8

    .line 671
    .local v8, "e":F
    iget-object v9, v0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v9

    .line 673
    .local v9, "f":F
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const v13, 0x358637bd  # 1.0E-6f

    cmpl-float v11, v11, v13

    const/4 v14, 0x0

    if-lez v11, :cond_66

    .line 674
    iget-object v11, v1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v11, v8

    div-float/2addr v11, v9

    .line 675
    .local v11, "t1":F
    iget-object v15, v1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v15, v8

    div-float/2addr v15, v9

    .line 680
    .local v15, "t2":F
    cmpl-float v16, v11, v15

    if-lez v16, :cond_57

    .line 681
    move/from16 v16, v11

    .line 682
    .local v16, "w":F
    move v11, v15

    .line 683
    move/from16 v15, v16

    .line 686
    .end local v16  # "w":F
    :cond_57
    cmpg-float v16, v15, v4

    if-gez v16, :cond_5c

    .line 687
    move v4, v15

    .line 690
    :cond_5c
    cmpl-float v16, v11, v3

    if-lez v16, :cond_61

    .line 691
    move v3, v11

    .line 697
    :cond_61
    cmpg-float v16, v4, v3

    if-gez v16, :cond_7d

    .line 698
    return v10

    .line 701
    .end local v11  # "t1":F
    .end local v15  # "t2":F
    :cond_66
    neg-float v11, v8

    iget-object v15, v1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v11, v15

    cmpl-float v11, v11, v14

    if-gtz v11, :cond_150

    neg-float v11, v8

    iget-object v15, v1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v11, v15

    cmpg-float v11, v11, v14

    if-gez v11, :cond_7d

    move v12, v10

    goto/16 :goto_151

    .line 707
    :cond_7d
    sget-object v11, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    .line 708
    .local v11, "yaxis":Lcom/badlogic/gdx/math/Vector3;
    sget-object v15, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v12, v2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v17, 0x4

    aget v12, v12, v17

    iget-object v14, v2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v18, 0x5

    aget v14, v14, v18

    iget-object v10, v2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v19, 0x6

    aget v10, v10, v19

    invoke-virtual {v15, v12, v14, v10}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 710
    invoke-virtual {v11, v6}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v8

    .line 711
    iget-object v10, v0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v9

    .line 713
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v10, v10, v13

    if-lez v10, :cond_cb

    .line 714
    iget-object v10, v1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v10, v8

    div-float/2addr v10, v9

    .line 715
    .local v10, "t1":F
    iget-object v12, v1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v12, v8

    div-float/2addr v12, v9

    .line 717
    .local v12, "t2":F
    cmpl-float v14, v10, v12

    if-lez v14, :cond_bb

    .line 718
    move v14, v10

    .line 719
    .local v14, "w":F
    move v10, v12

    .line 720
    move v12, v14

    .line 722
    .end local v14  # "w":F
    :cond_bb
    cmpg-float v14, v12, v4

    if-gez v14, :cond_c0

    .line 723
    move v4, v12

    .line 725
    :cond_c0
    cmpl-float v14, v10, v3

    if-lez v14, :cond_c5

    .line 726
    move v3, v10

    .line 728
    :cond_c5
    cmpl-float v14, v3, v4

    if-lez v14, :cond_e3

    .line 729
    const/4 v13, 0x0

    return v13

    .line 732
    .end local v10  # "t1":F
    .end local v12  # "t2":F
    :cond_cb
    neg-float v10, v8

    iget-object v12, v1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v10, v12

    const/4 v12, 0x0

    cmpl-float v10, v10, v12

    if-gtz v10, :cond_14e

    neg-float v10, v8

    iget-object v14, v1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v10, v14

    cmpg-float v10, v10, v12

    if-gez v10, :cond_e3

    const/4 v12, 0x0

    goto/16 :goto_14f

    .line 738
    :cond_e3
    sget-object v10, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    .line 739
    .local v10, "zaxis":Lcom/badlogic/gdx/math/Vector3;
    sget-object v12, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget-object v14, v2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v15, 0x8

    aget v14, v14, v15

    iget-object v15, v2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v19, 0x9

    aget v15, v15, v19

    iget-object v13, v2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v20, 0xa

    aget v13, v13, v20

    invoke-virtual {v12, v14, v15, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 741
    invoke-virtual {v10, v6}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v8

    .line 742
    iget-object v12, v0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v12, v10}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v9

    .line 744
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const v13, 0x358637bd  # 1.0E-6f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_134

    .line 745
    iget-object v12, v1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v12, v8

    div-float/2addr v12, v9

    .line 746
    .local v12, "t1":F
    iget-object v13, v1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v13, v8

    div-float/2addr v13, v9

    .line 748
    .local v13, "t2":F
    cmpl-float v14, v12, v13

    if-lez v14, :cond_124

    .line 749
    move v14, v12

    .line 750
    .restart local v14  # "w":F
    move v12, v13

    .line 751
    move v13, v14

    .line 753
    .end local v14  # "w":F
    :cond_124
    cmpg-float v14, v13, v4

    if-gez v14, :cond_129

    .line 754
    move v4, v13

    .line 756
    :cond_129
    cmpl-float v14, v12, v3

    if-lez v14, :cond_12e

    .line 757
    move v3, v12

    .line 759
    :cond_12e
    cmpl-float v14, v3, v4

    if-lez v14, :cond_14a

    .line 760
    const/4 v14, 0x0

    return v14

    .line 762
    .end local v12  # "t1":F
    .end local v13  # "t2":F
    :cond_134
    neg-float v12, v8

    iget-object v13, v1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v12, v13

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-gtz v12, :cond_14c

    neg-float v12, v8

    iget-object v14, v1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v12, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_14a

    goto :goto_14c

    .line 766
    :cond_14a
    const/4 v12, 0x1

    return v12

    .line 763
    :cond_14c
    :goto_14c
    const/4 v12, 0x0

    return v12

    .line 732
    .end local v10  # "zaxis":Lcom/badlogic/gdx/math/Vector3;
    :cond_14e
    const/4 v12, 0x0

    .line 733
    :goto_14f
    return v12

    .line 701
    .end local v11  # "yaxis":Lcom/badlogic/gdx/math/Vector3;
    :cond_150
    move v12, v10

    .line 702
    :goto_151
    return v12
.end method

.method public static intersectRayPlane(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)Z
    .registers 9
    .param p0, "ray"  # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "plane"  # Lcom/badlogic/gdx/math/Plane;
    .param p2, "intersection"  # Lcom/badlogic/gdx/math/Vector3;

    .line 376
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 377
    .local v0, "denom":F
    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3f

    .line 378
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getD()F

    move-result v5

    add-float/2addr v2, v5

    neg-float v2, v2

    div-float/2addr v2, v0

    .line 379
    .local v2, "t":F
    cmpg-float v1, v2, v1

    if-gez v1, :cond_27

    return v4

    .line 381
    :cond_27
    if-eqz p2, :cond_3e

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 382
    :cond_3e
    return v3

    .line 383
    .end local v2  # "t":F
    :cond_3f
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v1, v2, :cond_51

    .line 384
    if-eqz p2, :cond_50

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 385
    :cond_50
    return v3

    .line 387
    :cond_51
    return v4
.end method

.method public static intersectRayRay(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F
    .registers 11
    .param p0, "start1"  # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "direction1"  # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "start2"  # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "direction2"  # Lcom/badlogic/gdx/math/Vector2;

    .line 360
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    .line 361
    .local v0, "difx":F
    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    .line 362
    .local v1, "dify":F
    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 363
    .local v2, "d1xd2":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1d

    .line 364
    const/high16 v3, 0x7f800000  # Float.POSITIVE_INFINITY

    return v3

    .line 366
    :cond_1d
    iget v3, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    div-float/2addr v3, v2

    .line 367
    .local v3, "d2sx":F
    iget v4, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr v4, v2

    .line 368
    .local v4, "d2sy":F
    mul-float v5, v0, v4

    mul-float v6, v1, v3

    sub-float/2addr v5, v6

    return v5
.end method

.method public static intersectRaySphere(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;FLcom/badlogic/gdx/math/Vector3;)Z
    .registers 10
    .param p0, "ray"  # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "center"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "radius"  # F
    .param p3, "intersection"  # Lcom/badlogic/gdx/math/Vector3;

    .line 489
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->dot(FFF)F

    move-result v0

    .line 490
    .local v0, "len":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    const/4 v2, 0x0

    if-gez v1, :cond_22

    .line 491
    return v2

    .line 492
    :cond_22
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-virtual {p1, v1, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->dst2(FFF)F

    move-result v1

    .line 494
    .local v1, "dst2":F
    mul-float v3, p2, p2

    .line 495
    .local v3, "r2":F
    cmpl-float v4, v1, v3

    if-lez v4, :cond_4b

    return v2

    .line 496
    :cond_4b
    if-eqz p3, :cond_66

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    sub-float v4, v3, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    sub-float v4, v0, v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 497
    :cond_66
    const/4 v2, 0x1

    return v2
.end method

.method public static intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z
    .registers 22
    .param p0, "ray"  # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "t1"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "t2"  # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "t3"  # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "intersection"  # Lcom/badlogic/gdx/math/Vector3;

    .line 441
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    .line 442
    .local v5, "edge1":Lcom/badlogic/gdx/math/Vector3;
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    .line 444
    .local v6, "edge2":Lcom/badlogic/gdx/math/Vector3;
    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v8, v0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    .line 445
    .local v7, "pvec":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v8

    .line 446
    .local v8, "det":F
    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_58

    .line 447
    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->p:Lcom/badlogic/gdx/math/Plane;

    invoke-virtual {v9, v1, v2, v3}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 448
    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->p:Lcom/badlogic/gdx/math/Plane;

    iget-object v12, v0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v9

    sget-object v12, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v9, v12, :cond_57

    iget-object v9, v0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {v9, v1, v2, v3}, Lcom/badlogic/gdx/math/Intersector;->isPointInTriangle(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v9

    if-eqz v9, :cond_57

    .line 449
    if-eqz v4, :cond_56

    iget-object v9, v0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 450
    :cond_56
    return v10

    .line 452
    :cond_57
    return v11

    .line 455
    :cond_58
    const/high16 v9, 0x3f800000  # 1.0f

    div-float v8, v9, v8

    .line 457
    sget-object v12, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector3;

    iget-object v13, v0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    .line 458
    .local v12, "tvec":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {v12, v7}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v13

    mul-float/2addr v13, v8

    .line 459
    .local v13, "u":F
    const/4 v14, 0x0

    cmpg-float v15, v13, v14

    if-ltz v15, :cond_ac

    cmpl-float v15, v13, v9

    if-lez v15, :cond_77

    goto :goto_ac

    .line 461
    :cond_77
    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v15

    .line 462
    .local v15, "qvec":Lcom/badlogic/gdx/math/Vector3;
    iget-object v10, v0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v10, v15}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v10

    mul-float/2addr v10, v8

    .line 463
    .local v10, "v":F
    cmpg-float v16, v10, v14

    if-ltz v16, :cond_ab

    add-float v16, v13, v10

    cmpl-float v9, v16, v9

    if-lez v9, :cond_8d

    goto :goto_ab

    .line 465
    :cond_8d
    invoke-virtual {v6, v15}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v9

    mul-float/2addr v9, v8

    .line 466
    .local v9, "t":F
    cmpg-float v14, v9, v14

    if-gez v14, :cond_97

    return v11

    .line 468
    :cond_97
    if-eqz v4, :cond_a9

    .line 469
    const v11, 0x358637bd  # 1.0E-6f

    cmpg-float v11, v9, v11

    if-gtz v11, :cond_a6

    .line 470
    iget-object v11, v0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_a9

    .line 472
    :cond_a6
    invoke-virtual {v0, v4, v9}, Lcom/badlogic/gdx/math/collision/Ray;->getEndPoint(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    .line 476
    :cond_a9
    :goto_a9
    const/4 v11, 0x1

    return v11

    .line 463
    .end local v9  # "t":F
    :cond_ab
    :goto_ab
    return v11

    .line 459
    .end local v10  # "v":F
    .end local v15  # "qvec":Lcom/badlogic/gdx/math/Vector3;
    :cond_ac
    :goto_ac
    return v11
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;Ljava/util/List;Lcom/badlogic/gdx/math/Vector3;)Z
    .registers 10
    .param p0, "ray"  # Lcom/badlogic/gdx/math/collision/Ray;
    .param p2, "intersection"  # Lcom/badlogic/gdx/math/Vector3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/collision/Ray;",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;",
            "Lcom/badlogic/gdx/math/Vector3;",
            ")Z"
        }
    .end annotation

    .line 853
    .local p1, "triangles":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/math/Vector3;>;"
    const v0, 0x7f7fffff  # Float.MAX_VALUE

    .line 854
    .local v0, "min_dist":F
    const/4 v1, 0x0

    .line 856
    .local v1, "hit":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_56

    .line 858
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_49

    .line 859
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v5, v2, 0x2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p0, v3, v4, v5, v6}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v3

    .line 861
    .local v3, "result":Z
    if-eqz v3, :cond_46

    .line 862
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    .line 863
    .local v4, "dist":F
    cmpg-float v5, v4, v0

    if-gez v5, :cond_46

    .line 864
    move v0, v4

    .line 865
    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 866
    const/4 v1, 0x1

    .line 858
    .end local v3  # "result":Z
    .end local v4  # "dist":F
    :cond_46
    add-int/lit8 v2, v2, 0x3

    goto :goto_d

    .line 871
    .end local v2  # "i":I
    :cond_49
    if-nez v1, :cond_4d

    .line 872
    const/4 v2, 0x0

    return v2

    .line 874
    :cond_4d
    if-eqz p2, :cond_54

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 875
    :cond_54
    const/4 v2, 0x1

    return v2

    .line 856
    :cond_56
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "triangle list size is not a multiple of 3"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;[FLcom/badlogic/gdx/math/Vector3;)Z
    .registers 12
    .param p0, "ray"  # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "triangles"  # [F
    .param p2, "intersection"  # Lcom/badlogic/gdx/math/Vector3;

    .line 781
    const v0, 0x7f7fffff  # Float.MAX_VALUE

    .line 782
    .local v0, "min_dist":F
    const/4 v1, 0x0

    .line 784
    .local v1, "hit":Z
    array-length v2, p1

    rem-int/lit8 v2, v2, 0x9

    if-nez v2, :cond_6e

    .line 786
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    array-length v3, p1

    if-ge v2, v3, :cond_61

    .line 787
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    aget v4, p1, v2

    add-int/lit8 v5, v2, 0x1

    aget v5, p1, v5

    add-int/lit8 v6, v2, 0x2

    aget v6, p1, v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v5, v2, 0x3

    aget v5, p1, v5

    add-int/lit8 v6, v2, 0x4

    aget v6, p1, v6

    add-int/lit8 v7, v2, 0x5

    aget v7, p1, v7

    .line 788
    invoke-virtual {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v6, v2, 0x6

    aget v6, p1, v6

    add-int/lit8 v7, v2, 0x7

    aget v7, p1, v7

    add-int/lit8 v8, v2, 0x8

    aget v8, p1, v8

    .line 789
    invoke-virtual {v5, v6, v7, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 787
    invoke-static {p0, v3, v4, v5, v6}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v3

    .line 791
    .local v3, "result":Z
    if-eqz v3, :cond_5e

    .line 792
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    .line 793
    .local v4, "dist":F
    cmpg-float v5, v4, v0

    if-gez v5, :cond_5e

    .line 794
    move v0, v4

    .line 795
    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 796
    const/4 v1, 0x1

    .line 786
    .end local v3  # "result":Z
    .end local v4  # "dist":F
    :cond_5e
    add-int/lit8 v2, v2, 0x9

    goto :goto_a

    .line 801
    .end local v2  # "i":I
    :cond_61
    if-nez v1, :cond_65

    .line 802
    const/4 v2, 0x0

    return v2

    .line 804
    :cond_65
    if-eqz p2, :cond_6c

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 805
    :cond_6c
    const/4 v2, 0x1

    return v2

    .line 784
    :cond_6e
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "triangles array size is not a multiple of 9"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;[F[SILcom/badlogic/gdx/math/Vector3;)Z
    .registers 20
    .param p0, "ray"  # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "vertices"  # [F
    .param p2, "indices"  # [S
    .param p3, "vertexSize"  # I
    .param p4, "intersection"  # Lcom/badlogic/gdx/math/Vector3;

    .line 816
    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    const v3, 0x7f7fffff  # Float.MAX_VALUE

    .line 817
    .local v3, "min_dist":F
    const/4 v4, 0x0

    .line 819
    .local v4, "hit":Z
    array-length v5, v1

    rem-int/lit8 v5, v5, 0x3

    if-nez v5, :cond_7f

    .line 821
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_f
    array-length v6, v1

    if-ge v5, v6, :cond_72

    .line 822
    aget-short v6, v1, v5

    mul-int v6, v6, p3

    .line 823
    .local v6, "i1":I
    add-int/lit8 v7, v5, 0x1

    aget-short v7, v1, v7

    mul-int v7, v7, p3

    .line 824
    .local v7, "i2":I
    add-int/lit8 v8, v5, 0x2

    aget-short v8, v1, v8

    mul-int v8, v8, p3

    .line 826
    .local v8, "i3":I
    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    aget v10, p1, v6

    add-int/lit8 v11, v6, 0x1

    aget v11, p1, v11

    add-int/lit8 v12, v6, 0x2

    aget v12, p1, v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    sget-object v10, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    aget v11, p1, v7

    add-int/lit8 v12, v7, 0x1

    aget v12, p1, v12

    add-int/lit8 v13, v7, 0x2

    aget v13, p1, v13

    .line 827
    invoke-virtual {v10, v11, v12, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    sget-object v11, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    aget v12, p1, v8

    add-int/lit8 v13, v8, 0x1

    aget v13, p1, v13

    add-int/lit8 v14, v8, 0x2

    aget v14, p1, v14

    .line 828
    invoke-virtual {v11, v12, v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v11

    sget-object v12, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 826
    invoke-static {p0, v9, v10, v11, v12}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v9

    .line 830
    .local v9, "result":Z
    if-eqz v9, :cond_6f

    .line 831
    iget-object v10, v0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    sget-object v11, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v10

    .line 832
    .local v10, "dist":F
    cmpg-float v11, v10, v3

    if-gez v11, :cond_6f

    .line 833
    move v3, v10

    .line 834
    sget-object v11, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    sget-object v12, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 835
    const/4 v4, 0x1

    .line 821
    .end local v6  # "i1":I
    .end local v7  # "i2":I
    .end local v8  # "i3":I
    .end local v9  # "result":Z
    .end local v10  # "dist":F
    :cond_6f
    add-int/lit8 v5, v5, 0x3

    goto :goto_f

    .line 840
    .end local v5  # "i":I
    :cond_72
    if-nez v4, :cond_76

    .line 841
    const/4 v5, 0x0

    return v5

    .line 843
    :cond_76
    if-eqz v2, :cond_7d

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 844
    :cond_7d
    const/4 v5, 0x1

    return v5

    .line 819
    :cond_7f
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "triangle list size is not a multiple of 3"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static intersectRectangles(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .registers 6
    .param p0, "rectangle1"  # Lcom/badlogic/gdx/math/Rectangle;
    .param p1, "rectangle2"  # Lcom/badlogic/gdx/math/Rectangle;
    .param p2, "intersection"  # Lcom/badlogic/gdx/math/Rectangle;

    .line 968
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Rectangle;->overlaps(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 969
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 970
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 971
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 972
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 973
    const/4 v0, 0x1

    return v0

    .line 975
    :cond_42
    const/4 v0, 0x0

    return v0
.end method

.method public static intersectSegmentCircle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Circle;Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z
    .registers 10
    .param p0, "start"  # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "end"  # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "circle"  # Lcom/badlogic/gdx/math/Circle;
    .param p3, "mtv"  # Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;

    .line 320
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v2a:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 321
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v2b:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p2, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 322
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v2a:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->len()F

    move-result v0

    .line 323
    .local v0, "len":F
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->v2b:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->v2a:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v1

    .line 324
    .local v1, "u":F
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_35

    .line 325
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->v2c:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_55

    .line 326
    :cond_35
    cmpl-float v2, v1, v0

    if-ltz v2, :cond_3f

    .line 327
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->v2c:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_55

    .line 329
    :cond_3f
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->v2d:Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2a:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 330
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->v2c:Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2d:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 333
    :goto_55
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->v2a:Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2c:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Circle;->x:F

    sub-float/2addr v3, v4

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2c:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p2, Lcom/badlogic/gdx/math/Circle;->y:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 335
    if-eqz p3, :cond_a9

    .line 337
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->v2a:Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lcom/badlogic/gdx/math/Vector2;->Zero:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 338
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->v2d:Lcom/badlogic/gdx/math/Vector2;

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 339
    iget-object v2, p3, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->normal:Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2d:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    .line 340
    iget v2, p2, Lcom/badlogic/gdx/math/Circle;->radius:F

    iput v2, p3, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->depth:F

    goto :goto_a9

    .line 342
    :cond_93
    iget-object v2, p3, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->normal:Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2a:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    .line 343
    iget v2, p2, Lcom/badlogic/gdx/math/Circle;->radius:F

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2a:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Vector2;->len()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p3, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->depth:F

    .line 347
    :cond_a9
    :goto_a9
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->v2a:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector2;->len2()F

    move-result v2

    iget v3, p2, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget v4, p2, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_ba

    const/4 v2, 0x1

    goto :goto_bb

    :cond_ba
    const/4 v2, 0x0

    :goto_bb
    return v2
.end method

.method public static intersectSegmentCircle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)Z
    .registers 11
    .param p0, "start"  # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "end"  # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "center"  # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "squareRadius"  # F

    .line 294
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 295
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 296
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v0

    .line 297
    .local v0, "l":F
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    .line 298
    .local v1, "u":F
    cmpg-float v2, v1, v3

    if-gtz v2, :cond_3f

    .line 299
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v4, v5, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_6b

    .line 300
    :cond_3f
    cmpl-float v2, v1, v0

    if-ltz v2, :cond_4d

    .line 301
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v4, v5, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_6b

    .line 303
    :cond_4d
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 304
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v4, v5

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v6, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v5, v6

    invoke-virtual {v2, v4, v5, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 307
    :goto_6b
    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v2, v3

    .line 308
    .local v2, "x":F
    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v3, v4

    .line 310
    .local v3, "y":F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    cmpg-float v4, v4, p3

    if-gtz v4, :cond_84

    const/4 v4, 0x1

    goto :goto_85

    :cond_84
    const/4 v4, 0x0

    :goto_85
    return v4
.end method

.method public static intersectSegmentPlane(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)Z
    .registers 10
    .param p0, "start"  # Lcom/badlogic/gdx/math/Vector3;
    .param p1, "end"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "plane"  # Lcom/badlogic/gdx/math/Plane;
    .param p3, "intersection"  # Lcom/badlogic/gdx/math/Vector3;

    .line 85
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 86
    .local v0, "dir":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    .line 87
    .local v1, "denom":F
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/4 v4, 0x0

    if-nez v3, :cond_19

    return v4

    .line 88
    :cond_19
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v3

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getD()F

    move-result v5

    add-float/2addr v3, v5

    neg-float v3, v3

    div-float/2addr v3, v1

    .line 89
    .local v3, "t":F
    cmpg-float v2, v3, v2

    if-ltz v2, :cond_40

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v2, v3, v2

    if-lez v2, :cond_33

    goto :goto_40

    .line 91
    :cond_33
    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 92
    const/4 v2, 0x1

    return v2

    .line 89
    :cond_40
    :goto_40
    return v4
.end method

.method public static intersectSegmentPolygon(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Polygon;)Z
    .registers 24
    .param p0, "p1"  # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "p2"  # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "polygon"  # Lcom/badlogic/gdx/math/Polygon;

    .line 1012
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v2

    .line 1013
    .local v2, "vertices":[F
    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v3, "x1":F
    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v4, "y1":F
    iget v5, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v5, "x2":F
    iget v6, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 1014
    .local v6, "y2":F
    array-length v7, v2

    .line 1015
    .local v7, "n":I
    add-int/lit8 v8, v7, -0x2

    aget v8, v2, v8

    .local v8, "x3":F
    add-int/lit8 v9, v7, -0x1

    aget v9, v2, v9

    .line 1016
    .local v9, "y3":F
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1a
    if-ge v10, v7, :cond_67

    .line 1017
    aget v11, v2, v10

    .local v11, "x4":F
    add-int/lit8 v12, v10, 0x1

    aget v12, v2, v12

    .line 1018
    .local v12, "y4":F
    sub-float v13, v12, v9

    sub-float v14, v5, v3

    mul-float/2addr v13, v14

    sub-float v14, v11, v8

    sub-float v15, v6, v4

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    .line 1019
    .local v13, "d":F
    const/4 v14, 0x0

    cmpl-float v15, v13, v14

    if-eqz v15, :cond_62

    .line 1020
    sub-float v15, v4, v9

    .line 1021
    .local v15, "yd":F
    sub-float v16, v3, v8

    .line 1022
    .local v16, "xd":F
    sub-float v17, v11, v8

    mul-float v17, v17, v15

    sub-float v18, v12, v9

    mul-float v18, v18, v16

    sub-float v17, v17, v18

    div-float v17, v17, v13

    .line 1023
    .local v17, "ua":F
    cmpl-float v18, v17, v14

    if-ltz v18, :cond_62

    const/high16 v18, 0x3f800000  # 1.0f

    cmpg-float v19, v17, v18

    if-gtz v19, :cond_62

    .line 1024
    sub-float v19, v5, v3

    mul-float v19, v19, v15

    sub-float v20, v6, v4

    mul-float v20, v20, v16

    sub-float v19, v19, v20

    div-float v19, v19, v13

    .line 1025
    .local v19, "ub":F
    cmpl-float v14, v19, v14

    if-ltz v14, :cond_62

    cmpg-float v14, v19, v18

    if-gtz v14, :cond_62

    .line 1026
    const/4 v14, 0x1

    return v14

    .line 1030
    .end local v15  # "yd":F
    .end local v16  # "xd":F
    .end local v17  # "ua":F
    .end local v19  # "ub":F
    :cond_62
    move v8, v11

    .line 1031
    move v9, v12

    .line 1016
    .end local v11  # "x4":F
    .end local v12  # "y4":F
    .end local v13  # "d":F
    add-int/lit8 v10, v10, 0x2

    goto :goto_1a

    .line 1033
    .end local v10  # "i":I
    :cond_67
    const/4 v10, 0x0

    return v10
.end method

.method public static intersectSegmentRectangle(FFFFLcom/badlogic/gdx/math/Rectangle;)Z
    .registers 18
    .param p0, "startX"  # F
    .param p1, "startY"  # F
    .param p2, "endX"  # F
    .param p3, "endY"  # F
    .param p4, "rectangle"  # Lcom/badlogic/gdx/math/Rectangle;

    .line 986
    move-object/from16 v0, p4

    iget v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    .line 987
    .local v1, "rectangleEndX":F
    iget v2, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v2, v3

    .line 989
    .local v2, "rectangleEndY":F
    iget v8, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v9, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v10, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    const/4 v12, 0x0

    move v4, p0

    move v5, p1

    move v6, p2

    move/from16 v7, p3

    move v11, v2

    invoke-static/range {v4 .. v12}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z

    move-result v3

    const/4 v12, 0x1

    if-eqz v3, :cond_21

    return v12

    .line 991
    :cond_21
    iget v7, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v8, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v10, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    const/4 v11, 0x0

    move v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move v9, v1

    invoke-static/range {v3 .. v11}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z

    move-result v3

    if-eqz v3, :cond_35

    return v12

    .line 993
    :cond_35
    iget v8, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    const/4 v11, 0x0

    move v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move v7, v1

    move v9, v1

    move v10, v2

    invoke-static/range {v3 .. v11}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 994
    return v12

    .line 996
    :cond_47
    iget v7, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    const/4 v11, 0x0

    move v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move v8, v2

    move v9, v1

    move v10, v2

    invoke-static/range {v3 .. v11}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 997
    return v12

    .line 999
    :cond_59
    move v3, p0

    move v4, p1

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v5

    return v5
.end method

.method public static intersectSegmentRectangle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Rectangle;)Z
    .registers 7
    .param p0, "start"  # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "end"  # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "rectangle"  # Lcom/badlogic/gdx/math/Rectangle;

    .line 1004
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v0, v1, v2, v3, p2}, Lcom/badlogic/gdx/math/Intersector;->intersectSegmentRectangle(FFFFLcom/badlogic/gdx/math/Rectangle;)Z

    move-result v0

    return v0
.end method

.method public static intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z
    .registers 19
    .param p0, "x1"  # F
    .param p1, "y1"  # F
    .param p2, "x2"  # F
    .param p3, "y2"  # F
    .param p4, "x3"  # F
    .param p5, "y3"  # F
    .param p6, "x4"  # F
    .param p7, "y4"  # F
    .param p8, "intersection"  # Lcom/badlogic/gdx/math/Vector2;

    .line 1064
    move-object/from16 v0, p8

    sub-float v1, p7, p5

    sub-float v2, p2, p0

    mul-float/2addr v1, v2

    sub-float v2, p6, p4

    sub-float v3, p3, p1

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 1065
    .local v1, "d":F
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/4 v4, 0x0

    if-nez v3, :cond_14

    return v4

    .line 1067
    :cond_14
    sub-float v3, p1, p5

    .line 1068
    .local v3, "yd":F
    sub-float v5, p0, p4

    .line 1069
    .local v5, "xd":F
    sub-float v6, p6, p4

    mul-float/2addr v6, v3

    sub-float v7, p7, p5

    mul-float/2addr v7, v5

    sub-float/2addr v6, v7

    div-float/2addr v6, v1

    .line 1070
    .local v6, "ua":F
    cmpg-float v7, v6, v2

    if-ltz v7, :cond_4c

    const/high16 v7, 0x3f800000  # 1.0f

    cmpl-float v8, v6, v7

    if-lez v8, :cond_2b

    goto :goto_4c

    .line 1072
    :cond_2b
    sub-float v8, p2, p0

    mul-float/2addr v8, v3

    sub-float v9, p3, p1

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    div-float/2addr v8, v1

    .line 1073
    .local v8, "ub":F
    cmpg-float v2, v8, v2

    if-ltz v2, :cond_4b

    cmpl-float v2, v8, v7

    if-lez v2, :cond_3c

    goto :goto_4b

    .line 1075
    :cond_3c
    if-eqz v0, :cond_49

    sub-float v2, p2, p0

    mul-float/2addr v2, v6

    add-float/2addr v2, p0

    sub-float v4, p3, p1

    mul-float/2addr v4, v6

    add-float/2addr v4, p1

    invoke-virtual {v0, v2, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 1076
    :cond_49
    const/4 v2, 0x1

    return v2

    .line 1073
    :cond_4b
    :goto_4b
    return v4

    .line 1070
    .end local v8  # "ub":F
    :cond_4c
    :goto_4c
    return v4
.end method

.method public static intersectSegments(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .registers 27
    .param p0, "p1"  # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "p2"  # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "p3"  # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "p4"  # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "intersection"  # Lcom/badlogic/gdx/math/Vector2;

    .line 1044
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v5, "x1":F
    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v6, "y1":F
    iget v7, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v7, "x2":F
    iget v8, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v8, "y2":F
    iget v9, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v9, "x3":F
    iget v10, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v10, "y3":F
    iget v11, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v11, "x4":F
    iget v12, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 1046
    .local v12, "y4":F
    sub-float v13, v12, v10

    sub-float v14, v7, v5

    mul-float/2addr v13, v14

    sub-float v14, v11, v9

    sub-float v15, v8, v6

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    .line 1047
    .local v13, "d":F
    const/4 v14, 0x0

    cmpl-float v15, v13, v14

    const/16 v16, 0x0

    if-nez v15, :cond_2d

    return v16

    .line 1049
    :cond_2d
    sub-float v15, v6, v10

    .line 1050
    .local v15, "yd":F
    sub-float v17, v5, v9

    .line 1051
    .local v17, "xd":F
    sub-float v18, v11, v9

    mul-float v18, v18, v15

    sub-float v19, v12, v10

    mul-float v19, v19, v17

    sub-float v18, v18, v19

    div-float v18, v18, v13

    .line 1052
    .local v18, "ua":F
    cmpg-float v19, v18, v14

    if-ltz v19, :cond_70

    const/high16 v19, 0x3f800000  # 1.0f

    cmpl-float v20, v18, v19

    if-lez v20, :cond_48

    goto :goto_70

    .line 1054
    :cond_48
    sub-float v20, v7, v5

    mul-float v20, v20, v15

    sub-float v21, v8, v6

    mul-float v21, v21, v17

    sub-float v20, v20, v21

    div-float v20, v20, v13

    .line 1055
    .local v20, "ub":F
    cmpg-float v14, v20, v14

    if-ltz v14, :cond_6f

    cmpl-float v14, v20, v19

    if-lez v14, :cond_5d

    goto :goto_6f

    .line 1057
    :cond_5d
    if-eqz v4, :cond_6d

    sub-float v14, v7, v5

    mul-float v14, v14, v18

    add-float/2addr v14, v5

    sub-float v16, v8, v6

    mul-float v16, v16, v18

    add-float v0, v6, v16

    invoke-virtual {v4, v14, v0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 1058
    :cond_6d
    const/4 v0, 0x1

    return v0

    .line 1055
    :cond_6f
    :goto_6f
    return v16

    .line 1052
    .end local v20  # "ub":F
    :cond_70
    :goto_70
    return v16
.end method

.method public static isPointInPolygon(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/math/Vector2;)Z
    .registers 12
    .param p1, "point"  # Lcom/badlogic/gdx/math/Vector2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;",
            "Lcom/badlogic/gdx/math/Vector2;",
            ")Z"
        }
    .end annotation

    .line 113
    .local p0, "polygon":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    .line 114
    .local v0, "last":Lcom/badlogic/gdx/math/Vector2;
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v1, "x":F
    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 115
    .local v2, "y":F
    const/4 v3, 0x0

    .line 116
    .local v3, "oddNodes":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    iget v5, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v5, :cond_4f

    .line 117
    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/math/Vector2;

    .line 118
    .local v5, "vertex":Lcom/badlogic/gdx/math/Vector2;
    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v6, v6, v2

    if-gez v6, :cond_22

    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v6, v6, v2

    if-gez v6, :cond_2e

    :cond_22
    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v6, v6, v2

    if-gez v6, :cond_4b

    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v6, v6, v2

    if-ltz v6, :cond_4b

    .line 119
    :cond_2e
    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v7, v2, v7

    iget v8, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v9, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v8, v9

    div-float/2addr v7, v8

    iget v8, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v9, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    cmpg-float v6, v6, v1

    if-gez v6, :cond_4b

    if-nez v3, :cond_49

    const/4 v6, 0x1

    goto :goto_4a

    :cond_49
    const/4 v6, 0x0

    :goto_4a
    move v3, v6

    .line 121
    :cond_4b
    move-object v0, v5

    .line 116
    .end local v5  # "vertex":Lcom/badlogic/gdx/math/Vector2;
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 123
    .end local v4  # "i":I
    :cond_4f
    return v3
.end method

.method public static isPointInPolygon([FIIFF)Z
    .registers 17
    .param p0, "polygon"  # [F
    .param p1, "offset"  # I
    .param p2, "count"  # I
    .param p3, "x"  # F
    .param p4, "y"  # F

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "oddNodes":Z
    aget v1, p0, p1

    .local v1, "sx":F
    add-int/lit8 v2, p1, 0x1

    aget v2, p0, v2

    .local v2, "sy":F
    move v3, v2

    .line 132
    .local v3, "y1":F
    add-int/lit8 v4, p1, 0x3

    .line 133
    .local v4, "yi":I
    add-int v5, p1, p2

    .local v5, "n":I
    :goto_c
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v4, v5, :cond_3e

    .line 134
    aget v8, p0, v4

    .line 135
    .local v8, "y2":F
    cmpg-float v9, v8, p4

    if-gez v9, :cond_1a

    cmpl-float v9, v3, p4

    if-gez v9, :cond_22

    :cond_1a
    cmpg-float v9, v3, p4

    if-gez v9, :cond_3a

    cmpl-float v9, v8, p4

    if-ltz v9, :cond_3a

    .line 136
    :cond_22
    add-int/lit8 v9, v4, -0x1

    aget v9, p0, v9

    .line 137
    .local v9, "x2":F
    sub-float v10, p4, v8

    sub-float v11, v3, v8

    div-float/2addr v10, v11

    add-int/lit8 v11, v4, -0x3

    aget v11, p0, v11

    sub-float/2addr v11, v9

    mul-float/2addr v10, v11

    add-float/2addr v10, v9

    cmpg-float v10, v10, p3

    if-gez v10, :cond_3a

    if-nez v0, :cond_39

    move v6, v7

    :cond_39
    move v0, v6

    .line 139
    .end local v9  # "x2":F
    :cond_3a
    move v3, v8

    .line 133
    .end local v8  # "y2":F
    add-int/lit8 v4, v4, 0x2

    goto :goto_c

    .line 141
    .end local v5  # "n":I
    :cond_3e
    cmpg-float v5, v2, p4

    if-gez v5, :cond_46

    cmpl-float v5, v3, p4

    if-gez v5, :cond_4e

    :cond_46
    cmpg-float v5, v3, p4

    if-gez v5, :cond_62

    cmpl-float v5, v2, p4

    if-ltz v5, :cond_62

    .line 142
    :cond_4e
    sub-float v5, p4, v2

    sub-float v8, v3, v2

    div-float/2addr v5, v8

    add-int/lit8 v8, v4, -0x3

    aget v8, p0, v8

    sub-float/2addr v8, v1

    mul-float/2addr v5, v8

    add-float/2addr v5, v1

    cmpg-float v5, v5, p3

    if-gez v5, :cond_62

    if-nez v0, :cond_61

    move v6, v7

    :cond_61
    move v0, v6

    .line 144
    :cond_62
    return v0
.end method

.method public static isPointInTriangle(FFFFFFFF)Z
    .registers 17
    .param p0, "px"  # F
    .param p1, "py"  # F
    .param p2, "ax"  # F
    .param p3, "ay"  # F
    .param p4, "bx"  # F
    .param p5, "by"  # F
    .param p6, "cx"  # F
    .param p7, "cy"  # F

    .line 76
    sub-float v0, p0, p2

    .line 77
    .local v0, "px1":F
    sub-float v1, p1, p3

    .line 78
    .local v1, "py1":F
    sub-float v2, p4, p2

    mul-float/2addr v2, v1

    sub-float v3, p5, p3

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v2, :cond_14

    move v2, v4

    goto :goto_15

    :cond_14
    move v2, v5

    .line 79
    .local v2, "side12":Z
    :goto_15
    sub-float v6, p6, p2

    mul-float/2addr v6, v1

    sub-float v7, p7, p3

    mul-float/2addr v7, v0

    sub-float/2addr v6, v7

    cmpl-float v6, v6, v3

    if-lez v6, :cond_22

    move v6, v4

    goto :goto_23

    :cond_22
    move v6, v5

    :goto_23
    if-ne v6, v2, :cond_26

    return v5

    .line 80
    :cond_26
    sub-float v6, p6, p4

    sub-float v7, p1, p5

    mul-float/2addr v6, v7

    sub-float v7, p7, p5

    sub-float v8, p0, p4

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    cmpl-float v3, v6, v3

    if-lez v3, :cond_37

    move v3, v4

    goto :goto_38

    :cond_37
    move v3, v5

    :goto_38
    if-eq v3, v2, :cond_3b

    return v5

    .line 81
    :cond_3b
    return v4
.end method

.method public static isPointInTriangle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .registers 14
    .param p0, "p"  # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "a"  # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "b"  # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "c"  # Lcom/badlogic/gdx/math/Vector2;

    .line 66
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    .line 67
    .local v0, "px1":F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    .line 68
    .local v1, "py1":F
    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v1

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v2, :cond_20

    move v2, v4

    goto :goto_21

    :cond_20
    move v2, v5

    .line 69
    .local v2, "side12":Z
    :goto_21
    iget v6, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    iget v7, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v8, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v0

    sub-float/2addr v6, v7

    cmpl-float v6, v6, v3

    if-lez v6, :cond_34

    move v6, v4

    goto :goto_35

    :cond_34
    move v6, v5

    :goto_35
    if-ne v6, v2, :cond_38

    return v5

    .line 70
    :cond_38
    iget v6, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v8, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v8, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v9, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    cmpl-float v3, v6, v3

    if-lez v3, :cond_55

    move v3, v4

    goto :goto_56

    :cond_55
    move v3, v5

    :goto_56
    if-eq v3, v2, :cond_59

    return v5

    .line 71
    :cond_59
    return v4
.end method

.method public static isPointInTriangle(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z
    .registers 13
    .param p0, "point"  # Lcom/badlogic/gdx/math/Vector3;
    .param p1, "t1"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "t2"  # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "t3"  # Lcom/badlogic/gdx/math/Vector3;

    .line 49
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 50
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 51
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 53
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 54
    .local v0, "ab":F
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    .line 55
    .local v1, "ac":F
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    .line 56
    .local v2, "bc":F
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v3

    .line 58
    .local v3, "cc":F
    mul-float v4, v2, v1

    mul-float v5, v3, v0

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    const/4 v6, 0x0

    if-gez v4, :cond_47

    return v6

    .line 59
    :cond_47
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    .line 60
    .local v4, "bb":F
    mul-float v7, v0, v2

    mul-float v8, v1, v4

    sub-float/2addr v7, v8

    cmpg-float v5, v7, v5

    if-gez v5, :cond_59

    return v6

    .line 61
    :cond_59
    const/4 v5, 0x1

    return v5
.end method

.method public static nearestSegmentPoint(FFFFFFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 14
    .param p0, "startX"  # F
    .param p1, "startY"  # F
    .param p2, "endX"  # F
    .param p3, "endY"  # F
    .param p4, "pointX"  # F
    .param p5, "pointY"  # F
    .param p6, "nearest"  # Lcom/badlogic/gdx/math/Vector2;

    .line 277
    sub-float v0, p2, p0

    .line 278
    .local v0, "xDiff":F
    sub-float v1, p3, p1

    .line 279
    .local v1, "yDiff":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    .line 280
    .local v2, "length2":F
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-nez v4, :cond_13

    invoke-virtual {p6, p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    return-object v3

    .line 281
    :cond_13
    sub-float v4, p4, p0

    sub-float v5, p2, p0

    mul-float/2addr v4, v5

    sub-float v5, p5, p1

    sub-float v6, p3, p1

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    div-float/2addr v4, v2

    .line 282
    .local v4, "t":F
    cmpg-float v3, v4, v3

    if-gez v3, :cond_28

    invoke-virtual {p6, p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    return-object v3

    .line 283
    :cond_28
    const/high16 v3, 0x3f800000  # 1.0f

    cmpl-float v3, v4, v3

    if-lez v3, :cond_33

    invoke-virtual {p6, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    return-object v3

    .line 284
    :cond_33
    sub-float v3, p2, p0

    mul-float/2addr v3, v4

    add-float/2addr v3, p0

    sub-float v5, p3, p1

    mul-float/2addr v5, v4

    add-float/2addr v5, p1

    invoke-virtual {p6, v3, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    return-object v3
.end method

.method public static nearestSegmentPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 10
    .param p0, "start"  # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "end"  # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "point"  # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "nearest"  # Lcom/badlogic/gdx/math/Vector2;

    .line 266
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    .line 267
    .local v0, "length2":F
    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_e

    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    return-object v1

    .line 268
    :cond_e
    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    div-float/2addr v2, v0

    .line 269
    .local v2, "t":F
    cmpg-float v1, v2, v1

    if-gez v1, :cond_2f

    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    return-object v1

    .line 270
    :cond_2f
    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3a

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    return-object v1

    .line 271
    :cond_3a
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    invoke-virtual {p3, v1, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    return-object v1
.end method

.method public static overlapConvexPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;)Z
    .registers 3
    .param p0, "p1"  # Lcom/badlogic/gdx/math/Polygon;
    .param p1, "p2"  # Lcom/badlogic/gdx/math/Polygon;

    .line 1124
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/math/Intersector;->overlapConvexPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z

    move-result v0

    return v0
.end method

.method public static overlapConvexPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z
    .registers 5
    .param p0, "p1"  # Lcom/badlogic/gdx/math/Polygon;
    .param p1, "p2"  # Lcom/badlogic/gdx/math/Polygon;
    .param p2, "mtv"  # Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;

    .line 1135
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/badlogic/gdx/math/Intersector;->overlapConvexPolygons([F[FLcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z

    move-result v0

    return v0
.end method

.method public static overlapConvexPolygons([FII[FIILcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z
    .registers 16
    .param p0, "verts1"  # [F
    .param p1, "offset1"  # I
    .param p2, "count1"  # I
    .param p3, "verts2"  # [F
    .param p4, "offset2"  # I
    .param p5, "count2"  # I
    .param p6, "mtv"  # Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;

    .line 1157
    if-eqz p6, :cond_c

    .line 1158
    const v0, 0x7f7fffff  # Float.MAX_VALUE

    iput v0, p6, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->depth:F

    .line 1159
    iget-object v0, p6, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->normal:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    .line 1161
    :cond_c
    const/4 v8, 0x1

    move-object v1, p3

    move v2, p4

    move v3, p5

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-object v7, p6

    invoke-static/range {v1 .. v8}, Lcom/badlogic/gdx/math/Intersector;->overlapsOnAxisOfShape([FII[FIILcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;Z)Z

    move-result v0

    .line 1162
    .local v0, "overlaps":Z
    if-eqz v0, :cond_26

    .line 1163
    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v1 .. v8}, Lcom/badlogic/gdx/math/Intersector;->overlapsOnAxisOfShape([FII[FIILcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;Z)Z

    move-result v0

    .line 1166
    :cond_26
    if-nez v0, :cond_34

    .line 1167
    if-eqz p6, :cond_32

    .line 1168
    const/4 v1, 0x0

    iput v1, p6, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->depth:F

    .line 1169
    iget-object v1, p6, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->normal:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    .line 1171
    :cond_32
    const/4 v1, 0x0

    return v1

    .line 1173
    :cond_34
    const/4 v1, 0x1

    return v1
.end method

.method public static overlapConvexPolygons([F[FLcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z
    .registers 10
    .param p0, "verts1"  # [F
    .param p1, "verts2"  # [F
    .param p2, "mtv"  # Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;

    .line 1140
    array-length v2, p0

    const/4 v4, 0x0

    array-length v5, p1

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->overlapConvexPolygons([FII[FIILcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z

    move-result v0

    return v0
.end method

.method public static overlaps(Lcom/badlogic/gdx/math/Circle;Lcom/badlogic/gdx/math/Circle;)Z
    .registers 3
    .param p0, "c1"  # Lcom/badlogic/gdx/math/Circle;
    .param p1, "c2"  # Lcom/badlogic/gdx/math/Circle;

    .line 1088
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Circle;->overlaps(Lcom/badlogic/gdx/math/Circle;)Z

    move-result v0

    return v0
.end method

.method public static overlaps(Lcom/badlogic/gdx/math/Circle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .registers 7
    .param p0, "c"  # Lcom/badlogic/gdx/math/Circle;
    .param p1, "r"  # Lcom/badlogic/gdx/math/Rectangle;

    .line 1096
    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 1097
    .local v0, "closestX":F
    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 1099
    .local v1, "closestY":F
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_f

    .line 1100
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    goto :goto_20

    .line 1101
    :cond_f
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_20

    .line 1102
    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float v0, v2, v3

    .line 1105
    :cond_20
    :goto_20
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2b

    .line 1106
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    goto :goto_3c

    .line 1107
    :cond_2b
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3c

    .line 1108
    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float v1, v2, v3

    .line 1111
    :cond_3c
    :goto_3c
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    sub-float/2addr v0, v2

    .line 1112
    mul-float/2addr v0, v0

    .line 1113
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    sub-float/2addr v1, v2

    .line 1114
    mul-float/2addr v1, v1

    .line 1116
    add-float v2, v0, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget v4, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_51

    const/4 v2, 0x1

    goto :goto_52

    :cond_51
    const/4 v2, 0x0

    :goto_52
    return v2
.end method

.method public static overlaps(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .registers 3
    .param p0, "r1"  # Lcom/badlogic/gdx/math/Rectangle;
    .param p1, "r2"  # Lcom/badlogic/gdx/math/Rectangle;

    .line 1092
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Rectangle;->overlaps(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v0

    return v0
.end method

.method private static overlapsOnAxisOfShape([FII[FIILcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;Z)Z
    .registers 31
    .param p0, "verts1"  # [F
    .param p1, "offset1"  # I
    .param p2, "count1"  # I
    .param p3, "verts2"  # [F
    .param p4, "offset2"  # I
    .param p5, "count2"  # I
    .param p6, "mtv"  # Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;
    .param p7, "shapesShifted"  # Z

    .line 1185
    move-object/from16 v0, p6

    add-int v1, p1, p2

    .line 1186
    .local v1, "endA":I
    add-int v2, p4, p5

    .line 1188
    .local v2, "endB":I
    move/from16 v3, p1

    .local v3, "i":I
    :goto_8
    if-ge v3, v1, :cond_129

    .line 1189
    aget v5, p0, v3

    .line 1190
    .local v5, "x1":F
    add-int/lit8 v6, v3, 0x1

    aget v6, p0, v6

    .line 1191
    .local v6, "y1":F
    add-int/lit8 v7, v3, 0x2

    rem-int v7, v7, p2

    aget v7, p0, v7

    .line 1192
    .local v7, "x2":F
    add-int/lit8 v8, v3, 0x3

    rem-int v8, v8, p2

    aget v8, p0, v8

    .line 1195
    .local v8, "y2":F
    sub-float v9, v6, v8

    .line 1196
    .local v9, "axisX":F
    sub-float v10, v5, v7

    neg-float v10, v10

    .line 1198
    .local v10, "axisY":F
    mul-float v11, v9, v9

    mul-float v12, v10, v10

    add-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v11, v11

    .line 1200
    .local v11, "len":F
    div-float/2addr v9, v11

    .line 1201
    div-float/2addr v10, v11

    .line 1202
    const v12, 0x7f7fffff  # Float.MAX_VALUE

    .line 1203
    .local v12, "minA":F
    const v13, -0x800001

    .line 1205
    .local v13, "maxA":F
    move/from16 v14, p1

    .local v14, "v":I
    :goto_36
    if-ge v14, v1, :cond_4e

    .line 1206
    aget v15, p0, v14

    mul-float/2addr v15, v9

    add-int/lit8 v16, v14, 0x1

    aget v16, p0, v16

    mul-float v16, v16, v10

    add-float v15, v15, v16

    .line 1207
    .local v15, "p":F
    invoke-static {v12, v15}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 1208
    invoke-static {v13, v15}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 1205
    .end local v15  # "p":F
    add-int/lit8 v14, v14, 0x2

    goto :goto_36

    .line 1211
    .end local v14  # "v":I
    :cond_4e
    const v14, 0x7f7fffff  # Float.MAX_VALUE

    .line 1212
    .local v14, "minB":F
    const v15, -0x800001

    .line 1215
    .local v15, "maxB":F
    move/from16 v16, p4

    move/from16 v4, v16

    .local v4, "v":I
    :goto_58
    if-ge v4, v2, :cond_75

    .line 1216
    aget v17, p3, v4

    mul-float v17, v17, v9

    add-int/lit8 v18, v4, 0x1

    aget v18, p3, v18

    mul-float v18, v18, v10

    move/from16 v19, v1

    .end local v1  # "endA":I
    .local v19, "endA":I
    add-float v1, v17, v18

    .line 1217
    .local v1, "p":F
    invoke-static {v14, v1}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 1218
    invoke-static {v15, v1}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 1215
    .end local v1  # "p":F
    add-int/lit8 v4, v4, 0x2

    move/from16 v1, v19

    goto :goto_58

    .end local v19  # "endA":I
    .local v1, "endA":I
    :cond_75
    move/from16 v19, v1

    .line 1221
    .end local v1  # "endA":I
    .end local v4  # "v":I
    .restart local v19  # "endA":I
    cmpg-float v1, v13, v14

    if-ltz v1, :cond_125

    cmpg-float v1, v15, v12

    if-gez v1, :cond_83

    move/from16 v22, v2

    goto/16 :goto_127

    .line 1224
    :cond_83
    if-eqz v0, :cond_11b

    .line 1225
    invoke-static {v13, v15}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v12, v14}, Ljava/lang/Math;->max(FF)F

    move-result v17

    sub-float v1, v1, v17

    .line 1226
    .local v1, "o":F
    cmpg-float v17, v12, v14

    if-gez v17, :cond_9a

    cmpl-float v17, v13, v15

    if-lez v17, :cond_9a

    const/16 v17, 0x1

    goto :goto_9c

    :cond_9a
    const/16 v17, 0x0

    .line 1227
    .local v17, "aContainsB":Z
    :goto_9c
    cmpg-float v18, v14, v12

    if-gez v18, :cond_a7

    cmpl-float v18, v15, v13

    if-lez v18, :cond_a7

    const/16 v18, 0x1

    goto :goto_a9

    :cond_a7
    const/16 v18, 0x0

    .line 1229
    .local v18, "bContainsA":Z
    :goto_a9
    const/16 v20, 0x0

    .line 1230
    .local v20, "mins":F
    const/16 v21, 0x0

    .line 1231
    .local v21, "maxs":F
    if-nez v17, :cond_b5

    if-eqz v18, :cond_b2

    goto :goto_b5

    :cond_b2
    move/from16 v22, v2

    goto :goto_cd

    .line 1232
    :cond_b5
    :goto_b5
    sub-float v22, v12, v14

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1233
    .end local v20  # "mins":F
    .local v4, "mins":F
    sub-float v20, v13, v15

    move/from16 v22, v2

    .end local v2  # "endB":I
    .local v22, "endB":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1234
    .end local v21  # "maxs":F
    .local v2, "maxs":F
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v20

    add-float v1, v1, v20

    move/from16 v21, v2

    move/from16 v20, v4

    .line 1237
    .end local v2  # "maxs":F
    .end local v4  # "mins":F
    .restart local v20  # "mins":F
    .restart local v21  # "maxs":F
    :goto_cd
    iget v2, v0, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->depth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_11d

    .line 1238
    iput v1, v0, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->depth:F

    .line 1240
    if-eqz p7, :cond_e9

    .line 1241
    cmpg-float v2, v12, v14

    if-gez v2, :cond_dd

    const/4 v2, 0x1

    goto :goto_de

    :cond_dd
    const/4 v2, 0x0

    .line 1242
    .local v2, "condition":Z
    :goto_de
    if-eqz v2, :cond_e2

    move v4, v9

    goto :goto_e3

    :cond_e2
    neg-float v4, v9

    .line 1243
    .end local v9  # "axisX":F
    .local v4, "axisX":F
    :goto_e3
    if-eqz v2, :cond_e7

    move v9, v10

    goto :goto_e8

    :cond_e7
    neg-float v9, v10

    .end local v10  # "axisY":F
    .local v9, "axisY":F
    :goto_e8
    goto :goto_fa

    .line 1245
    .end local v2  # "condition":Z
    .end local v4  # "axisX":F
    .local v9, "axisX":F
    .restart local v10  # "axisY":F
    :cond_e9
    cmpl-float v2, v12, v14

    if-lez v2, :cond_ef

    const/4 v2, 0x1

    goto :goto_f0

    :cond_ef
    const/4 v2, 0x0

    .line 1246
    .restart local v2  # "condition":Z
    :goto_f0
    if-eqz v2, :cond_f4

    move v4, v9

    goto :goto_f5

    :cond_f4
    neg-float v4, v9

    .line 1247
    .end local v9  # "axisX":F
    .restart local v4  # "axisX":F
    :goto_f5
    if-eqz v2, :cond_f9

    move v9, v10

    goto :goto_fa

    :cond_f9
    neg-float v9, v10

    .line 1250
    .end local v10  # "axisY":F
    .local v9, "axisY":F
    :goto_fa
    if-nez v17, :cond_fe

    if-eqz v18, :cond_115

    .line 1251
    :cond_fe
    cmpl-float v10, v20, v21

    if-lez v10, :cond_105

    const/16 v16, 0x1

    goto :goto_107

    :cond_105
    const/16 v16, 0x0

    :goto_107
    move/from16 v2, v16

    .line 1252
    if-eqz v2, :cond_10d

    move v10, v4

    goto :goto_10e

    :cond_10d
    neg-float v10, v4

    :goto_10e
    move v4, v10

    .line 1253
    if-eqz v2, :cond_113

    move v10, v9

    goto :goto_114

    :cond_113
    neg-float v10, v9

    :goto_114
    move v9, v10

    .line 1256
    :cond_115
    iget-object v10, v0, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->normal:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v10, v4, v9}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_11d

    .line 1224
    .end local v1  # "o":F
    .end local v4  # "axisX":F
    .end local v17  # "aContainsB":Z
    .end local v18  # "bContainsA":Z
    .end local v20  # "mins":F
    .end local v21  # "maxs":F
    .end local v22  # "endB":I
    .local v2, "endB":I
    .local v9, "axisX":F
    .restart local v10  # "axisY":F
    :cond_11b
    move/from16 v22, v2

    .line 1188
    .end local v2  # "endB":I
    .end local v5  # "x1":F
    .end local v6  # "y1":F
    .end local v7  # "x2":F
    .end local v8  # "y2":F
    .end local v9  # "axisX":F
    .end local v10  # "axisY":F
    .end local v11  # "len":F
    .end local v12  # "minA":F
    .end local v13  # "maxA":F
    .end local v14  # "minB":F
    .end local v15  # "maxB":F
    .restart local v22  # "endB":I
    :cond_11d
    :goto_11d
    add-int/lit8 v3, v3, 0x2

    move/from16 v1, v19

    move/from16 v2, v22

    goto/16 :goto_8

    .line 1221
    .end local v22  # "endB":I
    .restart local v2  # "endB":I
    .restart local v5  # "x1":F
    .restart local v6  # "y1":F
    .restart local v7  # "x2":F
    .restart local v8  # "y2":F
    .restart local v9  # "axisX":F
    .restart local v10  # "axisY":F
    .restart local v11  # "len":F
    .restart local v12  # "minA":F
    .restart local v13  # "maxA":F
    .restart local v14  # "minB":F
    .restart local v15  # "maxB":F
    :cond_125
    move/from16 v22, v2

    .line 1222
    .end local v2  # "endB":I
    .restart local v22  # "endB":I
    :goto_127
    const/4 v1, 0x0

    return v1

    .line 1188
    .end local v5  # "x1":F
    .end local v6  # "y1":F
    .end local v7  # "x2":F
    .end local v8  # "y2":F
    .end local v9  # "axisX":F
    .end local v10  # "axisY":F
    .end local v11  # "len":F
    .end local v12  # "minA":F
    .end local v13  # "maxA":F
    .end local v14  # "minB":F
    .end local v15  # "maxB":F
    .end local v19  # "endA":I
    .end local v22  # "endB":I
    .local v1, "endA":I
    .restart local v2  # "endB":I
    :cond_129
    move/from16 v19, v1

    .line 1261
    .end local v1  # "endA":I
    .end local v3  # "i":I
    .restart local v19  # "endA":I
    const/4 v1, 0x1

    return v1
.end method

.method public static pointLineSide(FFFFFF)I
    .registers 9
    .param p0, "linePoint1X"  # F
    .param p1, "linePoint1Y"  # F
    .param p2, "linePoint2X"  # F
    .param p3, "linePoint2Y"  # F
    .param p4, "pointX"  # F
    .param p5, "pointY"  # F

    .line 105
    sub-float v0, p2, p0

    sub-float v1, p5, p1

    mul-float/2addr v0, v1

    sub-float v1, p3, p1

    sub-float v2, p4, p0

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 106
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    .line 105
    return v0
.end method

.method public static pointLineSide(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)I
    .registers 7
    .param p0, "linePoint1"  # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "linePoint2"  # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "point"  # Lcom/badlogic/gdx/math/Vector2;

    .line 99
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private static splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V
    .registers 15
    .param p0, "vertices"  # [F
    .param p1, "s"  # I
    .param p2, "e"  # I
    .param p3, "stride"  # I
    .param p4, "plane"  # Lcom/badlogic/gdx/math/Plane;
    .param p5, "split"  # [F
    .param p6, "offset"  # I

    .line 1382
    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    aget v3, p0, p2

    add-int/lit8 v4, p2, 0x1

    aget v4, p0, v4

    add-int/lit8 v5, p2, 0x2

    aget v5, p0, v5

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Lcom/badlogic/gdx/math/Intersector;->intersectLinePlane(FFFFFFLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 1384
    .local v0, "t":F
    add-int/lit8 v1, p6, 0x0

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, p5, v1

    .line 1385
    add-int/lit8 v1, p6, 0x1

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, p5, v1

    .line 1386
    add-int/lit8 v1, p6, 0x2

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, p5, v1

    .line 1387
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_34
    if-ge v1, p3, :cond_49

    .line 1388
    add-int v2, p1, v1

    aget v2, p0, v2

    .line 1389
    .local v2, "a":F
    add-int v3, p2, v1

    aget v3, p0, v3

    .line 1390
    .local v3, "b":F
    add-int v4, p6, v1

    sub-float v5, v3, v2

    mul-float/2addr v5, v0

    add-float/2addr v5, v2

    aput v5, p5, v4

    .line 1387
    .end local v2  # "a":F
    .end local v3  # "b":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 1392
    .end local v1  # "i":I
    :cond_49
    return-void
.end method

.method public static splitTriangle([FLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Intersector$SplitTriangle;)V
    .registers 23
    .param p0, "triangle"  # [F
    .param p1, "plane"  # Lcom/badlogic/gdx/math/Plane;
    .param p2, "split"  # Lcom/badlogic/gdx/math/Intersector$SplitTriangle;

    .line 1281
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    array-length v0, v7

    const/4 v1, 0x3

    div-int/lit8 v10, v0, 0x3

    .line 1282
    .local v10, "stride":I
    const/4 v11, 0x0

    aget v0, v7, v11

    const/4 v12, 0x1

    aget v2, v7, v12

    const/4 v13, 0x2

    aget v3, v7, v13

    invoke-virtual {v8, v0, v2, v3}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v0, v2, :cond_1d

    move v0, v12

    goto :goto_1e

    :cond_1d
    move v0, v11

    :goto_1e
    move v14, v0

    .line 1283
    .local v14, "r1":Z
    add-int/lit8 v0, v10, 0x0

    aget v0, v7, v0

    add-int/lit8 v2, v10, 0x1

    aget v2, v7, v2

    add-int/lit8 v3, v10, 0x2

    aget v3, v7, v3

    invoke-virtual {v8, v0, v2, v3}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v0, v2, :cond_35

    move v0, v12

    goto :goto_36

    :cond_35
    move v0, v11

    :goto_36
    move v15, v0

    .line 1284
    .local v15, "r2":Z
    mul-int/lit8 v0, v10, 0x2

    add-int/2addr v0, v11

    aget v0, v7, v0

    mul-int/lit8 v2, v10, 0x2

    add-int/2addr v2, v12

    aget v2, v7, v2

    mul-int/lit8 v3, v10, 0x2

    add-int/2addr v3, v13

    aget v3, v7, v3

    invoke-virtual {v8, v0, v2, v3}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v0, v2, :cond_50

    move v0, v12

    goto :goto_51

    :cond_50
    move v0, v11

    :goto_51
    move v6, v0

    .line 1287
    .local v6, "r3":Z
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->reset()V

    .line 1290
    if-ne v14, v15, :cond_6f

    if-ne v15, v6, :cond_6f

    .line 1291
    iput v12, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->total:I

    .line 1292
    if-eqz v14, :cond_66

    .line 1293
    iput v12, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numBack:I

    .line 1294
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    array-length v1, v7

    invoke-static {v7, v11, v0, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6e

    .line 1296
    :cond_66
    iput v12, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    .line 1297
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    array-length v1, v7

    invoke-static {v7, v11, v0, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1299
    :goto_6e
    return-void

    .line 1303
    :cond_6f
    iput v1, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->total:I

    .line 1304
    if-eqz v14, :cond_75

    move v0, v11

    goto :goto_76

    :cond_75
    move v0, v12

    :goto_76
    if-eqz v15, :cond_7a

    move v1, v11

    goto :goto_7b

    :cond_7a
    move v1, v12

    :goto_7b
    add-int/2addr v0, v1

    if-eqz v6, :cond_80

    move v1, v11

    goto :goto_81

    :cond_80
    move v1, v12

    :goto_81
    add-int/2addr v0, v1

    iput v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    .line 1305
    iget v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->total:I

    iget v1, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    sub-int/2addr v0, v1

    iput v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numBack:I

    .line 1310
    if-nez v14, :cond_8f

    move v0, v12

    goto :goto_90

    :cond_8f
    move v0, v11

    :goto_90
    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    .line 1313
    const/4 v5, 0x0

    .line 1314
    .local v5, "first":I
    move v2, v10

    .line 1315
    .local v2, "second":I
    if-eq v14, v15, :cond_c3

    .line 1317
    iget-object v4, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v3, v10

    move-object/from16 v17, v4

    move-object/from16 v4, p1

    move v13, v5

    .end local v5  # "first":I
    .local v13, "first":I
    move-object/from16 v5, v17

    move/from16 v18, v6

    .end local v6  # "r3":Z
    .local v18, "r3":Z
    move/from16 v6, v16

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V

    .line 1320
    invoke-virtual {v9, v7, v13, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1321
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1324
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->getSide()Z

    move-result v0

    xor-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    .line 1325
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    goto :goto_c9

    .line 1328
    .end local v13  # "first":I
    .end local v18  # "r3":Z
    .restart local v5  # "first":I
    .restart local v6  # "r3":Z
    :cond_c3
    move v13, v5

    move/from16 v18, v6

    .end local v5  # "first":I
    .end local v6  # "r3":Z
    .restart local v13  # "first":I
    .restart local v18  # "r3":Z
    invoke-virtual {v9, v7, v13, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1332
    :goto_c9
    move v13, v10

    .line 1333
    add-int v16, v10, v10

    .line 1334
    .end local v2  # "second":I
    .local v16, "second":I
    move/from16 v6, v18

    .end local v18  # "r3":Z
    .restart local v6  # "r3":Z
    if-eq v15, v6, :cond_f9

    .line 1336
    iget-object v5, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v16

    move v3, v10

    move-object/from16 v4, p1

    move/from16 v19, v6

    .end local v6  # "r3":Z
    .local v19, "r3":Z
    move/from16 v6, v17

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V

    .line 1339
    invoke-virtual {v9, v7, v13, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1340
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1343
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->getSide()Z

    move-result v0

    xor-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    .line 1344
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    goto :goto_fe

    .line 1347
    .end local v19  # "r3":Z
    .restart local v6  # "r3":Z
    :cond_f9
    move/from16 v19, v6

    .end local v6  # "r3":Z
    .restart local v19  # "r3":Z
    invoke-virtual {v9, v7, v13, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1351
    :goto_fe
    add-int v13, v10, v10

    .line 1352
    const/16 v16, 0x0

    .line 1353
    move/from16 v6, v19

    .end local v19  # "r3":Z
    .restart local v6  # "r3":Z
    if-eq v6, v14, :cond_12f

    .line 1355
    iget-object v5, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v16

    move v3, v10

    move-object/from16 v4, p1

    move/from16 v18, v6

    .end local v6  # "r3":Z
    .restart local v18  # "r3":Z
    move/from16 v6, v17

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V

    .line 1358
    invoke-virtual {v9, v7, v13, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1359
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1362
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->getSide()Z

    move-result v0

    xor-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    .line 1363
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    goto :goto_134

    .line 1366
    .end local v18  # "r3":Z
    .restart local v6  # "r3":Z
    :cond_12f
    move/from16 v18, v6

    .end local v6  # "r3":Z
    .restart local v18  # "r3":Z
    invoke-virtual {v9, v7, v13, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1370
    :goto_134
    iget v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_150

    .line 1371
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    mul-int/lit8 v1, v10, 0x2

    iget-object v2, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    mul-int/lit8 v3, v10, 0x3

    mul-int/lit8 v4, v10, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1372
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    iget-object v1, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    mul-int/lit8 v2, v10, 0x5

    invoke-static {v0, v11, v1, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_166

    .line 1374
    :cond_150
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    mul-int/lit8 v1, v10, 0x2

    iget-object v2, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    mul-int/lit8 v3, v10, 0x3

    mul-int/lit8 v4, v10, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1375
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    iget-object v1, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    mul-int/lit8 v2, v10, 0x5

    invoke-static {v0, v11, v1, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1377
    :goto_166
    return-void
.end method
