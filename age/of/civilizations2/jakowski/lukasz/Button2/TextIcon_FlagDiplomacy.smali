.class public Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;
.super Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;
.source "TextIcon_FlagDiplomacy.java"


# instance fields
.field public civID:I

.field public iconHeight:I

.field public iconWidth:I

.field public maxIconWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 18
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "civID"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "nWidth"  # I

    .line 21
    move-object v11, p0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;-><init>()V

    .line 22
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    iput v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->fontID:I

    .line 23
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getButtonHeight()I

    move-result v6

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->init(Ljava/lang/String;IIIIIZZZZ)V

    .line 25
    move v0, p2

    iput v0, v11, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->civID:I

    .line 27
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flagDiplomacyOver:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    iput v1, v11, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->iconWidth:I

    .line 28
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flagDiplomacyOver:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    iput v1, v11, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->iconHeight:I

    .line 30
    iget v1, v11, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->iconWidth:I

    iput v1, v11, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->maxIconWidth:I

    .line 32
    const/4 v1, 0x0

    .line 33
    .local v1, "tWMax":I
    :goto_3b
    iget v2, v11, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->iTextWidth:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getWidthE()I

    move-result v3

    iget v4, v11, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->maxIconWidth:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_8b

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getTextE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_8b

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_8b

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getTextE()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getTextE()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    const/4 v6, 0x1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->setTextE(Ljava/lang/String;)V

    goto :goto_3b

    .line 36
    :cond_8b
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIZ)V
    .registers 21
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "civID"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "nWidth"  # I
    .param p6, "crop"  # Z

    .line 38
    move-object v12, p0

    move-object v13, p1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;-><init>()V

    .line 39
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    iput v0, v12, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->fontID:I

    .line 40
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getButtonHeight()I

    move-result v7

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->init(Ljava/lang/String;IIIIIZZZZ)V

    .line 42
    move/from16 v1, p2

    iput v1, v12, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->civID:I

    .line 44
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->flagDiplomacyOver:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    iput v0, v12, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->iconWidth:I

    .line 45
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->flagDiplomacyOver:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    iput v0, v12, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->iconHeight:I

    .line 47
    iget v0, v12, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->iconWidth:I

    iput v0, v12, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->maxIconWidth:I

    .line 49
    const/4 v0, 0x0

    if-eqz p6, :cond_91

    .line 50
    const/4 v2, 0x0

    .line 51
    .local v2, "tWMax":I
    :goto_41
    iget v3, v12, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->iTextWidth:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getWidthE()I

    move-result v4

    iget v5, v12, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->maxIconWidth:I

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_90

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getTextE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_90

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x64

    if-ge v2, v3, :cond_90

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getTextE()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getTextE()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    const/4 v6, 0x1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->setTextE(Ljava/lang/String;)V

    goto :goto_41

    .line 54
    .end local v2  # "tWMax":I
    :cond_90
    goto :goto_c4

    .line 56
    :cond_91
    iput-object v13, v12, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->sText:Ljava/lang/String;

    .line 59
    if-eqz v13, :cond_bb

    :try_start_95
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_bb

    .line 60
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getTextE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 62
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, v12, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->iTextWidth:I

    .line 63
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int v0, v0

    iput v0, v12, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->iTextHeight:I

    goto :goto_bf

    .line 65
    :cond_bb
    iput v0, v12, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->iTextHeight:I

    iput v0, v12, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->iTextWidth:I
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_bf} :catch_c0

    .line 69
    :goto_bf
    goto :goto_c4

    .line 67
    :catch_c0
    move-exception v0

    .line 68
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 71
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_c4
    return-void
.end method

