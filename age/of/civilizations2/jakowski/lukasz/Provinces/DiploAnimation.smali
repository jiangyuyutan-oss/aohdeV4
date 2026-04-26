.class public Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;
.super Ljava/lang/Object;
.source "DiploAnimation.java"


# instance fields
.field public TURN_ID:I

.field public civID:I

.field public colorN:Lcom/badlogic/gdx/graphics/Color;

.field public iPosX:I

.field public iPosY:I

.field public iProvinceID:I

.field public imageID:I

.field public lTime:J

.field public remove:Z


# direct methods
.method public constructor <init>(III)V
    .registers 7
    .param p1, "civID"  # I
    .param p2, "iProvinceID"  # I
    .param p3, "imageID"  # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->iProvinceID:I

    .line 20
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->civID:I

    .line 22
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->imageID:I

    .line 24
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->iPosX:I

    .line 25
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->iPosY:I

    .line 27
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->lTime:J

    .line 29
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->TURN_ID:I

    .line 30
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->remove:Z

    .line 32
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->colorN:Lcom/badlogic/gdx/graphics/Color;

    .line 35
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->iProvinceID:I

    .line 36
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->civID:I

    .line 37
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->imageID:I

    .line 39
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShX()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->iPosX:I

    .line 40
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeShY()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->iPosY:I

    .line 42
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->TURN_ID:I

    .line 44
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_WAR_DARK:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->colorN:Lcom/badlogic/gdx/graphics/Color;

    .line 52
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 22
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 55
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->TURN_ID:I

    sub-int/2addr v0, v2

    const/4 v11, 0x1

    const/4 v2, 0x5

    if-le v0, v2, :cond_10

    .line 56
    iput-boolean v11, v1, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->remove:Z

    .line 57
    return-void

    .line 60
    :cond_10
    iget v0, v1, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->iProvinceID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v2

    if-lt v0, v2, :cond_1d

    .line 61
    iput-boolean v11, v1, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->remove:Z

    .line 62
    return-void

    .line 65
    :cond_1d
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->TURN_ID:I

    if-ge v0, v2, :cond_26

    .line 66
    iput-boolean v11, v1, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->remove:Z

    .line 67
    return-void

    .line 71
    :cond_26
    :try_start_26
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->iProvinceID:I

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProv()Z

    move-result v0

    if-eqz v0, :cond_1eb

    iget-boolean v0, v1, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->remove:Z

    if-nez v0, :cond_1eb

    .line 72
    iget-wide v2, v1, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->lTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_44

    .line 73
    sget-wide v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    iput-wide v2, v1, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->lTime:J

    .line 95
    :cond_44
    sget-wide v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    iget-wide v4, v1, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvProvinceAnimation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceAnimation;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceAnimation;->DIPLOMACY_ANIMATION_TIME:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v12, 0x3f800000  # 1.0f

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 97
    .local v0, "fProgress":F
    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->imageID:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v13, v2

    .line 98
    .local v13, "currentW":I
    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->imageID:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v14, v2

    .line 101
    .local v14, "currentH":I
    const v2, 0x3f59999a  # 0.85f

    div-float v3, v0, v2

    invoke-static {v12, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move v15, v3

    .line 102
    .local v15, "moveProgress":F
    int-to-float v3, v14

    const v4, 0x3e666666  # 0.225f

    mul-float v3, v3, v4

    mul-float v9, v3, v15

    .line 104
    .local v9, "yOffset":F
    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->iPosX:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->iProvinceID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvPosX()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v8, v3

    .line 105
    .local v8, "nPosX":I
    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->iPosY:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v7, v3

    .line 108
    .local v7, "nPosY":I
    const/high16 v3, 0x3f800000  # 1.0f

    .line 110
    .local v3, "alpha":F
    cmpl-float v4, v0, v2

    if-lez v4, :cond_e0

    .line 111
    sub-float v2, v0, v2

    const v4, 0x3e19999a  # 0.15f

    div-float/2addr v2, v4

    .line 112
    .local v2, "fadeProgress":F
    sub-float v3, v12, v2

    move v6, v3

    goto :goto_e1

    .line 110
    .end local v2  # "fadeProgress":F
    :cond_e0
    move v6, v3

    .line 115
    .end local v3  # "alpha":F
    .local v6, "alpha":F
    :goto_e1
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->colorN:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->colorN:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->colorN:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 116
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientXY:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    sub-int v4, v8, v13

    sub-int v3, v7, v14

    int-to-float v3, v3

    sub-float/2addr v3, v9

    float-to-int v5, v3

    mul-int/lit8 v16, v13, 0x2

    div-int/lit8 v17, v14, 0x2

    move-object/from16 v3, p1

    move v11, v6

    .end local v6  # "alpha":F
    .local v11, "alpha":F
    move/from16 v6, v16

    move v12, v7

    .end local v7  # "nPosY":I
    .local v12, "nPosY":I
    move/from16 v7, v17

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 117
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientXY:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    sub-int v4, v8, v13

    int-to-float v3, v12

    sub-float/2addr v3, v9

    div-int/lit8 v5, v14, 0x2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v5, v3

    mul-int/lit8 v6, v13, 0x2

    div-int/lit8 v7, v14, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v3, p1

    move/from16 v19, v8

    .end local v8  # "nPosX":I
    .local v19, "nPosX":I
    move/from16 v8, v17

    move/from16 v17, v15

    move v15, v9

    .end local v9  # "yOffset":F
    .local v15, "yOffset":F
    .local v17, "moveProgress":F
    move/from16 v9, v18

    invoke-virtual/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 120
    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v10, v2, v2, v2, v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 122
    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->imageID:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    div-int/lit8 v3, v13, 0x2

    sub-int v4, v19, v3

    int-to-float v3, v12

    sub-float/2addr v3, v15

    int-to-float v5, v14

    sub-float/2addr v3, v5

    float-to-int v5, v3

    move-object/from16 v3, p1

    move v6, v13

    move v7, v14

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 128
    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v10, v2, v2, v2, v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 130
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 132
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->civID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 133
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v3, 0x84c0

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 135
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flagCapitalOver:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v8, v2

    .line 136
    .end local v13  # "currentW":I
    .local v8, "currentW":I
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flagCapitalOver:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v9, v2

    .line 138
    .local v9, "currentH2":I
    div-int/lit8 v2, v8, 0x2

    sub-int v13, v19, v2

    .line 139
    .end local v19  # "nPosX":I
    .local v13, "nPosX":I
    float-to-int v2, v15

    sub-int v7, v12, v2

    div-int/lit8 v2, v14, 0x2

    sub-int v12, v7, v2

    .line 141
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flagCapitalMask:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    move-object/from16 v3, p1

    move v4, v13

    move v5, v12

    move v6, v8

    move v7, v9

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 144
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderDef:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 146
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flagCapitalOver:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    move-object/from16 v3, p1

    move v4, v13

    move v5, v12

    move v6, v8

    move v7, v9

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 147
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 150
    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1e6

    .line 151
    const/4 v2, 0x1

    iput-boolean v2, v1, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->remove:Z

    .line 154
    :cond_1e6
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_1eb
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_1eb} :catch_1ec

    .line 158
    .end local v0  # "fProgress":F
    .end local v8  # "currentW":I
    .end local v9  # "currentH2":I
    .end local v11  # "alpha":F
    .end local v12  # "nPosY":I
    .end local v13  # "nPosX":I
    .end local v14  # "currentH":I
    .end local v15  # "yOffset":F
    .end local v17  # "moveProgress":F
    :cond_1eb
    goto :goto_1f0

    .line 156
    :catch_1ec
    move-exception v0

    .line 157
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lage/of/civilizations2/jakowski/lukasz/Provinces/DiploAnimation;->remove:Z

    .line 159
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_1f0
    return-void
.end method
