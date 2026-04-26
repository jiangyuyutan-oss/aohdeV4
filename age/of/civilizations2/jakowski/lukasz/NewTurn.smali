.class public Lage/of/civilizations2/jakowski/lukasz/NewTurn;
.super Ljava/lang/Thread;
.source "NewTurn.java"


# static fields
.field public static ageDevMod:F

.field public static ageRiskModifier:F

.field public static devUpdate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static ecoUpdate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static goodsUpdate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static happinessChange_ByTaxation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static happinessChange_ByTaxation_Occupied:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static tempCivs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;",
            ">;"
        }
    .end annotation
.end field

.field private static tempTime:J

.field private static tempTimeTotal:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 504
    const/high16 v0, 0x3f800000  # 1.0f

    sput v0, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->ageRiskModifier:F

    .line 505
    sput v0, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->ageDevMod:F

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->tempCivs:Ljava/util/List;

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->happinessChange_ByTaxation:Ljava/util/List;

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->happinessChange_ByTaxation_Occupied:Ljava/util/List;

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->goodsUpdate:Ljava/util/List;

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->devUpdate:Ljava/util/List;

    .line 514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->ecoUpdate:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public static capitulation(II)V
    .registers 8
    .param p0, "civID"  # I
    .param p1, "toCivID"  # I

    .line 1429
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvCapitulation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Capitulation;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Capitulation;->PLAYER_CAN_CAPITULATE:Z

    if-nez v0, :cond_13

    .line 1430
    return-void

    .line 1433
    :cond_13
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    .line 1435
    .local v0, "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_90

    if-lez v1, :cond_8f

    .line 1437
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_21
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getArmyInAnotherProvinceSize()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_26
    if-ltz v3, :cond_38

    .line 1438
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getArmyInAnotherProviP(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy4(II)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_35} :catch_39

    .line 1437
    add-int/lit8 v3, v3, -0x1

    goto :goto_26

    .line 1442
    .end local v3  # "i":I
    :cond_38
    goto :goto_3d

    .line 1440
    :catch_39
    move-exception v3

    .line 1441
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_3a
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_90

    .line 1445
    .end local v3  # "ex":Ljava/lang/Exception;
    :goto_3d
    :try_start_3d
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_42
    if-ltz v3, :cond_54

    .line 1446
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy4(II)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_51} :catch_55

    .line 1445
    add-int/lit8 v3, v3, -0x1

    goto :goto_42

    .line 1450
    .end local v3  # "i":I
    :cond_54
    goto :goto_59

    .line 1448
    :catch_55
    move-exception v1

    .line 1449
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_56
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1452
    .end local v1  # "ex":Ljava/lang/Exception;
    :goto_59
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_5e
    if-ltz v1, :cond_70

    .line 1453
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivId(IZ)V

    .line 1452
    add-int/lit8 v1, v1, -0x1

    goto :goto_5e

    .line 1456
    .end local v1  # "i":I
    :cond_70
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-nez v1, :cond_8f

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 1457
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "Capitulation"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->infoWar:I

    invoke-virtual {v1, v2, p0, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildMenu_InGame_Infobox(Ljava/lang/String;III)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_8f} :catch_90

    .line 1462
    .end local v0  # "civ":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    :cond_8f
    goto :goto_94

    .line 1460
    :catch_90
    move-exception v0

    .line 1461
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1463
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_94
    return-void
.end method

