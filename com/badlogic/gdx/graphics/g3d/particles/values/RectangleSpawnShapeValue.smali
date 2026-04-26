.class public final Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;
.source "RectangleSpawnShapeValue.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;)V
    .registers 2
    .param p1, "value"  # Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;

    .line 26
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    .line 28
    return-void
.end method


# virtual methods
.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;
    .registers 2

    .line 84
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;)V

    return-object v0
.end method

.method public spawnAux(Lcom/badlogic/gdx/math/Vector3;F)V
    .registers 15
    .param p1, "vector"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "percent"  # F

    .line 35
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;->spawnWidth:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;->spawnWidthDiff:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 36
    .local v0, "width":F
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;->spawnHeight:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;->spawnHeightDiff:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v3, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 37
    .local v1, "height":F
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;->spawnDepth:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;->spawnDepthDiff:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;->spawnDepthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v4, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 39
    .local v2, "depth":F
    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RectangleSpawnShapeValue;->edges:Z

    const/high16 v4, 0x40000000  # 2.0f

    if-eqz v3, :cond_f5

    .line 40
    const/4 v3, -0x1

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v6

    .line 41
    .local v6, "a":I
    const/4 v7, 0x0

    .local v7, "tx":F
    const/4 v8, 0x0

    .local v8, "ty":F
    const/4 v9, 0x0

    .line 42
    .local v9, "tz":F
    const/4 v10, 0x0

    if-ne v6, v3, :cond_70

    .line 43
    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v3

    if-nez v3, :cond_3f

    neg-float v3, v0

    div-float/2addr v3, v4

    goto :goto_41

    :cond_3f
    div-float v3, v0, v4

    .line 44
    .end local v7  # "tx":F
    .local v3, "tx":F
    :goto_41
    cmpl-float v7, v3, v10

    if-nez v7, :cond_5e

    .line 45
    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v7

    if-nez v7, :cond_4e

    neg-float v7, v1

    div-float/2addr v7, v4

    goto :goto_50

    :cond_4e
    div-float v7, v1, v4

    .line 46
    .end local v8  # "ty":F
    .local v7, "ty":F
    :goto_50
    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v5

    if-nez v5, :cond_59

    neg-float v5, v2

    div-float/2addr v5, v4

    goto :goto_5b

    :cond_59
    div-float v5, v2, v4

    :goto_5b
    move v4, v5

    .end local v9  # "tz":F
    .local v4, "tz":F
    goto/16 :goto_ee

    .line 48
    .end local v4  # "tz":F
    .end local v7  # "ty":F
    .restart local v8  # "ty":F
    .restart local v9  # "tz":F
    :cond_5e
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v5

    div-float v7, v1, v4

    sub-float v7, v5, v7

    .line 49
    .end local v8  # "ty":F
    .restart local v7  # "ty":F
    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v5

    div-float v4, v2, v4

    sub-float v4, v5, v4

    .end local v9  # "tz":F
    .restart local v4  # "tz":F
    goto/16 :goto_ee

    .line 51
    .end local v3  # "tx":F
    .end local v4  # "tz":F
    .local v7, "tx":F
    .restart local v8  # "ty":F
    .restart local v9  # "tz":F
    :cond_70
    if-nez v6, :cond_b2

    .line 53
    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v3

    if-nez v3, :cond_7b

    neg-float v3, v2

    div-float/2addr v3, v4

    goto :goto_7d

    :cond_7b
    div-float v3, v2, v4

    .line 54
    .end local v9  # "tz":F
    .local v3, "tz":F
    :goto_7d
    cmpl-float v9, v3, v10

    if-nez v9, :cond_9e

    .line 55
    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v9

    if-nez v9, :cond_8a

    neg-float v9, v1

    div-float/2addr v9, v4

    goto :goto_8c

    :cond_8a
    div-float v9, v1, v4

    :goto_8c
    move v8, v9

    .line 56
    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v5

    if-nez v5, :cond_96

    neg-float v5, v0

    div-float/2addr v5, v4

    goto :goto_98

    :cond_96
    div-float v5, v0, v4

    :goto_98
    move v4, v5

    move v7, v8

    move v11, v4

    move v4, v3

    move v3, v11

    .end local v7  # "tx":F
    .local v4, "tx":F
    goto :goto_ee

    .line 58
    .end local v4  # "tx":F
    .restart local v7  # "tx":F
    :cond_9e
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v5

    div-float v9, v1, v4

    sub-float/2addr v5, v9

    .line 59
    .end local v8  # "ty":F
    .local v5, "ty":F
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v8

    div-float v4, v0, v4

    sub-float v4, v8, v4

    move v7, v5

    move v11, v4

    move v4, v3

    move v3, v11

    .end local v7  # "tx":F
    .restart local v4  # "tx":F
    goto :goto_ee

    .line 63
    .end local v3  # "tz":F
    .end local v4  # "tx":F
    .end local v5  # "ty":F
    .restart local v7  # "tx":F
    .restart local v8  # "ty":F
    .restart local v9  # "tz":F
    :cond_b2
    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v3

    if-nez v3, :cond_bb

    neg-float v3, v1

    div-float/2addr v3, v4

    goto :goto_bd

    :cond_bb
    div-float v3, v1, v4

    .line 64
    .end local v8  # "ty":F
    .local v3, "ty":F
    :goto_bd
    cmpl-float v8, v3, v10

    if-nez v8, :cond_dd

    .line 65
    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v8

    if-nez v8, :cond_ca

    neg-float v8, v0

    div-float/2addr v8, v4

    goto :goto_cc

    :cond_ca
    div-float v8, v0, v4

    :goto_cc
    move v7, v8

    .line 66
    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v5

    if-nez v5, :cond_d6

    neg-float v5, v2

    div-float/2addr v5, v4

    goto :goto_d8

    :cond_d6
    div-float v5, v2, v4

    :goto_d8
    move v4, v5

    move v11, v7

    move v7, v3

    move v3, v11

    .end local v9  # "tz":F
    .local v4, "tz":F
    goto :goto_ee

    .line 68
    .end local v4  # "tz":F
    .restart local v9  # "tz":F
    :cond_dd
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v5

    div-float v8, v0, v4

    sub-float/2addr v5, v8

    .line 69
    .end local v7  # "tx":F
    .local v5, "tx":F
    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v7

    div-float v4, v2, v4

    sub-float v4, v7, v4

    move v7, v3

    move v3, v5

    .line 72
    .end local v5  # "tx":F
    .end local v9  # "tz":F
    .local v3, "tx":F
    .restart local v4  # "tz":F
    .local v7, "ty":F
    :goto_ee
    iput v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 73
    iput v7, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 74
    iput v4, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 75
    .end local v3  # "tx":F
    .end local v4  # "tz":F
    .end local v6  # "a":I
    .end local v7  # "ty":F
    goto :goto_110

    .line 76
    :cond_f5
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v3

    div-float v5, v0, v4

    sub-float/2addr v3, v5

    iput v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 77
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v3

    div-float v5, v1, v4

    sub-float/2addr v3, v5

    iput v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 78
    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v3

    div-float v4, v2, v4

    sub-float/2addr v3, v4

    iput v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 80
    :goto_110
    return-void
.end method
