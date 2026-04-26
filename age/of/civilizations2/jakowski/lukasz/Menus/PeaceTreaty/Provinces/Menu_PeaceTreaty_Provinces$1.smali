.class Lage/of/civilizations2/jakowski/lukasz/Menus/PeaceTreaty/Provinces/Menu_PeaceTreaty_Provinces$1;
.super Lage/of/civilizations2/jakowski/lukasz/Sliders/InGame/Slider_InGame_Date;
.source "Menu_PeaceTreaty_Provinces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/PeaceTreaty/Provinces/Menu_PeaceTreaty_Provinces;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/PeaceTreaty/Provinces/Menu_PeaceTreaty_Provinces;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/PeaceTreaty/Provinces/Menu_PeaceTreaty_Provinces;Ljava/lang/String;IIIIIIIF)V
    .registers 23
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/PeaceTreaty/Provinces/Menu_PeaceTreaty_Provinces;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I
    .param p6, "iHeight"  # I
    .param p7, "iMin"  # I
    .param p8, "iMax"  # I
    .param p9, "iCurrent"  # I
    .param p10, "FONT_SCALE"  # F

    .line 46
    move-object v10, p0

    move-object v11, p1

    iput-object v11, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/PeaceTreaty/Provinces/Menu_PeaceTreaty_Provinces$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/PeaceTreaty/Provinces/Menu_PeaceTreaty_Provinces;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Sliders/InGame/Slider_InGame_Date;-><init>(Ljava/lang/String;IIIIIIIF)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 4
    .param p1, "iID"  # I

    .line 60
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_Data;->peaceTreatyGD:Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/PeaceTreaty/Provinces/Menu_PeaceTreaty_Provinces$1;->getCurr()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilizations/PeaceT/PeaceTreaty_GameData;->TRUCE_LENGTH:I

    .line 61
    return-void
.end method

.method public getColorLEFT()Lcom/badlogic/gdx/graphics/Color;
    .registers 6

    .line 65
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3d888889

    const v2, 0x3e7cfcfd

    const v3, 0x3f018182

    const/high16 v4, 0x3f400000  # 0.75f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public getDrawText()Ljava/lang/String;
    .registers 4

    .line 50
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/PeaceTreaty/Provinces/Menu_PeaceTreaty_Provinces$1;->getCurr()I

    move-result v1

    const-string v2, "TurnsX"

    invoke-virtual {v0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSliderHeight()I
    .registers 2

    .line 55
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
