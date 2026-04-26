.class public Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;
.source "TiledDrawable.java"


# instance fields
.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field private scale:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>()V

    .line 27
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 28
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->scale:F

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .registers 4
    .param p1, "region"  # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 35
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 27
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 28
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->scale:F

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;)V
    .registers 4
    .param p1, "drawable"  # Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    .line 39
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;)V

    .line 27
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 28
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->scale:F

    .line 40
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .registers 38
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "width"  # F
    .param p5, "height"  # F

    .line 43
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    invoke-interface/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getPackedColor()F

    move-result v12

    .line 44
    .local v12, "oldColor":F
    invoke-interface/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v13

    .line 47
    .local v13, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->scale:F

    mul-float v14, v1, v2

    .local v14, "regionWidth":F
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->scale:F

    mul-float v15, v1, v2

    .line 48
    .local v15, "regionHeight":F
    div-float v1, p4, v14

    float-to-int v10, v1

    .local v10, "fullX":I
    div-float v1, p5, v15

    float-to-int v9, v1

    .line 49
    .local v9, "fullY":I
    int-to-float v1, v10

    mul-float/2addr v1, v14

    sub-float v16, p4, v1

    .local v16, "remainingX":F
    int-to-float v1, v9

    mul-float/2addr v1, v15

    sub-float v17, p5, v1

    .line 50
    .local v17, "remainingY":F
    move/from16 v18, p2

    .local v18, "startX":F
    move/from16 v19, p3

    .line 51
    .local v19, "startY":F
    add-float v1, p2, p4

    sub-float v20, v1, v16

    .local v20, "endX":F
    add-float v1, p3, p5

    sub-float v21, v1, v17

    .line 52
    .local v21, "endY":F
    const/4 v1, 0x0

    move/from16 v22, p2

    move v7, v1

    move/from16 v1, p3

    .end local p2  # "x":F
    .end local p3  # "y":F
    .local v1, "y":F
    .local v7, "i":I
    .local v22, "x":F
    :goto_4b
    if-ge v7, v10, :cond_6d

    .line 53
    move/from16 v1, v19

    .line 54
    const/4 v2, 0x0

    move v8, v1

    move v6, v2

    .end local v1  # "y":F
    .local v6, "ii":I
    .local v8, "y":F
    :goto_52
    if-ge v6, v9, :cond_65

    .line 55
    move-object/from16 v1, p1

    move-object v2, v13

    move/from16 v3, v22

    move v4, v8

    move v5, v14

    move/from16 v23, v6

    .end local v6  # "ii":I
    .local v23, "ii":I
    move v6, v15

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 56
    add-float/2addr v8, v15

    .line 54
    add-int/lit8 v6, v23, 0x1

    .end local v23  # "ii":I
    .restart local v6  # "ii":I
    goto :goto_52

    :cond_65
    move/from16 v23, v6

    .line 58
    .end local v6  # "ii":I
    add-float v22, v22, v14

    .line 52
    add-int/lit8 v7, v7, 0x1

    move v1, v8

    goto :goto_4b

    .line 60
    .end local v7  # "i":I
    .end local v8  # "y":F
    .restart local v1  # "y":F
    :cond_6d
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v23

    .line 61
    .local v23, "texture":Lcom/badlogic/gdx/graphics/Texture;
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v24

    .line 62
    .local v24, "u":F
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v25

    .line 63
    .local v25, "v2":F
    const/16 v26, 0x0

    cmpl-float v2, v16, v26

    if-lez v2, :cond_e9

    .line 65
    invoke-virtual/range {v23 .. v23}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->scale:F

    mul-float/2addr v2, v3

    div-float v2, v16, v2

    add-float v27, v24, v2

    .line 66
    .local v27, "u2":F
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v28

    .line 67
    .local v28, "v":F
    move/from16 v1, v19

    .line 68
    const/4 v2, 0x0

    move/from16 v29, v1

    move v8, v2

    .end local v1  # "y":F
    .local v8, "ii":I
    .local v29, "y":F
    :goto_95
    if-ge v8, v9, :cond_bc

    .line 69
    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move/from16 v3, v22

    move/from16 v4, v29

    move/from16 v5, v16

    move v6, v15

    move/from16 v7, v24

    move/from16 v30, v8

    .end local v8  # "ii":I
    .local v30, "ii":I
    move/from16 v8, v25

    move/from16 v31, v9

    .end local v9  # "fullY":I
    .local v31, "fullY":I
    move/from16 v9, v27

    move v11, v10

    .end local v10  # "fullX":I
    .local v11, "fullX":I
    move/from16 v10, v28

    invoke-interface/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    .line 70
    add-float v29, v29, v15

    .line 68
    add-int/lit8 v8, v30, 0x1

    move v10, v11

    move/from16 v9, v31

    move-object/from16 v11, p1

    .end local v30  # "ii":I
    .restart local v8  # "ii":I
    goto :goto_95

    .end local v11  # "fullX":I
    .end local v31  # "fullY":I
    .restart local v9  # "fullY":I
    .restart local v10  # "fullX":I
    :cond_bc
    move/from16 v30, v8

    move/from16 v31, v9

    move v11, v10

    .line 73
    .end local v8  # "ii":I
    .end local v9  # "fullY":I
    .end local v10  # "fullX":I
    .restart local v11  # "fullX":I
    .restart local v31  # "fullY":I
    cmpl-float v1, v17, v26

    if-lez v1, :cond_ee

    .line 74
    invoke-virtual/range {v23 .. v23}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->scale:F

    mul-float/2addr v1, v2

    div-float v1, v17, v1

    sub-float v28, v25, v1

    .line 75
    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move/from16 v3, v22

    move/from16 v4, v29

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v24

    move/from16 v8, v25

    move/from16 v9, v27

    move/from16 v10, v28

    invoke-interface/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    goto :goto_ee

    .line 63
    .end local v11  # "fullX":I
    .end local v27  # "u2":F
    .end local v28  # "v":F
    .end local v29  # "y":F
    .end local v31  # "fullY":I
    .restart local v1  # "y":F
    .restart local v9  # "fullY":I
    .restart local v10  # "fullX":I
    :cond_e9
    move/from16 v31, v9

    move v11, v10

    .end local v9  # "fullY":I
    .end local v10  # "fullX":I
    .restart local v11  # "fullX":I
    .restart local v31  # "fullY":I
    move/from16 v29, v1

    .line 78
    .end local v1  # "y":F
    .restart local v29  # "y":F
    :cond_ee
    :goto_ee
    cmpl-float v1, v17, v26

    if-lez v1, :cond_129

    .line 80
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v26

    .line 81
    .local v26, "u2":F
    invoke-virtual/range {v23 .. v23}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->scale:F

    mul-float/2addr v1, v2

    div-float v1, v17, v1

    sub-float v27, v25, v1

    .line 82
    .local v27, "v":F
    move/from16 v1, v18

    .line 83
    .end local v22  # "x":F
    .local v1, "x":F
    const/4 v2, 0x0

    move/from16 v22, v1

    move v10, v2

    .end local v1  # "x":F
    .local v10, "i":I
    .restart local v22  # "x":F
    :goto_108
    if-ge v10, v11, :cond_127

    .line 84
    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move/from16 v3, v22

    move/from16 v4, v29

    move v5, v14

    move/from16 v6, v17

    move/from16 v7, v24

    move/from16 v8, v25

    move/from16 v9, v26

    move/from16 v28, v10

    .end local v10  # "i":I
    .local v28, "i":I
    move/from16 v10, v27

    invoke-interface/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    .line 85
    add-float v22, v22, v14

    .line 83
    add-int/lit8 v10, v28, 0x1

    .end local v28  # "i":I
    .restart local v10  # "i":I
    goto :goto_108

    :cond_127
    move/from16 v28, v10

    .line 89
    .end local v10  # "i":I
    .end local v26  # "u2":F
    .end local v27  # "v":F
    :cond_129
    move-object/from16 v1, p1

    move v2, v11

    .end local v11  # "fullX":I
    .local v2, "fullX":I
    invoke-interface {v1, v12}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setPackedColor(F)V

    .line 90
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFFFFFF)V
    .registers 12
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "originX"  # F
    .param p5, "originY"  # F
    .param p6, "width"  # F
    .param p7, "height"  # F
    .param p8, "scaleX"  # F
    .param p9, "scaleY"  # F
    .param p10, "rotation"  # F

    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getScale()F
    .registers 2

    .line 106
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->scale:F

    return v0
.end method

.method public setScale(F)V
    .registers 2
    .param p1, "scale"  # F

    .line 102
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->scale:F

    .line 103
    return-void
.end method

.method public bridge synthetic tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    move-result-object p1

    return-object p1
.end method

.method public tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;
    .registers 4
    .param p1, "tint"  # Lcom/badlogic/gdx/graphics/Color;

    .line 110
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;)V

    .line 111
    .local v0, "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 112
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->getLeftWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->setLeftWidth(F)V

    .line 113
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->getRightWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->setRightWidth(F)V

    .line 114
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->getTopHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->setTopHeight(F)V

    .line 115
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->getBottomHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->setBottomHeight(F)V

    .line 116
    return-object v0
.end method
