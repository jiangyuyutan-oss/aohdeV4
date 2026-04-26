.class public Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;
.super Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;
.source "TextTop.java"


# static fields
.field public static final ANIMATION_T:I = 0x3e8

.field public static final EXTRA_WIDTH_BOX_PADDING:I

.field protected static animationState:I

.field protected static lTimeAnimation:J


# instance fields
.field public WIDTH_LAST_TURN_UPDATE:I

.field public fontID2:I

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

    .line 18
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v0, v0, 0x3

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->EXTRA_WIDTH_BOX_PADDING:I

    .line 35
    const-wide/16 v0, 0x0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->lTimeAnimation:J

    .line 36
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->animationState:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .registers 9
    .param p1, "imageID"  # I
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "sText2"  # Ljava/lang/String;
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I

    .line 47
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->sText:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->sText2:Ljava/lang/String;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->iTextWidth:I

    .line 24
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->iTextHeight:I

    .line 27
    const/4 v1, 0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->fontID2:I

    .line 28
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->iTextWidth2:I

    .line 29
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->iTextHeight2:I

    .line 39
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->sparksAnimationTop:Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;

    .line 43
    const v0, -0x368c6e9b

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->lastValue:F

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->WIDTH_LAST_TURN_UPDATE:I

    .line 48
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 50
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->imageID:I

    .line 51
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->setPosX(I)V

    .line 52
    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->setPosY(I)V

    .line 54
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getButtonHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->setHeightE(I)V

    .line 56
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->EXTRA_WIDTH_BOX_PADDING:I

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->iTextPosX:I

    .line 57
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->fontID:I

    .line 58
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_REGULAR_SMALL:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->fontID2:I

    .line 60
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->setTextE(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->setText2(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getHeightE()I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->iTextHeight:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->iTextHeight2:I

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->textPosY:I

    .line 64
    return-void
.end method

.method public static final getButtonHeight()I
    .registers 2

    .line 67
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_2;->topStatsHeight:I

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getButtonPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public static final getButtonPadding()I
    .registers 1

    .line 71
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    return v0
.end method


# virtual methods
.method public drawE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 24
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 77
    move-object/from16 v6, p0

    move-object/from16 v15, p1

    move/from16 v14, p4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getPosXE()I

    move-result v0

    add-int v16, v0, p2

    .line 78
    .end local p2  # "iTranslateX":I
    .local v16, "iTranslateX":I
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getPosY()I

    move-result v0

    add-int v17, v0, p3

    .line 80
    .end local p3  # "iTranslateY":I
    .local v17, "iTranslateY":I
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_2;->MENU_AOC_1:Z

    if-nez v0, :cond_339

    .line 81
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_2;->btnCLR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const v1, 0x3f266666  # 0.65f

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 83
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientFull:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getWidthE()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getHeightE()I

    move-result v5

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const v1, 0x3e99999a  # 0.3f

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 86
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientXY:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getWidthE()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getHeightE()I

    move-result v5

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 89
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v5, 0x0

    const/high16 v4, 0x3e800000  # 0.25f

    invoke-direct {v0, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 90
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientXY:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getWidthE()I

    move-result v11

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v12, v0, 0x2

    const/4 v13, 0x0

    const/4 v0, 0x1

    move-object/from16 v8, p1

    move/from16 v9, v16

    move/from16 v10, v17

    move v3, v14

    move v14, v0

    invoke-virtual/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 91
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientXY:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getHeightE()I

    move-result v1

    add-int v1, v17, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v7, v1, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getWidthE()I

    move-result v8

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v9, v1, 0x2

    move-object/from16 v1, p1

    move/from16 v2, v16

    move v14, v3

    move v3, v7

    const/high16 v7, 0x3e800000  # 0.25f

    move v4, v8

    const/4 v13, 0x0

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 93
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v13, v13, v13, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 94
    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->statsRectBGBorder:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getWidthE()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getHeightE()I

    move-result v12

    const/high16 v0, 0x3f800000  # 1.0f

    move-object/from16 v7, p1

    move/from16 v9, v16

    const/4 v5, 0x0

    move v13, v0

    invoke-static/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 96
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f000000  # 0.5f

    invoke-direct {v0, v5, v5, v5, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 97
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientFull:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getHeightE()I

    move-result v1

    add-int v1, v17, v1

    add-int/lit8 v3, v1, -0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getWidthE()I

    move-result v4

    const/4 v7, 0x1

    move-object/from16 v1, p1

    const/4 v8, 0x0

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 98
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientFull:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getWidthE()I

    move-result v4

    const/4 v5, 0x1

    move/from16 v3, v17

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 100
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_2;->btnCLR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const v1, 0x3f59999a  # 0.85f

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 102
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientFull:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getHeightE()I

    move-result v1

    add-int v1, v17, v1

    add-int/lit8 v3, v1, -0x2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getWidthE()I

    move-result v4

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 103
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientFull:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    add-int/lit8 v3, v17, 0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getWidthE()I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 106
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f0ccccd  # 0.55f

    invoke-direct {v0, v8, v8, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 107
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientFull:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getHeightE()I

    move-result v1

    add-int v1, v17, v1

    add-int/lit8 v3, v1, -0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getWidthE()I

    move-result v4

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 108
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientFull:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getWidthE()I

    move-result v4

    move/from16 v3, v17

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 110
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_2;->btnCLR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const v1, 0x3f666666  # 0.9f

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 112
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientFull:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getHeightE()I

    move-result v1

    add-int v1, v17, v1

    add-int/lit8 v3, v1, -0x2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getWidthE()I

    move-result v4

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 113
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientFull:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    add-int/lit8 v3, v17, 0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getWidthE()I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 115
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 117
    move-object/from16 v0, p0

    move/from16 v3, v17

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->drawExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 119
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getIsHovered()Z

    move-result v0

    const/high16 v13, 0x3f800000  # 1.0f

    if-nez v0, :cond_1b3

    if-nez v14, :cond_1b3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getIsActiveButton()Z

    move-result v0

    if-eqz v0, :cond_1b0

    goto :goto_1b3

    :cond_1b0
    const/high16 v1, 0x3f800000  # 1.0f

    goto :goto_218

    .line 120
    :cond_1b3
    :goto_1b3
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f4ccccd  # 0.8f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 121
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientXY:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getWidthE()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getHeightE()I

    move-result v5

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 123
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sparksColors:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 124
    iget-object v0, v6, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->sparksAnimationTop:Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getWidthE()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getHeightE()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Sparks/SparksAnimation;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 126
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v8, v8, v8, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 127
    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->statsRectBGBorder:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getWidthE()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getHeightE()I

    move-result v12

    const/high16 v0, 0x3f800000  # 1.0f

    move-object/from16 v7, p1

    move/from16 v9, v16

    move/from16 v10, v17

    const/high16 v1, 0x3f800000  # 1.0f

    move v13, v0

    invoke-static/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 128
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 132
    :goto_218
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getIsClickable()Z

    move-result v0

    if-eqz v0, :cond_339

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_339

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->animationState:I

    if-ltz v0, :cond_339

    .line 133
    const-wide/16 v7, 0x3e8

    const/high16 v2, 0x447a0000  # 1000.0f

    if-nez v0, :cond_29a

    .line 134
    sget-wide v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    sget-wide v9, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->lTimeAnimation:J

    sub-long/2addr v3, v9

    long-to-float v0, v3

    mul-float v0, v0, v1

    div-float/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 136
    .local v9, "drawPerc":F
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 137
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int v2, v16, v1

    add-int/lit8 v3, v17, 0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getWidthE()I

    move-result v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    int-to-float v1, v1

    mul-float v1, v1, v9

    float-to-int v4, v1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 138
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int v2, v16, v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getHeightE()I

    move-result v1

    add-int v1, v17, v1

    add-int/lit8 v3, v1, -0x2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getWidthE()I

    move-result v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    int-to-float v1, v1

    mul-float v1, v1, v9

    float-to-int v4, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 140
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->lTimeAnimation:J

    sget-wide v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    sub-long/2addr v2, v7

    cmp-long v4, v0, v2

    if-gez v4, :cond_298

    .line 141
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->animationState:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->animationState:I

    .line 142
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->lTimeAnimation:J

    .line 144
    .end local v9  # "drawPerc":F
    :cond_298
    goto/16 :goto_334

    .line 146
    :cond_29a
    sget-wide v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    sget-wide v9, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->lTimeAnimation:J

    sub-long/2addr v3, v9

    long-to-float v0, v3

    mul-float v0, v0, v1

    div-float/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 148
    .restart local v9  # "drawPerc":F
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 149
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int v1, v16, v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getWidthE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v9

    float-to-int v2, v2

    add-int/2addr v2, v1

    add-int/lit8 v3, v17, 0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getWidthE()I

    move-result v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getWidthE()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, v9

    float-to-int v4, v4

    sub-int v4, v1, v4

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 150
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int v1, v16, v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getWidthE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v9

    float-to-int v2, v2

    add-int/2addr v2, v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getHeightE()I

    move-result v1

    add-int v1, v17, v1

    add-int/lit8 v3, v1, -0x2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getWidthE()I

    move-result v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getWidthE()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, v9

    float-to-int v4, v4

    sub-int v4, v1, v4

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 152
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->lTimeAnimation:J

    sget-wide v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    sub-long/2addr v2, v7

    cmp-long v4, v0, v2

    if-gez v4, :cond_334

    .line 153
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->animationState:I

    .line 154
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->lTimeAnimation:J

    .line 158
    .end local v9  # "drawPerc":F
    :cond_334
    :goto_334
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 162
    :cond_339
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getImageID()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->EXTRA_WIDTH_BOX_PADDING:I

    add-int v1, v16, v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getHeightE()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getImageID()I

    move-result v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int v2, v17, v2

    invoke-virtual {v0, v15, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 164
    iget v1, v6, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->fontID:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getTextToDrawElem()Ljava/lang/String;

    move-result-object v2

    iget v0, v6, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->iTextPosX:I

    add-int v3, v16, v0

    iget v0, v6, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->textPosY:I

    add-int v4, v17, v0

    invoke-virtual {v6, v14}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 165
    iget v1, v6, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->fontID2:I

    iget-object v2, v6, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->sText2:Ljava/lang/String;

    iget v0, v6, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->iTextPosX:I

    add-int v3, v16, v0

    iget v0, v6, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->textPosY:I

    add-int v0, v17, v0

    iget v4, v6, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->iTextHeight:I

    add-int/2addr v0, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v4, v0

    invoke-virtual {v6, v14}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getColor2(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 166
    return-void
.end method

.method public drawExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 6
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 170
    return-void
.end method

.method public final extraWidth()I
    .registers 3

    .line 245
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->imageID:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->EXTRA_WIDTH_BOX_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"  # Z

    .line 173
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Colors;->getColorTopStats(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method protected getColor2(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"  # Z

    .line 177
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Colors;->TEXT_TOP_BOT:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getImageID()I
    .registers 2

    .line 181
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->imageID:I

    return v0
.end method

.method public getIsActiveButton()Z
    .registers 2

    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public final getTextE()Ljava/lang/String;
    .registers 2

    .line 194
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextHeight()I
    .registers 2

    .line 255
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->iTextHeight:I

    return v0
.end method

.method public getTextToDrawElem()Ljava/lang/String;
    .registers 2

    .line 189
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextWidthU()I
    .registers 2

    .line 250
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->iTextWidth:I

    return v0
.end method

.method public setIsHovered(Z)V
    .registers 4
    .param p1, "isHovered"  # Z

    .line 260
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setIsHovered(Z)V

    .line 262
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->lTimeAnimation:J

    .line 263
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->animationState:I

    .line 264
    return-void
.end method

.method public setText2(Ljava/lang/String;)V
    .registers 5
    .param p1, "sText2"  # Ljava/lang/String;

    .line 224
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->sText2:Ljava/lang/String;

    .line 227
    :try_start_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->fontID2:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 229
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->iTextWidth2:I

    .line 230
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->height:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->iTextHeight2:I

    .line 232
    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->iTextWidth2:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->extraWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_36

    .line 233
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->iTextWidth2:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->extraWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->setWidthE(I)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_36} :catch_37

    .line 237
    :cond_36
    goto :goto_3b

    .line 235
    :catch_37
    move-exception v0

    .line 236
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 238
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_3b
    return-void
.end method

.method public setTextE(Ljava/lang/String;)V
    .registers 5
    .param p1, "sText"  # Ljava/lang/String;

    .line 201
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->sText:Ljava/lang/String;

    .line 204
    :try_start_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 206
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->iTextWidth:I

    .line 207
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->glyphLayout:Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->height:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->iTextHeight:I

    .line 209
    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->iTextWidth:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->extraWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_36

    .line 210
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->iTextWidth:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->extraWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->setWidthE(I)V

    .line 213
    :cond_36
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->WIDTH_LAST_TURN_UPDATE:I

    if-le v0, v1, :cond_50

    .line 214
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->iTextWidth:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->iTextWidth2:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->extraWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->setWidthE(I)V

    .line 215
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->WIDTH_LAST_TURN_UPDATE:I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_50} :catch_51

    .line 219
    :cond_50
    goto :goto_55

    .line 217
    :catch_51
    move-exception v0

    .line 218
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 220
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_55
    return-void
.end method

.method public final setWidthOfButton()V
    .registers 2

    .line 241
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->extraWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextTop;->setWidthE(I)V

    .line 242
    return-void
.end method
