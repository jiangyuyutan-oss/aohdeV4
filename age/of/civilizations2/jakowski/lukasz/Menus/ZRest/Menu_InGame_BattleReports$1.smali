.class Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_BattleReports$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Battle;
.source "Menu_InGame_BattleReports.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_BattleReports;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_BattleReports;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_BattleReports;Ljava/lang/String;IIIIIIIIII)V
    .registers 27
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_BattleReports;
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

    .line 40
    move-object v12, p0

    move-object v13, p1

    iput-object v13, v12, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_BattleReports$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_BattleReports;

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
    .registers 4
    .param p1, "iID"  # I

    .line 49
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameAction;->battleReports:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_BattleReports$1;->getCurr()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    .line 50
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_Report()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 53
    goto :goto_1a

    .line 51
    :catch_16
    move-exception v0

    .line 52
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 54
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_1a
    return-void
.end method

.method public getWidthE()I
    .registers 2

    .line 43
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_BattleReports$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_BattleReports;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_BattleReports;->getW()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    return v0
.end method
