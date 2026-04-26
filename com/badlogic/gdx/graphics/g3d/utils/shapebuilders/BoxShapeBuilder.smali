.class public Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;
.super Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;
.source "BoxShapeBuilder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;-><init>()V

    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFF)V
    .registers 11
    .param p0, "builder"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "width"  # F
    .param p2, "height"  # F
    .param p3, "depth"  # F

    .line 107
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFFF)V

    .line 108
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFFF)V
    .registers 26
    .param p0, "builder"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "z"  # F
    .param p4, "width"  # F
    .param p5, "height"  # F
    .param p6, "depth"  # F

    .line 112
    const/high16 v0, 0x3f000000  # 0.5f

    mul-float v1, p4, v0

    .line 113
    .local v1, "hw":F
    mul-float v2, p5, v0

    .line 114
    .local v2, "hh":F
    mul-float v0, v0, p6

    .line 115
    .local v0, "hd":F
    sub-float v3, p1, v1

    .local v3, "x0":F
    sub-float v4, p2, v2

    .local v4, "y0":F
    sub-float v5, p3, v0

    .local v5, "z0":F
    add-float v6, p1, v1

    .local v6, "x1":F
    add-float v7, p2, v2

    .local v7, "y1":F
    add-float v8, p3, v0

    .line 116
    .local v8, "z1":F
    nop

    .line 117
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v9, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v11

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v9, v3, v7, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v9, v6, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v9, v6, v7, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    .line 118
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v9, v3, v4, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v15

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v9, v3, v7, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v16

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v9, v6, v4, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v17

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v9, v6, v7, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v18

    .line 116
    move-object/from16 v10, p0

    invoke-static/range {v10 .. v18}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 119
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->freeAll()V

    .line 120
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V
    .registers 28
    .param p0, "builder"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "corner000"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p2, "corner010"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p3, "corner100"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p4, "corner110"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p5, "corner001"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p6, "corner011"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p7, "corner101"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p8, "corner111"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 42
    move-object/from16 v9, p0

    const/16 v0, 0x8

    invoke-interface {v9, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->ensureVertices(I)V

    .line 43
    invoke-interface/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v10

    .line 44
    .local v10, "i000":S
    move-object/from16 v11, p3

    invoke-interface {v9, v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v12

    .line 45
    .local v12, "i100":S
    move-object/from16 v13, p4

    invoke-interface {v9, v13}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v14

    .line 46
    .local v14, "i110":S
    move-object/from16 v15, p2

    invoke-interface {v9, v15}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v8

    .line 47
    .local v8, "i010":S
    move-object/from16 v7, p5

    invoke-interface {v9, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v6

    .line 48
    .local v6, "i001":S
    move-object/from16 v5, p7

    invoke-interface {v9, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v4

    .line 49
    .local v4, "i101":S
    move-object/from16 v3, p8

    invoke-interface {v9, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v2

    .line 50
    .local v2, "i111":S
    move-object/from16 v1, p6

    invoke-interface {v9, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v0

    .line 52
    .local v0, "i011":S
    invoke-interface/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->getPrimitiveType()I

    move-result v11

    .line 53
    .local v11, "primitiveType":I
    const/4 v1, 0x1

    if-ne v11, v1, :cond_67

    .line 54
    const/16 v1, 0x18

    invoke-interface {v9, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->ensureIndices(I)V

    .line 55
    invoke-interface {v9, v10, v12, v14, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->rect(SSSS)V

    .line 56
    invoke-interface {v9, v4, v6, v0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->rect(SSSS)V

    .line 57
    move v1, v0

    .end local v0  # "i011":S
    .local v1, "i011":S
    move-object/from16 v0, p0

    move/from16 v16, v1

    .end local v1  # "i011":S
    .local v16, "i011":S
    move v1, v10

    move/from16 v17, v2

    .end local v2  # "i111":S
    .local v17, "i111":S
    move v2, v6

    move v3, v8

    move/from16 v18, v4

    .end local v4  # "i101":S
    .local v18, "i101":S
    move/from16 v4, v16

    move v5, v14

    move v13, v6

    .end local v6  # "i001":S
    .local v13, "i001":S
    move/from16 v6, v17

    move v7, v12

    move v15, v8

    .end local v8  # "i010":S
    .local v15, "i010":S
    move/from16 v8, v18

    invoke-interface/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->index(SSSSSSSS)V

    move/from16 v2, v16

    move/from16 v1, v17

    move/from16 v0, v18

    goto :goto_9e

    .line 58
    .end local v13  # "i001":S
    .end local v15  # "i010":S
    .end local v16  # "i011":S
    .end local v17  # "i111":S
    .end local v18  # "i101":S
    .restart local v0  # "i011":S
    .restart local v2  # "i111":S
    .restart local v4  # "i101":S
    .restart local v6  # "i001":S
    .restart local v8  # "i010":S
    :cond_67
    move/from16 v16, v0

    move/from16 v17, v2

    move/from16 v18, v4

    move v13, v6

    move v15, v8

    .end local v0  # "i011":S
    .end local v2  # "i111":S
    .end local v4  # "i101":S
    .end local v6  # "i001":S
    .end local v8  # "i010":S
    .restart local v13  # "i001":S
    .restart local v15  # "i010":S
    .restart local v16  # "i011":S
    .restart local v17  # "i111":S
    .restart local v18  # "i101":S
    if-nez v11, :cond_82

    .line 59
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->ensureRectangleIndices(I)V

    .line 60
    invoke-interface {v9, v10, v12, v14, v15}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->rect(SSSS)V

    .line 61
    move/from16 v2, v16

    move/from16 v1, v17

    move/from16 v0, v18

    .end local v16  # "i011":S
    .end local v17  # "i111":S
    .end local v18  # "i101":S
    .local v0, "i101":S
    .local v1, "i111":S
    .local v2, "i011":S
    invoke-interface {v9, v0, v13, v2, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->rect(SSSS)V

    goto :goto_9e

    .line 63
    .end local v0  # "i101":S
    .end local v1  # "i111":S
    .end local v2  # "i011":S
    .restart local v16  # "i011":S
    .restart local v17  # "i111":S
    .restart local v18  # "i101":S
    :cond_82
    move/from16 v2, v16

    move/from16 v1, v17

    move/from16 v0, v18

    .end local v16  # "i011":S
    .end local v17  # "i111":S
    .end local v18  # "i101":S
    .restart local v0  # "i101":S
    .restart local v1  # "i111":S
    .restart local v2  # "i011":S
    const/4 v3, 0x6

    invoke-interface {v9, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->ensureRectangleIndices(I)V

    .line 64
    invoke-interface {v9, v10, v12, v14, v15}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->rect(SSSS)V

    .line 65
    invoke-interface {v9, v0, v13, v2, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->rect(SSSS)V

    .line 66
    invoke-interface {v9, v10, v15, v2, v13}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->rect(SSSS)V

    .line 67
    invoke-interface {v9, v0, v1, v14, v12}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->rect(SSSS)V

    .line 68
    invoke-interface {v9, v0, v12, v10, v13}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->rect(SSSS)V

    .line 69
    invoke-interface {v9, v14, v1, v2, v15}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->rect(SSSS)V

    .line 71
    :goto_9e
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;)V
    .registers 13
    .param p0, "builder"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "transform"  # Lcom/badlogic/gdx/math/Matrix4;

    .line 98
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/high16 v1, -0x41000000  # -0.5f

    invoke-virtual {v0, v1, v1, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/high16 v2, 0x3f000000  # 0.5f

    invoke-virtual {v0, v1, v2, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    .line 99
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v2, v1, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    .line 100
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    .line 101
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v2, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    .line 98
    move-object v2, p0

    invoke-static/range {v2 .. v10}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 102
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->freeAll()V

    .line 103
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .registers 28
    .param p0, "builder"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "corner000"  # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "corner010"  # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "corner100"  # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "corner110"  # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "corner001"  # Lcom/badlogic/gdx/math/Vector3;
    .param p6, "corner011"  # Lcom/badlogic/gdx/math/Vector3;
    .param p7, "corner101"  # Lcom/badlogic/gdx/math/Vector3;
    .param p8, "corner111"  # Lcom/badlogic/gdx/math/Vector3;

    .line 76
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v8, p7

    move-object/from16 v7, p8

    invoke-interface/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getMask()J

    move-result-wide v0

    const-wide/16 v2, 0x198

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6c

    .line 77
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v2

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, v11, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v3

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 78
    invoke-virtual {v0, v12, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, v13, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v5

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->vertTmp5:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 79
    invoke-virtual {v0, v14, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v6

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->vertTmp6:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, v15, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v16

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->vertTmp7:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 80
    invoke-virtual {v0, v8, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v17

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->vertTmp8:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, v7, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v18

    .line 77
    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, v16

    move-object v12, v7

    move-object/from16 v7, v17

    move-object v15, v8

    move-object/from16 v8, v18

    invoke-static/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    move-object/from16 v12, p3

    move-object/from16 v15, p6

    goto/16 :goto_129

    .line 82
    :cond_6c
    move-object v12, v7

    move-object v15, v8

    const/16 v0, 0x18

    invoke-interface {v9, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->ensureVertices(I)V

    .line 83
    const/4 v0, 0x6

    invoke-interface {v9, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->ensureRectangleIndices(I)V

    .line 84
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/high16 v6, 0x3f000000  # 0.5f

    invoke-virtual {v0, v13, v6}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->tmpV2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v14}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v12, v6}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    .line 85
    .local v7, "nor":Lcom/badlogic/gdx/math/Vector3;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    move-object v5, v7

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->rect(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 86
    const/high16 v8, -0x40800000  # -1.0f

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    move-object/from16 v1, p6

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->rect(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 87
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v15, v6}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->tmpV2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v12, v6}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    .line 88
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p7

    move-object v5, v7

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->rect(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 89
    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p8

    move-object/from16 v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->rect(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 90
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    move-object/from16 v15, p6

    invoke-virtual {v0, v15, v6}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->tmpV2:Lcom/badlogic/gdx/math/Vector3;

    move-object v5, v12

    move-object/from16 v12, p3

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    .line 91
    .end local v7  # "nor":Lcom/badlogic/gdx/math/Vector3;
    .local v6, "nor":Lcom/badlogic/gdx/math/Vector3;
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->rect(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 92
    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p8

    move-object/from16 v4, p7

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->rect(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 94
    .end local v6  # "nor":Lcom/badlogic/gdx/math/Vector3;
    :goto_129
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/collision/BoundingBox;)V
    .registers 12
    .param p0, "builder"  # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "box"  # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 34
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner000(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner010(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner100(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner110(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    .line 35
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner001(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner011(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner101(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner111(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    .line 34
    move-object v1, p0

    invoke-interface/range {v1 .. v9}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->box(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 36
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->freeAll()V

    .line 37
    return-void
.end method
