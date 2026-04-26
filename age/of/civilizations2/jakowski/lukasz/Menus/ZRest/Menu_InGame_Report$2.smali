.class Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_Report$2;
.super Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Battle;
.source "Menu_InGame_Report.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_Report;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_Report;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_Report;Ljava/lang/String;IIIIIIIIII)V
    .registers 27
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_Report;
    .param p2, "text"  # Ljava/lang/String;
    .param p3, "iCivA"  # I
    .param p4, "iCivB"  # I
    .param p5, "iPosX"  # I
    .param p6, "iPosY"  # I
    .param p7, "iWidth"  # I
    .param p8, "id"  # I
    .param p9, "iAttackersArmy"  # I
    .param p10, "iDefendersArmy"  # I
    .param p11, "iAttackersArmyDeaths"  # I
    .param p12, "iDefendersArmyDeaths"  # I

    .line 66
    move-object v12, p0

    move-object v13, p1

    iput-object v13, v12, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_Report$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_Report;

    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    invoke-direct/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Battle;-><init>(Ljava/lang/String;IIIIIIIIII)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 3
    .param p1, "iID"  # I

    .line 74
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_BattleReports()V

    .line 75
    return-void
.end method

.method public getWidthE()I
    .registers 2

    .line 69
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_Report$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_Report;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_Report;->getW()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    return v0
.end method
