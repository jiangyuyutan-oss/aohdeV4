.class public Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;
.super Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;
.source "TextTop_Graph.java"


# static fields
.field public static final ANIMATION_T:I = 0x3e8

.field public static final EXTRA_WIDTH_BOX_PADDING:I

.field protected static animationState:I

.field protected static lTimeAnimation:J


# instance fields
.field public WIDTH_LAST_TURN_UPDATE:I

.field public fontID2:I

.field public graph2:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;

.field public iGraphPlayerID:I

.field public iGraphTurnID:I

.field public iTextHeight:I

.field public iTextHeight2:I

.field public iTextPosX:I

.field public iTextWidth:I

.field public iTextWidth2:I

.field public imageID:I

.field public lastValue:F

.field public sText:Ljava/lang/String;

.field public sText2:Ljava/lang/String;

.field public sparksAnimationTop:Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;

.field public textPosY:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v0, v0, 0x3

    sput v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->EXTRA_WIDTH_BOX_PADDING:I

    .line 36
    const-wide/16 v0, 0x0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->lTimeAnimation:J

    .line 37
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->animationState:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IILage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;)V
    .registers 22
    .param p1, "imageID"  # I
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "sText2"  # Ljava/lang/String;
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "graphType"  # Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    .line 53
    move-object v1, p0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->sText:Ljava/lang/String;

    .line 22
    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->sText2:Ljava/lang/String;

    .line 24
    const/4 v0, -0x1

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iTextWidth:I

    .line 25
    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iTextHeight:I

    .line 28
    const/4 v2, 0x1

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->fontID2:I

    .line 29
    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iTextWidth2:I

    .line 30
    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iTextHeight2:I

    .line 40
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->sparksAnimationTop:Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;

    .line 44
    const/4 v0, 0x0

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iGraphTurnID:I

    .line 45
    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iGraphPlayerID:I

    .line 49
    const v2, -0x368c6e9b

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->lastValue:F

    .line 240
    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->WIDTH_LAST_TURN_UPDATE:I

    .line 54
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 57
    :try_start_2c
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;

    const-string v3, "A"

    const-string v4, "B"

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getButtonHeight()I

    move-result v2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v2, v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v12, 0x0

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    const/4 v14, 0x1

    move-object v2, v0

    move-object/from16 v11, p6

    invoke-direct/range {v2 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZILage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;ZIZ)V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->graph2:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4e} :catch_4f

    .line 60
    goto :goto_53

    .line 58
    :catch_4f
    move-exception v0

    .line 59
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 62
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_53
    move/from16 v2, p1

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->imageID:I

    .line 63
    move/from16 v3, p4

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->setPosX(I)V

    .line 64
    move/from16 v4, p5

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->setPosY(I)V

    .line 66
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getButtonHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->setHeightE(I)V

    .line 68
    sget v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->EXTRA_WIDTH_BOX_PADDING:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getImageID()I

    move-result v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    add-int/2addr v0, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iTextPosX:I

    .line 69
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->fontID:I

    .line 70
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_REGULAR_SMALL:I

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->fontID2:I

    .line 72
    move-object/from16 v5, p2

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->setTextE(Ljava/lang/String;)V

    .line 73
    move-object/from16 v6, p3

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->setText2(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getHeightE()I

    move-result v0

    iget v7, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iTextHeight:I

    iget v8, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iTextHeight2:I

    add-int/2addr v7, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v7, v8

    sub-int/2addr v0, v7

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->textPosY:I

    .line 76
    return-void
.end method

.method public static final getButtonHeight()I
    .registers 2

    .line 79
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_2;->topStatsHeight:I

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getButtonPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public static final getButtonPadding()I
    .registers 1

    .line 83
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    return v0
.end method


# virtual methods
.method public drawE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 26
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 93
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getPosXE()I

    move-result v0

    add-int v16, v0, p2

    .line 94
    .end local p2  # "iTranslateX":I
    .local v16, "iTranslateX":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getPosY()I

    move-result v0

    add-int v17, v0, p3

    .line 97
    .end local p3  # "iTranslateY":I
    .local v17, "iTranslateY":I
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_2;->MENU_AOC_1:Z

    if-nez v0, :cond_305

    .line 98
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_2;->btnCLR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const v1, 0x3f266666  # 0.65f

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 100
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientFull:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getWidthE()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getHeightE()I

    move-result v6

    move-object/from16 v2, p1

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const v1, 0x3e99999a  # 0.3f

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 103
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientXY:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getWidthE()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getHeightE()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 106
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v9, 0x0

    const/high16 v10, 0x3e800000  # 0.25f

    invoke-direct {v0, v9, v9, v9, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 107
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientXY:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getWidthE()I

    move-result v5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v0, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 108
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientXY:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getHeightE()I

    move-result v0

    add-int v0, v17, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v4, v0, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getWidthE()I

    move-result v5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v0, 0x2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 110
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v9, v9, v9, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 111
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->statsRectBGBorder:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getWidthE()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getHeightE()I

    move-result v6

    const/high16 v7, 0x3f800000  # 1.0f

    move-object/from16 v1, p1

    move/from16 v4, v17

    invoke-static/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 113
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f000000  # 0.5f

    invoke-direct {v0, v9, v9, v9, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 114
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientFull:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getHeightE()I

    move-result v0

    add-int v0, v17, v0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getWidthE()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 115
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientFull:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getWidthE()I

    move-result v5

    move/from16 v4, v17

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 117
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_2;->btnCLR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const v1, 0x3f59999a  # 0.85f

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 119
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientFull:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getHeightE()I

    move-result v0

    add-int v0, v17, v0

    add-int/lit8 v4, v0, -0x2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getWidthE()I

    move-result v5

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 120
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientFull:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    add-int/lit8 v4, v17, 0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getWidthE()I

    move-result v5

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 123
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f0ccccd  # 0.55f

    invoke-direct {v0, v9, v9, v9, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 124
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientFull:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getHeightE()I

    move-result v0

    add-int v0, v17, v0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getWidthE()I

    move-result v5

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 125
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientFull:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getWidthE()I

    move-result v5

    move/from16 v4, v17

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 127
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_2;->btnCLR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const v1, 0x3f666666  # 0.9f

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 129
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientFull:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getHeightE()I

    move-result v0

    add-int v0, v17, v0

    add-int/lit8 v4, v0, -0x2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getWidthE()I

    move-result v5

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 130
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientFull:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    add-int/lit8 v4, v17, 0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getWidthE()I

    move-result v5

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 132
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 134
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getIsHovered()Z

    move-result v0

    const/high16 v8, 0x3f800000  # 1.0f

    if-nez v0, :cond_186

    if-nez v13, :cond_186

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getIsActiveButton()Z

    move-result v0

    if-eqz v0, :cond_1e4

    .line 135
    :cond_186
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f4ccccd  # 0.8f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 136
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientXY:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getWidthE()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getHeightE()I

    move-result v6

    move-object/from16 v2, p1

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 138
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sparksColors:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 139
    iget-object v1, v15, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->sparksAnimationTop:Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getWidthE()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getHeightE()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 141
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v9, v9, v9, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 142
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->statsRectBGBorder:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getWidthE()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getHeightE()I

    move-result v6

    const/high16 v7, 0x3f800000  # 1.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 143
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 147
    :cond_1e4
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getIsClickable()Z

    move-result v0

    if-eqz v0, :cond_305

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_305

    sget v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->animationState:I

    if-ltz v0, :cond_305

    .line 148
    const-wide/16 v9, 0x3e8

    const/high16 v1, 0x447a0000  # 1000.0f

    if-nez v0, :cond_266

    .line 149
    sget-wide v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    sget-wide v4, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->lTimeAnimation:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    mul-float v0, v0, v8

    div-float/2addr v0, v1

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 151
    .local v0, "drawPerc":F
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 152
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int v3, v16, v2

    add-int/lit8 v4, v17, 0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getWidthE()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v5, v2

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 153
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int v3, v16, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getHeightE()I

    move-result v2

    add-int v2, v17, v2

    add-int/lit8 v4, v2, -0x2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getWidthE()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v5, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 155
    sget-wide v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->lTimeAnimation:J

    sget-wide v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    sub-long/2addr v3, v9

    cmp-long v5, v1, v3

    if-gez v5, :cond_264

    .line 156
    sget v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->animationState:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->animationState:I

    .line 157
    sget-wide v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    sput-wide v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->lTimeAnimation:J

    .line 159
    .end local v0  # "drawPerc":F
    :cond_264
    goto/16 :goto_300

    .line 161
    :cond_266
    sget-wide v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    sget-wide v4, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->lTimeAnimation:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    mul-float v0, v0, v8

    div-float/2addr v0, v1

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 163
    .restart local v0  # "drawPerc":F
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 164
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int v2, v16, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getWidthE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v3, v3

    add-int/2addr v3, v2

    add-int/lit8 v4, v17, 0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getWidthE()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getWidthE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, v0

    float-to-int v5, v5

    sub-int v5, v2, v5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 165
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int v2, v16, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getWidthE()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v3, v3

    add-int/2addr v3, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getHeightE()I

    move-result v2

    add-int v2, v17, v2

    add-int/lit8 v4, v2, -0x2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getWidthE()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getWidthE()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, v0

    float-to-int v5, v5

    sub-int v5, v2, v5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 167
    sget-wide v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->lTimeAnimation:J

    sget-wide v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    sub-long/2addr v3, v9

    cmp-long v5, v1, v3

    if-gez v5, :cond_300

    .line 168
    const/4 v1, 0x0

    sput v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->animationState:I

    .line 169
    sget-wide v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    sput-wide v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->lTimeAnimation:J

    .line 173
    .end local v0  # "drawPerc":F
    :cond_300
    :goto_300
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 177
    :cond_305
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getImageID()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->EXTRA_WIDTH_BOX_PADDING:I

    add-int v1, v16, v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getHeightE()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getImageID()I

    move-result v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int v2, v17, v2

    invoke-virtual {v0, v14, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 179
    iget v2, v15, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->fontID:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getTextToDrawElem()Ljava/lang/String;

    move-result-object v3

    iget v0, v15, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iTextPosX:I

    add-int v4, v16, v0

    iget v0, v15, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->textPosY:I

    add-int v5, v17, v0

    invoke-virtual {v15, v13}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 180
    iget v2, v15, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->fontID2:I

    iget-object v3, v15, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->sText2:Ljava/lang/String;

    iget v0, v15, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iTextPosX:I

    add-int v4, v16, v0

    iget v0, v15, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->textPosY:I

    add-int v0, v17, v0

    iget v1, v15, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iTextHeight:I

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int v5, v0, v1

    invoke-virtual {v15, v13}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getColor2(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 183
    iget v0, v15, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iGraphTurnID:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    if-ne v0, v1, :cond_368

    iget v0, v15, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iGraphPlayerID:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    if-eq v0, v1, :cond_39e

    .line 184
    :cond_368
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    iput v0, v15, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iGraphTurnID:I

    .line 185
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    iput v0, v15, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iGraphPlayerID:I

    .line 188
    :try_start_370
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph$1;

    const-string v3, "A"

    const-string v4, "B"

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getButtonHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v8, v1, v2

    const/4 v9, 0x1

    const/4 v10, 0x1

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;->PLAYER_BALANCE:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;

    const/4 v12, 0x0

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    const/16 v19, 0x1

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v13, v18

    move/from16 v14, v19

    invoke-direct/range {v1 .. v14}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;Ljava/lang/String;Ljava/lang/String;IIIIZILage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2$GraphType;ZIZ)V

    iput-object v0, v15, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->graph2:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;
    :try_end_399
    .catch Ljava/lang/Exception; {:try_start_370 .. :try_end_399} :catch_39a

    .line 205
    goto :goto_39e

    .line 203
    :catch_39a
    move-exception v0

    .line 204
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 209
    .end local v0  # "ex":Ljava/lang/Exception;
    :cond_39e
    :goto_39e
    :try_start_39e
    iget-object v1, v15, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->graph2:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getWidthE()I

    move-result v0

    add-int v0, v16, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v0, v2

    iget-object v2, v15, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->graph2:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getWidthE()I

    move-result v2

    sub-int v3, v0, v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int v4, v17, v0

    move-object/from16 v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->drawE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    :try_end_3be
    .catch Ljava/lang/Exception; {:try_start_39e .. :try_end_3be} :catch_3bf

    .line 212
    goto :goto_3c3

    .line 210
    :catch_3bf
    move-exception v0

    .line 211
    .restart local v0  # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 213
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_3c3
    return-void
.end method

.method public final extraWidth()I
    .registers 3

    .line 288
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->imageID:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->EXTRA_WIDTH_BOX_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->graph2:Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graphs/Graph2/Graph2;->getWidthE()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"  # Z

    .line 216
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Colors;->getColorTopStats(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method protected getColor2(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"  # Z

    .line 220
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Colors;->TEXT_TOP_BOT:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getImageID()I
    .registers 2

    .line 224
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Images;->topGold()I

    move-result v0

    return v0
.end method

.method public getIsActiveButton()Z
    .registers 2

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public final getTextE()Ljava/lang/String;
    .registers 2

    .line 237
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextHeight()I
    .registers 2

    .line 298
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iTextHeight:I

    return v0
.end method

.method public getTextToDrawElem()Ljava/lang/String;
    .registers 2

    .line 232
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextWidthU()I
    .registers 2

    .line 293
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iTextWidth:I

    return v0
.end method

.method public setIsHovered(Z)V
    .registers 4
    .param p1, "isHovered"  # Z

    .line 303
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setIsHovered(Z)V

    .line 305
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->lTimeAnimation:J

    .line 306
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->animationState:I

    .line 307
    return-void
.end method

.method public setText2(Ljava/lang/String;)V
    .registers 5
    .param p1, "sText2"  # Ljava/lang/String;

    .line 267
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->sText2:Ljava/lang/String;

    .line 270
    :try_start_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->fontID2:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 272
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iTextWidth2:I

    .line 273
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->height:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iTextHeight2:I

    .line 275
    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iTextWidth2:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->extraWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_36

    .line 276
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iTextWidth2:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->extraWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->setWidthE(I)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_36} :catch_37

    .line 280
    :cond_36
    goto :goto_3b

    .line 278
    :catch_37
    move-exception v0

    .line 279
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 281
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_3b
    return-void
.end method

.method public setTextE(Ljava/lang/String;)V
    .registers 5
    .param p1, "sText"  # Ljava/lang/String;

    .line 244
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->sText:Ljava/lang/String;

    .line 247
    :try_start_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 249
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iTextWidth:I

    .line 250
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->height:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iTextHeight:I

    .line 252
    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iTextWidth:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->extraWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_36

    .line 253
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iTextWidth:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->extraWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->setWidthE(I)V

    .line 256
    :cond_36
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->WIDTH_LAST_TURN_UPDATE:I

    if-le v0, v1, :cond_50

    .line 257
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iTextWidth:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->iTextWidth2:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->extraWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->setWidthE(I)V

    .line 258
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->WIDTH_LAST_TURN_UPDATE:I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_50} :catch_51

    .line 262
    :cond_50
    goto :goto_55

    .line 260
    :catch_51
    move-exception v0

    .line 261
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 263
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_55
    return-void
.end method

.method public final setWidthOfButton()V
    .registers 2

    .line 284
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->extraWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextTop_Graph;->setWidthE(I)V

    .line 285
    return-void
.end method
