.class public Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;
.super Ljava/lang/Object;
.source "TitleM.java"


# instance fields
.field public iHeight:I

.field public iTextHeight:I

.field public iTextWidth:I

.field public moveable:Z

.field public resizable:Z

.field public sText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZ)V
    .registers 6
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iHeight"  # I
    .param p3, "moveable"  # Z
    .param p4, "resizable"  # Z

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->iTextWidth:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->iTextHeight:I

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->moveable:Z

    .line 24
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->resizable:Z

    .line 29
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->setText(Ljava/lang/String;)V

    .line 30
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->iHeight:I

    .line 31
    iput-boolean p3, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->moveable:Z

    .line 32
    iput-boolean p4, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->resizable:Z

    .line 33
    return-void
.end method


# virtual methods
.method public drawT(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V
    .registers 16
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "nPosX"  # I
    .param p4, "nPosY"  # I
    .param p5, "nWidth"  # I
    .param p6, "sliderMenuIsActive"  # Z

    .line 38
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->titleEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    add-int v0, p3, p5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->titleEdge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->titleEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v0, p4, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->iHeight:I

    sub-int v4, v0, v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->titleEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->iHeight:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 39
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->titleEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    add-int v3, p3, p2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->titleEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v0, p4, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->iHeight:I

    sub-int v4, v0, v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->titleEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    sub-int v5, p5, v0

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->iHeight:I

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 41
    invoke-virtual/range {p0 .. p6}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 42
    return-void
.end method

.method public drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V
    .registers 14
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "nPosX"  # I
    .param p4, "nPosY"  # I
    .param p5, "nWidth"  # I
    .param p6, "sliderMenuIsActive"  # Z

    .line 45
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->sText:Ljava/lang/String;

    div-int/lit8 v1, p5, 0x2

    add-int/2addr v1, p3

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->iTextWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->iHeight:I

    sub-int v3, p4, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->iTextHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v3, v2

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x3f6dedee

    const v5, 0x3f7efeff

    const/high16 v6, 0x3f800000  # 1.0f

    invoke-direct {v2, v4, v5, v6, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, v0, v1, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 46
    return-void
.end method

.method public final getHeightT()I
    .registers 2

    .line 68
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->iHeight:I

    return v0
.end method

.method public final getMoveable()Z
    .registers 2

    .line 72
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->moveable:Z

    return v0
.end method

.method public final getResizable()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->resizable:Z

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextHeight()I
    .registers 2

    .line 80
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->iTextHeight:I

    return v0
.end method

.method public final getTextWidth()I
    .registers 2

    .line 76
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->iTextWidth:I

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .registers 5
    .param p1, "sText"  # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->sText:Ljava/lang/String;

    .line 58
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->setTextWidth(I)V

    .line 59
    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->getTextWidth()I

    move-result v0

    if-gez v0, :cond_2c

    .line 60
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 62
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->setTextWidth(I)V

    .line 63
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->setTextHeight(I)V

    .line 65
    :cond_2c
    return-void
.end method

.method public final setTextHeight(I)V
    .registers 2
    .param p1, "iTextHeight"  # I

    .line 88
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->iTextHeight:I

    .line 89
    return-void
.end method

.method public final setTextWidth(I)V
    .registers 2
    .param p1, "iTextWidth"  # I

    .line 84
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->iTextWidth:I

    .line 85
    return-void
.end method
