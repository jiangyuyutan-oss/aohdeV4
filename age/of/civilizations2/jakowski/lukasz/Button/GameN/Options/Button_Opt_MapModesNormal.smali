.class public Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;
.super Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt;
.source "Button_Opt_MapModesNormal.java"


# instance fields
.field private iCurrent:I

.field public imgID:I


# direct methods
.method public constructor <init>(ILjava/lang/String;IIIIIZ)V
    .registers 18
    .param p1, "iCurrent"  # I
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iTextPositionX"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "iHeight"  # I
    .param p8, "isClickable"  # Z

    .line 17
    move-object v8, p0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 13
    const/4 v0, -0x1

    iput v0, v8, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->imgID:I

    .line 14
    const/4 v0, 0x0

    iput v0, v8, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->iCurrent:I

    .line 19
    move v0, p1

    iput v0, v8, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->iCurrent:I

    .line 20
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIZZ)V
    .registers 20
    .param p1, "iCurrent"  # I
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iTextPositionX"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "iHeight"  # I
    .param p8, "isClickable"  # Z
    .param p9, "checkboxState"  # Z

    .line 23
    move-object v9, p0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt;-><init>(Ljava/lang/String;IIIIIZZ)V

    .line 13
    const/4 v0, -0x1

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->imgID:I

    .line 14
    const/4 v0, 0x0

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->iCurrent:I

    .line 25
    move v0, p1

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->iCurrent:I

    .line 26
    return-void
.end method


# virtual methods
.method public buildCheckbox()Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$Checkbox;
    .registers 2

    .line 70
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->checkbox:Z

    if-eqz v0, :cond_a

    .line 71
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;)V

    return-object v0

    .line 93
    :cond_a
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;)V

    return-object v0
.end method

