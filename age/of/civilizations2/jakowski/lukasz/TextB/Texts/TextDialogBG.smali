.class public Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDialogBG;
.super Lage/of/civilizations2/jakowski/lukasz/TextB/Text;
.source "TextDialogBG.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I

    .line 15
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;-><init>()V

    .line 16
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDialogBG;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 18
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDialogBG;->setPosX(I)V

    .line 19
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDialogBG;->setPosY(I)V

    .line 21
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDialogBG;->setTextE(Ljava/lang/String;)V

    .line 23
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDialogBG$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDialogBG$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDialogBG;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDialogBG;->textPosition:Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;

    .line 29
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

    .line 31
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;-><init>()V

    .line 32
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDialogBG;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 34
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDialogBG;->iTextPositionX:I

    .line 35
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDialogBG;->setPosX(I)V

    .line 36
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDialogBG;->setPosY(I)V

    .line 37
    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDialogBG;->setWidthE(I)V

    .line 38
    invoke-virtual {p0, p6}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDialogBG;->setHeightE(I)V

    .line 40
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDialogBG;->setTextE(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDialogBG;->updateTextPosition()V

    .line 43
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

    .line 45
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;-><init>()V

    .line 46
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDialogBG;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 48
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDialogBG;->iTextPositionX:I

    .line 49
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDialogBG;->setPosX(I)V

    .line 50
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDialogBG;->setPosY(I)V

    .line 51
    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDialogBG;->setWidthE(I)V

    .line 52
    invoke-virtual {p0, p6}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDialogBG;->setHeightE(I)V

    .line 54
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDialogBG;->setTextE(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDialogBG;->updateTextPosition()V

    .line 57
    return-void
.end method


# virtual methods
.method public drawE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 6
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 72
    invoke-super/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->drawE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 73
    return-void
.end method