.method public static final getBoxAlpha(ZZZ)F
    .registers 4
    .param p0, "clickable"  # Z
    .param p1, "isHovered"  # Z
    .param p2, "isActive"  # Z

    .line 103
    if-eqz p0, :cond_11

    if-eqz p2, :cond_8

    const v0, 0x3f59999a  # 0.85f

    goto :goto_14

    :cond_8
    if-eqz p1, :cond_e

    const v0, 0x3f333333  # 0.7f

    goto :goto_14

    :cond_e
    const/high16 v0, 0x3f000000  # 0.5f

    goto :goto_14

    :cond_11
    const v0, 0x3e4ccccd  # 0.2f

    :goto_14
    return v0
.end method

.method public static getButtonHeight()I
    .registers 2

    .line 74
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->flagDiplomacyOver:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private final getImageScale(I)F
    .registers 4
    .param p1, "iImageID"  # I

    .line 135
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v0, v0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public drawButtonBGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 79
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getIsHovered()Z

    move-result v4

    if-nez v4, :cond_1a

    if-eqz p4, :cond_17

    goto :goto_1a

    :cond_17
    const/high16 v4, 0x3f000000  # 0.5f

    goto :goto_1d

    :cond_1a
    :goto_1a
    const v4, 0x3f19999a  # 0.6f

    :goto_1d
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 80
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->statsRectBG:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getPosXE()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getWidthE()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getHeightE()I

    move-result v5

    const/high16 v6, 0x3f800000  # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 81
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 83
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3e99999a  # 0.3f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 84
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->statsRectBG:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getPosXE()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->maxIconWidth:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getHeightE()I

    move-result v5

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 85
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 87
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon;->getColor_gradientXY()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 88
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientXY:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getPosXE()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->maxIconWidth:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getHeightE()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 90
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon;->getColor_gradientFull()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 91
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientFull:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getPosXE()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->maxIconWidth:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 92
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientFull:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getPosXE()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getHeightE()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    add-int v3, v1, p3

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->maxIconWidth:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 93
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 95
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getIsHovered()Z

    move-result v0

    if-nez v0, :cond_fb

    if-eqz p4, :cond_127

    .line 96
    :cond_fb
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 97
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->statsRectBGBorder:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getPosXE()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getWidthE()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getHeightE()I

    move-result v5

    const/high16 v6, 0x3f800000  # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 98
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 100
    :cond_127
    return-void
.end method

.method public drawTextE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 14
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 129
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getPosXE()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getPosY()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->civID:I

    invoke-static {p1, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawFlagDiplomacyGovernment_Wave(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 131
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->fontID:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getTextToDrawElem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getPosXE()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->maxIconWidth:I

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v0, v1

    add-int v6, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getHeightE()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->iTextHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v7, v0, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 132
    return-void
.end method

.method public getColorE(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"  # Z

    .line 140
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Colors;->getColorButtonHover(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public getCurr()I
    .registers 2

    .line 145
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->civID:I

    return v0
.end method

.method public setCurr(I)V
    .registers 2
    .param p1, "nCurrent"  # I

    .line 150
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->civID:I

    .line 151
    return-void
.end method

.method public setTextE(Ljava/lang/String;)V
    .registers 8
    .param p1, "sText"  # Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->sText:Ljava/lang/String;

    .line 158
    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    :try_start_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2b

    .line 159
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getTextE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 161
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->iTextWidth:I

    .line 162
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->iTextHeight:I

    goto :goto_2f

    .line 164
    :cond_2b
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->iTextHeight:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->iTextWidth:I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2f} :catch_30

    .line 168
    :goto_2f
    goto :goto_31

    .line 166
    :catch_30
    move-exception v1

    .line 171
    :goto_31
    const/4 v1, 0x0

    .line 172
    .local v1, "tWMax":I
    :goto_32
    :try_start_32
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->iTextWidth:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getWidthE()I

    move-result v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->maxIconWidth:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_81

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getTextE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_81

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_81

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getTextE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->getTextE()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextIcon_FlagDiplomacy;->setTextE(Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_80} :catch_82

    goto :goto_32

    .line 177
    .end local v1  # "tWMax":I
    :cond_81
    goto :goto_83

    .line 175
    :catch_82
    move-exception v0

    .line 178
    :goto_83
    return-void
.end method
