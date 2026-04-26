.class Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$6;
.super Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Population/ButtonN_Pop;
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
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;III)V
    .registers 25
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;
    .param p2, "nColor"  # Lcom/badlogic/gdx/graphics/Color;
    .param p3, "sText"  # Ljava/lang/String;
    .param p4, "nCivID"  # I
    .param p5, "sTextLeft"  # Ljava/lang/String;
    .param p6, "nPop"  # Ljava/lang/String;
    .param p7, "iImageID"  # I
    .param p8, "textColor"  # Lcom/badlogic/gdx/graphics/Color;
    .param p9, "iPosX"  # I
    .param p10, "iPosY"  # I
    .param p11, "iWidth"  # I

    .line 162
    move-object v11, p0

    move-object v12, p1

    iput-object v12, v11, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/Population/ButtonN_Pop;-><init>(Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;III)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 2
    .param p1, "iID"  # I

    .line 177
    return-void
.end method

.method public buildElemHover()V
    .registers 2

    .line 166
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;->toProvinceID:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/View/Button_View_Population;->getHoverPopulation(I)Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover_v2;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$6;->menuElemHover:Lage/of/civilizations2/jakowski/lukasz/MenuE_HoverP/ME_Hover;

    .line 167
    return-void
.end method

.method public getWidthE()I
    .registers 2

    .line 171
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Send/Army/Menu_InGame_SendArmy;->getElementW2()I

    move-result v0

    return v0
.end method