.method public drawButtonBGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 18
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 31
    move-object v8, p1

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3eb33333  # 0.35f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 32
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosXE()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosY()I

    move-result v1

    add-int v1, v1, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getWidthE()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getHeightE()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 34
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BOX_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BOX_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BOX_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v9, 0x3e333333  # 0.175f

    const v10, 0x3ecccccd  # 0.4f

    const v11, 0x3e666666  # 0.225f

    if-eqz p4, :cond_5f

    const v4, 0x3e666666  # 0.225f

    goto :goto_6c

    :cond_5f
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getIsHovered()Z

    move-result v4

    if-eqz v4, :cond_69

    const v4, 0x3e333333  # 0.175f

    goto :goto_6c

    :cond_69
    const v4, 0x3ecccccd  # 0.4f

    :goto_6c
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 35
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosXE()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosY()I

    move-result v1

    add-int v1, v1, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getWidthE()I

    move-result v1

    div-int/lit8 v4, v1, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getHeightE()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 36
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosXE()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getWidthE()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getWidthE()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosY()I

    move-result v1

    add-int v1, v1, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getWidthE()I

    move-result v1

    div-int/lit8 v4, v1, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getHeightE()I

    move-result v5

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 38
    const v0, 0x3ee66666  # 0.45f

    const/4 v12, 0x0

    invoke-virtual {p1, v12, v12, v12, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 39
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosXE()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosY()I

    move-result v1

    add-int v1, v1, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getWidthE()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getHeightE()I

    move-result v1

    div-int/lit8 v5, v1, 0x5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 40
    const/high16 v0, 0x3ec00000  # 0.375f

    invoke-virtual {p1, v12, v12, v12, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 41
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosXE()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosY()I

    move-result v1

    add-int v1, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getHeightE()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getHeightE()I

    move-result v3

    div-int/lit8 v3, v3, 0x5

    sub-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getWidthE()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getHeightE()I

    move-result v1

    div-int/lit8 v5, v1, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 44
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    if-nez p4, :cond_165

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getIsHovered()Z

    move-result v4

    if-eqz v4, :cond_162

    goto :goto_165

    :cond_162
    const v10, 0x3e99999a  # 0.3f

    :cond_165
    :goto_165
    invoke-direct {v0, v1, v2, v3, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 45
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosXE()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosY()I

    move-result v1

    add-int v1, v1, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getWidthE()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 46
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosXE()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosY()I

    move-result v1

    add-int v1, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getHeightE()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getWidthE()I

    move-result v4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 47
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosXE()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosY()I

    move-result v1

    add-int v1, v1, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getWidthE()I

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 48
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosXE()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosY()I

    move-result v1

    add-int v1, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getHeightE()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getWidthE()I

    move-result v4

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 51
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    if-nez p4, :cond_21e

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_221

    :cond_21e
    const v11, 0x3ea66666  # 0.325f

    :cond_221
    invoke-direct {v0, v12, v12, v12, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 52
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosXE()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosY()I

    move-result v1

    add-int v1, v1, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getWidthE()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 53
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosXE()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosY()I

    move-result v1

    add-int v1, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getHeightE()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getWidthE()I

    move-result v4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 62
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v12, v12, v12, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 63
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosXE()I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosY()I

    move-result v1

    add-int v1, v1, p3

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getWidthE()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getHeightE()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 65
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 66
    return-void
.end method

.method public drawTextE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 17
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 101
    move-object v0, p0

    move/from16 v1, p4

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->imgID:I

    if-ltz v2, :cond_31

    .line 102
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosXE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosY()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getHeightE()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->imgID:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/2addr v4, p3

    move-object v11, p1

    invoke-virtual {v2, p1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_32

    .line 101
    :cond_31
    move-object v11, p1

    .line 105
    :goto_32
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getTextPosElem()I

    move-result v2

    if-gez v2, :cond_a9

    .line 106
    if-eqz v1, :cond_72

    .line 107
    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->fontID:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getTextToDrawElem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosXE()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getWidthE()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getTextWidthU()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v8, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getHeightE()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getTextHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v9, v2, p3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v10

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_106

    .line 109
    :cond_72
    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->fontID:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getTextToDrawElem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosXE()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getWidthE()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getTextWidthU()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v8, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getHeightE()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getTextHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v9, v2, p3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v10

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto :goto_106

    .line 113
    :cond_a9
    if-eqz v1, :cond_d9

    .line 114
    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->fontID:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getTextToDrawElem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosXE()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getTextPosElem()I

    move-result v3

    add-int/2addr v2, v3

    add-int v8, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getHeightE()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getTextHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v9, v2, p3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v10

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto :goto_106

    .line 116
    :cond_d9
    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->fontID:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getTextToDrawElem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosXE()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getTextPosElem()I

    move-result v3

    add-int/2addr v2, v3

    add-int v8, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getHeightE()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getTextHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v9, v2, p3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v10

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 119
    :goto_106
    return-void
.end method

.method public getCheckboxSt()Z
    .registers 3

    .line 123
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getCurr()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final getColorE(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"  # Z

    .line 147
    if-nez p1, :cond_1e

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getCheckboxSt()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1e

    :cond_9
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getIsClickable()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_TOP_VIEWS_HOVER:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_20

    :cond_18
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_TOP_VIEWS:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_20

    :cond_1b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_TOP_VIEWS_NOT_CLICKABLE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_20

    :cond_1e
    :goto_1e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_TOP_VIEWS_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_20
    return-object v0
.end method

.method public getCurr()I
    .registers 2

    .line 133
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->iCurrent:I

    return v0
.end method

.method public setCurr(I)V
    .registers 2
    .param p1, "nCurrent"  # I

    .line 128
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->iCurrent:I

    .line 129
    return-void
.end method

.method public setText2(Ljava/lang/String;)V
    .registers 4
    .param p1, "sText"  # Ljava/lang/String;

    .line 139
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->imgID:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 142
    goto :goto_b

    .line 140
    :catch_7
    move-exception v0

    .line 141
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Options/Button_Opt_MapModesNormal;->imgID:I

    .line 143
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_b
    return-void
.end method
