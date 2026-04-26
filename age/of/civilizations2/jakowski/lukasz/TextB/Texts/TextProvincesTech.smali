.class public Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;
.super Lage/of/civilizations2/jakowski/lukasz/TextB/Text;
.source "TextProvincesTech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech$TextD;
    }
.end annotation


# instance fields
.field public attack:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech$TextD;

.field public civID:I

.field public defense:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech$TextD;

.field public provincesNum:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech$TextD;


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .registers 6
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "fontID"  # I

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;-><init>(Ljava/lang/String;III)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->civID:I

    .line 34
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->setCurr(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public drawE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 24
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 48
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->getPosXE()I

    move-result v2

    add-int v2, v2, p2

    .line 50
    .local v2, "pX":I
    sget v9, Lage/of/civilizations2/jakowski/lukasz/Images;->provinces:I

    .line 51
    .local v9, "img":I
    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v10, v3

    .line 52
    .local v10, "imgW":I
    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v11, v3

    .line 54
    .local v11, "imgH":I
    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->getPosY()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->getHeightE()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    div-int/lit8 v5, v11, 0x2

    sub-int/2addr v4, v5

    add-int v6, v4, p3

    move-object/from16 v4, p1

    move v5, v2

    move v7, v10

    move v8, v11

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 55
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v3, v10

    add-int/2addr v2, v3

    .line 57
    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD_SMALL:I

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->provincesNum:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech$TextD;

    iget-object v14, v3, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech$TextD;->text:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->getPosY()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->getHeightE()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->getTextHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int v16, v3, p3

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v12, p1

    move v15, v2

    invoke-static/range {v12 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 58
    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->provincesNum:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech$TextD;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech$TextD;->textW:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 60
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->attack:I

    .line 61
    .end local v9  # "img":I
    .local v3, "img":I
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->getImageScale(I)F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 62
    .end local v10  # "imgW":I
    .local v4, "imgW":I
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->getImageScale(I)F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    .line 64
    .end local v11  # "imgH":I
    .local v5, "imgH":I
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->getPosY()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->getHeightE()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    add-int v15, v6, p3

    move-object/from16 v13, p1

    move v14, v2

    move/from16 v16, v4

    move/from16 v17, v5

    invoke-virtual/range {v12 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 65
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v6, v4

    add-int/2addr v2, v6

    .line 67
    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_REGULAR_SMALL:I

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->attack:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech$TextD;

    iget-object v9, v6, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech$TextD;->text:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->getPosY()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->getHeightE()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->getTextHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int v11, v6, p3

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v12

    move-object/from16 v7, p1

    move v10, v2

    invoke-static/range {v7 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 68
    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->attack:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech$TextD;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech$TextD;->textW:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v6, v7

    add-int/2addr v2, v6

    .line 71
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->defense:I

    .line 72
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->getImageScale(I)F

    move-result v7

    mul-float v6, v6, v7

    float-to-int v4, v6

    .line 73
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->getImageScale(I)F

    move-result v7

    mul-float v6, v6, v7

    float-to-int v5, v6

    .line 75
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->getPosY()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->getHeightE()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    div-int/lit8 v8, v5, 0x2

    sub-int/2addr v6, v8

    add-int v10, v6, p3

    move-object/from16 v8, p1

    move v9, v2

    move v11, v4

    move v12, v5

    invoke-virtual/range {v7 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 76
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v6, v4

    add-int/2addr v2, v6

    .line 78
    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_REGULAR_SMALL:I

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->defense:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech$TextD;

    iget-object v9, v6, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech$TextD;->text:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->getPosY()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->getHeightE()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->getTextHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int v11, v6, p3

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v12

    move-object/from16 v7, p1

    move v10, v2

    invoke-static/range {v7 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 79
    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->defense:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech$TextD;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech$TextD;->textW:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v6, v7

    add-int/2addr v2, v6

    .line 80
    return-void
.end method

.method public getImageScale(I)F
    .registers 4
    .param p1, "nImageID"  # I

    .line 83
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

.method public setCurr(I)V
    .registers 8
    .param p1, "nCurrent"  # I

    .line 39
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->civID:I

    .line 41
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech$TextD;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->civID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWthSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech$TextD;-><init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;Ljava/lang/String;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->provincesNum:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech$TextD;

    .line 42
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech$TextD;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->civID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getAttackersBonusFromTechnology(I)F

    move-result v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech$TextD;-><init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;Ljava/lang/String;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->attack:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech$TextD;

    .line 43
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech$TextD;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->civID:I

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getDefenseBonusFromTechnology(I)F

    move-result v2

    invoke-static {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech$TextD;-><init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;Ljava/lang/String;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech;->defense:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextProvincesTech$TextD;

    .line 44
    return-void
.end method
