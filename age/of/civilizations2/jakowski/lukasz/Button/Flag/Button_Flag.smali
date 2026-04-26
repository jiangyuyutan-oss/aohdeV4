.class public Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;
.super Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;
.source "Button_Flag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$ButtonFlagType;,
        Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$DrawButton;
    }
.end annotation


# instance fields
.field private drawButton:Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$DrawButton;

.field private iCivID:I


# direct methods
.method public constructor <init>(IIIIILage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$ButtonFlagType;)V
    .registers 9
    .param p1, "nCivID"  # I
    .param p2, "nPosX"  # I
    .param p3, "nPosY"  # I
    .param p4, "nWidth"  # I
    .param p5, "nHeight"  # I
    .param p6, "buttonFlagType"  # Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$ButtonFlagType;

    .line 34
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;-><init>()V

    .line 35
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->BUTTON_FLAG:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 37
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->iCivID:I

    .line 39
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->setPosX(I)V

    .line 40
    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->setPosY(I)V

    .line 42
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->setWidthE(I)V

    .line 43
    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->setHeightE(I)V

    .line 45
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$5;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Button$Flag$Button_Flag$ButtonFlagType:[I

    invoke-virtual {p6}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$ButtonFlagType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4a

    goto :goto_49

    .line 75
    :pswitch_21  #0x2
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->iCivID:I

    if-lez v0, :cond_2d

    .line 76
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$3;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->drawButton:Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$DrawButton;

    goto :goto_49

    .line 85
    :cond_2d
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$4;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->drawButton:Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$DrawButton;

    goto :goto_49

    .line 47
    :pswitch_35  #0x1
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->iCivID:I

    if-ltz v0, :cond_41

    .line 48
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->drawButton:Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$DrawButton;

    goto :goto_49

    .line 60
    :cond_41
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->drawButton:Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$DrawButton;

    .line 72
    nop

    .line 96
    :goto_49
    return-void

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_35  #00000001
        :pswitch_21  #00000002
    .end packed-switch
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;)I
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;

    .line 17
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->iCivID:I

    return v0
.end method


# virtual methods
.method public final drawE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 16
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 102
    if-eqz p4, :cond_1a

    .line 103
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btnhMenu1H:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->getPosXE()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->getWidthE()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto :goto_31

    .line 105
    :cond_1a
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btnMenu1H:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->getPosXE()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->getWidthE()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 108
    :goto_31
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag;->drawButton:Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$DrawButton;

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Button/Flag/Button_Flag$DrawButton;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 109
    return-void
.end method
