.class Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Happiness/Menu_InGame_View_Happiness$6;
.super Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_ActionAll;
.source "Menu_InGame_View_Happiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Happiness/Menu_InGame_View_Happiness;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Happiness/Menu_InGame_View_Happiness;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Happiness/Menu_InGame_View_Happiness;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;ILcom/badlogic/gdx/graphics/Color;IIII)V
    .registers 33
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Happiness/Menu_InGame_View_Happiness;
    .param p2, "nColor"  # Lcom/badlogic/gdx/graphics/Color;
    .param p3, "sText"  # Ljava/lang/String;
    .param p4, "nCivID"  # I
    .param p5, "sTextLeft"  # Ljava/lang/String;
    .param p6, "nPop"  # Ljava/lang/String;
    .param p7, "nCost"  # Ljava/lang/String;
    .param p8, "nCost2"  # Ljava/lang/String;
    .param p9, "imgCost2"  # I
    .param p10, "costColor"  # Lcom/badlogic/gdx/graphics/Color;
    .param p11, "iImageID"  # I
    .param p12, "textColor"  # Lcom/badlogic/gdx/graphics/Color;
    .param p13, "iPosX"  # I
    .param p14, "iPosY"  # I
    .param p15, "iWidth"  # I
    .param p16, "iHeight"  # I

    .line 281
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iput-object v14, v15, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Happiness/Menu_InGame_View_Happiness$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Happiness/Menu_InGame_View_Happiness;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    move/from16 v10, p11

    move-object/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    move/from16 v14, p15

    move/from16 v15, p16

    invoke-direct/range {v0 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_ActionAll;-><init>(Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;ILcom/badlogic/gdx/graphics/Color;IIII)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 3
    .param p1, "iID"  # I

    .line 284
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;->ALL_PROPAGANDA:Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setDialogType(Lage/of/civilizations2/jakowski/lukasz/Z_Other/DialogType;)V

    .line 285
    return-void
.end method

.method public actionElemPPM()V
    .registers 3

    .line 289
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Happiness/Menu_InGame_View_Happiness;->iCivID:I

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/GameManager;->spreadPropaganda_AllProvinces(II)Z

    .line 290
    return-void
.end method
