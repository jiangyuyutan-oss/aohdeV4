.class public Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;
.super Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;
.source "TextNew.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew$TextPosition;
    }
.end annotation


# instance fields
.field public iTextHeight:I

.field public iTextPositionX:I

.field public iTextWidth:I

.field public sText:Ljava/lang/String;

.field public textPosition:Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->sText:Ljava/lang/String;

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextWidth:I

    .line 15
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextHeight:I

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I

    .line 28
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->sText:Ljava/lang/String;

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextWidth:I

    .line 15
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextHeight:I

    .line 29
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 31
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setPosX(I)V

    .line 32
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setPosY(I)V

    .line 34
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setHeightE(I)V

    .line 36
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setTextE(Ljava/lang/String;)V

    .line 38
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->textPosition:Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .registers 6
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "fontID"  # I

    .line 45
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->sText:Ljava/lang/String;

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextWidth:I

    .line 15
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextHeight:I

    .line 46
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 48
    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->fontID:I

    .line 50
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setPosX(I)V

    .line 51
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setPosY(I)V

    .line 53
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setHeightE(I)V

    .line 55
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setTextE(Ljava/lang/String;)V

    .line 57
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->textPosition:Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 7
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iTextPositionX"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iHeight"  # I

    .line 65
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->sText:Ljava/lang/String;

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextWidth:I

    .line 15
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextHeight:I

    .line 66
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 68
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextPositionX:I

    .line 69
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setPosX(I)V

    .line 70
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setPosY(I)V

    .line 71
    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setHeightE(I)V

    .line 73
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setTextE(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->updateTextPosition()V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIF)V
    .registers 8
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iTextPositionX"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iHeight"  # I
    .param p6, "fontID"  # F

    .line 78
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->sText:Ljava/lang/String;

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextWidth:I

    .line 15
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextHeight:I

    .line 79
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 80
    float-to-int v0, p6

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->fontID:I

    .line 82
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextPositionX:I

    .line 83
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setPosX(I)V

    .line 84
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setPosY(I)V

    .line 85
    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setHeightE(I)V

    .line 87
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setTextE(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->updateTextPosition()V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIII)V
    .registers 8
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iTextPositionX"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I
    .param p6, "iHeight"  # I

    .line 92
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->sText:Ljava/lang/String;

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextWidth:I

    .line 15
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextHeight:I

    .line 93
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 95
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextPositionX:I

    .line 96
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setPosX(I)V

    .line 97
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setPosY(I)V

    .line 98
    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setWidthE(I)V

    .line 99
    invoke-virtual {p0, p6}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setHeightE(I)V

    .line 101
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setTextE(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->updateTextPosition()V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .registers 9
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iTextPositionX"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I
    .param p6, "iHeight"  # I
    .param p7, "fontID"  # I

    .line 106
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->sText:Ljava/lang/String;

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextWidth:I

    .line 15
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextHeight:I

    .line 108
    iput p7, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->fontID:I

    .line 109
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 111
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextPositionX:I

    .line 112
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setPosX(I)V

    .line 113
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setPosY(I)V

    .line 114
    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setWidthE(I)V

    .line 115
    invoke-virtual {p0, p6}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setHeightE(I)V

    .line 117
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setTextE(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->updateTextPosition()V

    .line 120
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

    .line 147
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->fontID:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->getPosXE()I

    move-result v0

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->textPosition:Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;

    invoke-interface {v3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;->getTextPosition()I

    move-result v3

    add-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->getHeightE()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->getTextHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    add-int v4, v0, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 148
    return-void
.end method

.method public getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 5
    .param p1, "isActive"  # Z

    .line 151
    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p1, :cond_d

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f0f5c29  # 0.56f

    invoke-direct {v1, v2, v2, v2, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_30

    .line 152
    :cond_d
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->getIsClickable()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f2e147b  # 0.68f

    invoke-direct {v1, v2, v2, v2, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_30

    :cond_22
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_MENU_TEXT:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_30

    :cond_25
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3f333333  # 0.7f

    const v2, 0x3f47ae14  # 0.78f

    invoke-direct {v1, v2, v2, v2, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 151
    :goto_30
    return-object v1
.end method

.method public final getTextE()Ljava/lang/String;
    .registers 2

    .line 159
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextHeight()I
    .registers 2

    .line 197
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextHeight:I

    return v0
.end method

.method public getTextWidthU()I
    .registers 2

    .line 192
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextWidth:I

    return v0
.end method

.method public setTextE(Ljava/lang/String;)V
    .registers 5
    .param p1, "sText"  # Ljava/lang/String;

    .line 164
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->sText:Ljava/lang/String;

    .line 167
    if-eqz p1, :cond_3e

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3e

    .line 168
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 170
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextWidth:I

    .line 171
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextHeight:I

    .line 173
    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextWidth:I

    if-ge v0, v1, :cond_32

    .line 174
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setWidthE(I)V

    .line 177
    :cond_32
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->getHeightE()I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextHeight:I

    if-ge v0, v1, :cond_45

    .line 178
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->setHeightE(I)V

    goto :goto_45

    .line 182
    :cond_3e
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextWidth:I

    .line 183
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextHeight:I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_45} :catch_46

    .line 187
    :cond_45
    :goto_45
    goto :goto_4a

    .line 185
    :catch_46
    move-exception v0

    .line 186
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 188
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_4a
    return-void
.end method

.method public updateTextPosition()V
    .registers 2

    .line 125
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->iTextPositionX:I

    if-gez v0, :cond_c

    .line 126
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew$3;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->textPosition:Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;

    goto :goto_13

    .line 134
    :cond_c
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew$4;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextNew;->textPosition:Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;

    .line 141
    :goto_13
    return-void
.end method
