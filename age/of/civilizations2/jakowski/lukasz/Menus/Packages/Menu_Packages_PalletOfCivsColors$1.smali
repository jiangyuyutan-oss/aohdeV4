.class Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_PalletOfCivsColors$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;
.source "Menu_Packages_PalletOfCivsColors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_PalletOfCivsColors;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field iCurrent:I

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_PalletOfCivsColors;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_PalletOfCivsColors;Ljava/lang/String;IIIIIZ)V
    .registers 19
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_PalletOfCivsColors;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iTextPositionX"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I
    .param p7, "iHeight"  # I
    .param p8, "isClickable"  # Z

    .line 32
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_PalletOfCivsColors$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_PalletOfCivsColors;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 33
    const/4 v0, 0x0

    iput v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_PalletOfCivsColors$1;->iCurrent:I

    return-void
.end method


# virtual methods
.method public drawTextE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 13
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 37
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->palletManager:Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_PalletOfCivsColors$1;->getPosXE()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_PalletOfCivsColors$1;->getWidthE()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_PalletOfCivsColors$1;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_PalletOfCivsColors$1;->getHeightE()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_PalletOfCivsColors$1;->getHeightE()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v1, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_PalletOfCivsColors$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_PalletOfCivsColors;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_PalletOfCivsColors;->getMenuPosY()I

    move-result v3

    add-int/2addr v3, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v4, v1, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_PalletOfCivsColors$1;->getHeightE()I

    move-result v1

    div-int/lit8 v5, v1, 0x2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_PalletOfCivsColors$1;->iCurrent:I

    move-object v1, p1

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->drawSampleColors(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZ)V

    .line 38
    return-void
.end method

.method public setCurr(I)V
    .registers 2
    .param p1, "nCurrent"  # I

    .line 42
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_PalletOfCivsColors$1;->iCurrent:I

    .line 43
    return-void
.end method
