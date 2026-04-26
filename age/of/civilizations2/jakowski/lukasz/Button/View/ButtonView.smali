.class public Lage/of/civilizations2/jakowski/lukasz/Button/View/ButtonView;
.super Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;
.source "ButtonView.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIZ)V
    .registers 19
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "iWidth"  # I
    .param p5, "iHeight"  # I
    .param p6, "isClickable"  # Z

    .line 19
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;-><init>()V

    .line 20
    const/4 v2, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-super/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->init(Ljava/lang/String;IIIIIZZZZLage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;)V

    .line 21
    return-void
.end method


# virtual methods
.method public drawButtonBGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 13
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 27
    if-eqz p4, :cond_5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_view_right_h:I

    goto :goto_7

    :cond_5
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_view_right:I

    :goto_7
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/View/ButtonView;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/View/ButtonView;->getHeightE()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_view_right:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v4, v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/View/ButtonView;->getWidthE()I

    move-result v5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_view_right:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 28
    return-void
.end method

.method public drawTextE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 14
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 32
    const/high16 v0, 0x3f800000  # 1.0f

    const/high16 v1, 0x40000000  # 2.0f

    const/4 v2, 0x0

    const v3, 0x3f19999a  # 0.6f

    if-eqz p4, :cond_81

    .line 33
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 34
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/View/ButtonView;->getTextE()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/View/ButtonView;->getPosXE()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/View/ButtonView;->getTextPosElem()I

    move-result v6

    if-gez v6, :cond_38

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/View/ButtonView;->getWidthE()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/View/ButtonView;->getTextWidthU()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v3

    div-float/2addr v7, v1

    float-to-int v7, v7

    sub-int/2addr v6, v7

    goto :goto_3c

    :cond_38
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/View/ButtonView;->getTextPosElem()I

    move-result v6

    :goto_3c
    add-int/2addr v5, v6

    add-int/2addr v5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/View/ButtonView;->getPosY()I

    move-result v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->topBar:I

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/View/ButtonView;->getHeightE()I

    move-result v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->topBar:I

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x2

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    mul-float v7, v7, v3

    div-float/2addr v7, v1

    float-to-int v1, v7

    sub-int/2addr v6, v1

    add-int/2addr v6, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button/View/ButtonView;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-static {p1, v4, v5, v6, v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 35
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    goto :goto_f7

    .line 37
    :cond_81
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 38
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/View/ButtonView;->getTextE()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/View/ButtonView;->getPosXE()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/View/ButtonView;->getTextPosElem()I

    move-result v6

    if-gez v6, :cond_af

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/View/ButtonView;->getWidthE()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/View/ButtonView;->getTextWidthU()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v3

    div-float/2addr v7, v1

    float-to-int v7, v7

    sub-int/2addr v6, v7

    goto :goto_b3

    :cond_af
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/View/ButtonView;->getTextPosElem()I

    move-result v6

    :goto_b3
    add-int/2addr v5, v6

    add-int/2addr v5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/View/ButtonView;->getPosY()I

    move-result v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->topBar:I

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/View/ButtonView;->getHeightE()I

    move-result v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->topBar:I

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x2

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v7, v7

    mul-float v7, v7, v3

    div-float/2addr v7, v1

    float-to-int v1, v7

    sub-int/2addr v6, v1

    add-int/2addr v6, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button/View/ButtonView;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-static {p1, v4, v5, v6, v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 39
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 41
    :goto_f7
    return-void
.end method

.method public final getColorE(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"  # Z

    .line 45
    if-eqz p1, :cond_5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_TOP_VIEWS_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_19

    :cond_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/View/ButtonView;->getIsClickable()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/View/ButtonView;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_TOP_VIEWS_HOVER:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_19

    :cond_14
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_TOP_VIEWS:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_19

    :cond_17
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_TOP_VIEWS_NOT_CLICKABLE:Lcom/badlogic/gdx/graphics/Color;

    :goto_19
    return-object v0
.end method
