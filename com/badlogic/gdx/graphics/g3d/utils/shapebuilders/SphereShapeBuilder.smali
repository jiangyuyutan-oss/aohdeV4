.class public Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;
.super Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;
.source "SphereShapeBuilder.java"


# static fields
.field private static final normalTransform:Lcom/badlogic/gdx/math/Matrix3;

.field private static final tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ShortArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    .line 30
    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;-><init>()V

    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFII)V
    .registers 16
    .param p0, "builder"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "width"  # F
    .param p2, "height"  # F
    .param p3, "depth"  # F
    .param p4, "divisionsU"  # I
    .param p5, "divisionsV"  # I

    .line 33
    const/4 v8, 0x0

    const/high16 v9, 0x43340000  # 180.0f

    const/4 v6, 0x0

    const/high16 v7, 0x43b40000  # 360.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIIFFFF)V

    .line 34
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIIFFFF)V
    .registers 22
    .param p0, "builder"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "width"  # F
    .param p2, "height"  # F
    .param p3, "depth"  # F
    .param p4, "divisionsU"  # I
    .param p5, "divisionsV"  # I
    .param p6, "angleUFrom"  # F
    .param p7, "angleUTo"  # F
    .param p8, "angleVFrom"  # F
    .param p9, "angleVTo"  # F

    .line 45
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->matTmp1:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V

    .line 46
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;FFFII)V
    .registers 18
    .param p0, "builder"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "transform"  # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "width"  # F
    .param p3, "height"  # F
    .param p4, "depth"  # F
    .param p5, "divisionsU"  # I
    .param p6, "divisionsV"  # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    const/4 v9, 0x0

    const/high16 v10, 0x43340000  # 180.0f

    const/4 v7, 0x0

    const/high16 v8, 0x43b40000  # 360.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V

    .line 41
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V
    .registers 45
    .param p0, "builder"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "transform"  # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "width"  # F
    .param p3, "height"  # F
    .param p4, "depth"  # F
    .param p5, "divisionsU"  # I
    .param p6, "divisionsV"  # I
    .param p7, "angleUFrom"  # F
    .param p8, "angleUTo"  # F
    .param p9, "angleVFrom"  # F
    .param p10, "angleVTo"  # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p9

    move/from16 v5, p10

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v6

    .line 53
    .local v6, "closedVFrom":Z
    const/high16 v7, 0x43340000  # 180.0f

    invoke-static {v5, v7}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v7

    .line 54
    .local v7, "closedVTo":Z
    const/high16 v8, 0x3f000000  # 0.5f

    mul-float v9, p2, v8

    .line 55
    .local v9, "hw":F
    mul-float v10, p3, v8

    .line 56
    .local v10, "hh":F
    mul-float v11, p4, v8

    .line 57
    .local v11, "hd":F
    const v12, 0x3c8efa35

    mul-float v13, p7, v12

    .line 58
    .local v13, "auo":F
    sub-float v14, p8, p7

    mul-float/2addr v14, v12

    int-to-float v15, v2

    div-float/2addr v14, v15

    .line 59
    .local v14, "stepU":F
    mul-float v15, v4, v12

    .line 60
    .local v15, "avo":F
    sub-float v16, v5, v4

    mul-float v16, v16, v12

    int-to-float v12, v3

    div-float v16, v16, v12

    .line 61
    .local v16, "stepV":F
    int-to-float v12, v2

    const/high16 v17, 0x3f800000  # 1.0f

    div-float v12, v17, v12

    .line 62
    .local v12, "us":F
    int-to-float v8, v3

    div-float v8, v17, v8

    .line 63
    .local v8, "vs":F
    const/16 v19, 0x0

    .line 64
    .local v19, "u":F
    const/16 v20, 0x0

    .line 65
    .local v20, "v":F
    const/16 v21, 0x0

    .line 66
    .local v21, "angleU":F
    const/16 v22, 0x0

    .line 67
    .local v22, "angleV":F
    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    .line 68
    .local v4, "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    iput-boolean v5, v4, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    iput-boolean v5, v4, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    .line 70
    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/math/Matrix3;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix3;

    .line 72
    add-int/lit8 v5, v2, 0x3

    .line 73
    .local v5, "s":I
    sget-object v23, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual/range {v23 .. v23}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 74
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    move/from16 v23, v11

    .end local v11  # "hd":F
    .local v23, "hd":F
    mul-int/lit8 v11, v2, 0x2

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    .line 75
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iput v5, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 76
    const/4 v1, 0x0

    .line 78
    .local v1, "tempOffset":I
    add-int/lit8 v11, v3, 0x1

    add-int/lit8 v24, v2, 0x1

    mul-int v11, v11, v24

    invoke-interface {v0, v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->ensureVertices(I)V

    .line 79
    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->ensureRectangleIndices(I)V

    .line 80
    const/4 v11, 0x0

    .local v11, "iv":I
    :goto_77
    if-gt v11, v3, :cond_1c0

    .line 81
    move/from16 v24, v1

    .end local v1  # "tempOffset":I
    .local v24, "tempOffset":I
    int-to-float v1, v11

    mul-float v1, v1, v16

    add-float v22, v15, v1

    .line 82
    int-to-float v1, v11

    mul-float/2addr v1, v8

    .line 83
    .end local v20  # "v":F
    .local v1, "v":F
    invoke-static/range {v22 .. v22}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v20

    .line 84
    .local v20, "t":F
    invoke-static/range {v22 .. v22}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v25

    move/from16 v26, v8

    .end local v8  # "vs":F
    .local v26, "vs":F
    mul-float v8, v25, v10

    .line 85
    .local v8, "h":F
    const/16 v25, 0x0

    move/from16 v27, v10

    move/from16 v10, v24

    move/from16 v33, v25

    move/from16 v25, v15

    move/from16 v15, v33

    .end local v24  # "tempOffset":I
    .local v10, "tempOffset":I
    .local v15, "iu":I
    .local v25, "avo":F
    .local v27, "hh":F
    :goto_9a
    if-gt v15, v2, :cond_19f

    .line 86
    int-to-float v2, v15

    mul-float/2addr v2, v14

    add-float v21, v13, v2

    .line 87
    if-nez v11, :cond_a4

    if-nez v6, :cond_a8

    :cond_a4
    if-ne v11, v3, :cond_b1

    if-eqz v7, :cond_b1

    .line 88
    :cond_a8
    int-to-float v2, v15

    const/high16 v18, 0x3f000000  # 0.5f

    sub-float v2, v2, v18

    mul-float/2addr v2, v12

    sub-float v2, v17, v2

    .end local v19  # "u":F
    .local v2, "u":F
    goto :goto_b7

    .line 87
    .end local v2  # "u":F
    .restart local v19  # "u":F
    :cond_b1
    const/high16 v18, 0x3f000000  # 0.5f

    .line 90
    int-to-float v2, v15

    mul-float/2addr v2, v12

    sub-float v2, v17, v2

    .line 92
    .end local v19  # "u":F
    .restart local v2  # "u":F
    :goto_b7
    move/from16 v28, v12

    .end local v12  # "us":F
    .local v28, "us":F
    iget-object v12, v4, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-static/range {v21 .. v21}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v19

    mul-float v19, v19, v9

    move/from16 v29, v9

    .end local v9  # "hw":F
    .local v29, "hw":F
    mul-float v9, v19, v20

    invoke-static/range {v21 .. v21}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v19

    mul-float v19, v19, v23

    move/from16 v30, v13

    .end local v13  # "auo":F
    .local v30, "auo":F
    mul-float v13, v19, v20

    invoke-virtual {v12, v9, v8, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 93
    iget-object v9, v4, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget-object v12, v4, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 94
    iget-object v9, v4, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v12, p1

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 95
    iget-object v9, v4, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v9, v2, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 96
    sget-object v9, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-interface {v0, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v13

    invoke-virtual {v9, v10, v13}, Lcom/badlogic/gdx/utils/ShortArray;->set(IS)V

    .line 97
    add-int v9, v10, v5

    .line 98
    .local v9, "o":I
    if-lez v11, :cond_17d

    if-lez v15, :cond_17d

    .line 99
    const/4 v13, 0x1

    if-ne v11, v13, :cond_129

    if-eqz v6, :cond_129

    .line 100
    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v13, v10}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v13

    move/from16 v31, v1

    .end local v1  # "v":F
    .local v31, "v":F
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    add-int/lit8 v19, v9, -0x1

    move/from16 v24, v2

    .end local v2  # "u":F
    .local v24, "u":F
    rem-int v2, v19, v5

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v1

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    add-int/lit8 v19, p5, 0x1

    sub-int v19, v9, v19

    move-object/from16 v32, v4

    .end local v4  # "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .local v32, "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    rem-int v4, v19, v5

    .line 101
    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v2

    .line 100
    invoke-interface {v0, v13, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->triangle(SSS)V

    goto :goto_183

    .line 99
    .end local v24  # "u":F
    .end local v31  # "v":F
    .end local v32  # "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .restart local v1  # "v":F
    .restart local v2  # "u":F
    .restart local v4  # "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    :cond_129
    move/from16 v31, v1

    move/from16 v24, v2

    move-object/from16 v32, v4

    .line 102
    .end local v1  # "v":F
    .end local v2  # "u":F
    .end local v4  # "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .restart local v24  # "u":F
    .restart local v31  # "v":F
    .restart local v32  # "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    if-ne v11, v3, :cond_153

    if-eqz v7, :cond_153

    .line 103
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v1

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    add-int/lit8 v4, p5, 0x2

    sub-int v4, v9, v4

    rem-int/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v2

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    add-int/lit8 v13, p5, 0x1

    sub-int v13, v9, v13

    rem-int/2addr v13, v5

    .line 104
    invoke-virtual {v4, v13}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v4

    .line 103
    invoke-interface {v0, v1, v2, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->triangle(SSS)V

    goto :goto_183

    .line 106
    :cond_153
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v1

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    add-int/lit8 v4, v9, -0x1

    rem-int/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v2

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    add-int/lit8 v13, p5, 0x2

    sub-int v13, v9, v13

    rem-int/2addr v13, v5

    .line 107
    invoke-virtual {v4, v13}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v4

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    add-int/lit8 v19, p5, 0x1

    sub-int v19, v9, v19

    rem-int v3, v19, v5

    invoke-virtual {v13, v3}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v3

    .line 106
    invoke-interface {v0, v1, v2, v4, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->rect(SSSS)V

    goto :goto_183

    .line 98
    .end local v24  # "u":F
    .end local v31  # "v":F
    .end local v32  # "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .restart local v1  # "v":F
    .restart local v2  # "u":F
    .restart local v4  # "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    :cond_17d
    move/from16 v31, v1

    move/from16 v24, v2

    move-object/from16 v32, v4

    .line 110
    .end local v1  # "v":F
    .end local v2  # "u":F
    .end local v4  # "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .restart local v24  # "u":F
    .restart local v31  # "v":F
    .restart local v32  # "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    :goto_183
    add-int/lit8 v1, v10, 0x1

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    rem-int v10, v1, v2

    .line 85
    .end local v9  # "o":I
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v19, v24

    move/from16 v12, v28

    move/from16 v9, v29

    move/from16 v13, v30

    move/from16 v1, v31

    move-object/from16 v4, v32

    goto/16 :goto_9a

    .end local v24  # "u":F
    .end local v28  # "us":F
    .end local v29  # "hw":F
    .end local v30  # "auo":F
    .end local v31  # "v":F
    .end local v32  # "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .restart local v1  # "v":F
    .restart local v4  # "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .local v9, "hw":F
    .restart local v12  # "us":F
    .restart local v13  # "auo":F
    .restart local v19  # "u":F
    :cond_19f
    move/from16 v31, v1

    move-object/from16 v32, v4

    move/from16 v29, v9

    move/from16 v28, v12

    move/from16 v30, v13

    const/high16 v18, 0x3f000000  # 0.5f

    move-object/from16 v12, p1

    .line 80
    .end local v1  # "v":F
    .end local v4  # "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .end local v8  # "h":F
    .end local v9  # "hw":F
    .end local v12  # "us":F
    .end local v13  # "auo":F
    .end local v15  # "iu":I
    .end local v20  # "t":F
    .restart local v28  # "us":F
    .restart local v29  # "hw":F
    .restart local v30  # "auo":F
    .restart local v31  # "v":F
    .restart local v32  # "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, p5

    move/from16 v3, p6

    move v1, v10

    move/from16 v15, v25

    move/from16 v8, v26

    move/from16 v10, v27

    move/from16 v12, v28

    move/from16 v20, v31

    goto/16 :goto_77

    .line 113
    .end local v11  # "iv":I
    .end local v25  # "avo":F
    .end local v26  # "vs":F
    .end local v27  # "hh":F
    .end local v28  # "us":F
    .end local v29  # "hw":F
    .end local v30  # "auo":F
    .end local v31  # "v":F
    .end local v32  # "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .local v1, "tempOffset":I
    .restart local v4  # "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .local v8, "vs":F
    .restart local v9  # "hw":F
    .local v10, "hh":F
    .restart local v12  # "us":F
    .restart local v13  # "auo":F
    .local v15, "avo":F
    .local v20, "v":F
    :cond_1c0
    return-void
.end method
