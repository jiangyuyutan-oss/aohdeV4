.class public Lage/of/civilizations2/jakowski/lukasz/Button2/ButtonFlag2;
.super Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;
.source "ButtonFlag2.java"


# instance fields
.field public iCivID:I


# direct methods
.method public constructor <init>(IIIZ)V
    .registers 16
    .param p1, "iCivID"  # I
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I
    .param p4, "isClickable"  # Z

    .line 16
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;-><init>()V

    .line 17
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/ButtonFlag2;->iTextPositionX:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->flagRect2:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->flagRect2:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    const-string v1, ""

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v7, p4

    invoke-virtual/range {v0 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Button2/ButtonFlag2;->init(Ljava/lang/String;IIIIIZZZZ)V

    .line 19
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;->BUTTON_FLAG:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/ButtonFlag2;->typeOfMenuElemUI:Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI$TypeOfMenuElemUI;

    .line 20
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/ButtonFlag2;->iCivID:I

    .line 21
    return-void
.end method


# virtual methods
.method public actionElemPPM()V
    .registers 4

    .line 57
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button2/ButtonFlag2;->getCurr()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->centerToProvID(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 60
    goto :goto_19

    .line 58
    :catch_18
    move-exception v0

    .line 61
    :goto_19
    return-void
.end method

.method public drawButtonBGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 43
    return-void
.end method

.method public getCurr()I
    .registers 2

    .line 51
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/ButtonFlag2;->iCivID:I

    return v0
.end method

.method public getFlagCivID()I
    .registers 2

    .line 46
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button2/ButtonFlag2;->iCivID:I

    return v0
.end method
