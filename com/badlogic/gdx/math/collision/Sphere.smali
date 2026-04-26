.class public Lcom/badlogic/gdx/math/collision/Sphere;
.super Ljava/lang/Object;
.source "Sphere.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final PI_4_3:F = 4.1887903f

.field private static final serialVersionUID:J = -0x5a07a682c996587cL


# instance fields
.field public final center:Lcom/badlogic/gdx/math/Vector3;

.field public radius:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;F)V
    .registers 4
    .param p1, "center"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "radius"  # F

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/collision/Sphere;->center:Lcom/badlogic/gdx/math/Vector3;

    .line 42
    iput p2, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"  # Ljava/lang/Object;

    .line 62
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 63
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2a

    .line 64
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/badlogic/gdx/math/collision/Sphere;

    .line 65
    .local v2, "s":Lcom/badlogic/gdx/math/collision/Sphere;
    iget v3, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    iget v4, v2, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_28

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Sphere;->center:Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, v2, Lcom/badlogic/gdx/math/collision/Sphere;->center:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    return v0

    .line 63
    .end local v2  # "s":Lcom/badlogic/gdx/math/collision/Sphere;
    :cond_2a
    :goto_2a
    return v1
.end method

.method public hashCode()I
    .registers 5

    .line 53
    const/16 v0, 0x47

    .line 54
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 55
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x47

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Sphere;->center:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Vector3;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 56
    .end local v1  # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x47

    iget v3, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int/2addr v1, v3

    .line 57
    .end local v2  # "result":I
    .restart local v1  # "result":I
    return v1
.end method

.method public overlaps(Lcom/badlogic/gdx/math/collision/Sphere;)Z
    .registers 6
    .param p1, "sphere"  # Lcom/badlogic/gdx/math/collision/Sphere;

    .line 48
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Sphere;->center:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/math/collision/Sphere;->center:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    iget v2, p1, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    iget v3, p1, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method public surfaceArea()F
    .registers 3

    .line 73
    const v0, 0x41490fdb

    iget v1, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    mul-float/2addr v1, v0

    return v1
.end method

.method public volume()F
    .registers 3

    .line 69
    const v0, 0x40860a92

    iget v1, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    mul-float/2addr v1, v0

    return v1
.end method