.method public static checkOccupiedProvincesIfAreAtWar()V
    .registers 9

    .line 55
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Province;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Province;->TURNS_BETWEEN_RETURNING_PEACEFUL_OCCUPIED_PROVINCES:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_233

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v1

    if-ge v0, v1, :cond_233

    .line 57
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v1

    if-nez v1, :cond_22f

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-gez v1, :cond_22f

    .line 58
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v1

    if-eqz v1, :cond_22f

    .line 59
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->REBELS_ID:I

    if-eq v1, v2, :cond_22f

    .line 60
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsAtWar(II)Z

    move-result v1

    if-nez v1, :cond_22f

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->isPreparingForTheWar(I)Z

    move-result v1

    if-nez v1, :cond_22f

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->isPreparingForTheWar(I)Z

    move-result v1

    if-nez v1, :cond_22f

    .line 61
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 62
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Messages/Province/Message_ProvincesOccupiedNotAtWar_LostControl;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v3

    invoke-direct {v2, v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Messages/Province/Message_ProvincesOccupiedNotAtWar_LostControl;-><init>(II)V

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 65
    :cond_f2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v1

    .line 66
    .local v1, "tempArmy0":I
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    .line 67
    .local v3, "tempCiv0":I
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v4

    .line 68
    .local v4, "tempArmyNewOwner":I
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy4(I)V

    .line 70
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v6

    invoke-virtual {v5, v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivId(IZ)V

    .line 72
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy4(II)V

    .line 73
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v5

    invoke-virtual {v2, v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy4(II)V

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v2, "tempCivsLostAccess":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_159
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v6

    if-ge v5, v6, :cond_179

    .line 78
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v5, v5, 0x1

    goto :goto_159

    .line 81
    .end local v5  # "j":I
    :cond_179
    const/4 v5, 0x0

    .restart local v5  # "j":I
    :goto_17a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_22f

    .line 82
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v7

    if-eq v6, v7, :cond_22b

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 83
    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v6, v7, :cond_22b

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 84
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v6

    if-lez v6, :cond_200

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v7

    if-eq v6, v7, :cond_22b

    :cond_200
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 85
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getMilitaryAccess(II)I

    move-result v6

    if-gtz v6, :cond_22b

    .line 87
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7, v0}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->accessLost_MoveArmyToClosetsProvince(II)V

    .line 81
    :cond_22b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_17a

    .line 56
    .end local v1  # "tempArmy0":I
    .end local v2  # "tempCivsLostAccess":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3  # "tempCiv0":I
    .end local v4  # "tempArmyNewOwner":I
    .end local v5  # "j":I
    :cond_22f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a

    .line 96
    .end local v0  # "i":I
    :cond_233
    return-void
.end method

.method public static final doAction()V
    .registers 10

    .line 103
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->updateCivs_Money()V

    .line 108
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_8
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_28

    .line 109
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    .line 110
    .local v3, "civI":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->runFestivals()V

    .line 111
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->runInvests_Development()V

    .line 112
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->runInvests()V

    .line 113
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->runAssimilates()V

    .line 115
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->runWarReparations()V

    .line 108
    .end local v3  # "civI":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 122
    .end local v2  # "i":I
    :cond_28
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->plagueManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Plagues/PlagueManager;->runPlagues()V

    .line 124
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->updateCapitulation()V

    .line 125
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->checkOccupiedProvincesIfAreAtWar()V

    .line 131
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->updateGameData()V

    .line 138
    const/4 v2, 0x1

    .restart local v2  # "i":I
    :goto_37
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_51

    .line 139
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->updateNextTurn(I)V

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 146
    .end local v2  # "i":I
    :cond_51
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->updateCivsMovementPoints()V

    .line 150
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->updateCivsDiploPoints()V

    .line 156
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->updateDiplomacy()V

    .line 162
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvUpdate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->USE_OLD_CIV_HAPPINESS_UPDATE:Z

    if-eqz v2, :cond_6a

    .line 163
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->updateCivsHappiness_AllCivs()V

    goto :goto_6f

    .line 166
    :cond_6a
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->updateCivsHappiness_New()V

    .line 169
    :goto_6f
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvUpdate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->USE_OLD_PROVINCE_STABILITY_UPDATE:Z

    if-eqz v2, :cond_7b

    .line 170
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->updateProvinceStabilityAllProvinces()V

    goto :goto_80

    .line 173
    :cond_7b
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->updatePrvStability()V

    .line 176
    :goto_80
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->updateInflationPeakValueAllCivs()V

    .line 178
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->updateDateNextTurn()V

    .line 185
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->updateBuildingsConstruction()V

    .line 187
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->updateWarWeariness()V

    .line 189
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->updateForeignInvests()V

    .line 190
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->updateForeignBuildInvests()V

    .line 191
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->updateDiplomaticSummits()V

    .line 192
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->updatePropaganda()V

    .line 193
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->updateSanctions()V

    .line 196
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->updateLibertyDesireMessages()V

    .line 202
    const/4 v2, 0x1

    .restart local v2  # "i":I
    :goto_a1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_193

    .line 203
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    if-lez v3, :cond_18f

    .line 204
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provincesWithLowStability:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "j":I
    :goto_c2
    if-ltz v3, :cond_18f

    .line 205
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provincesWithLowStability:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProviStability()F

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRebels:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->RISE_REVOLT_RISK_IN_PROVINCE_IF_STABILITY_BELOW:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_18b

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provincesWithLowStability:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v4

    if-nez v4, :cond_18b

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provincesWithLowStability:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRevRisk()F

    move-result v4

    const v5, 0x3f0ccccd  # 0.55f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_18b

    .line 207
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provincesWithLowStability:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provincesWithLowStability:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRevRisk()F

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->ageRiskModifier:F

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRebels:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->RISE_REVOLT_RISK_IN_PROVINCE_IF_STABILITY_BELOW:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Civilization;->provincesWithLowStability:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProviStability()F

    move-result v8

    sub-float/2addr v7, v8

    mul-float v6, v6, v7

    const v7, 0x3c7df3b6  # 0.0155f

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->setRevRisk(F)V

    .line 204
    :cond_18b
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_c2

    .line 202
    .end local v3  # "j":I
    :cond_18f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a1

    .line 218
    .end local v2  # "i":I
    :cond_193
    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-nez v2, :cond_1dc

    .line 219
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_198
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayersSize()I

    move-result v3
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19e} :catch_44f
    .catchall {:try_start_2 .. :try_end_19e} :catchall_44d

    if-ge v2, v3, :cond_1dc

    .line 221
    :try_start_1a0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    if-lez v3, :cond_1ce

    .line 222
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Player;->statsCiv:Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Player;->statsCiv:Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->getTurns()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/StatsCivGD;->setTurns(I)V
    :try_end_1ce
    .catch Ljava/lang/NullPointerException; {:try_start_1a0 .. :try_end_1ce} :catch_1cf
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1ce} :catch_44f
    .catchall {:try_start_1a0 .. :try_end_1ce} :catchall_44d

    .line 226
    :cond_1ce
    goto :goto_1d9

    .line 224
    :catch_1cf
    move-exception v3

    .line 225
    .local v3, "ex":Ljava/lang/NullPointerException;
    :try_start_1d0
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->tryLoadStats()V
    :try_end_1d9
    .catch Ljava/lang/Exception; {:try_start_1d0 .. :try_end_1d9} :catch_44f
    .catchall {:try_start_1d0 .. :try_end_1d9} :catchall_44d

    .line 219
    .end local v3  # "ex":Ljava/lang/NullPointerException;
    :goto_1d9
    add-int/lit8 v2, v2, 0x1

    goto :goto_198

    .line 231
    .end local v2  # "i":I
    :cond_1dc
    const/4 v2, 0x1

    .restart local v2  # "i":I
    :goto_1dd
    :try_start_1dd
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_1f1

    .line 232
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateBonuses()V
    :try_end_1ee
    .catch Ljava/lang/Exception; {:try_start_1dd .. :try_end_1ee} :catch_1f2
    .catchall {:try_start_1dd .. :try_end_1ee} :catchall_44d

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_1dd

    .line 236
    .end local v2  # "i":I
    :cond_1f1
    goto :goto_1f6

    .line 234
    :catch_1f2
    move-exception v2

    .line 235
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1f3
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_1f3 .. :try_end_1f6} :catch_44f
    .catchall {:try_start_1f3 .. :try_end_1f6} :catchall_44d

    .line 239
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_1f6
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1f7
    :try_start_1f7
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_20b

    .line 240
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateGift_Received()V
    :try_end_208
    .catch Ljava/lang/Exception; {:try_start_1f7 .. :try_end_208} :catch_20c
    .catchall {:try_start_1f7 .. :try_end_208} :catchall_44d

    .line 239
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f7

    .line 244
    .end local v2  # "i":I
    :cond_20b
    goto :goto_210

    .line 242
    :catch_20c
    move-exception v2

    .line 243
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_20d
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_210
    .catch Ljava/lang/Exception; {:try_start_20d .. :try_end_210} :catch_44f
    .catchall {:try_start_20d .. :try_end_210} :catchall_44d

    .line 247
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_210
    :try_start_210
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/GameManager;->updateGoldenAge()V

    .line 248
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/GameManager;->sendUncivilizedMessages()V

    .line 249
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/GameManager;->sendLowHappiness()V
    :try_end_219
    .catch Ljava/lang/Exception; {:try_start_210 .. :try_end_219} :catch_21a
    .catchall {:try_start_210 .. :try_end_219} :catchall_44d

    .line 252
    goto :goto_21e

    .line 250
    :catch_21a
    move-exception v2

    .line 251
    .restart local v2  # "ex":Ljava/lang/Exception;
    :try_start_21b
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 255
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_21e
    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-nez v2, :cond_3cb

    .line 256
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_223
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayersSize()I

    move-result v3

    if-ge v2, v3, :cond_3cb

    .line 257
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    if-lez v3, :cond_3c7

    .line 258
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->iWarPrepsSize:I

    sub-int/2addr v3, v1

    .local v3, "j":I
    :goto_258
    if-ltz v3, :cond_33f

    .line 259
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;

    iget v5, v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;->iNumOfTurnsLeft:I

    sub-int/2addr v5, v1

    iput v5, v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;->iNumOfTurnsLeft:I

    if-gtz v5, :cond_33b

    .line 260
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;->onCivID:I

    .line 261
    .local v4, "tOnCivID":I
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/AI/AI_WarPreparations;->onCivID:I

    invoke-virtual {v5, v6, v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->declareWar(IIZ)V

    .line 262
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civDiploGD:Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Messages/War/Message_War;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v7

    invoke-direct {v6, v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Messages/War/Message_War;-><init>(II)V

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V
    :try_end_2f0
    .catch Ljava/lang/Exception; {:try_start_21b .. :try_end_2f0} :catch_44f
    .catchall {:try_start_21b .. :try_end_2f0} :catchall_44d

    .line 265
    :try_start_2f0
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 266
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iput v6, v5, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->iWarPrepsSize:I
    :try_end_339
    .catch Ljava/lang/Exception; {:try_start_2f0 .. :try_end_339} :catch_33a
    .catchall {:try_start_2f0 .. :try_end_339} :catchall_44d

    .line 269
    goto :goto_33b

    .line 267
    :catch_33a
    move-exception v5

    .line 258
    .end local v4  # "tOnCivID":I
    :cond_33b
    :goto_33b
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_258

    .line 275
    .end local v3  # "j":I
    :cond_33f
    :try_start_33f
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v3

    if-ltz v3, :cond_39f

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    if-eq v3, v4, :cond_3c7

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v3

    if-nez v3, :cond_3c7

    .line 276
    :cond_39f
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civDiploGD:Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Messages/Info/Message_RelocateCapital;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-direct {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Messages/Info/Message_RelocateCapital;-><init>(I)V

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 256
    :cond_3c7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_223

    .line 282
    .end local v2  # "i":I
    :cond_3cb
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->updateHRE_Elections()V

    .line 284
    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->SANDBOX_MODE:Z

    if-eqz v2, :cond_3dd

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-nez v2, :cond_3dd

    .line 285
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameNewGame:Lage/of/civilizations2/jakowski/lukasz/NewGameManager;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/NewGameManager;->sandboxMode()V

    .line 288
    :cond_3dd
    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->SANDBOX_MODE_AI:Z

    if-eqz v2, :cond_3e4

    .line 289
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/NewGameManager;->sandboxMode_AI()V

    .line 292
    :cond_3e4
    const/4 v2, 0x1

    .restart local v2  # "i":I
    :goto_3e5
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_40a

    .line 293
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->updateEmbassyClosed()V

    .line 294
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v3

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->runImproveRelations(I)V

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e5

    .line 297
    .end local v2  # "i":I
    :cond_40a
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->updateRelations()V

    .line 299
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->updateOverInvestment()V

    .line 301
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/GameManager;->checkCivsHatedCivilizations_IfStillExists()V

    .line 302
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/GameManager;->updatePlayersFriendlyCivs()V

    .line 304
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_419
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getWarsSize()I

    move-result v3

    if-ge v2, v3, :cond_42f

    .line 305
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v3

    iget v4, v3, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iLastFight_InTurns:I

    add-int/2addr v4, v1

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iLastFight_InTurns:I

    .line 304
    add-int/lit8 v2, v2, 0x1

    goto :goto_419

    .line 308
    .end local v2  # "i":I
    :cond_42f
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->updateProvinceVolunteerArmySent()V
    :try_end_432
    .catch Ljava/lang/Exception; {:try_start_33f .. :try_end_432} :catch_44f
    .catchall {:try_start_33f .. :try_end_432} :catchall_44d

    .line 311
    :try_start_432
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->migr()V

    .line 313
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/GameN;->updateLeaderDeath()V
    :try_end_438
    .catch Ljava/lang/Exception; {:try_start_432 .. :try_end_438} :catch_439
    .catchall {:try_start_432 .. :try_end_438} :catchall_44d

    .line 316
    goto :goto_43a

    .line 314
    :catch_439
    move-exception v2

    .line 330
    :goto_43a
    :try_start_43a
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->iTurnsSinceLastSave:I

    add-int/2addr v2, v1

    sput v2, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->iTurnsSinceLastSave:I

    .line 331
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->gameWillBeSavedInThisTurn()Z

    move-result v2

    if-eqz v2, :cond_449

    .line 332
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;->trySaveGame()V

    goto :goto_453

    .line 335
    :cond_449
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->doAction_End()V
    :try_end_44c
    .catch Ljava/lang/Exception; {:try_start_43a .. :try_end_44c} :catch_44f
    .catchall {:try_start_43a .. :try_end_44c} :catchall_44d

    goto :goto_453

    .line 340
    :catchall_44d
    move-exception v2

    goto :goto_468

    .line 337
    :catch_44f
    move-exception v2

    .line 338
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_450
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_453
    .catchall {:try_start_450 .. :try_end_453} :catchall_44d

    .line 340
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_453
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameProvInfo()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setClickable(Z)V

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_2;->TIME_CONTINUE:J

    .line 342
    nop

    .line 343
    return-void

    .line 340
    :goto_468
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameProvInfo()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setClickable(Z)V

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_2;->TIME_CONTINUE:J

    .line 342
    goto :goto_47d

    :goto_47c
    throw v2

    :goto_47d
    goto :goto_47c
.end method

.method public static final doAction_End()V
    .registers 6

    .line 411
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sput-wide v2, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->tempTime:J

    .line 413
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayersSize()I

    move-result v3

    if-ge v2, v3, :cond_1f

    .line 414
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->setNoOrders(Z)V

    .line 413
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 417
    .end local v2  # "i":I
    :cond_1f
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->moveRegroupArmy()V

    .line 422
    const/4 v2, 0x1

    .restart local v2  # "i":I
    :goto_25
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_72

    .line 423
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getUpdateRegions()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 424
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/NewTurn$1;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buildCivilizationRegions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/NewTurn$1;-><init>(Ljava/lang/String;I)V

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->addSimpleTask(Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;)V

    .line 436
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/NewTurn$2;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buildNeighbors"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/NewTurn$2;-><init>(Ljava/lang/String;I)V

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->addSimpleTask(Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;)V

    .line 422
    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 449
    .end local v2  # "i":I
    :cond_72
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->updateIsSupplied()V

    .line 455
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->runEvents()V

    .line 457
    sget v2, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNS_SINCE_LAST_WAR:I

    add-int/2addr v2, v1

    sput v2, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNS_SINCE_LAST_WAR:I

    .line 459
    sget v2, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvUpdate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->REBUILD_CIV_RANK_SCORES_EVERY_X_TURNS:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_8f

    .line 460
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->buildRank_Score()V

    .line 463
    :cond_8f
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog/HistoryManager;->addNewTurn()V

    .line 464
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->newTurn()V

    .line 466
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/MapA/CitiesManager;->updateCities()V

    .line 471
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->checkGameEnd()V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a1} :catch_a4
    .catchall {:try_start_2 .. :try_end_a1} :catchall_a2

    goto :goto_a8

    .line 475
    :catchall_a2
    move-exception v2

    goto :goto_bd

    .line 472
    :catch_a4
    move-exception v2

    .line 473
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_a5
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_a2

    .line 475
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_a8
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameProvInfo()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setClickable(Z)V

    .line 476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_2;->TIME_CONTINUE:J

    .line 477
    nop

    .line 478
    return-void

    .line 475
    :goto_bd
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameProvInfo()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setClickable(Z)V

    .line 476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_2;->TIME_CONTINUE:J

    .line 477
    goto :goto_d2

    :goto_d1
    throw v2

    :goto_d2
    goto :goto_d1
.end method

.method public static getGoodsUpdate(I)F
    .registers 5
    .param p0, "civID"  # I

    .line 698
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingGoodsB()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getMin_Goods(I)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5d

    .line 699
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->GOODS_UNDER_MIN_PENALTY:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getMin_Goods(I)F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingGoodsB()F

    move-result v2

    sub-float/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getMin_Goods(I)F

    move-result v2

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    goto :goto_8c

    .line 700
    :cond_5d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getMin_Goods(I)F

    move-result v0

    neg-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->GOODS_OVER_MIN_BASE:F

    add-float/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingGoodsB()F

    move-result v1

    add-float/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->getAge_Population_GrowthRate(I)F

    move-result v1

    mul-float v0, v0, v1

    .line 698
    :goto_8c
    return v0
.end method

.method public static getInvestUpdate(I)F
    .registers 5
    .param p0, "civID"  # I

    .line 704
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingInvestmentsB()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v2

    invoke-virtual {v1, v2, p0}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getInvestments(II)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_53

    .line 705
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->INVEST_UNDER_MIN_ECO_PENALTY:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v2

    invoke-virtual {v1, v2, p0}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getInvestments(II)F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingInvestmentsB()F

    move-result v2

    sub-float/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MIN_INVESTMENTS:F

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    goto :goto_84

    .line 706
    :cond_53
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getInvestments(II)F

    move-result v0

    neg-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->INVEST_OVER_MIN_ECO_BASE:F

    add-float/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingInvestmentsB()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->INVEST_OVER_INVESTMENTS_MODIFIER:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->getAge_Economy_GrowthRate(I)F

    move-result v1

    mul-float v0, v0, v1

    .line 704
    :goto_84
    return v0
.end method

.method public static getUpdateGameData_EconomyGrowth_WithoutRandom(I)I
    .registers 15
    .param p0, "civID"  # I

    .line 636
    const/4 v0, 0x0

    .line 639
    .local v0, "out":I
    :try_start_1
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->getInvestUpdate(I)F

    move-result v1

    .line 641
    .local v1, "civInvestsUpdate":F
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingEconomy()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->ECONOMY_GROWTH_STARTING_ECONOMY_MODIFIER:F

    mul-float v2, v2, v3

    .line 643
    .local v2, "modifiedStartingEco":F
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->ECO_GROWTH_BUDGET_TEXT_RANDOM_MODIFIER:F

    .line 645
    .local v3, "randomModifier":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1b
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v5

    if-ge v4, v5, :cond_238

    .line 646
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    .line 647
    .local v5, "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    const/4 v6, 0x0

    .line 649
    .local v6, "tempEcoPop":F
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingGoodsB()F

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v8

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getMin_Goods(I)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_d7

    .line 651
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v7

    int-to-float v7, v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvGoods:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;->GOODS_BELOW_MIN_ECONOMY_BASE_MODIFIER:F

    mul-float v7, v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 652
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v8

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getMin_Goods(I)F

    move-result v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingGoodsB()F

    move-result v9

    sub-float/2addr v8, v9

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v9

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getMin_Goods(I)F

    move-result v9

    div-float/2addr v8, v9

    mul-float v7, v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvGoods:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;->GOODS_BELOW_MIN_ECONOMY_BASE_DEV_POP_GROWTH_MODIFIER:F

    .line 653
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvGoods:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;->GOODS_BELOW_MIN_ECONOMY_PROVINCE_DEVELOPMENT_MODIFIER:F

    mul-float v9, v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop_WithFarm_WithTerrain()F

    move-result v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvGoods:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;->GOODS_BELOW_MIN_ECONOMY_PROVINCE_GROWTH_RATE_MODIFIER:F

    mul-float v9, v9, v10

    add-float/2addr v8, v9

    mul-float v6, v7, v8

    .line 659
    :cond_d7
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v7

    int-to-float v7, v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v8

    int-to-float v8, v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomyGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_STARTING_POPULATION_MODIFIER:F

    mul-float v8, v8, v9

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v9

    mul-float v8, v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    mul-float v7, v7, v1

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomyGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_BASE_VALUE:F

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomyGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_PROV_DEVELOPMENT_PERC_OF_TECH_MODIFIER:F

    .line 661
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v11

    div-float/2addr v10, v11

    mul-float v9, v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop_WithFarm_WithTerrain()F

    move-result v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomyGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_PROV_GROWTH_RATE_MODIFIER:F

    mul-float v9, v9, v10

    add-float/2addr v8, v9

    mul-float v7, v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 662
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getModifier_EconomyGrowth()F

    move-result v8

    const/high16 v9, 0x3f800000  # 1.0f

    add-float/2addr v8, v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_EconomyGrowthRate_Modifier()F

    move-result v10

    add-float/2addr v8, v10

    mul-float v7, v7, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->GAME_SPEED:F

    mul-float v7, v7, v8

    .line 666
    .local v7, "tempEco":F
    const/4 v8, 0x0

    cmpl-float v10, v7, v8

    if-lez v10, :cond_1ff

    .line 668
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v11

    mul-float v11, v11, v2

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1a1

    .line 669
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingEconomy()I

    move-result v10

    int-to-float v10, v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomyGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_LOW_ECONOMY_BONUS_BASE:F

    .line 670
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v12

    int-to-float v12, v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingEconomy()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    sub-float v12, v9, v12

    mul-float v11, v11, v12

    mul-float v10, v10, v11

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop_WithFarm_WithTerrain()F

    move-result v11

    mul-float v10, v10, v11

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomyGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_LOW_ECONOMY_BONUS_PROV_GROWTH_RATE_MODIFIER:F

    mul-float v10, v10, v11

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomyGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_LOW_ECONOMY_BONUS_PROV_DEVELOPMENT_MODIFIER:F

    mul-float v11, v11, v12

    invoke-static {v11, v9}, Ljava/lang/Math;->min(FF)F

    move-result v11

    mul-float v10, v10, v11

    add-float/2addr v7, v10

    .line 673
    :cond_1a1
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomyGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_MODIFIER_STARTING_ECONOMY_MIN:F

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->ECO_GROWTH_SATURATION_STRENGTH:F

    .line 674
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v12

    int-to-float v12, v12

    mul-float v11, v11, v12

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingEconomy()I

    move-result v12

    int-to-float v12, v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomyGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;

    iget v13, v13, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_MODIFIER_STARTING_ECONOMY_MODIFIER:F

    mul-float v12, v12, v13

    div-float/2addr v11, v12

    sub-float/2addr v9, v11

    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    mul-float v7, v7, v9

    .line 676
    cmpl-float v8, v7, v8

    if-lez v8, :cond_1ff

    .line 677
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomyGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_MODIFIER_FINAL_BASE_PERC:F

    mul-float v8, v8, v7

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomyGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_MODIFIER_FINAL_RANDOM_POSITIVE_PERC:F

    mul-float v9, v9, v7

    const/high16 v10, 0x42c80000  # 100.0f

    mul-float v9, v9, v10

    float-to-int v9, v9

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomyGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_MODIFIER_FINAL_RANDOM_POSITIVE_MIN_VALUE:I

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v3

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomyGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_MODIFIER_FINAL_RANDOM_NEGATIVE_PERC:F

    mul-float v9, v9, v7

    mul-float v9, v9, v10

    float-to-int v9, v9

    const/4 v11, 0x1

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v3

    div-float/2addr v9, v10

    sub-float v7, v8, v9

    .line 681
    :cond_1ff
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingInvestmentsB()F

    move-result v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v10

    invoke-virtual {v9, v10, p0}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getInvestments(II)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_222

    .line 682
    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ECONOMY_GROWTH_RATE:F

    mul-float v7, v7, v8

    goto :goto_230

    .line 685
    :cond_222
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->MIN_ECONOMY_CHANCE:I

    int-to-float v8, v8

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->ECONOMY_GROWTH_RATE:F

    mul-float v9, v9, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8
    :try_end_22f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22f} :catch_239

    move v7, v8

    .line 688
    :goto_230
    float-to-int v8, v6

    float-to-int v9, v7

    add-int/2addr v8, v9

    add-int/2addr v0, v8

    .line 645
    .end local v5  # "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    .end local v6  # "tempEcoPop":F
    .end local v7  # "tempEco":F
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1b

    .line 692
    .end local v1  # "civInvestsUpdate":F
    .end local v2  # "modifiedStartingEco":F
    .end local v3  # "randomModifier":F
    .end local v4  # "i":I
    :cond_238
    goto :goto_23d

    .line 690
    :catch_239
    move-exception v1

    .line 691
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 694
    .end local v1  # "ex":Ljava/lang/Exception;
    :goto_23d
    return v0
.end method

.method public static getUpdateGameData_PopulationGrowth(I)I
    .registers 14
    .param p0, "civID"  # I

    .line 536
    const/4 v0, 0x0

    .line 539
    .local v0, "out":I
    :try_start_1
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->getGoodsUpdate(I)F

    move-result v1

    .line 541
    .local v1, "civGoodsUpdate":F
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->POPULATION_GROWTH_STARTING_POPULATION_MODIFIER:F

    mul-float v2, v2, v3

    .line 543
    .local v2, "modifiedStartingPop":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v4

    if-ge v3, v4, :cond_1a3

    .line 544
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    .line 546
    .local v4, "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_BASE_VALUE:F

    .line 547
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v7

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getMin_Goods(I)F

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingGoodsB()F

    move-result v8

    const/high16 v9, 0x42c80000  # 100.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_7d

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_BASE_VALUE_GOODS_SPENDING_BELOW_RANDOM_100_MAX:I

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    goto :goto_81

    :cond_7d
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_BASE_VALUE_GOODS_SPENDING_OVER:F

    :goto_81
    add-float/2addr v6, v7

    mul-float v5, v5, v6

    mul-float v5, v5, v1

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_PROVINCE_GROWTH_RATE_BASE:F

    .line 549
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop_WithFarm_WithTerrain()F

    move-result v7

    add-float/2addr v6, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getModifier_PopGrowth()F

    move-result v7

    add-float/2addr v6, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_PROVINCE_GROWTH_RATE_MODIFIER:F

    mul-float v6, v6, v7

    mul-float v5, v5, v6

    .line 550
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_PROVINCE_DEVELOPMENT_MODIFIER:F

    mul-float v6, v6, v7

    const/high16 v7, 0x3f800000  # 1.0f

    add-float/2addr v6, v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_PopulationGrowthRate_Modifier()F

    move-result v8

    add-float/2addr v6, v8

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->GAME_SPEED:F

    mul-float v5, v5, v6

    .line 553
    .local v5, "tempPopGrowth":F
    const/4 v6, 0x0

    cmpl-float v8, v5, v6

    if-lez v8, :cond_18b

    .line 555
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v10

    mul-float v10, v10, v2

    cmpg-float v8, v8, v10

    if-gez v8, :cond_121

    .line 556
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 557
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v8

    int-to-float v8, v8

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_LOW_POPULATION_BONUS_BASE:F

    .line 558
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v11

    int-to-float v11, v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    sub-float v11, v7, v11

    mul-float v10, v10, v11

    mul-float v8, v8, v10

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v10

    mul-float v8, v8, v10

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_LOW_POPULATION_BONUS_DEVELOPMENT_MODIFIER:F

    mul-float v10, v10, v11

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_LOW_POPULATION_BONUS_DEVELOPMENT_MODIFIER_LIMIT:F

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    mul-float v8, v8, v10

    add-float/2addr v5, v8

    .line 561
    :cond_121
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_STARTING_POPULATION_MIN:F

    const v10, 0x3ecccccd  # 0.4f

    .line 562
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v10

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v10

    int-to-float v10, v10

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_STARTING_POPULATION_MODIFIER:F

    mul-float v10, v10, v12

    div-float/2addr v11, v10

    sub-float v10, v7, v11

    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float v8, v8, v5

    add-float v5, v8, v7

    .line 564
    cmpl-float v6, v5, v6

    if-lez v6, :cond_18b

    .line 565
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_FINAL_BASE_PERC:F

    mul-float v6, v6, v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_FINAL_RANDOM_POSITIVE_PERC:F

    mul-float v8, v8, v5

    mul-float v8, v8, v9

    float-to-int v8, v8

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_FINAL_RANDOM_POSITIVE_MIN_VALUE:I

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_FINAL_RANDOM_NEGATIVE_PERC:F

    mul-float v8, v8, v5

    mul-float v8, v8, v9

    float-to-int v8, v8

    const/4 v10, 0x1

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    sub-float v5, v6, v7

    .line 569
    :cond_18b
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->POPULATION_GROWTH_RATE:F

    mul-float v5, v5, v6

    .line 571
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_LIMIT_PER_TURN:I

    int-to-float v6, v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_19d

    .line 572
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_LIMIT_PER_TURN:I
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19c} :catch_1a4

    int-to-float v5, v6

    .line 575
    :cond_19d
    float-to-int v6, v5

    add-int/2addr v0, v6

    .line 543
    .end local v4  # "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    .end local v5  # "tempPopGrowth":F
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_17

    .line 579
    .end local v1  # "civGoodsUpdate":F
    .end local v2  # "modifiedStartingPop":F
    .end local v3  # "i":I
    :cond_1a3
    goto :goto_1a8

    .line 577
    :catch_1a4
    move-exception v1

    .line 578
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 581
    .end local v1  # "ex":Ljava/lang/Exception;
    :goto_1a8
    return v0
