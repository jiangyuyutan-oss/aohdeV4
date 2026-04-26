.class public Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmall;
.super Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;
.source "TitleM_TextSmall.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZ)V
    .registers 5
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iHeight"  # I
    .param p3, "moveable"  # Z
    .param p4, "resizable"  # Z

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;-><init>(Ljava/lang/String;IZZ)V

    .line 13
    return-void
.end method


# virtual methods
.method public drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V
    .registers 15
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "nPosX"  # I
    .param p4, "nPosY"  # I
    .param p5, "nWidth"  # I
    .param p6, "sliderMenuIsActive"  # Z

    .line 17
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD_SMALL:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmall;->sText:Ljava/lang/String;

    div-int/lit8 v0, p5, 0x2

    add-int/2addr v0, p3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmall;->iTextWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int v3, v0, p2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmall;->iHeight:I

    sub-int v0, p4, v0

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmall;->iHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmall;->iTextHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3f6dedee

    const v6, 0x3f7efeff

    const/high16 v7, 0x3f800000  # 1.0f

    invoke-direct {v5, v0, v6, v7, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 18
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 5
    .param p1, "sText"  # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmall;->sText:Ljava/lang/String;

    .line 24
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmall;->setTextWidth(I)V

    .line 25
    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmall;->getTextWidth()I

    move-result v0

    if-gez v0, :cond_2d

    .line 26
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 28
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmall;->setTextWidth(I)V

    .line 29
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM_TextSmall;->setTextHeight(I)V

    .line 31
    :cond_2d
    return-void
.end method
