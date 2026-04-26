.class public Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;
.super Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;
.source "Button_Chatbox.java"


# instance fields
.field private iMenuElementID:I

.field private sExtraMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIIZ)V
    .registers 23
    .param p1, "nExtramessage"  # Ljava/lang/String;
    .param p2, "nElementID"  # I
    .param p3, "sText"  # Ljava/lang/String;
    .param p4, "iTextPositionX"  # I
    .param p5, "iPosX"  # I
    .param p6, "iPosY"  # I
    .param p7, "iWidth"  # I
    .param p8, "iHeight"  # I
    .param p9, "isClickable"  # Z

    .line 24
    move-object v12, p0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;-><init>()V

    .line 25
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD_SMALL:I

    iput v0, v12, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->fontID:I

    .line 26
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->init(Ljava/lang/String;IIIIIZZZZLage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;)V

    .line 27
    move v0, p2

    iput v0, v12, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->iMenuElementID:I

    .line 29
    move-object v1, p1

    iput-object v1, v12, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->sExtraMessage:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public drawButtonBGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 15
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 36
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3cbc6a7f  # 0.023f

    const v2, 0x3ee66666  # 0.45f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 37
    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->statsRectBG:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getPosXE()I

    move-result v0

    add-int v5, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getPosY()I

    move-result v0

    add-int v6, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getWidthE()I

    move-result v7

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getHeightE()I

    move-result v8

    const/high16 v9, 0x3f800000  # 1.0f

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 39
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BOX_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BOX_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BOX_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getIsHovered()Z

    move-result v4

    if-eqz v4, :cond_42

    const v4, 0x3eb33333  # 0.35f

    goto :goto_44

    :cond_42
    const/high16 v4, 0x3e000000  # 0.125f

    :goto_44
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 40
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getPosXE()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getWidthE()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getHeightE()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 42
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 43
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->statsRectBGBorder:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getPosXE()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getPosY()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getWidthE()I

    move-result v0

    add-int/lit8 v5, v0, -0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getHeightE()I

    move-result v0

    add-int/lit8 v6, v0, -0x2

    const/high16 v7, 0x3f800000  # 1.0f

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 45
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f266666  # 0.65f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 46
    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->statsRectBGBorder:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getPosXE()I

    move-result v0

    add-int v5, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getPosY()I

    move-result v0

    add-int v6, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getWidthE()I

    move-result v7

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getHeightE()I

    move-result v8

    const/high16 v9, 0x3f800000  # 1.0f

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 48
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 49
    return-void
.end method

.method public drawTextE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 21
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 53
    move-object/from16 v0, p0

    move/from16 v1, p4

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getVisibleM()Z

    move-result v2

    if-eqz v2, :cond_72

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboardActiveMenuElementID()I

    move-result v2

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->iMenuElementID:I

    if-ne v2, v3, :cond_72

    .line 66
    if-eqz v1, :cond_47

    .line 67
    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->fontID:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->keybMess:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getPosXE()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getTextPosElem()I

    move-result v3

    add-int/2addr v2, v3

    add-int v7, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getHeightE()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT_SMALL:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v8, v2, p3

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto :goto_9c

    .line 70
    :cond_47
    iget v11, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->fontID:I

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->keybMess:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getPosXE()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getTextPosElem()I

    move-result v3

    add-int/2addr v2, v3

    add-int v13, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getHeightE()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT_SMALL:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v14, v2, p3

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v15

    move-object/from16 v10, p1

    invoke-static/range {v10 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto :goto_9c

    .line 74
    :cond_72
    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->fontID:I

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->sExtraMessage:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getPosXE()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getTextPosElem()I

    move-result v5

    add-int/2addr v2, v5

    add-int v5, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getHeightE()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT_SMALL:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v2, v6

    add-int v6, v2, p3

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 77
    :goto_9c
    return-void
.end method

.method public getColorE(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 5
    .param p1, "isActive"  # Z

    .line 80
    if-eqz p1, :cond_5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_GRAY_LEFT_NS_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_22

    .line 81
    :cond_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getIsClickable()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Chatbox;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_GRAY_LEFT_NS_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_22

    :cond_14
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_GRAY_LEFT_NS_HOVER:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_22

    :cond_17
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f333333  # 0.7f

    const v2, 0x3f47ae14  # 0.78f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 80
    :goto_22
    return-object v0
.end method