.end method

.method public static getUpdateGameData_PopulationGrowth_WithoutRandom(I)I
    .registers 15
    .param p0, "civID"  # I

    .line 585
    const/4 v0, 0x0

    .line 588
    .local v0, "out":I
    :try_start_1
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->getGoodsUpdate(I)F

    move-result v1

    .line 590
    .local v1, "civGoodsUpdate":F
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->POPULATION_GROWTH_STARTING_POPULATION_MODIFIER:F

    mul-float v2, v2, v3

    .line 592
    .local v2, "modifiedStartingPop":F
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_BUDGET_TEXT_RANDOM_MODIFIER:F

    .line 594
    .local v3, "randomModifier":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1b
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v5

    if-ge v4, v5, :cond_19b

    .line 595
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    .line 597
    .local v5, "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v6

    int-to-float v6, v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_BASE_VALUE:F

    .line 598
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v8

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getMin_Goods(I)F

    move-result v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingGoodsB()F

    move-result v9

    const/high16 v10, 0x42c80000  # 100.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_7d

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_BASE_VALUE_GOODS_SPENDING_BELOW_RANDOM_100_MAX:I

    int-to-float v8, v8

    mul-float v8, v8, v3

    div-float/2addr v8, v10

    goto :goto_81

    :cond_7d
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_BASE_VALUE_GOODS_SPENDING_OVER:F

    :goto_81
    add-float/2addr v7, v8

    mul-float v6, v6, v7

    mul-float v6, v6, v1

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_PROVINCE_GROWTH_RATE_BASE:F

    .line 600
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop_WithFarm_WithTerrain()F

    move-result v8

    add-float/2addr v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getModifier_PopGrowth()F

    move-result v8

    add-float/2addr v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_PROVINCE_GROWTH_RATE_MODIFIER:F

    mul-float v7, v7, v8

    mul-float v6, v6, v7

    .line 601
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_PROVINCE_DEVELOPMENT_MODIFIER:F

    mul-float v7, v7, v8

    const/high16 v8, 0x3f800000  # 1.0f

    add-float/2addr v7, v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_PopulationGrowthRate_Modifier()F

    move-result v9

    add-float/2addr v7, v9

    mul-float v6, v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->GAME_SPEED:F

    mul-float v6, v6, v7

    .line 604
    .local v6, "tempPopGrowth":F
    const/4 v7, 0x0

    cmpl-float v9, v6, v7

    if-lez v9, :cond_183

    .line 606
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v11

    mul-float v11, v11, v2

    cmpg-float v9, v9, v11

    if-gez v9, :cond_121

    .line 607
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 608
    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v9

    int-to-float v9, v9

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_LOW_POPULATION_BONUS_BASE:F

    .line 609
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v12

    int-to-float v12, v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    sub-float v12, v8, v12

    mul-float v11, v11, v12

    mul-float v9, v9, v11

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v11

    mul-float v9, v9, v11

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_LOW_POPULATION_BONUS_DEVELOPMENT_MODIFIER:F

    mul-float v11, v11, v12

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_LOW_POPULATION_BONUS_DEVELOPMENT_MODIFIER_LIMIT:F

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    mul-float v9, v9, v11

    add-float/2addr v6, v9

    .line 612
    :cond_121
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_STARTING_POPULATION_MIN:F

    const v11, 0x3ecccccd  # 0.4f

    .line 613
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v11

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v11

    int-to-float v11, v11

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v13, v13, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_STARTING_POPULATION_MODIFIER:F

    mul-float v11, v11, v13

    div-float/2addr v12, v11

    sub-float v11, v8, v12

    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    mul-float v9, v9, v6

    add-float v6, v9, v8

    .line 615
    cmpl-float v7, v6, v7

    if-lez v7, :cond_183

    .line 616
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_FINAL_BASE_PERC:F

    mul-float v7, v7, v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_FINAL_RANDOM_POSITIVE_PERC:F

    mul-float v8, v8, v6

    mul-float v8, v8, v10

    float-to-int v8, v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_FINAL_RANDOM_POSITIVE_MIN_VALUE:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v3

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_FINAL_RANDOM_NEGATIVE_PERC:F

    mul-float v8, v8, v6

    mul-float v8, v8, v10

    float-to-int v8, v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v3

    div-float/2addr v8, v10

    sub-float v6, v7, v8

    .line 620
    :cond_183
    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->POPULATION_GROWTH_RATE:F

    mul-float v6, v6, v7

    .line 622
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_LIMIT_PER_TURN:I

    int-to-float v7, v7

    cmpl-float v7, v6, v7

    if-lez v7, :cond_195

    .line 623
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_LIMIT_PER_TURN:I
    :try_end_194
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_194} :catch_19c

    int-to-float v6, v7

    .line 626
    :cond_195
    float-to-int v7, v6

    add-int/2addr v0, v7

    .line 594
    .end local v5  # "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    .end local v6  # "tempPopGrowth":F
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1b

    .line 630
    .end local v1  # "civGoodsUpdate":F
    .end local v2  # "modifiedStartingPop":F
    .end local v3  # "randomModifier":F
    .end local v4  # "i":I
    :cond_19b
    goto :goto_1a0

    .line 628
    :catch_19c
    move-exception v1

    .line 629
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 632
    .end local v1  # "ex":Ljava/lang/Exception;
    :goto_1a0
    return v0
