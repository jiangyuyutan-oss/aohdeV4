.class public Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextClear;
.super Lage/of/civilizations2/jakowski/lukasz/TextB/Text;
.source "TextClear.java"


# instance fields
.field private iLogID:I

.field private iTurnID:I


# direct methods
.method public constructor <init>(IIIIII)V
    .registers 8
    .param p1, "iTurnID"  # I
    .param p2, "iLogID"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I
    .param p6, "iHeight"  # I

    .line 18
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextClear;->iTurnID:I

    .line 16
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextClear;->iLogID:I

    .line 19
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->TEXT:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextClear;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 21
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextClear;->iTurnID:I

    .line 22
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextClear;->iLogID:I

    .line 24
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextClear;->setPosX(I)V

    .line 25
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextClear;->setPosY(I)V

    .line 26
    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextClear;->setWidthE(I)V

    .line 27
    invoke-virtual {p0, p6}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextClear;->setHeightE(I)V

    .line 29
    const-string v0, ""

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextClear;->setTextE(Ljava/lang/String;)V

    .line 30
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

    .line 37
    return-void
.end method

.method public getCurr()I
    .registers 2

    .line 41
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextClear;->iLogID:I

    return v0
.end method

.method public getTextPosElem()I
    .registers 2

    .line 46
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextClear;->iTurnID:I

    return v0
.end method
