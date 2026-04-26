.class public final Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;
.source "CylinderSpawnShapeValue.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;)V
    .registers 2
    .param p1, "cylinderSpawnShapeValue"  # Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;

    .line 27
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    .line 29
    return-void
.end method


# virtual methods
.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;
    .registers 2

    .line 71
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;)V

    return-object v0
.end method

.method public spawnAux(Lcom/badlogic/gdx/math/Vector3;F)V
    .registers 16
    .param p1, "vector"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "percent"  # F

    .line 37
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;->spawnWidth:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;->spawnWidthDiff:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 38
    .local v0, "width":F
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;->spawnHeight:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;->spawnHeightDiff:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v3, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 39
    .local v1, "height":F
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;->spawnDepth:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;->spawnDepthDiff:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;->spawnDepthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v4, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 42
    .local v2, "depth":F
    const/high16 v3, 0x40000000  # 2.0f

    div-float v4, v1, v3

    .line 43
    .local v4, "hf":F
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v5

    sub-float/2addr v5, v4

    .line 46
    .local v5, "ty":F
    iget-boolean v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/CylinderSpawnShapeValue;->edges:Z

    if-eqz v6, :cond_36

    .line 47
    div-float v6, v0, v3

    .line 48
    .local v6, "radiusX":F
    div-float v3, v2, v3

    .local v3, "radiusZ":F
    goto :goto_41

    .line 50
    .end local v3  # "radiusZ":F
    .end local v6  # "radiusX":F
    :cond_36
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v6

    div-float/2addr v6, v3

    .line 51
    .restart local v6  # "radiusX":F
    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v7

    div-float v3, v7, v3

    .line 54
    .restart local v3  # "radiusZ":F
    :goto_41
    const/4 v7, 0x0

    .line 57
    .local v7, "spawnTheta":F
    const/4 v8, 0x0

    cmpl-float v9, v6, v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v9, :cond_4b

    move v9, v11

    goto :goto_4c

    :cond_4b
    move v9, v10

    .local v9, "isRadiusXZero":Z
    :goto_4c
    cmpl-float v12, v3, v8

    if-nez v12, :cond_51

    move v10, v11

    .line 58
    .local v10, "isRadiusZZero":Z
    :cond_51
    if-nez v9, :cond_5c

    if-nez v10, :cond_5c

    .line 59
    const/high16 v8, 0x43b40000  # 360.0f

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v7

    goto :goto_77

    .line 61
    :cond_5c
    if-eqz v9, :cond_6b

    .line 62
    invoke-static {v11}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v8

    if-nez v8, :cond_67

    const/high16 v8, -0x3d4c0000  # -90.0f

    goto :goto_69

    :cond_67
    const/high16 v8, 0x42b40000  # 90.0f

    :goto_69
    move v7, v8

    goto :goto_77

    .line 63
    :cond_6b
    if-eqz v10, :cond_77

    invoke-static {v11}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v11

    if-nez v11, :cond_74

    goto :goto_76

    :cond_74
    const/high16 v8, 0x43340000  # 180.0f

    :goto_76
    move v7, v8

    .line 66
    :cond_77
    :goto_77
    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v8

    mul-float/2addr v8, v6

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v11

    mul-float/2addr v11, v3

    invoke-virtual {p1, v8, v5, v11}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 67
    return-void
.end method
