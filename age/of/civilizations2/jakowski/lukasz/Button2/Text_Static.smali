.class public Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;
.super Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;
.source "Text_Static.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static$TextPosition;
    }
.end annotation


# instance fields
.field public iCurrent:I

.field protected iTextHeight:I

.field protected iTextPositionX:I

.field protected iTextWidth:I

.field protected sText:Ljava/lang/String;

.field protected textPosition:Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static$TextPosition;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->sText:Ljava/lang/String;

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iTextWidth:I

    .line 17
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iTextHeight:I

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I

    .line 30
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->sText:Ljava/lang/String;

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iTextWidth:I

    .line 17
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iTextHeight:I

    .line 31
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 33
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setPosX(I)V

    .line 34
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setPosY(I)V

    .line 36
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setHeightE(I)V

    .line 38
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setTextE(Ljava/lang/String;)V

    .line 40
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static$TextPosition;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .registers 6
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "fontID"  # I

    .line 48
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->sText:Ljava/lang/String;

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iTextWidth:I

    .line 17
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iTextHeight:I

    .line 49
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 51
    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->fontID:I

    .line 53
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setPosX(I)V

    .line 54
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setPosY(I)V

    .line 56
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setHeightE(I)V

    .line 58
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setTextE(Ljava/lang/String;)V

    .line 60
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static$TextPosition;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 7
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iTextPositionX"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iHeight"  # I

    .line 68
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->sText:Ljava/lang/String;

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iTextWidth:I

    .line 17
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iTextHeight:I

    .line 69
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 71
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iTextPositionX:I

    .line 72
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setPosX(I)V

    .line 73
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setPosY(I)V

    .line 74
    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setHeightE(I)V

    .line 76
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setTextE(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->updateTextPosition()V

    .line 79
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

    .line 81
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->sText:Ljava/lang/String;

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iTextWidth:I

    .line 17
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iTextHeight:I

    .line 82
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 84
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iTextPositionX:I

    .line 85
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setPosX(I)V

    .line 86
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setPosY(I)V

    .line 87
    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setWidthE(I)V

    .line 88
    invoke-virtual {p0, p6}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setHeightE(I)V

    .line 90
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setTextE(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->updateTextPosition()V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .registers 9
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "fontID"  # I
    .param p3, "iTextPositionX"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "iHeight"  # I

    .line 95
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->sText:Ljava/lang/String;

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iTextWidth:I

    .line 17
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iTextHeight:I

    .line 96
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 98
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->fontID:I

    .line 100
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iTextPositionX:I

    .line 101
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setPosX(I)V

    .line 102
    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setPosY(I)V

    .line 103
    invoke-virtual {p0, p6}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setWidthE(I)V

    .line 104
    invoke-virtual {p0, p7}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setHeightE(I)V

    .line 106
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setTextE(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->updateTextPosition()V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIII)V
    .registers 10
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "fontID"  # I
    .param p3, "iTextPositionX"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "iHeight"  # I
    .param p8, "nCurrent"  # I

    .line 111
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->sText:Ljava/lang/String;

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iTextWidth:I

    .line 17
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iTextHeight:I

    .line 112
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 114
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->fontID:I

    .line 115
    iput p8, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iCurrent:I

    .line 117
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iTextPositionX:I

    .line 118
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setPosX(I)V

    .line 119
    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setPosY(I)V

    .line 120
    invoke-virtual {p0, p6}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setWidthE(I)V

    .line 121
    invoke-virtual {p0, p7}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setHeightE(I)V

    .line 123
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setTextE(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->updateTextPosition()V

    .line 126
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

    .line 153
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->fontID:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->getPosXE()I

    move-result v0

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static$TextPosition;

    invoke-interface {v3}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static$TextPosition;->getTextPosition()I

    move-result v3

    add-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->getHeightE()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    add-int v4, v0, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 154
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 5
    .param p1, "isActive"  # Z

    .line 157
    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p1, :cond_d

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f0f5c29  # 0.56f

    invoke-direct {v1, v2, v2, v2, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_36

    .line 158
    :cond_d
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->getIsClickable()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f2e147b  # 0.68f

    invoke-direct {v1, v2, v2, v2, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_36

    :cond_22
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f51eb85  # 0.82f

    invoke-direct {v1, v2, v2, v2, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_36

    :cond_2b
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3f333333  # 0.7f

    const v2, 0x3f47ae14  # 0.78f

    invoke-direct {v1, v2, v2, v2, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 157
    :goto_36
    return-object v1
.end method

.method public getCurr()I
    .registers 2

    .line 204
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iCurrent:I

    return v0
.end method

.method public final getTextE()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextHeight()I
    .registers 2

    .line 199
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iTextHeight:I

    return v0
.end method

.method public getTextWidthU()I
    .registers 2

    .line 194
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iTextWidth:I

    return v0
.end method

.method public setTextE(Ljava/lang/String;)V
    .registers 5
    .param p1, "sText"  # Ljava/lang/String;

    .line 170
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->sText:Ljava/lang/String;

    .line 173
    :try_start_2
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;-><init>()V

    .line 175
    .local v0, "glyphLayout":Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 177
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->width:F

    float-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iTextWidth:I

    .line 178
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;->height:F

    float-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iTextHeight:I

    .line 180
    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iTextWidth:I

    if-ge v1, v2, :cond_29

    .line 181
    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setWidthE(I)V

    .line 184
    :cond_29
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->getHeightE()I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iTextHeight:I

    if-ge v1, v2, :cond_34

    .line 185
    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->setHeightE(I)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_34} :catch_35

    .line 189
    .end local v0  # "glyphLayout":Lage/of/civilizations2/jakowski/lukasz/Z_Other/GlyphLayout_Game;
    :cond_34
    goto :goto_39

    .line 187
    :catch_35
    move-exception v0

    .line 188
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 190
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_39
    return-void
.end method

.method protected updateTextPosition()V
    .registers 2

    .line 131
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->iTextPositionX:I

    if-gez v0, :cond_c

    .line 132
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static$3;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static$TextPosition;

    goto :goto_13

    .line 140
    :cond_c
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static$4;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Button2/Text_Static$TextPosition;

    .line 147
    :goto_13
    return-void
.end method
