.class public Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;
.super Lage/of/civilizations2/jakowski/lukasz/TextB/Text;
.source "TextEconomy_SliderDesc_Taxes.java"


# static fields
.field public static final TEXT2_SCALE:F = 0.85f

.field public static final TEXT_SCALE:F = 0.7f


# instance fields
.field private iImageID:I

.field private iText2Width:I

.field private sText2:Ljava/lang/String;

.field private tColor:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 13
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "iWidth"  # I
    .param p5, "iHeight"  # I

    .line 30
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;-><init>(Ljava/lang/String;IIIII)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->iText2Width:I

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "PerTurn"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->sText2:Ljava/lang/String;

    .line 34
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->sText2:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 35
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    const v1, 0x3f333333  # 0.7f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->iText2Width:I

    .line 36
    return-void
.end method

.method private final getImageScale(FI)F
    .registers 5
    .param p1, "fScale"  # F
    .param p2, "nImageID"  # I

    .line 57
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->iTextHeight:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public drawE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 14
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 41
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Sliders/InGame/Slider_InGame;->bgColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 42
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->getPosXE()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->getWidthE()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->getHeightE()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 44
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 46
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->iImageID:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->getPosXE()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->getWidthE()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->getTextWidthU()I

    move-result v2

    int-to-float v2, v2

    const v7, 0x3f333333  # 0.7f

    mul-float v2, v2, v7

    float-to-int v2, v2

    sub-int/2addr v0, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->iText2Width:I

    sub-int/2addr v0, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->iImageID:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->iImageID:I

    const v4, 0x3f59999a  # 0.85f

    invoke-direct {p0, v4, v3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->getImageScale(FI)F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->getPosY()I

    move-result v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->iImageID:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->getHeightE()I

    move-result v2

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->iImageID:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->iImageID:I

    invoke-direct {p0, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->getImageScale(FI)F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/2addr v0, p3

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->iImageID:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->iImageID:I

    invoke-direct {p0, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->getImageScale(FI)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v5, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->iImageID:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->iImageID:I

    invoke-direct {p0, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->getImageScale(FI)F

    move-result v4

    mul-float v2, v2, v4

    float-to-int v6, v2

    move-object v2, p1

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 48
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 49
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->getTextE()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->getPosXE()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->getWidthE()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->getTextWidthU()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v7

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->iText2Width:I

    sub-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->getHeightE()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->iTextHeight:I

    int-to-float v5, v5

    mul-float v5, v5, v7

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->tColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, v0, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefaultWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 51
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->sText2:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->getPosXE()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->getWidthE()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->iText2Width:I

    sub-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->getHeightE()I

    move-result v4

    int-to-float v4, v4

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->iTextHeight:I

    int-to-float v6, v6

    mul-float v6, v6, v7

    sub-float/2addr v4, v6

    div-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_GRAY_NS:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, v0, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefaultWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 53
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 54
    return-void
.end method

.method public setMax(I)V
    .registers 3
    .param p1, "iMax"  # I

    .line 67
    if-nez p1, :cond_5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->happiness:I

    goto :goto_d

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->happiness1:I

    goto :goto_d

    :cond_b
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->happiness2:I

    :goto_d
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->iImageID:I

    .line 68
    if-nez p1, :cond_14

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_16

    :cond_14
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    :goto_16
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextEconomy_SliderDesc_Taxes;->tColor:Lcom/badlogic/gdx/graphics/Color;

    .line 69
    return-void
.end method

.method public setTextE(Ljava/lang/String;)V
    .registers 4
    .param p1, "sText"  # Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_c
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setTextE(Ljava/lang/String;)V

    .line 63
    return-void
.end method