.end method

.method public static final migr()V
    .registers 14

    .line 348
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayersSize()I

    move-result v1

    if-ge v0, v1, :cond_2c4

    .line 349
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->playerGD:Lage/of/civilizations2/jakowski/lukasz/PlayerGD;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PlayerGD;->migrationF:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c0

    .line 350
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->playerGD:Lage/of/civilizations2/jakowski/lukasz/PlayerGD;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PlayerGD;->migrationF:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_29
    if-ltz v1, :cond_2c0

    .line 351
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Player;->playerGD:Lage/of/civilizations2/jakowski/lukasz/PlayerGD;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PlayerGD;->migrationF:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 352
    .local v2, "civ":I
    const/4 v3, 0x1

    .line 357
    .local v3, "remove":Z
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_41
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v5

    if-ge v4, v5, :cond_27b

    .line 358
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNatsSize()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "o":I
    :goto_7f
    if-ltz v5, :cond_277

    .line 359
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v6

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v6

    if-ne v6, v2, :cond_273

    .line 360
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v6

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v6

    .line 362
    .local v6, "maxPop":I
    if-lez v6, :cond_273

    .line 363
    int-to-float v7, v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopRelocate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopRelocate;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopRelocate;->MIGRATE_MIN:I

    int-to-float v8, v8

    int-to-float v9, v6

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopRelocate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopRelocate;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopRelocate;->MIGRATE_PERC:F

    mul-float v9, v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    float-to-int v7, v7

    .line 364
    .local v7, "popTM":I
    int-to-float v8, v7

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 366
    .local v8, "perc":F
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f800000  # 1.0f

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopRelocate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopRelocate;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopRelocate;->MIGRATE_ECO_MODIFIER:F

    mul-float v12, v12, v8

    sub-float/2addr v11, v12

    mul-float v10, v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->setEco(I)V

    .line 367
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRevRisk()F

    move-result v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopRelocate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopRelocate;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopRelocate;->MIGRATE_REV_RISK_MODIFIER:F

    mul-float v11, v11, v8

    add-float/2addr v10, v11

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->setRevRisk(F)V

    .line 369
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v10

    invoke-virtual {v10, v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v9, v2, v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    .line 371
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v9

    if-lez v9, :cond_228

    .line 372
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvID(I)I

    move-result v9

    .line 373
    .local v9, "toPr":I
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v11

    invoke-virtual {v11, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {v10, v2, v11}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    .line 374
    nop

    .end local v9  # "toPr":I
    goto :goto_272

    .line 376
    :cond_228
    const/4 v9, 0x0

    .local v9, "y":I
    :goto_229
    const/16 v10, 0x19

    if-ge v9, v10, :cond_272

    .line 377
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    .line 379
    .local v10, "rand":I
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v11

    if-nez v11, :cond_26f

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v11

    if-ltz v11, :cond_252

    goto :goto_26f

    .line 383
    :cond_252
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v12

    invoke-virtual {v12, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result v12

    add-int/2addr v12, v7

    invoke-virtual {v11, v2, v12}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    .line 384
    goto :goto_272

    .line 376
    .end local v10  # "rand":I
    :cond_26f
    :goto_26f
    add-int/lit8 v9, v9, 0x1

    goto :goto_229

    .line 389
    .end local v9  # "y":I
    :cond_272
    :goto_272
    const/4 v3, 0x0

    .line 358
    .end local v6  # "maxPop":I
    .end local v7  # "popTM":I
    .end local v8  # "perc":F
    :cond_273
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_7f

    .line 357
    .end local v5  # "o":I
    :cond_277
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_41

    .line 395
    .end local v4  # "k":I
    :cond_27b
    if-eqz v3, :cond_2bc

    .line 396
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Messages/Message_MigrationComplete;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Player;->playerGD:Lage/of/civilizations2/jakowski/lukasz/PlayerGD;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PlayerGD;->migrationF:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Messages/Message_MigrationComplete;-><init>(I)V

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 397
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Player;->playerGD:Lage/of/civilizations2/jakowski/lukasz/PlayerGD;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PlayerGD;->migrationF:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2bc
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2bc} :catch_2c5

    .line 350
    .end local v2  # "civ":I
    .end local v3  # "remove":Z
    :cond_2bc
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_29

    .line 348
    .end local v1  # "j":I
    :cond_2c0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 404
    .end local v0  # "i":I
    :cond_2c4
    goto :goto_2c9

    .line 402
    :catch_2c5
    move-exception v0

    .line 403
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 405
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_2c9
    return-void
.end method

.method public static updateBuildingsConstruction()V
    .registers 8

    .line 1240
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_56

    .line 1241
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->runConstructions()V

    .line 1244
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvTechnology:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->MIN_MONEY_REQUIRED_TO_ENABLE_RESEARCH:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_2f

    .line 1245
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSpendingResearchB(F)V

    .line 1248
    :cond_2f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->techPoints:Lage/of/civilizations2/jakowski/lukasz/TechPoints;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/TechPoints;->getPointsLeft(I)I

    move-result v1

    if-lez v1, :cond_53

    .line 1249
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Messages/Info/Message_TechPoints;

    invoke-direct {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Messages/Info/Message_TechPoints;-><init>(I)V

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 1240
    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1253
    .end local v0  # "i":I
    :cond_56
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_57
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayersSize()I

    move-result v1

    if-ge v0, v1, :cond_1d3

    .line 1254
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v1

    if-lez v1, :cond_1cf

    .line 1255
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingGoodsB()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getMin_Goods(I)F

    move-result v2

    const/high16 v3, 0x42c80000  # 100.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_10a

    .line 1256
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Messages/Info/Message_GoodsLow;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getMin_Goods(I)F

    move-result v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    invoke-direct {v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Messages/Info/Message_GoodsLow;-><init>(II)V

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 1259
    :cond_10a
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingInvestmentsB()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getInvestments(II)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_195

    .line 1260
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Messages/Info/Message_InvestmentsLow;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getInvestments(II)F

    move-result v5

    mul-float v5, v5, v3

    float-to-int v3, v5

    invoke-direct {v2, v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Messages/Info/Message_InvestmentsLow;-><init>(II)V

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 1263
    :cond_195
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->armyExpertisePointsLeft(I)I

    move-result v1

    if-lez v1, :cond_1cf

    .line 1264
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Messages/Civilization/Message_MilitaryExpPoints;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Messages/Civilization/Message_MilitaryExpPoints;-><init>(I)V

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V
    :try_end_1cf
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1cf} :catch_1d4

    .line 1253
    :cond_1cf
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_57

    .line 1270
    .end local v0  # "a":I
    :cond_1d3
    goto :goto_1d8

    .line 1268
    :catch_1d4
    move-exception v0

    .line 1269
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1271
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_1d8
    return-void
.end method

.method public static updateCapitulation()V
    .registers 5

    .line 1396
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getWarsSize()I

    move-result v1

    if-ge v0, v1, :cond_cd

    .line 1399
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getWarScore()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvCapitulation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Capitulation;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Capitulation;->CAPITULATION_AGGRESSORS_MIN_WAR_SCORE:F

    const/4 v3, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6a

    .line 1400
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1e
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v2

    if-ge v1, v2, :cond_69

    .line 1404
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getProvinces_Defender_OwnTotal(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getProvinces_Defender_Own(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CAPITULATION:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_66

    .line 1406
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    invoke-static {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->capitulation(II)V

    .line 1400
    :cond_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .end local v1  # "j":I
    :cond_69
    goto :goto_c9

    .line 1410
    :cond_6a
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getWarScore()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvCapitulation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Capitulation;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Capitulation;->CAPITULATION_DEFENDERS_MIN_WAR_SCORE:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_c9

    .line 1411
    const/4 v1, 0x0

    .restart local v1  # "j":I
    :goto_7e
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v2

    if-ge v1, v2, :cond_c9

    .line 1415
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getProvinces_Aggressor_OwnTotal(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getProvinces_Aggressor_Own(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CAPITULATION:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_c6

    .line 1417
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    invoke-static {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->capitulation(II)V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c6} :catch_ce

    .line 1411
    :cond_c6
    add-int/lit8 v1, v1, 0x1

    goto :goto_7e

    .line 1396
    .end local v1  # "j":I
    :cond_c9
    :goto_c9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1424
    .end local v0  # "i":I
    :cond_cd
    goto :goto_d2

    .line 1422
    :catch_ce
    move-exception v0

    .line 1423
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1425
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_d2
    return-void
.end method

.method public static updateDiplomacy()V
    .registers 9

    .line 1061
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_397

    .line 1062
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    .line 1065
    .local v1, "civI":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    const/4 v2, 0x1

    :try_start_10
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b5

    .line 1066
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1069
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;>;"
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 1070
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    .line 1072
    .local v4, "tData":Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiploPoints()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacyPoints:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->DIPLOMACY_COST_PER_DEFENSIVE_PACT:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setDiploPoints(I)V

    .line 1073
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v7, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiploPoints()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacyPoints:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->DIPLOMACY_COST_PER_DEFENSIVE_PACT:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setDiploPoints(I)V

    .line 1075
    iget v5, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    if-ne v5, v2, :cond_9a

    .line 1076
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v5

    if-lez v5, :cond_9a

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v5

    if-lez v5, :cond_9a

    .line 1077
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Messages/DefensivePact/Response/Message_DefensivePact_Expired;

    iget v7, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-direct {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Messages/DefensivePact/Response/Message_DefensivePact_Expired;-><init>(I)V

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 1078
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Messages/DefensivePact/Response/Message_DefensivePact_Expired;

    invoke-direct {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Messages/DefensivePact/Response/Message_DefensivePact_Expired;-><init>(I)V

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 1082
    :cond_9a
    iget v5, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    if-ne v5, v2, :cond_ab

    .line 1083
    iget v5, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    sub-int/2addr v6, v2

    invoke-virtual {v1, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setDefensivePact4(II)Z

    .line 1084
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_22

    .line 1086
    :cond_ab
    iget v5, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    sub-int/2addr v6, v2

    invoke-virtual {v1, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setDefensivePact4(II)Z
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_b3} :catch_b6

    goto/16 :goto_22

    .line 1092
    .end local v3  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;>;"
    .end local v4  # "tData":Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;
    :cond_b5
    goto :goto_ba

    .line 1090
    :catch_b6
    move-exception v3

    .line 1091
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1095
    .end local v3  # "ex":Ljava/lang/Exception;
    :goto_ba
    :try_start_ba
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_15f

    .line 1096
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1099
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;>;"
    :goto_cc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15f

    .line 1100
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    .line 1102
    .restart local v4  # "tData":Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiploPoints()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacyPoints:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->DIPLOMACY_COST_PER_NONAGGRESSION:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setDiploPoints(I)V

    .line 1103
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v7, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiploPoints()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacyPoints:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->DIPLOMACY_COST_PER_NONAGGRESSION:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setDiploPoints(I)V

    .line 1105
    iget v5, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    if-ne v5, v2, :cond_144

    .line 1106
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v5

    if-lez v5, :cond_144

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v5

    if-lez v5, :cond_144

    .line 1107
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Messages/NonAggression/Message_NonAggressionPact_Expired;

    iget v7, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-direct {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Messages/NonAggression/Message_NonAggressionPact_Expired;-><init>(I)V

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 1108
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Messages/NonAggression/Message_NonAggressionPact_Expired;

    invoke-direct {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Messages/NonAggression/Message_NonAggressionPact_Expired;-><init>(I)V

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 1114
    :cond_144
    iget v5, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    if-ne v5, v2, :cond_155

    .line 1115
    iget v5, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    sub-int/2addr v6, v2

    invoke-virtual {v1, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setNonAggPact(II)Z

    .line 1116
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_cc

    .line 1118
    :cond_155
    iget v5, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    sub-int/2addr v6, v2

    invoke-virtual {v1, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setNonAggPact(II)Z
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_15d} :catch_160

    goto/16 :goto_cc

    .line 1124
    .end local v3  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;>;"
    .end local v4  # "tData":Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;
    :cond_15f
    goto :goto_164

    .line 1122
    :catch_160
    move-exception v3

    .line 1123
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1127
    .end local v3  # "ex":Ljava/lang/Exception;
    :goto_164
    :try_start_164
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_21d

    .line 1128
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1131
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;>;"
    :goto_176
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21d

    .line 1132
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    .line 1134
    .restart local v4  # "tData":Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiploPoints()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacyPoints:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->DIPLOMACY_COST_PER_GUARANTEE:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setDiploPoints(I)V

    .line 1135
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v7, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiploPoints()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacyPoints:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->DIPLOMACY_COST_PER_GUARANTEE:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setDiploPoints(I)V

    .line 1137
    iget v5, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    if-ne v5, v2, :cond_202

    .line 1138
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v5

    if-lez v5, :cond_202

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v5

    if-lez v5, :cond_202

    .line 1139
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v5

    if-eqz v5, :cond_1de

    .line 1140
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Messages/Guarantee/Message_IndependenceFrom_Expired;

    iget v7, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-direct {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Messages/Guarantee/Message_IndependenceFrom_Expired;-><init>(I)V

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 1142
    :cond_1de
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v5

    if-eqz v5, :cond_202

    .line 1143
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Messages/Guarantee/Message_Independence_Expired;

    invoke-direct {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Messages/Guarantee/Message_Independence_Expired;-><init>(I)V

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 1150
    :cond_202
    iget v5, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    if-ne v5, v2, :cond_213

    .line 1151
    iget v5, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    sub-int/2addr v6, v2

    invoke-virtual {v1, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setGuarantee2(II)Z

    .line 1152
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_176

    .line 1154
    :cond_213
    iget v5, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    sub-int/2addr v6, v2

    invoke-virtual {v1, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setGuarantee2(II)Z
    :try_end_21b
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_21b} :catch_21e

    goto/16 :goto_176

    .line 1160
    .end local v3  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;>;"
    .end local v4  # "tData":Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;
    :cond_21d
    goto :goto_222

    .line 1158
    :catch_21e
    move-exception v3

    .line 1159
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1163
    .end local v3  # "ex":Ljava/lang/Exception;
    :goto_222
    :try_start_222
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2fa

    .line 1164
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1167
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;>;"
    :goto_234
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2fa

    .line 1168
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    .line 1170
    .restart local v4  # "tData":Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiploPoints()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacyPoints:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->DIPLOMACY_COST_PER_MILITARY_ACCESS:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setDiploPoints(I)V

    .line 1171
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v7, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiploPoints()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacyPoints:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_DiplomacyPoints;->DIPLOMACY_COST_PER_MILITARY_ACCESS:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setDiploPoints(I)V

    .line 1173
    iget v5, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    if-ne v5, v2, :cond_2c1

    .line 1174
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v5

    if-lez v5, :cond_2df

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v5

    if-lez v5, :cond_2df

    .line 1175
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v5

    if-eqz v5, :cond_29c

    .line 1176
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Messages/MilitaryAccess/Message_MilitaryAccess_Expired;

    iget v7, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-direct {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Messages/MilitaryAccess/Message_MilitaryAccess_Expired;-><init>(I)V

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 1178
    :cond_29c
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v5

    if-eqz v5, :cond_2df

    .line 1179
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Messages/MilitaryAccess/Message_MilitaryAccess_Expired;

    invoke-direct {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Messages/MilitaryAccess/Message_MilitaryAccess_Expired;-><init>(I)V

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    goto :goto_2df

    .line 1183
    :cond_2c1
    iget v5, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    const/4 v6, 0x4

    if-ge v5, v6, :cond_2df

    .line 1184
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v5

    if-eqz v5, :cond_2df

    .line 1185
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Messages/MilitaryAccess/Message_MilitaryAccess_ExpireSoon;

    iget v7, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    iget v8, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    sub-int/2addr v8, v2

    invoke-direct {v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Messages/MilitaryAccess/Message_MilitaryAccess_ExpireSoon;-><init>(II)V

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 1191
    :cond_2df
    :goto_2df
    iget v5, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    if-ne v5, v2, :cond_2f0

    .line 1192
    iget v5, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    sub-int/2addr v6, v2

    invoke-virtual {v1, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMilitaryAccess7(II)Z

    .line 1193
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_234

    .line 1195
    :cond_2f0
    iget v5, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    sub-int/2addr v6, v2

    invoke-virtual {v1, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMilitaryAccess7(II)Z
    :try_end_2f8
    .catch Ljava/lang/Exception; {:try_start_222 .. :try_end_2f8} :catch_2fb

    goto/16 :goto_234

    .line 1201
    .end local v3  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;>;"
    .end local v4  # "tData":Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;
    :cond_2fa
    goto :goto_2ff

    .line 1199
    :catch_2fb
    move-exception v3

    .line 1200
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1204
    .end local v3  # "ex":Ljava/lang/Exception;
    :goto_2ff
    :try_start_2ff
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_38e

    .line 1205
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1208
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;>;"
    :goto_311
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38e

    .line 1209
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;

    .line 1211
    .restart local v4  # "tData":Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;
    iget v5, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    if-ne v5, v2, :cond_375

    .line 1212
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v5

    if-lez v5, :cond_375

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v5

    if-lez v5, :cond_375

    .line 1213
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v5

    if-eqz v5, :cond_351

    .line 1214
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Messages/Truce/Message_Truce_Expired;

    iget v7, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-direct {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Messages/Truce/Message_Truce_Expired;-><init>(I)V

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 1216
    :cond_351
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v5

    if-eqz v5, :cond_375

    .line 1217
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Messages/Truce/Message_Truce_Expired;

    invoke-direct {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Messages/Truce/Message_Truce_Expired;-><init>(I)V

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 1222
    :cond_375
    iget v5, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    if-ne v5, v2, :cond_385

    .line 1223
    iget v5, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    sub-int/2addr v6, v2

    invoke-virtual {v1, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setTruce3(II)Z

    .line 1224
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_311

    .line 1226
    :cond_385
    iget v5, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    iget v6, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    sub-int/2addr v6, v2

    invoke-virtual {v1, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setTruce3(II)Z
    :try_end_38d
    .catch Ljava/lang/Exception; {:try_start_2ff .. :try_end_38d} :catch_38f

    goto :goto_311

    .line 1232
    .end local v3  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;>;>;"
    .end local v4  # "tData":Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;
    :cond_38e
    goto :goto_393

    .line 1230
    :catch_38f
    move-exception v2

    .line 1231
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1061
    .end local v1  # "civI":Lage/of/civilizations2/jakowski/lukasz/Civilization;
    .end local v2  # "ex":Ljava/lang/Exception;
    :goto_393
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1234
    .end local v0  # "i":I
    :cond_397
    return-void
.end method

.method public static updateDiplomaticSummits()V
    .registers 6

    .line 1352
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->diplomaticSummits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_155

    .line 1353
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->diplomaticSummits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;->invitedCivs:Ljava/util/List;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/GameManager;->summitImproveRelations(Ljava/util/List;)V

    .line 1355
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->diplomaticSummits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;->endTurnID:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_156

    if-gt v1, v2, :cond_151

    .line 1357
    :try_start_2b
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->diplomaticSummits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;->civHostID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 1358
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "DiplomaticSummitOver"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->diplomaticSummits:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;->civHostID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->getCurrDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->infoDiplomacy:I

    invoke-virtual {v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildMenu_InGame_Infobox(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1361
    :cond_83
    const/4 v1, 0x1

    .local v1, "a":I
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->diplomaticSummits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;->invitedCivs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "civsSize":I
    :goto_94
    if-ge v1, v2, :cond_d7

    .line 1362
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->diplomaticSummits:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;->invitedCivs:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCapitalOrProvince(I)I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->diplomaticSummits:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;->invitedCivs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCapitalOrProvince(I)I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->addDiplomacyLines(IILcom/badlogic/gdx/graphics/Color;)V

    .line 1361
    add-int/lit8 v1, v1, 0x1

    goto :goto_94

    .line 1365
    .end local v1  # "a":I
    .end local v2  # "civsSize":I
    :cond_d7
    const/4 v1, 0x0

    .restart local v1  # "a":I
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->diplomaticSummits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;->invitedCivs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .restart local v2  # "civsSize":I
    :goto_e8
    if-ge v1, v2, :cond_145

    .line 1366
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->diplomaticSummits:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;->invitedCivs:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v3

    if-eqz v3, :cond_142

    .line 1367
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->diplomaticSummits:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;->invitedCivs:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Messages/Relations/Summit/Message_SummitIsOver;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->diplomaticSummits:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummit;->civHostID:I

    invoke-direct {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Messages/Relations/Summit/Message_SummitIsOver;-><init>(I)V

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_142} :catch_146

    .line 1365
    :cond_142
    add-int/lit8 v1, v1, 0x1

    goto :goto_e8

    .line 1372
    .end local v1  # "a":I
    .end local v2  # "civsSize":I
    :cond_145
    goto :goto_14a

    .line 1370
    :catch_146
    move-exception v1

    .line 1371
    .local v1, "exr":Ljava/lang/Exception;
    :try_start_147
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1374
    .end local v1  # "exr":Ljava/lang/Exception;
    :goto_14a
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->diplomaticSummits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_151} :catch_156

    .line 1352
    :cond_151
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_a

    .line 1379
    .end local v0  # "i":I
    :cond_155
    goto :goto_15a

    .line 1377
    :catch_156
    move-exception v0

    .line 1378
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1382
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_15a
    :try_start_15a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->diplomaticSummitCooldowns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_164
    if-ltz v0, :cond_180

    .line 1383
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->diplomaticSummitCooldowns:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummitCooldown;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilizations/DiplomaticSummitA/DiplomaticSummitCooldown;->turnID:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    if-gt v1, v2, :cond_17d

    .line 1384
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->diplomaticSummitCooldowns:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_17d} :catch_181

    .line 1382
    :cond_17d
    add-int/lit8 v0, v0, -0x1

    goto :goto_164

    .line 1389
    .end local v0  # "i":I
    :cond_180
    goto :goto_185

    .line 1387
    :catch_181
    move-exception v0

    .line 1388
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1390
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_185
    return-void
.end method

.method public static updateForeignBuildInvests()V
    .registers 7

    .line 1295
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->buildForeignGold:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_c8

    .line 1296
    sget v1, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->buildForeignGold:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;->returnTurnID:I

    if-lt v1, v2, :cond_c4

    .line 1297
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->buildForeignGold:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;->civID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->buildForeignGold:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;->civID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->buildForeignGold:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;->gold:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setGold(J)V

    .line 1299
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->buildForeignGold:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;->civID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 1300
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->buildForeignGold:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;->civID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Messages/Invest/Message_InvestBuildDoneForeign;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->buildForeignGold:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;->inCivID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->buildForeignGold:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;->provinceID:I

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->buildForeignGold:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;->gold:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->buildForeignGold:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;->profit:I

    invoke-direct {v2, v3, v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Messages/Invest/Message_InvestBuildDoneForeign;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 1303
    :cond_bd
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->buildForeignGold:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c4} :catch_c9

    .line 1295
    :cond_c4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_a

    .line 1308
    .end local v0  # "i":I
    :cond_c8
    goto :goto_cd

    .line 1306
    :catch_c9
    move-exception v0

    .line 1307
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1309
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_cd
    return-void
.end method

.method public static updateForeignInvests()V
    .registers 7

    .line 1277
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->investForeignGold:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_c8

    .line 1278
    sget v1, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->investForeignGold:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;->returnTurnID:I

    if-lt v1, v2, :cond_c4

    .line 1279
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->investForeignGold:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;->civID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->investForeignGold:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;->civID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->investForeignGold:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;->gold:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setGold(J)V

    .line 1281
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->investForeignGold:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;->civID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 1282
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->investForeignGold:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;->civID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivDiploGD()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Messages/Invest/Message_InvestDoneForeign;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->investForeignGold:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;->inCivID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->investForeignGold:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;->provinceID:I

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->investForeignGold:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;->gold:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->investForeignGold:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/ForeignInvest;->profit:I

    invoke-direct {v2, v3, v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Messages/Invest/Message_InvestDoneForeign;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V

    .line 1285
    :cond_bd
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->investForeignGold:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c4} :catch_c9

    .line 1277
    :cond_c4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_a

    .line 1290
    .end local v0  # "i":I
    :cond_c8
    goto :goto_cd

    .line 1288
    :catch_c9
    move-exception v0

    .line 1289
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1291
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_cd
    return-void
.end method

.method public static final updateGameData()V
    .registers 16

    .line 710
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->tempCivs:Ljava/util/List;

    .line 712
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->happinessChange_ByTaxation:Ljava/util/List;

    .line 713
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->happinessChange_ByTaxation_Occupied:Ljava/util/List;

    .line 715
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->goodsUpdate:Ljava/util/List;

    .line 716
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->devUpdate:Ljava/util/List;

    .line 717
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->ecoUpdate:Ljava/util/List;

    .line 719
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->getAge_RevolutionaryRiskModifier(I)F

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->ageRiskModifier:F

    .line 720
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->getAge_DevelopmentLevel_Increase(I)F

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->ageDevMod:F

    .line 722
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_3f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    if-ge v0, v1, :cond_15a

    .line 723
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v1

    if-lez v1, :cond_10c

    .line 724
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->happinessChange_ByTaxation:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getHappinessChange_ByTaxation(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->happinessChange_ByTaxation_Occupied:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameUpdate:Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game/GameUpdate;->getHappinessChange_ByTaxation_Occupied(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->goodsUpdate:Ljava/util/List;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->getGoodsUpdate(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->devUpdate:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingInvestmentsB()F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getInvestments(II)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_d6

    .line 730
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->INVEST_UNDER_MIN_DEV_PENALTY:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getInvestments(II)F

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingInvestmentsB()F

    move-result v5

    sub-float/2addr v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v5

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MIN_INVESTMENTS:F

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    goto :goto_f7

    .line 731
    :cond_d6
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getInvestments(II)F

    move-result v3

    neg-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->INVEST_OVER_MIN_DEV_BASE:F

    add-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingInvestmentsB()F

    move-result v4

    add-float/2addr v3, v4

    .line 729
    :goto_f7
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->ecoUpdate:Ljava/util/List;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->getInvestUpdate(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_139

    .line 736
    :cond_10c
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->happinessChange_ByTaxation:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->happinessChange_ByTaxation_Occupied:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->goodsUpdate:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->devUpdate:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->ecoUpdate:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    :goto_139
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civAggressionLevel:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;->CIV_AGGRESSION_DECAY_PER_TURN:F

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civAggressionLevel:F

    .line 722
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3f

    .line 746
    .end local v0  # "i":I
    :cond_15a
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->updateNukes()V

    .line 748
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->POPULATION_GROWTH_STARTING_POPULATION_MODIFIER:F

    mul-float v0, v0, v1

    .line 749
    .local v0, "modifiedStartingPop":F
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingEconomy()I

    move-result v1

    int-to-float v1, v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->ECONOMY_GROWTH_STARTING_ECONOMY_MODIFIER:F

    mul-float v1, v1, v4

    .line 755
    .local v1, "modifiedStartingEco":F
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v4

    const v5, 0x3ecccccd  # 0.4f

    const/high16 v6, 0x42c80000  # 100.0f

    const/4 v7, 0x1

    if-nez v4, :cond_351

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;

    iget-boolean v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->POPULATION_GROWTH_USE_SIMPLER_VERSION:Z

    if-eqz v4, :cond_193

    goto/16 :goto_351

    .line 849
    :cond_193
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_194
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v8

    if-ge v4, v8, :cond_682

    .line 850
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    .line 852
    .local v8, "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v9

    if-nez v9, :cond_34d

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v9

    if-gez v9, :cond_34d

    .line 853
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v9

    if-lez v9, :cond_34d

    .line 856
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v9

    int-to-float v9, v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_BASE_VALUE:F

    .line 857
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getMin_Goods(I)F

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingGoodsB()F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1fc

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_BASE_VALUE_GOODS_SPENDING_BELOW_RANDOM_100_MAX:I

    invoke-virtual {v11, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v6

    goto :goto_200

    :cond_1fc
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_BASE_VALUE_GOODS_SPENDING_OVER:F

    :goto_200
    add-float/2addr v10, v11

    mul-float v9, v9, v10

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->goodsUpdate:Ljava/util/List;

    .line 858
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v11

    sub-int/2addr v11, v7

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    mul-float v9, v9, v10

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_PROVINCE_GROWTH_RATE_BASE:F

    .line 859
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop_WithFarm_WithTerrain()F

    move-result v11

    add-float/2addr v10, v11

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getModifier_PopGrowth()F

    move-result v11

    add-float/2addr v10, v11

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_PROVINCE_GROWTH_RATE_MODIFIER:F

    mul-float v10, v10, v11

    mul-float v9, v9, v10

    .line 860
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_PROVINCE_DEVELOPMENT_MODIFIER:F

    mul-float v10, v10, v11

    add-float/2addr v10, v3

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_PopulationGrowthRate_Modifier()F

    move-result v11

    add-float/2addr v10, v11

    mul-float v9, v9, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->GAME_SPEED:F

    mul-float v9, v9, v10

    .line 863
    .local v9, "tempPopGrowth":F
    cmpl-float v10, v9, v2

    if-lez v10, :cond_314

    .line 865
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v11

    mul-float v11, v11, v0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_2ae

    .line 866
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 867
    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v10

    int-to-float v10, v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_LOW_POPULATION_BONUS_BASE:F

    .line 868
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v12

    int-to-float v12, v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    sub-float v12, v3, v12

    mul-float v11, v11, v12

    mul-float v10, v10, v11

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v11

    mul-float v10, v10, v11

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_LOW_POPULATION_BONUS_DEVELOPMENT_MODIFIER:F

    mul-float v11, v11, v12

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_LOW_POPULATION_BONUS_DEVELOPMENT_MODIFIER_LIMIT:F

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    mul-float v10, v10, v11

    add-float/2addr v9, v10

    .line 871
    :cond_2ae
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_STARTING_POPULATION_MIN:F

    .line 872
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v5

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v12

    int-to-float v12, v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v13, v13, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_STARTING_POPULATION_MODIFIER:F

    mul-float v12, v12, v13

    div-float/2addr v11, v12

    sub-float v11, v3, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    mul-float v10, v10, v9

    add-float v9, v10, v3

    .line 874
    cmpl-float v10, v9, v2

    if-lez v10, :cond_314

    .line 875
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_FINAL_BASE_PERC:F

    mul-float v10, v10, v9

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_FINAL_RANDOM_POSITIVE_PERC:F

    mul-float v12, v12, v9

    mul-float v12, v12, v6

    float-to-int v12, v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v13, v13, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_FINAL_RANDOM_POSITIVE_MIN_VALUE:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v6

    add-float/2addr v10, v11

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_FINAL_RANDOM_NEGATIVE_PERC:F

    mul-float v12, v12, v9

    mul-float v12, v12, v6

    float-to-int v12, v12

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v6

    sub-float v9, v10, v11

    .line 879
    :cond_314
    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->POPULATION_GROWTH_RATE:F

    mul-float v9, v9, v10

    .line 881
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_LIMIT_PER_TURN:I

    int-to-float v10, v10

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->POPULATION_GROWTH_RATE:F

    mul-float v10, v10, v11

    cmpl-float v10, v9, v10

    if-lez v10, :cond_32e

    .line 882
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_LIMIT_PER_TURN:I

    int-to-float v10, v10

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->POPULATION_GROWTH_RATE:F

    mul-float v9, v10, v11

    .line 886
    :cond_32e
    float-to-int v10, v9

    if-eqz v10, :cond_34a

    .line 887
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v10

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v11

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v12

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result v12

    float-to-int v13, v9

    add-int/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    .line 892
    :cond_34a
    invoke-static {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->updateGameData_Province(IF)V

    .line 849
    .end local v8  # "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    .end local v9  # "tempPopGrowth":F
    :cond_34d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_194

    .line 756
    .end local v4  # "i":I
    :cond_351
    :goto_351
    const/4 v4, 0x0

    .restart local v4  # "i":I
    :goto_352
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v8

    if-ge v4, v8, :cond_682

    .line 757
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    .line 759
    .restart local v8  # "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v9

    if-nez v9, :cond_67d

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v9

    if-gez v9, :cond_67d

    .line 760
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v9

    if-lez v9, :cond_67d

    .line 763
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v9

    int-to-float v9, v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_BASE_VALUE:F

    .line 764
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getMin_Goods(I)F

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingGoodsB()F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_3ba

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_BASE_VALUE_GOODS_SPENDING_BELOW_RANDOM_100_MAX:I

    invoke-virtual {v11, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v6

    goto :goto_3be

    :cond_3ba
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_BASE_VALUE_GOODS_SPENDING_OVER:F

    :goto_3be
    add-float/2addr v10, v11

    mul-float v9, v9, v10

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->goodsUpdate:Ljava/util/List;

    .line 765
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v11

    sub-int/2addr v11, v7

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    mul-float v9, v9, v10

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_PROVINCE_GROWTH_RATE_BASE:F

    .line 766
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop_WithFarm_WithTerrain()F

    move-result v11

    add-float/2addr v10, v11

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getModifier_PopGrowth()F

    move-result v11

    add-float/2addr v10, v11

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_PROVINCE_GROWTH_RATE_MODIFIER:F

    mul-float v10, v10, v11

    mul-float v9, v9, v10

    .line 767
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_PROVINCE_DEVELOPMENT_MODIFIER:F

    mul-float v10, v10, v11

    add-float/2addr v10, v3

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_PopulationGrowthRate_Modifier()F

    move-result v11

    add-float/2addr v10, v11

    mul-float v9, v9, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->GAME_SPEED:F

    mul-float v9, v9, v10

    .line 770
    .restart local v9  # "tempPopGrowth":F
    cmpl-float v10, v9, v2

    if-lez v10, :cond_4d2

    .line 772
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v11

    mul-float v11, v11, v0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_46c

    .line 773
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 774
    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v10

    int-to-float v10, v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_LOW_POPULATION_BONUS_BASE:F

    .line 775
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v12

    int-to-float v12, v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    sub-float v12, v3, v12

    mul-float v11, v11, v12

    mul-float v10, v10, v11

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v11

    mul-float v10, v10, v11

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_LOW_POPULATION_BONUS_DEVELOPMENT_MODIFIER:F

    mul-float v11, v11, v12

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_LOW_POPULATION_BONUS_DEVELOPMENT_MODIFIER_LIMIT:F

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    mul-float v10, v10, v11

    add-float/2addr v9, v10

    .line 778
    :cond_46c
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_STARTING_POPULATION_MIN:F

    .line 779
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v5

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v12

    int-to-float v12, v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v13, v13, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_STARTING_POPULATION_MODIFIER:F

    mul-float v12, v12, v13

    div-float/2addr v11, v12

    sub-float v11, v3, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    mul-float v10, v10, v9

    add-float v9, v10, v3

    .line 781
    cmpl-float v10, v9, v2

    if-lez v10, :cond_4d2

    .line 782
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_FINAL_BASE_PERC:F

    mul-float v10, v10, v9

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_FINAL_RANDOM_POSITIVE_PERC:F

    mul-float v12, v12, v9

    mul-float v12, v12, v6

    float-to-int v12, v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v13, v13, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_FINAL_RANDOM_POSITIVE_MIN_VALUE:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v6

    add-float/2addr v10, v11

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_MODIFIER_FINAL_RANDOM_NEGATIVE_PERC:F

    mul-float v12, v12, v9

    mul-float v12, v12, v6

    float-to-int v12, v12

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v6

    sub-float v9, v10, v11

    .line 786
    :cond_4d2
    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->POPULATION_GROWTH_RATE:F

    mul-float v9, v9, v10

    .line 788
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_LIMIT_PER_TURN:I

    int-to-float v10, v10

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->POPULATION_GROWTH_RATE:F

    mul-float v10, v10, v11

    cmpl-float v10, v9, v10

    if-lez v10, :cond_4ec

    .line 789
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_LIMIT_PER_TURN:I

    int-to-float v10, v10

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->POPULATION_GROWTH_RATE:F

    mul-float v9, v10, v11

    .line 793
    :cond_4ec
    float-to-int v10, v9

    if-eqz v10, :cond_67a

    .line 794
    const/high16 v10, -0x3ee00000  # -10.0f

    cmpl-float v10, v9, v10

    if-lez v10, :cond_516

    const/high16 v10, 0x41800000  # 16.0f

    cmpg-float v10, v9, v10

    if-gez v10, :cond_516

    .line 795
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v10

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v11

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v12

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result v12

    float-to-int v13, v9

    add-int/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    goto/16 :goto_67a

    .line 798
    :cond_516
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->tempCivs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 800
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->tempCivs:Ljava/util/List;

    new-instance v11, Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v13, v13, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_NATIONALITY_OWNER_X_STABILITY:F

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProviStability()F

    move-result v14

    mul-float v13, v13, v14

    invoke-direct {v11, v12, v13}, Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;-><init>(IF)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 801
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v11

    if-eq v10, v11, :cond_563

    .line 802
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->tempCivs:Ljava/util/List;

    new-instance v11, Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v13, v13, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_NATIONALITY_LORD:F

    invoke-direct {v11, v12, v13}, Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;-><init>(IF)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    :cond_563
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v10

    if-eqz v10, :cond_57b

    .line 806
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->tempCivs:Ljava/util/List;

    new-instance v11, Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v13, v13, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_NATIONALITY_TRUE_OWNER:F

    invoke-direct {v11, v12, v13}, Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;-><init>(IF)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    :cond_57b
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_57c
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCores()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivsSize()I

    move-result v11

    if-ge v10, v11, :cond_59f

    .line 810
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->tempCivs:Ljava/util/List;

    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCores()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v13

    invoke-virtual {v13, v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v14, v14, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_NATIONALITY_CORE_CIV:F

    invoke-direct {v12, v13, v14}, Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;-><init>(IF)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    add-int/lit8 v10, v10, 0x1

    goto :goto_57c

    .line 813
    .end local v10  # "j":I
    :cond_59f
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v10

    .line 815
    .local v10, "tempPop":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_5a8
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNatsSize()I

    move-result v12

    if-ge v11, v12, :cond_5d5

    .line 816
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->tempCivs:Ljava/util/List;

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v14

    invoke-virtual {v14, v11}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v14

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v15

    invoke-virtual {v15, v11}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v15

    int-to-float v15, v15

    int-to-float v2, v10

    div-float/2addr v15, v2

    mul-float v15, v15, v6

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;-><init>(IF)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x0

    goto :goto_5a8

    .line 819
    .end local v11  # "j":I
    :cond_5d5
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_5d6
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v11

    if-ge v2, v11, :cond_60b

    .line 820
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v11

    if-lez v11, :cond_608

    .line 821
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->tempCivs:Ljava/util/List;

    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPopulationGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;

    iget v14, v14, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_PopulationGrowth;->POP_GROWTH_NATIONALITY_NEIGHBORING_PROVINCE_CIV:F

    invoke-direct {v12, v13, v14}, Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;-><init>(IF)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    :cond_608
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d6

    .line 825
    .end local v2  # "j":I
    :cond_60b
    const/4 v2, 0x0

    .line 826
    .local v2, "tempTotalPoints":F
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->tempCivs:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v7

    .restart local v11  # "j":I
    :goto_613
    if-ltz v11, :cond_623

    .line 827
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->tempCivs:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;->fPerc:F

    add-float/2addr v2, v12

    .line 826
    add-int/lit8 v11, v11, -0x1

    goto :goto_613

    .line 831
    .end local v11  # "j":I
    :cond_623
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->tempCivs:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v7

    .restart local v11  # "j":I
    :goto_62a
    if-ltz v11, :cond_675

    .line 832
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->tempCivs:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->tempCivs:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;

    iget v13, v13, Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;->fPerc:F

    div-float/2addr v13, v2

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;->fPerc:F

    .line 834
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->tempCivs:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;

    iget v13, v13, Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;->iCivID:I

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->tempCivs:Ljava/util/List;

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;

    iget v15, v15, Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;->iCivID:I

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->tempCivs:Ljava/util/List;

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;

    iget v15, v15, Lage/of/civilizations2/jakowski/lukasz/PopulationGrowth;->fPerc:F

    mul-float v15, v15, v9

    float-to-int v15, v15

    add-int/2addr v14, v15

    invoke-virtual {v12, v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    .line 831
    add-int/lit8 v11, v11, -0x1

    goto :goto_62a

    .line 837
    .end local v11  # "j":I
    :cond_675
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->tempCivs:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 843
    .end local v2  # "tempTotalPoints":F
    .end local v10  # "tempPop":I
    :cond_67a
    :goto_67a
    invoke-static {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->updateGameData_Province(IF)V

    .line 756
    .end local v8  # "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    .end local v9  # "tempPopGrowth":F
    :cond_67d
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    goto/16 :goto_352

    .line 898
    .end local v4  # "i":I
    :cond_682
    sget v2, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvUpdate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->UPDATE_NEUTRAL_ARMY:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_6f6

    .line 899
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_68c
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v3

    if-ge v2, v3, :cond_6f6

    .line 900
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v3

    if-nez v3, :cond_6f3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v3

    if-gez v3, :cond_6f3

    .line 901
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    if-nez v3, :cond_6f3

    .line 903
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Province;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Province;->NEUTRAL_ARMY_UPDATE_CHANCE_100:I

    if-le v3, v4, :cond_6f3

    .line 904
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID1(I)I

    move-result v4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Province;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Province;->NEUTRAL_ARMY_UPDATE_BASE:I

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvProvince:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Province;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Province;->NEUTRAL_ARMY_UPDATE_RANDOM:I

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/2addr v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    mul-int v6, v6, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvUpdate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Update;->UPDATE_NEUTRAL_ARMY:I

    rem-int/2addr v6, v7

    add-int/2addr v4, v6

    invoke-virtual {v3, v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy4(II)V

    .line 899
    :cond_6f3
    add-int/lit8 v2, v2, 0x1

    goto :goto_68c

    .line 911
    .end local v2  # "i":I
    :cond_6f6
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->tempCivs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 912
    const/4 v2, 0x0

    sput-object v2, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->tempCivs:Ljava/util/List;

    .line 914
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->happinessChange_ByTaxation:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 915
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->happinessChange_ByTaxation_Occupied:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 916
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->goodsUpdate:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 917
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->devUpdate:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 918
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->ecoUpdate:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 923
    return-void
.end method

.method public static updateGameData_Province(IF)V
    .registers 13
    .param p0, "iProvinceID"  # I
    .param p1, "modifiedStartingEco"  # F

    .line 926
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    .line 929
    .local v0, "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v1

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    if-ne v1, v2, :cond_5c

    .line 930
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-nez v1, :cond_5c

    .line 931
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCores()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v1

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->increaseOwnership(II)V

    .line 933
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v1

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v2

    if-eq v1, v2, :cond_5c

    .line 934
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCores()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v2

    invoke-virtual {v1, v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->increaseOwnership(II)V

    .line 939
    :cond_5c
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_bb

    .line 940
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v4

    if-ne v1, v4, :cond_a3

    .line 942
    sget v1, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->ageDevMod:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->devUpdate:Ljava/util/List;

    .line 943
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float v1, v1, v4

    .line 944
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop_WithFarm_WithTerrain()F

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDevelopment:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Development;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Development;->DEV_CHANGE_PROVINCE_GROWTH_RATE_MODIFIER:F

    mul-float v4, v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDevelopment:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Development;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Development;->DEV_CHANGE_MODIFIER_LIMIT:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float v1, v1, v4

    .line 946
    .local v1, "tempDevelopmentChange":F
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v4

    add-float/2addr v4, v1

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDevLvl(F)V

    .line 947
    .end local v1  # "tempDevelopmentChange":F
    goto :goto_bb

    .line 950
    :cond_a3
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDevelopment:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Development;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Development;->DEV_CHANGE_OCCUPIED_RANDOM:I

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDevelopment:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Development;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Development;->DEV_CHANGE_OCCUPIED_RANDOM_DIVIDE:F

    div-float/2addr v4, v5

    sub-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDevLvl(F)V

    .line 954
    :cond_bb
    :goto_bb
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingGoodsB()F

    move-result v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v4

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getMin_Goods(I)F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1f2

    .line 956
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvGoods:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;->GOODS_BELOW_MIN_HAPPINESS_BASE_MODIFIER:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v6

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v4

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getMin_Goods(I)F

    move-result v4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingGoodsB()F

    move-result v6

    sub-float/2addr v4, v6

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v6

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getMin_Goods(I)F

    move-result v6

    div-float/2addr v4, v6

    mul-float v1, v1, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvGoods:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;->GOODS_BELOW_MIN_HAPPINESS_BASE_DEV_POP_GROWTH_MODIFIER:F

    .line 958
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvGoods:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;->GOODS_BELOW_MIN_HAPPINESS_PROVINCE_DEVELOPMENT_MODIFIER:F

    mul-float v6, v6, v7

    add-float/2addr v4, v6

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop_WithFarm()F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvGoods:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;->GOODS_BELOW_MIN_HAPPINESS_PROVINCE_GROWTH_RATE_MODIFIER:F

    mul-float v6, v6, v7

    add-float/2addr v4, v6

    mul-float v1, v1, v4

    .line 960
    .local v1, "tempHapp":F
    cmpl-float v4, v1, v5

    if-lez v4, :cond_16f

    .line 961
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvGoods:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;->GOODS_BELOW_MIN_HAPPINESS_WAR_WEARiNESS_MODIFIER:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->warWeariness:F

    mul-float v4, v4, v6

    add-float/2addr v4, v2

    mul-float v1, v1, v4

    .line 964
    :cond_16f
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v4

    add-float/2addr v4, v1

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->setHappi(F)V

    .line 967
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v4

    int-to-float v4, v4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvGoods:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;->GOODS_BELOW_MIN_ECONOMY_BASE_MODIFIER:F

    mul-float v4, v4, v6

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 968
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v6

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getMin_Goods(I)F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingGoodsB()F

    move-result v7

    sub-float/2addr v6, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v7

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getMin_Goods(I)F

    move-result v7

    div-float/2addr v6, v7

    mul-float v4, v4, v6

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvGoods:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;->GOODS_BELOW_MIN_ECONOMY_BASE_DEV_POP_GROWTH_MODIFIER:F

    .line 969
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvGoods:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;->GOODS_BELOW_MIN_ECONOMY_PROVINCE_DEVELOPMENT_MODIFIER:F

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop_WithFarm_WithTerrain()F

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvGoods:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Goods;->GOODS_BELOW_MIN_ECONOMY_PROVINCE_GROWTH_RATE_MODIFIER:F

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    mul-float v4, v4, v6

    .line 972
    .local v4, "tempEcoPop":F
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v4

    float-to-int v6, v6

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->setEco(I)V

    .line 976
    .end local v1  # "tempHapp":F
    .end local v4  # "tempEcoPop":F
    :cond_1f2
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v1

    int-to-float v1, v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v4

    int-to-float v4, v4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomyGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_STARTING_POPULATION_MODIFIER:F

    mul-float v4, v4, v6

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v6

    mul-float v4, v4, v6

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->ecoUpdate:Ljava/util/List;

    .line 977
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float v1, v1, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomyGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_BASE_VALUE:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomyGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_PROV_DEVELOPMENT_PERC_OF_TECH_MODIFIER:F

    .line 978
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v8

    div-float/2addr v7, v8

    mul-float v6, v6, v7

    add-float/2addr v4, v6

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop_WithFarm_WithTerrain()F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomyGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_PROV_GROWTH_RATE_MODIFIER:F

    mul-float v6, v6, v7

    add-float/2addr v4, v6

    mul-float v1, v1, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 979
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getModifier_EconomyGrowth()F

    move-result v4

    add-float/2addr v4, v2

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_EconomyGrowthRate_Modifier()F

    move-result v6

    add-float/2addr v4, v6

    mul-float v1, v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->GAME_SPEED:F

    mul-float v1, v1, v4

    .line 983
    .local v1, "tempEco":F
    const/high16 v4, 0x42c80000  # 100.0f

    cmpl-float v6, v1, v5

    if-lez v6, :cond_330

    .line 985
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v7

    mul-float v7, v7, p1

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2cc

    .line 986
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingEconomy()I

    move-result v6

    int-to-float v6, v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomyGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_LOW_ECONOMY_BONUS_BASE:F

    .line 987
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v8

    int-to-float v8, v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingEconomy()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    sub-float v8, v2, v8

    mul-float v7, v7, v8

    mul-float v6, v6, v7

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop_WithFarm_WithTerrain()F

    move-result v7

    mul-float v6, v6, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomyGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_LOW_ECONOMY_BONUS_PROV_GROWTH_RATE_MODIFIER:F

    mul-float v6, v6, v7

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomyGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_LOW_ECONOMY_BONUS_PROV_DEVELOPMENT_MODIFIER:F

    mul-float v7, v7, v8

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v7

    mul-float v6, v6, v7

    add-float/2addr v1, v6

    .line 990
    :cond_2cc
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomyGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_MODIFIER_STARTING_ECONOMY_MIN:F

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->ECO_GROWTH_SATURATION_STRENGTH:F

    .line 991
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v8

    int-to-float v8, v8

    mul-float v7, v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingEconomy()I

    move-result v8

    int-to-float v8, v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomyGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_MODIFIER_STARTING_ECONOMY_MODIFIER:F

    mul-float v8, v8, v9

    div-float/2addr v7, v8

    sub-float v7, v2, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float v1, v1, v6

    .line 993
    cmpl-float v6, v1, v5

    if-lez v6, :cond_330

    .line 994
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomyGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_MODIFIER_FINAL_BASE_PERC:F

    mul-float v6, v6, v1

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomyGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_MODIFIER_FINAL_RANDOM_POSITIVE_PERC:F

    mul-float v8, v8, v1

    mul-float v8, v8, v4

    float-to-int v8, v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomyGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_MODIFIER_FINAL_RANDOM_POSITIVE_MIN_VALUE:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    add-float/2addr v6, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomyGrowth:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_EconomyGrowth;->ECO_GROWTH_MODIFIER_FINAL_RANDOM_NEGATIVE_PERC:F

    mul-float v8, v8, v1

    mul-float v8, v8, v4

    float-to-int v8, v8

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    sub-float v1, v6, v7

    .line 998
    :cond_330
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendingInvestmentsB()F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v8

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getInvestments(II)F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_35f

    .line 999
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ECONOMY_GROWTH_RATE:F

    mul-float v1, v1, v6

    goto :goto_36c

    .line 1002
    :cond_35f
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvEconomy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Economy;->MIN_ECONOMY_CHANCE:I

    int-to-float v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ECONOMY_GROWTH_RATE:F

    mul-float v7, v7, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1005
    :goto_36c
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEco()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v1

    float-to-int v6, v6

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->setEco(I)V

    .line 1010
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProv()I

    move-result v7

    if-ne v6, v7, :cond_405

    .line 1011
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->happinessChange_ByTaxation:Ljava/util/List;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v6, v6, v5

    if-lez v6, :cond_3c7

    .line 1012
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->happinessChange_ByTaxation:Ljava/util/List;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const v7, 0x3a83126f  # 0.001f

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v7, 0x447a0000  # 1000.0f

    mul-float v3, v3, v7

    float-to-int v3, v3

    invoke-virtual {v6, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-float v3, v3

    const v6, 0x47c35000  # 100000.0f

    div-float/2addr v3, v6

    add-float/2addr v4, v3

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->setHappi(F)V

    goto/16 :goto_460

    .line 1015
    :cond_3c7
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->happinessChange_ByTaxation:Ljava/util/List;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->happinessChange_ByTaxation:Ljava/util/List;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvHappiness:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Happiness;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Happiness;->HAPPINESS_TAXATION_STABILITY_MODIFIER:F

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvHappiness:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Happiness;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Happiness;->HAPPINESS_TAXATION_STABILITY_MODIFIER:F

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProviStability()F

    move-result v10

    mul-float v9, v9, v10

    sub-float/2addr v8, v9

    mul-float v3, v3, v8

    add-float/2addr v7, v3

    div-float/2addr v7, v4

    add-float/2addr v6, v7

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->setHappi(F)V

    goto :goto_460

    .line 1019
    :cond_405
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->happinessChange_ByTaxation_Occupied:Ljava/util/List;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v6, v6, v5

    if-lez v6, :cond_446

    .line 1020
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->happinessChange_ByTaxation_Occupied:Ljava/util/List;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    mul-float v8, v8, v4

    float-to-int v4, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x461c4000  # 10000.0f

    div-float/2addr v3, v4

    add-float/2addr v6, v3

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->setHappi(F)V

    goto :goto_460

    .line 1023
    :cond_446
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->happinessChange_ByTaxation_Occupied:Ljava/util/List;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v6, v3

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->setHappi(F)V

    .line 1027
    :goto_460
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    iget-boolean v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-eqz v3, :cond_47d

    .line 1028
    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->setRevRisk(F)V

    goto/16 :goto_518

    .line 1031
    :cond_47d
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRevRisk()F

    move-result v3

    .line 1034
    .local v3, "fRisk":F
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRevolutionaryRisk:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RevolutionaryRisk;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RevolutionaryRisk;->REVOLT_RISK_DECAY_THRESHOLD:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_4aa

    .line 1035
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRevolutionaryRisk:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RevolutionaryRisk;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RevolutionaryRisk;->REVOLT_RISK_DECAY_DIVISOR:F

    div-float v4, v3, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRevolutionaryRisk:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RevolutionaryRisk;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RevolutionaryRisk;->REVOLT_RISK_DECAY_MAX:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getWarWeariness()F

    move-result v5

    sub-float v5, v2, v5

    mul-float v4, v4, v5

    sub-float/2addr v3, v4

    .line 1038
    :cond_4aa
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRebels:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->RISE_REVOLT_RISK_IN_PROVINCE_IF_HAPPINESS_BELOW:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_515

    .line 1041
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRevolutionaryRisk:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RevolutionaryRisk;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RevolutionaryRisk;->REVOLT_RISK_BANKRUPTCY_THRESHOLD:I

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_4d0

    .line 1042
    const/high16 v2, 0x3f800000  # 1.0f

    .local v2, "nModifier":F
    goto :goto_500

    .line 1045
    .end local v2  # "nModifier":F
    :cond_4d0
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRevolutionaryRisk:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RevolutionaryRisk;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RevolutionaryRisk;->REVOLT_RISK_TAXATION_BASE:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTaxationLvl()F

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v7

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getAcceptableTaxation(II)F

    move-result v6

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1048
    .restart local v2  # "nModifier":F
    :goto_500
    sget v4, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->ageRiskModifier:F

    mul-float v4, v4, v2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRebels:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Rebels;->RISE_REVOLT_RISK_IN_PROVINCE_IF_HAPPINESS_BELOW:F

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v6

    sub-float/2addr v5, v6

    mul-float v4, v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvRevolutionaryRisk:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RevolutionaryRisk;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_RevolutionaryRisk;->REVOLT_RISK_HAPPINESS_DIVISOR:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 1051
    .end local v2  # "nModifier":F
    :cond_515
    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->setRevRisk(F)V

    .line 1054
    .end local v3  # "fRisk":F
    :goto_518
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->runSupportRebels()V

    .line 1055
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateNewColony()V

    .line 1056
    return-void
.end method

.method public static updateLibertyDesireMessages()V
    .registers 7

    .line 1504
    :try_start_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvVassalLiberty:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_VassalLiberty;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_VassalLiberty;->SEND_VASSALS_HIGH_LIBERTY_MESSAGE_EVERY_X_TURNS:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_9f

    .line 1505
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayersSize()I

    move-result v1

    if-ge v0, v1, :cond_9f

    .line 1506
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_13
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iVassalsSize:I

    if-ge v1, v2, :cond_9b

    .line 1507
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getVassalLibertyDesire()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvVassalLiberty:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_VassalLiberty;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_VassalLiberty;->MESSAGE_THE_PLAYER_IF_LIBERTY_OVER:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_97

    .line 1508
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->civDiploGD:Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Messages/Relations/Vassal/Message_VassalHighLiberty;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->vassals:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-direct {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Messages/Relations/Vassal/Message_VassalHighLiberty;-><init>(I)V

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_97} :catch_a0

    .line 1506
    :cond_97
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_13

    .line 1505
    .end local v1  # "j":I
    :cond_9b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a

    .line 1515
    .end local v0  # "i":I
    :cond_9f
    goto :goto_a4

    .line 1513
    :catch_a0
    move-exception v0

    .line 1514
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1516
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_a4
    return-void
.end method

.method public static updateNukes()V
    .registers 4

    .line 518
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_8a

    .line 519
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->nukesConstruction:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_86

    .line 520
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->nukesConstruction:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "a":I
    :goto_29
    if-ltz v1, :cond_86

    .line 521
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->nukesConstruction:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->nukesConstruction:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->nukesConstruction:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_83

    .line 524
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->nukesConstruction:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 525
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v3, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iNukes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iNukes:I
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_83} :catch_8b

    .line 520
    :cond_83
    add-int/lit8 v1, v1, -0x1

    goto :goto_29

    .line 518
    .end local v1  # "a":I
    :cond_86
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 532
    .end local v0  # "i":I
    :cond_8a
    goto :goto_8f

    .line 530
    :catch_8b
    move-exception v0

    .line 531
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 533
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_8f
    return-void
.end method

.method public static updatePropaganda()V
    .registers 6

    .line 1315
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->propaganda:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_154

    .line 1316
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->propaganda:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;->provinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->propaganda:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;->byCivID:I

    if-ne v1, v2, :cond_39

    .line 1317
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->propaganda:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_150

    .line 1320
    :cond_39
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->propaganda:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;->provinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->propaganda:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;->provinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->propaganda:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;->provinceID:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Festivals/Festival;->festivalHappinessPerTurn(I)F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPropaganda:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Propaganda;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Propaganda;->PROPAGANDA_PERC_OF_FESTIVAL_HAPPINESS:F

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setHappi(F)V

    .line 1322
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_7c
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->propaganda:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;->provinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_e1

    .line 1323
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->propaganda:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;->provinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->propaganda:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;->provinceID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v3

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy/Festivals/Festival;->festivalHappinessPerTurn_NeighboringProvinces()F

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPropaganda:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Propaganda;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Propaganda;->PROPAGANDA_PERC_OF_FESTIVAL_HAPPINESS_NEIGH_PROVINCES:F

    mul-float v4, v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->setHappi(F)V

    .line 1322
    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    .line 1326
    .end local v1  # "j":I
    :cond_e1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->propaganda:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;->provinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappi()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPropaganda:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Propaganda;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Propaganda;->INCREASE_REV_RISK_IF_HAPPINESS_BELOW:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_139

    .line 1327
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->propaganda:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;->provinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->propaganda:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;->provinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRevRisk()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvPropaganda:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Propaganda;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Propaganda;->INCREASE_REV_RISK_IF_HAPPINESS_BELOW_BY_VALUE_PER_TURN_RANDOM_1000:I

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x447a0000  # 1000.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setRevRisk(F)V

    .line 1330
    :cond_139
    sget v1, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->propaganda:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilizations/Province/Propaganda;->endTurnID:I

    if-lt v1, v2, :cond_150

    .line 1331
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->propaganda:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_150} :catch_155

    .line 1315
    :cond_150
    :goto_150
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_a

    .line 1337
    .end local v0  # "i":I
    :cond_154
    goto :goto_159

    .line 1335
    :catch_155
    move-exception v0

    .line 1336
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1338
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_159
    return-void
.end method

.method public static updateProvinceVolunteerArmySent()V
    .registers 4

    .line 1520
    :try_start_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvArmyRecruit:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruit;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruit;->VOLUNTEER_ARMY_SEND_RESET_AFTER_X_TURNS:I

    rem-int/2addr v0, v1

    .local v0, "i":I
    :goto_7
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v1

    if-ge v0, v1, :cond_5a

    .line 1521
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceVolunteerArmySent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54

    .line 1522
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceVolunteerArmySent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_2b
    if-ltz v1, :cond_54

    .line 1523
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceVolunteerArmySent:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_VolunteerArmySent;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province_VolunteerArmySent;->TURN_ID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvArmyRecruit:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruit;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruit;->VOLUNTEER_ARMY_SEND_RESET_AFTER_X_TURNS:I

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    if-gt v2, v3, :cond_51

    .line 1524
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceVolunteerArmySent:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1522
    :cond_51
    add-int/lit8 v1, v1, -0x1

    goto :goto_2b

    .line 1520
    .end local v1  # "j":I
    :cond_54
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvArmyRecruit:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruit;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ArmyRecruit;->VOLUNTEER_ARMY_SEND_RESET_AFTER_X_TURNS:I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_58} :catch_5b

    add-int/2addr v0, v1

    goto :goto_7

    .line 1531
    .end local v0  # "i":I
    :cond_5a
    goto :goto_5f

    .line 1529
    :catch_5b
    move-exception v0

    .line 1530
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1532
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_5f
    return-void
.end method

.method public static updateSanctions()V
    .registers 2

    .line 1343
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 1344
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateSanctionsTurns()V

    .line 1343
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1346
    .end local v0  # "i":I
    :cond_15
    return-void
.end method

.method public static updateWarWeariness()V
    .registers 9

    .line 1470
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_12b

    .line 1471
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v1

    if-lez v1, :cond_127

    .line 1472
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWarC()Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 1473
    const/4 v1, 0x1

    .line 1475
    .local v1, "atWarWithOnlyRebels":Z
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_23
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWarWithCivs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_99

    .line 1476
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWarWithCivs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivRelationOfCivB(II)F

    move-result v3

    float-to-int v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;->RELATION_AT_WAR:I

    if-ne v3, v4, :cond_96

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWarWithCivs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    if-lez v3, :cond_96

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWarWithCivs:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    iget-boolean v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-nez v3, :cond_96

    .line 1477
    const/4 v1, 0x0

    .line 1478
    goto :goto_99

    .line 1475
    :cond_96
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 1482
    .end local v2  # "a":I
    :cond_99
    :goto_99
    if-eqz v1, :cond_d8

    .line 1484
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getWarWeariness()F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWarWeariness:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;->WAR_WEARINESS_BASE_INCREASE_AT_WAR:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWarWeariness:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;->WAR_DURATION_SCALE_LIMIT:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iNumOfTurnsAtWar:I

    int-to-float v6, v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWarWeariness:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;->WAR_DURATION_SCALE_FACTOR:F

    sget v8, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->GAME_SPEED:F

    mul-float v7, v7, v8

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float v4, v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWarWeariness:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;->WAR_WEARINESS_AT_WAR_WITH_ONLY_REBELS_MODIFIER:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setWarWeariness(F)V

    goto :goto_10e

    .line 1489
    :cond_d8
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getWarWeariness()F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWarWeariness:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;->WAR_WEARINESS_BASE_INCREASE_AT_WAR:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWarWeariness:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;->WAR_DURATION_SCALE_LIMIT:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGD:Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;->iNumOfTurnsAtWar:I

    int-to-float v6, v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWarWeariness:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;->WAR_DURATION_SCALE_FACTOR:F

    sget v8, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->GAME_SPEED:F

    mul-float v7, v7, v8

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setWarWeariness(F)V

    .line 1491
    .end local v1  # "atWarWithOnlyRebels":Z
    :goto_10e
    goto :goto_127

    .line 1493
    :cond_10f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getWarWeariness()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvWarWeariness:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_WarWeariness;->WAR_WEARINESS_PEACE_DECREASE:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setWarWeariness(F)V
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_127} :catch_12c

    .line 1470
    :cond_127
    :goto_127
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1499
    .end local v0  # "i":I
    :cond_12b
    goto :goto_130

    .line 1497
    :catch_12c
    move-exception v0

    .line 1498
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1500
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_130
    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 47
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/NewTurn;->doAction()V

    .line 50
    return-void
.end method
