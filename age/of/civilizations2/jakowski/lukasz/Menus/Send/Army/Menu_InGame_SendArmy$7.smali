.class Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$7;
.super Lage/of/civilizations2/jakowski/lukasz/Sliders/InGame/Slider_InGame_Army;
.source "Menu_InGame_SendArmy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;Ljava/lang/String;IIIIIIIF)V
    .registers 23
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I
    .param p6, "iHeight"  # I
    .param p7, "iMin"  # I
    .param p8, "iMax"  # I
    .param p9, "iCurrent"  # I
    .param p10, "FONT_SCALE"  # F

    .line 183
    move-object v10, p0

    move-object v11, p1

    iput-object v11, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;

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

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Sliders/InGame/Slider_InGame_Army;-><init>(Ljava/lang/String;IIIIIIIF)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 3
    .param p1, "iID"  # I

    .line 187
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$7;->getCurr()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;->armyToSend:I

    .line 188
    return-void
.end method

.method public getColorLEFT()Lcom/badlogic/gdx/graphics/Color;
    .registers 6

    .line 202
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_TEXT_ALLIANCE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_TEXT_ALLIANCE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_TEXT_ALLIANCE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f266666  # 0.65f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public getSliderHeight()I
    .registers 2

    .line 197
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getWidthE()I
    .registers 3

    .line 192
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;->getElementW2()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    return v0
.end method
