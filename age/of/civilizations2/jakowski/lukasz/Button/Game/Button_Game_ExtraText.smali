.class public Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_ExtraText;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game;
.source "Button_Game_ExtraText.java"


# instance fields
.field public fontID2:I

.field public iTextBWidth:I

.field public lastActiveProvinceID:I

.field public textB:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 7
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iTextPositionX"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "nWidth"  # I

    .line 12
    invoke-direct/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game;-><init>(Ljava/lang/String;IIII)V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_ExtraText;->textB:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_ExtraText;->iTextBWidth:I

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_ExtraText;->lastActiveProvinceID:I

    .line 32
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_REGULAR_SMALL:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_ExtraText;->fontID2:I

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIZ)V
    .registers 8
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iTextPositionX"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "nWidth"  # I
    .param p6, "isClickable"  # Z

    .line 20
    invoke-direct/range {p0 .. p6}, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game;-><init>(Ljava/lang/String;IIIIZ)V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_ExtraText;->textB:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_ExtraText;->iTextBWidth:I

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_ExtraText;->lastActiveProvinceID:I

    .line 32
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_REGULAR_SMALL:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_ExtraText;->fontID2:I

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZ)V
    .registers 7
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iTextPositionX"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "isClickable"  # Z

    .line 16
    invoke-direct/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game;-><init>(Ljava/lang/String;IIIZ)V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_ExtraText;->textB:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_ExtraText;->iTextBWidth:I

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_ExtraText;->lastActiveProvinceID:I

    .line 32
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_REGULAR_SMALL:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_ExtraText;->fontID2:I

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZZ)V
    .registers 8
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iTextPositionX"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "isClickable"  # Z
    .param p6, "isVisible"  # Z

    .line 24
    invoke-direct/range {p0 .. p6}, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game;-><init>(Ljava/lang/String;IIIZZ)V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_ExtraText;->textB:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_ExtraText;->iTextBWidth:I

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_ExtraText;->lastActiveProvinceID:I

    .line 32
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_REGULAR_SMALL:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_ExtraText;->fontID2:I

    .line 25
    return-void
.end method


# virtual methods
.method public drawTextE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 11
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 40
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_ExtraText;->fontID2:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_ExtraText;->textB:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_ExtraText;->getPosXE()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_ExtraText;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_ExtraText;->getHeightE()I

    move-result v4

    add-int/2addr v0, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_ExtraText;->iTextHeight:I

    sub-int/2addr v0, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v0, v4

    add-int v4, v0, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_ExtraText;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 42
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game;->drawTextE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 44
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Game/Button_Game_ExtraText;->updateText()V

    .line 45
    return-void
.end method

.method public updateText()V
    .registers 1

    .line 36
    return-void
.end method
