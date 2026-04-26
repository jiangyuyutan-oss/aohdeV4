.class public Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;
.super Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;
.source "ButtonM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;,
        Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TextPosition;,
        Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$Checkbox;
    }
.end annotation


# instance fields
.field public checkbox:Z

.field private checkboxState:Z

.field public fontID:I

.field public iTextHeight:I

.field public iTextPositionX:I

.field public iTextWidth:I

.field private oCheckbox:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$Checkbox;

.field public sText:Ljava/lang/String;

.field public textPosition:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TextPosition;

.field public typeOfButton:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->sText:Ljava/lang/String;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->iTextWidth:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->fontID:I

    .line 58
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->checkbox:Z

    .line 59
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->checkboxState:Z

    return-void
.end method


# virtual methods
.method public buildCheckbox()Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$Checkbox;
    .registers 2

    .line 123
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->checkbox:Z

    if-eqz v0, :cond_a

    .line 124
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$3;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;)V

    return-object v0

    .line 146
    :cond_a
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$4;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;)V

    return-object v0
.end method

.method public drawButtonBGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 154
    return-void
.end method

.method public final drawE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 8
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 110
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getIsClickable()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 111
    invoke-virtual {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->drawButtonBGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    goto :goto_1a

    .line 113
    :cond_a
    const v0, 0x3ee66666  # 0.45f

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 114
    invoke-virtual {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->drawButtonBGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 115
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 118
    :goto_1a
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->oCheckbox:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$Checkbox;

    invoke-interface {v0, p1, p2, p3, p5}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$Checkbox;->drawCheckBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 119
    invoke-virtual {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->drawTextE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 120
    return-void
.end method

.method public drawTextE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 19
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 157
    move-object v0, p0

    move/from16 v1, p4

    if-eqz v1, :cond_33

    .line 158
    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->fontID:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getTextToDrawElem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getPosXE()I

    move-result v2

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TextPosition;

    invoke-interface {v5}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TextPosition;->getTextPosition()I

    move-result v5

    add-int/2addr v2, v5

    add-int v5, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getHeightE()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->iTextHeight:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v2, v6

    add-int v6, v2, p3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto :goto_60

    .line 160
    :cond_33
    iget v9, v0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->fontID:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getTextToDrawElem()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getPosXE()I

    move-result v2

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TextPosition;

    invoke-interface {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TextPosition;->getTextPosition()I

    move-result v3

    add-int/2addr v2, v3

    add-int v11, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getHeightE()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->iTextHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v12, v2, p3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v13

    move-object v8, p1

    invoke-static/range {v8 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 162
    :goto_60
    return-void
.end method

.method public getCheckboxSt()Z
    .registers 2

    .line 209
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->checkboxState:Z

    return v0
.end method

.method public getColorE(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"  # Z

    .line 165
    if-eqz p1, :cond_5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_HOVER_TITLE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_10

    .line 166
    :cond_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getIsClickable()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BTN_M:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_10

    :cond_e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BTN_M_NOT_CLICKABLE:Lcom/badlogic/gdx/graphics/Color;

    .line 165
    :goto_10
    return-object v0
.end method

.method public getTextE()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextHeight()I
    .registers 2

    .line 233
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->iTextHeight:I

    return v0
.end method

.method public getTextPosElem()I
    .registers 2

    .line 228
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->iTextPositionX:I

    return v0
.end method

.method public getTextToDrawElem()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextWidthU()I
    .registers 2

    .line 223
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->iTextWidth:I

    return v0
.end method

.method public final init(Ljava/lang/String;IIIIIZZZZ)V
    .registers 23
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iTextPositionX"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I
    .param p6, "iHeight"  # I
    .param p7, "isClickable"  # Z
    .param p8, "isVisible"  # Z
    .param p9, "checkbox"  # Z
    .param p10, "checkboxState"  # Z

    .line 64
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->init(Ljava/lang/String;IIIIIZZZZLage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;)V

    .line 65
    return-void
.end method

.method public final init(Ljava/lang/String;IIIIIZZZZLage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;)V
    .registers 13
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "nTextPositionX"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I
    .param p6, "iHeight"  # I
    .param p7, "isClickable"  # Z
    .param p8, "isVisible"  # Z
    .param p9, "checkbox"  # Z
    .param p10, "checkboxState"  # Z
    .param p11, "typeOfButton"  # Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;

    .line 68
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->BUTTON:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 70
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->setPosX(I)V

    .line 71
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->setPosY(I)V

    .line 72
    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->setWidthE(I)V

    .line 73
    invoke-virtual {p0, p6}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->setHeightE(I)V

    .line 75
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->setTextE(Ljava/lang/String;)V

    .line 76
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->iTextPositionX:I

    .line 78
    if-gez p2, :cond_1f

    .line 79
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TextPosition;

    goto :goto_26

    .line 87
    :cond_1f
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TextPosition;

    .line 95
    :goto_26
    iput-boolean p9, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->checkbox:Z

    .line 96
    iput-boolean p10, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->checkboxState:Z

    .line 98
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->buildCheckbox()Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$Checkbox;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->oCheckbox:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$Checkbox;

    .line 100
    invoke-virtual {p0, p7}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->setClickable(Z)V

    .line 101
    invoke-virtual {p0, p8}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->setVisibleE(Z)V

    .line 103
    iput-object p11, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->typeOfButton:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;

    .line 104
    return-void
.end method

.method public final setCheckbox(Z)V
    .registers 2
    .param p1, "checkbox"  # Z

    .line 205
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->checkbox:Z

    .line 206
    return-void
.end method

.method public final setCheckboxSt(Z)V
    .registers 2
    .param p1, "checkboxState"  # Z

    .line 213
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->checkboxState:Z

    .line 214
    return-void
.end method

.method public setTextE(Ljava/lang/String;)V
    .registers 5
    .param p1, "sText"  # Ljava/lang/String;

    .line 184
    :try_start_0
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->sText:Ljava/lang/String;

    .line 186
    if-eqz p1, :cond_32

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_32

    .line 187
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->getTextE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 189
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->iTextWidth:I

    .line 190
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->iTextHeight:I

    .line 192
    if-nez v0, :cond_39

    .line 193
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->iTextHeight:I

    goto :goto_39

    .line 196
    :cond_32
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->iTextWidth:I

    .line 197
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->iTextHeight:I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 201
    :cond_39
    :goto_39
    goto :goto_3b

    .line 199
    :catch_3a
    move-exception v0

    .line 202
    :goto_3b
    return-void
.end method

.method public setTypeOfButton(Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;)V
    .registers 2
    .param p1, "typeOfButton"  # Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;

    .line 218
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->typeOfButton:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;

    .line 219
    return-void
.end method
