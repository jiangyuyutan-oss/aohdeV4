.class public Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;
.super Lage/of/civilizations2/jakowski/lukasz/TextB/Text;
.source "TextScale.java"


# instance fields
.field private fScale:F


# direct methods
.method public constructor <init>(Ljava/lang/String;IIF)V
    .registers 6
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "nScale"  # F

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;-><init>(Ljava/lang/String;II)V

    .line 17
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;->fScale:F

    .line 21
    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;->fScale:F

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIF)V
    .registers 13
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iTextPositionX"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "nScale"  # F

    .line 25
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    int-to-float v0, v0

    mul-float v0, v0, p5

    float-to-int v6, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;-><init>(Ljava/lang/String;IIII)V

    .line 17
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;->fScale:F

    .line 26
    iput p5, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;->fScale:F

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIF)V
    .registers 8
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iTextPositionX"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iHeight"  # I
    .param p6, "nScale"  # F

    .line 30
    invoke-direct/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;-><init>(Ljava/lang/String;IIII)V

    .line 17
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;->fScale:F

    .line 31
    iput p6, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;->fScale:F

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIF)V
    .registers 16
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iTextPositionX"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I
    .param p6, "iHeight"  # I
    .param p7, "nScale"  # F

    .line 35
    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD_SMALL:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;-><init>(Ljava/lang/String;IIIIII)V

    .line 17
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;->fScale:F

    .line 36
    iput p7, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;->fScale:F

    .line 37
    return-void
.end method


# virtual methods
.method public drawE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 43
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD_SMALL:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;->getPosXE()I

    move-result v0

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;->iTextPositionX:I

    if-eqz v3, :cond_18

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;->getWidthE()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;->getTextWidthU()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    :goto_19
    add-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;->getHeightE()I

    move-result v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;->iTextHeight:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    add-int v4, v0, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScale;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 45
    return-void
.end method
