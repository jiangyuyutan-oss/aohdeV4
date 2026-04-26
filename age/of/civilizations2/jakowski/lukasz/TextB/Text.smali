.class public Lage/of/civilizations2/jakowski/lukasz/TextB/Text;
.super Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;
.source "Text.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;
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

    .line 31
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->sText:Ljava/lang/String;

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextWidth:I

    .line 20
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextHeight:I

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I

    .line 33
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->sText:Ljava/lang/String;

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextWidth:I

    .line 20
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextHeight:I

    .line 34
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 36
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setPosX(I)V

    .line 37
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setPosY(I)V

    .line 39
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setHeightE(I)V

    .line 41
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setTextE(Ljava/lang/String;)V

    .line 43
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Text;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->textPosition:Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .registers 6
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "fontID"  # I

    .line 50
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->sText:Ljava/lang/String;

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextWidth:I

    .line 20
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextHeight:I

    .line 51
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 53
    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->fontID:I

    .line 55
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setPosX(I)V

    .line 56
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setPosY(I)V

    .line 58
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setHeightE(I)V

    .line 60
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setTextE(Ljava/lang/String;)V

    .line 62
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Text;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->textPosition:Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 7
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iTextPositionX"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iHeight"  # I

    .line 70
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->sText:Ljava/lang/String;

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextWidth:I

    .line 20
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextHeight:I

    .line 71
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 73
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextPositionX:I

    .line 74
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setPosX(I)V

    .line 75
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setPosY(I)V

    .line 76
    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setHeightE(I)V

    .line 78
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setTextE(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->updateTextPosition()V

    .line 81
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

    .line 83
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->sText:Ljava/lang/String;

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextWidth:I

    .line 20
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextHeight:I

    .line 84
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 85
    float-to-int v0, p6

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->fontID:I

    .line 87
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextPositionX:I

    .line 88
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setPosX(I)V

    .line 89
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setPosY(I)V

    .line 90
    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setHeightE(I)V

    .line 92
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setTextE(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->updateTextPosition()V

    .line 95
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

    .line 97
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->sText:Ljava/lang/String;

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextWidth:I

    .line 20
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextHeight:I

    .line 98
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 100
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextPositionX:I

    .line 101
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setPosX(I)V

    .line 102
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setPosY(I)V

    .line 103
    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setWidthE(I)V

    .line 104
    invoke-virtual {p0, p6}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setHeightE(I)V

    .line 106
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setTextE(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->updateTextPosition()V

    .line 109
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

    .line 111
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->sText:Ljava/lang/String;

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextWidth:I

    .line 20
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextHeight:I

    .line 113
    iput p7, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->fontID:I

    .line 114
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 116
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextPositionX:I

    .line 117
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setPosX(I)V

    .line 118
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setPosY(I)V

    .line 119
    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setWidthE(I)V

    .line 120
    invoke-virtual {p0, p6}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setHeightE(I)V

    .line 122
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setTextE(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->updateTextPosition()V

    .line 125
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

    .line 152
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->fontID:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->getPosXE()I

    move-result v0

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->textPosition:Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;

    invoke-interface {v3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;->getTextPosition()I

    move-result v3

    add-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->getHeightE()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->getTextHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    add-int v4, v0, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 153
    return-void
.end method

.method public getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 5
    .param p1, "isActive"  # Z

    .line 156
    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p1, :cond_d

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f0f5c29  # 0.56f

    invoke-direct {v1, v2, v2, v2, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_30

    .line 157
    :cond_d
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->getIsClickable()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->getIsHovered()Z

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

    .line 156
    :goto_30
    return-object v1
.end method

.method public final getTextE()Ljava/lang/String;
    .registers 2

    .line 164
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextHeight()I
    .registers 2

    .line 202
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextHeight:I

    return v0
.end method

.method public getTextWidthU()I
    .registers 2

    .line 197
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextWidth:I

    return v0
.end method

.method public setTextE(Ljava/lang/String;)V
    .registers 5
    .param p1, "sText"  # Ljava/lang/String;

    .line 169
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->sText:Ljava/lang/String;

    .line 172
    if-eqz p1, :cond_3e

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3e

    .line 173
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 175
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextWidth:I

    .line 176
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextHeight:I

    .line 178
    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextWidth:I

    if-ge v0, v1, :cond_32

    .line 179
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setWidthE(I)V

    .line 182
    :cond_32
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->getHeightE()I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextHeight:I

    if-ge v0, v1, :cond_45

    .line 183
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->setHeightE(I)V

    goto :goto_45

    .line 187
    :cond_3e
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextWidth:I

    .line 188
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextHeight:I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_45} :catch_46

    .line 192
    :cond_45
    :goto_45
    goto :goto_4a

    .line 190
    :catch_46
    move-exception v0

    .line 191
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 193
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_4a
    return-void
.end method

.method public updateTextPosition()V
    .registers 2

    .line 130
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextPositionX:I

    if-gez v0, :cond_c

    .line 131
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text$3;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Text;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->textPosition:Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;

    goto :goto_13

    .line 139
    :cond_c
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text$4;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Text;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->textPosition:Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;

    .line 146
    :goto_13
    return-void
.end method
