.class public Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;
.super Ljava/lang/Object;
.source "Game_Scenarios.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;
    }
.end annotation


# static fields
.field public static final PERC_OF_POPULATION_REQUIRED_TO_GET_A_CORE:F = 0.18f

.field public static SCENARIOS_SIZE:I


# instance fields
.field private iScenario_DiseasesDeathRate_Modifier:F

.field private iScenario_EconomyGrowthRate_Modifier:F

.field private iScenario_NeutralArmy:I

.field private iScenario_PopulationGrowthRate_Modifier:F

.field private iScenario_StartingArmyInCapitals:I

.field private iScenario_StartingEconomy:I

.field private iScenario_StartingMoney:I

.field private iScenario_StartingPopulation:I

.field public isInternal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private lScenarios_Age:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lScenarios_Authors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lScenarios_CivNum:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lScenarios_Day:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lScenarios_Month:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lScenarios_Names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public lScenarios_TagsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lScenarios_Wikis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lScenarios_Year:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public sActiveScenarioTag:Ljava/lang/String;

.field private sScenario_ActivePallet_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->isInternal:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Names:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_CivNum:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Authors:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Age:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Year:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Month:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Day:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Wikis:Ljava/util/List;

    .line 43
    const/16 v0, 0x2ee

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_StartingArmyInCapitals:I

    .line 44
    const/16 v0, 0x96

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_NeutralArmy:I

    .line 45
    const v0, 0xfde8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_StartingPopulation:I

    .line 46
    const/16 v0, 0x7d00

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_StartingEconomy:I

    .line 47
    const/16 v0, 0x1194

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_StartingMoney:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_PopulationGrowthRate_Modifier:F

    .line 50
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_EconomyGrowthRate_Modifier:F

    .line 51
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_DiseasesDeathRate_Modifier:F

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->sScenario_ActivePallet_TAG:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->sActiveScenarioTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final buildDiplomacy()V
    .registers 4

    .line 1125
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->buildAlliances()V

    .line 1126
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->buildWars()V

    .line 1128
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 1129
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->buildDiplomacy(Z)V

    .line 1128
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1131
    .end local v0  # "i":I
    :cond_20
    return-void
.end method

.method public final buildProvincePopulationAndEconomy(ZZ)V
    .registers 20
    .param p1, "loadCoresData"  # Z
    .param p2, "nEditor"  # Z

    .line 1293
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    move-object v1, v0

    .line 1295
    .local v1, "oR":Ljava/util/Random;
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    const v3, 0x3dcccccd  # 0.1f

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setTechLevel(F)V

    .line 1297
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000  # 1.0f

    if-ge v0, v3, :cond_46

    .line 1298
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    .line 1300
    .local v3, "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v6

    if-nez v6, :cond_3b

    .line 1301
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->clearData()V

    .line 1302
    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setEco(I)V

    .line 1304
    iput v5, v3, Lage/of/civilizations2/jakowski/lukasz/Province;->incomeTaxation:F

    .line 1305
    iput v5, v3, Lage/of/civilizations2/jakowski/lukasz/Province;->incomeProduction:F

    .line 1306
    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/Province;->administrationCost:F

    .line 1309
    :cond_3b
    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setIsPartOfHolyRomanEmpire(Z)V

    .line 1310
    iget-object v4, v3, Lage/of/civilizations2/jakowski/lukasz/Province;->provGD:Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Save/Province_Save_GD;->resetData()V

    .line 1297
    .end local v3  # "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1313
    .end local v0  # "i":I
    :cond_46
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_47
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v3

    if-ge v0, v3, :cond_5b

    .line 1314
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->buildProvinceCore()V

    .line 1313
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 1317
    .end local v0  # "i":I
    :cond_5b
    const/4 v3, 0x1

    if-eqz p1, :cond_102

    .line 1318
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->loadCoresData()V

    .line 1320
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_69
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_CoresGD:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->getProvincesSize()I

    move-result v0

    if-ge v6, v0, :cond_102

    .line 1322
    :try_start_71
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_CoresGD:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->iProvinceID:I

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v0

    if-nez v0, :cond_fc

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_CoresGD:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->iProvinceID:I

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v0

    if-gez v0, :cond_fc

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_CoresGD:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->iProvinceID:I

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v0

    if-lez v0, :cond_fc

    .line 1323
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_ba
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_CoresGD:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_fc

    .line 1324
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_CoresGD:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->iProvinceID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCores()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_CoresGD:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->iCivID:I

    invoke-virtual {v7, v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->addNewCore(II)V
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_f9} :catch_fd

    .line 1323
    add-int/lit8 v0, v0, 0x1

    goto :goto_ba

    .line 1329
    .end local v0  # "j":I
    :cond_fc
    goto :goto_fe

    .line 1327
    :catch_fd
    move-exception v0

    .line 1320
    :goto_fe
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_69

    .line 1334
    .end local v6  # "i":I
    :cond_102
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_CoresGD:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    if-nez v0, :cond_10d

    .line 1335
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_CoresGD:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    .line 1338
    :cond_10d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10e
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v6

    if-ge v0, v6, :cond_570

    .line 1339
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    .line 1341
    .local v6, "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v7

    if-nez v7, :cond_569

    .line 1344
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v7

    .line 1346
    .local v7, "tDevelopment":F
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    .line 1347
    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->getAge_StartingDevelopment(I)F

    move-result v8

    sub-float v8, v5, v8

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v9

    if-eqz v9, :cond_144

    const v9, 0x3f43c256

    goto :goto_147

    :cond_144
    const v9, 0x3f131f71

    :goto_147
    mul-float v8, v8, v9

    mul-float v8, v8, v7

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    .line 1348
    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/GameAges;->getAge_StartingDevelopment(I)F

    move-result v9

    mul-float v9, v9, v7

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v10

    mul-float v9, v9, v10

    add-float/2addr v8, v9

    .line 1350
    .end local v7  # "tDevelopment":F
    .local v8, "tDevelopment":F
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    const/high16 v9, 0x42c80000  # 100.0f

    if-lez v7, :cond_176

    .line 1351
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v10

    invoke-static {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getCreateScenario_TechnologyLevelsByContinents_Continent(II)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v8

    div-float v8, v7, v9

    .line 1354
    :cond_176
    const/high16 v7, 0x3f600000  # 0.875f

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v11, 0x7d0

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    int-to-float v10, v10

    const v11, 0x461c4000  # 10000.0f

    div-float/2addr v10, v11

    add-float/2addr v10, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v12

    invoke-virtual {v7, v12}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getBaseDevelopmentModifier(I)F

    move-result v7

    add-float/2addr v10, v7

    mul-float v8, v8, v10

    .line 1356
    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDevLvl(F)V

    .line 1359
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    if-nez v7, :cond_268

    .line 1360
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v7

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v10

    .line 1361
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v12

    int-to-float v12, v12

    const v13, 0x3e3b22d1  # 0.18275f

    mul-float v12, v12, v13

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getPopulationGrowth(I)F

    move-result v14

    add-float/2addr v14, v5

    mul-float v13, v13, v14

    mul-float v12, v12, v13

    float-to-int v12, v12

    .line 1362
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v13

    int-to-float v13, v13

    const/16 v14, 0x19

    invoke-virtual {v1, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v9

    mul-float v13, v13, v14

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v4

    invoke-virtual {v15, v4}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getPopulationGrowth(I)F

    move-result v4

    add-float/2addr v4, v5

    mul-float v14, v14, v4

    mul-float v13, v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v4, v13

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v12, v4

    .line 1360
    invoke-virtual {v7, v10, v12}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    .line 1364
    nop

    .line 1365
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingEconomy()I

    move-result v4

    int-to-float v4, v4

    const v7, 0x3d581062  # 0.05275f

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvincesSize()I

    move-result v10

    int-to-float v10, v10

    const v12, 0x3ac49ba6  # 0.0015f

    mul-float v10, v10, v12

    add-float/2addr v10, v7

    mul-float v4, v4, v10

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v7

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v12

    invoke-virtual {v10, v12}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getEconomyGrowth(I)F

    move-result v10

    add-float/2addr v10, v5

    mul-float v7, v7, v10

    mul-float v4, v4, v7

    float-to-int v4, v4

    .line 1366
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingEconomy()I

    move-result v7

    int-to-float v7, v7

    const/16 v10, 0xa

    invoke-virtual {v1, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v9

    mul-float v7, v7, v10

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v12

    invoke-virtual {v10, v12}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getEconomyGrowth(I)F

    move-result v10

    add-float/2addr v10, v5

    mul-float v9, v9, v10

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v10

    mul-float v9, v9, v10

    mul-float v7, v7, v9

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    add-int/2addr v7, v3

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/2addr v4, v7

    .line 1364
    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->setEco(I)V

    .line 1368
    const v4, 0x3ef5c28f  # 0.48f

    const/16 v7, 0x960

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v11

    add-float/2addr v7, v4

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->setHappi(F)V

    const/4 v7, 0x0

    goto/16 :goto_4ee

    .line 1371
    :cond_268
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCores()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivsSize()I

    move-result v4

    const v10, 0x3e19999a  # 0.15f

    const v12, 0x3f59999a  # 0.85f

    const v13, 0x3f39999a  # 0.725f

    const v14, 0x3e8ccccd  # 0.275f

    if-lt v4, v3, :cond_393

    .line 1372
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v15

    if-eqz v15, :cond_28d

    const v15, 0x3d947ae1  # 0.0725f

    goto :goto_28e

    :cond_28d
    const/4 v15, 0x0

    :goto_28e
    add-float/2addr v15, v12

    mul-float v4, v4, v15

    .line 1373
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v12

    if-eqz v12, :cond_2a3

    const v12, 0x3e88f5c3  # 0.2675f

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v15

    invoke-static {v12, v15}, Ljava/lang/Math;->max(FF)F

    move-result v12

    goto :goto_2a7

    :cond_2a3
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v12

    :goto_2a7
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v7

    invoke-virtual {v15, v7}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getPopulationGrowth(I)F

    move-result v7

    add-float/2addr v7, v5

    mul-float v12, v12, v7

    mul-float v4, v4, v12

    float-to-int v4, v4

    .line 1374
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v10

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v10

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v15

    invoke-virtual {v12, v15}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getPopulationGrowth(I)F

    move-result v12

    add-float/2addr v12, v5

    mul-float v10, v10, v12

    mul-float v7, v7, v10

    float-to-double v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    add-int/2addr v7, v3

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/2addr v4, v7

    int-to-float v4, v4

    .line 1376
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v10

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v7

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CAN_BECOME_CIVILIZED:I

    if-ltz v7, :cond_30e

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v10

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v7

    if-ne v7, v0, :cond_30a

    const v7, 0x3ecccccd  # 0.4f

    goto :goto_310

    :cond_30a
    const v7, 0x3e8ccccd  # 0.275f

    goto :goto_310

    :cond_30e
    const/high16 v7, 0x3f800000  # 1.0f

    :goto_310
    mul-float v4, v4, v7

    .line 1379
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v10

    invoke-static {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getCreateScenario_TechnologyLevelsByContinents_Continent(II)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v14

    div-float/2addr v7, v9

    add-float/2addr v7, v13

    mul-float v4, v4, v7

    float-to-int v4, v4

    .line 1381
    .local v4, "tempPop":I
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->clearData()V

    .line 1383
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_32f
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCores()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivsSize()I

    move-result v10

    if-ge v7, v10, :cond_35d

    .line 1384
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v10

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCores()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v11

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v11

    int-to-float v12, v4

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_CoresGD:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCores()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v15

    invoke-virtual {v15, v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v15

    invoke-virtual {v14, v0, v15}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->getPercOfPop(II)F

    move-result v14

    mul-float v12, v12, v14

    float-to-int v12, v12

    invoke-virtual {v10, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    .line 1383
    add-int/lit8 v7, v7, 0x1

    goto :goto_32f

    .line 1388
    .end local v7  # "j":I
    :cond_35d
    const/4 v7, 0x0

    .restart local v7  # "j":I
    :goto_35e
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCores()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivsSize()I

    move-result v10

    if-ge v7, v10, :cond_391

    if-ge v7, v3, :cond_391

    .line 1389
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_CoresGD:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCores()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v11

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v11

    invoke-virtual {v10, v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->getPercOfPop(II)F

    move-result v10

    const v11, 0x3e3851ec  # 0.18f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_38e

    .line 1390
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCores()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v10

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCores()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v11

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->removeCore(I)V

    .line 1388
    :cond_38e
    add-int/lit8 v7, v7, 0x1

    goto :goto_35e

    .line 1394
    .end local v4  # "tempPop":I
    .end local v7  # "j":I
    :cond_391
    goto/16 :goto_435

    .line 1396
    :cond_393
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    .line 1397
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v15

    if-eqz v15, :cond_3aa

    const v15, 0x3d4ccccd  # 0.05f

    goto :goto_3ab

    :cond_3aa
    const/4 v15, 0x0

    :goto_3ab
    add-float/2addr v15, v12

    mul-float v11, v11, v15

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v12

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v2

    invoke-virtual {v15, v2}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getPopulationGrowth(I)F

    move-result v2

    add-float/2addr v2, v5

    mul-float v12, v12, v2

    mul-float v11, v11, v12

    float-to-int v2, v11

    .line 1398
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v10

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v10

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v15

    invoke-virtual {v12, v15}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getPopulationGrowth(I)F

    move-result v12

    add-float/2addr v12, v5

    mul-float v10, v10, v12

    mul-float v11, v11, v10

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    add-int/2addr v10, v3

    invoke-virtual {v1, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/2addr v2, v10

    int-to-float v2, v2

    .line 1399
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CAN_BECOME_CIVILIZED:I

    if-ltz v10, :cond_419

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v10

    if-ne v10, v0, :cond_415

    const v16, 0x3ecccccd  # 0.4f

    goto :goto_41b

    :cond_415
    const v16, 0x3e8ccccd  # 0.275f

    goto :goto_41b

    :cond_419
    const/high16 v16, 0x3f800000  # 1.0f

    :goto_41b
    mul-float v2, v2, v16

    .line 1402
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v11

    invoke-static {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getCreateScenario_TechnologyLevelsByContinents_Continent(II)I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v14

    div-float/2addr v10, v9

    add-float/2addr v10, v13

    mul-float v2, v2, v10

    float-to-int v2, v2

    .line 1396
    invoke-virtual {v4, v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    .line 1406
    :goto_435
    nop

    .line 1407
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingEconomy()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v4

    const v7, 0x3f884178

    mul-float v4, v4, v7

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighSeaProvincesSize()I

    move-result v7

    int-to-float v7, v7

    const v10, 0x3d0f5c29  # 0.035f

    mul-float v7, v7, v10

    add-float/2addr v4, v7

    mul-float v2, v2, v4

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v4

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v10

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getEconomyGrowth(I)F

    move-result v7

    add-float/2addr v7, v5

    mul-float v4, v4, v7

    mul-float v2, v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    .line 1408
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingEconomy()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v7

    sub-float v7, v5, v7

    mul-float v4, v4, v7

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Pop()F

    move-result v7

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getEconomyGrowth(I)F

    move-result v10

    add-float/2addr v10, v5

    mul-float v7, v7, v10

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDeveLvl()F

    move-result v10

    mul-float v7, v7, v10

    mul-float v4, v4, v7

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v4, v10

    const/4 v7, 0x0

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    .line 1409
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CAN_BECOME_CIVILIZED:I

    if-ltz v10, :cond_4c9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v10

    if-ne v10, v0, :cond_4cb

    const v13, 0x3f733333  # 0.95f

    goto :goto_4cb

    :cond_4c9
    const/high16 v13, 0x3f800000  # 1.0f

    :cond_4cb
    :goto_4cb
    mul-float v4, v4, v13

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 1406
    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setEco(I)V

    .line 1411
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getHappiness()I

    move-result v2

    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x6

    int-to-float v2, v2

    div-float/2addr v2, v9

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setHappi(F)V

    .line 1414
    :goto_4ee
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_4ef
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v4

    if-ge v2, v4, :cond_56a

    .line 1415
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v9

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    if-lez v4, :cond_563

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v9

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v9

    if-eq v4, v9, :cond_563

    .line 1416
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v9

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result v10

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPop()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPops()I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3c0f3238  # 0.00874f

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v14, 0x159

    invoke-virtual {v13, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    int-to-float v13, v13

    const v14, 0x461c4000  # 10000.0f

    div-float/2addr v13, v14

    add-float/2addr v13, v12

    mul-float v11, v11, v13

    float-to-int v11, v11

    add-int/2addr v10, v11

    invoke-virtual {v4, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    goto :goto_566

    .line 1415
    :cond_563
    const v14, 0x461c4000  # 10000.0f

    .line 1414
    :goto_566
    add-int/lit8 v2, v2, 0x1

    goto :goto_4ef

    .line 1341
    .end local v2  # "j":I
    .end local v8  # "tDevelopment":F
    :cond_569
    const/4 v7, 0x0

    .line 1338
    .end local v6  # "province":Lage/of/civilizations2/jakowski/lukasz/Province;
    :cond_56a
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto/16 :goto_10e

    .line 1422
    .end local v0  # "i":I
    :cond_570
    if-nez p2, :cond_68a

    .line 1424
    const/4 v0, 0x1

    .restart local v0  # "i":I
    :goto_573
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v2

    if-ge v0, v2, :cond_68a

    .line 1425
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    if-lez v2, :cond_686

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CAN_BECOME_CIVILIZED:I

    if-ltz v2, :cond_686

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v2

    if-ltz v2, :cond_686

    .line 1426
    const/4 v2, 0x0

    .restart local v2  # "j":I
    :goto_5a8
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v4

    if-ge v2, v4, :cond_655

    .line 1427
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v4

    if-gez v4, :cond_651

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1428
    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v4

    if-eqz v4, :cond_630

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CAN_BECOME_CIVILIZED:I

    if-ltz v4, :cond_651

    .line 1430
    :cond_630
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCores()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->addNewCore(II)V

    .line 1426
    :cond_651
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5a8

    .line 1434
    .end local v2  # "j":I
    :cond_655
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvMigrate:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Migrate;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Migrate;->CAN_MIGRATE_EVERY_X_TURNS:I

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 1436
    .local v2, "tRan":I
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_660
    if-ge v4, v2, :cond_686

    .line 1437
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCores()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v6

    invoke-virtual {v5, v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->increaseOwnership(II)V

    .line 1436
    add-int/lit8 v4, v4, 0x1

    goto :goto_660

    .line 1424
    .end local v2  # "tRan":I
    .end local v4  # "a":I
    :cond_686
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_573

    .line 1443
    .end local v0  # "i":I
    :cond_68a
    const/4 v0, 0x0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_CoresGD:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    .line 1444
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$1;

    const-string v2, "updateCitiesAll"

    move-object/from16 v3, p0

    invoke-direct {v0, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;Ljava/lang/String;)V

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->addSimpleTask(Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;)V

    .line 1450
    return-void
.end method

.method public final disableFillTheMap()V
    .registers 5

    .line 1455
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2c

    .line 1456
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v1

    if-nez v1, :cond_29

    .line 1457
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivId_LoadScenario(I)V

    .line 1458
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivRegionID(I)V

    .line 1455
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1462
    .end local v0  # "i":I
    :cond_2c
    const/4 v0, 0x1

    .restart local v0  # "i":I
    :goto_2d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_50

    .line 1463
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v3

    if-lez v3, :cond_49

    const/4 v3, 0x1

    goto :goto_4a

    :cond_49
    const/4 v3, 0x0

    :goto_4a
    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->clearProvinces_FillTheMap(Z)V

    .line 1462
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 1466
    .end local v0  # "i":I
    :cond_50
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_51
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v1

    if-ge v0, v1, :cond_7f

    .line 1467
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5a
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLandSize()I

    move-result v3

    if-ge v1, v3, :cond_7c

    .line 1468
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v3, v2, v0}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsCivilizationBorder(ZI)V

    .line 1467
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 1466
    .end local v1  # "j":I
    :cond_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 1472
    .end local v0  # "i":I
    :cond_7f
    const/4 v0, 0x1

    .restart local v0  # "i":I
    :goto_80
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_9e

    .line 1473
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateProvinceBorder()V

    .line 1472
    add-int/lit8 v0, v0, 0x1

    goto :goto_80

    .line 1477
    .end local v0  # "i":I
    :cond_9e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->buildCivilizationsRegions()V

    .line 1479
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->disposeMinimapOfCivilizations()V

    .line 1480
    return-void
.end method

.method public final disposeScenarios()V
    .registers 2

    .line 343
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    .line 346
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Names:Ljava/util/List;

    .line 349
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_CivNum:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_CivNum:Ljava/util/List;

    .line 352
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Authors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Authors:Ljava/util/List;

    .line 355
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Wikis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Wikis:Ljava/util/List;

    .line 358
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Age:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Age:Ljava/util/List;

    .line 361
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Year:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Year:Ljava/util/List;

    .line 364
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Month:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Month:Ljava/util/List;

    .line 367
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Day:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Day:Ljava/util/List;

    .line 370
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->isInternal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->isInternal:Ljava/util/List;

    .line 373
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->SCENARIOS_SIZE:I

    .line 374
    return-void
.end method

.method public final editScenario(I)V
    .registers 4
    .param p1, "iID"  # I

    .line 1539
    const/4 v0, 0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    .line 1541
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setScenarioID(I)V

    .line 1542
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadScenario(Z)V

    .line 1544
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->loadCoresDataEditor()V

    .line 1546
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_GAME_DATA_TAG:Ljava/lang/String;

    .line 1547
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioNameID(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_NAME:Ljava/lang/String;

    .line 1548
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioAuthorID(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_AUTHOR:Ljava/lang/String;

    .line 1549
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioAgeID(I)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_AGE:I

    .line 1550
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioWiki(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_WIKI:Ljava/lang/String;

    .line 1551
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioYearID(I)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->currYear:I

    .line 1552
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioMonth(I)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->currMonth:I

    .line 1553
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioDay(I)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->currDay:I

    .line 1554
    return-void
.end method

.method public final enableFillTheMap()V
    .registers 12

    .line 1484
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_16

    .line 1485
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->clearProvinces_FillTheMap(Z)V

    .line 1484
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1488
    .end local v0  # "i":I
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "scenarios/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1489
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_PD"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 1493
    .local v1, "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_b0
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;

    .line 1495
    .local v3, "tempScenarioGameData":Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_bb
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getCivSize()I

    move-result v5

    if-ge v4, v5, :cond_d3

    .line 1496
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getCivCapital(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCapitalProvID(I)V

    .line 1495
    add-int/lit8 v4, v4, 0x1

    goto :goto_bb

    .line 1500
    .end local v4  # "i":I
    :cond_d3
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Province2;

    .line 1502
    .local v4, "scenario_GameData_Province":Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Province2;
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Province2;->getProvinceOwners()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_11f

    .line 1503
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Province2;->getProvinceOwners()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "iSize":I
    :goto_ec
    if-ge v5, v6, :cond_11f

    .line 1504
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Province2;->getProvinceOwners()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivId_LoadScenario(I)V

    .line 1505
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Province2;->getProvinceOwners()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addProv_Just(I)V

    .line 1503
    add-int/lit8 v5, v5, 0x1

    goto :goto_ec

    .line 1509
    .end local v5  # "i":I
    .end local v6  # "iSize":I
    :cond_11f
    const/4 v5, 0x0

    .restart local v5  # "i":I
    :goto_120
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v6

    if-ge v5, v6, :cond_17b

    .line 1510
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_129
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLandSize()I

    move-result v7

    if-ge v6, v7, :cond_178

    .line 1511
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvBordersLandByLand()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v9

    if-eq v8, v9, :cond_171

    const/4 v8, 0x1

    goto :goto_172

    :cond_171
    const/4 v8, 0x0

    :goto_172
    invoke-virtual {v7, v8, v5}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->setIsCivilizationBorder(ZI)V

    .line 1510
    add-int/lit8 v6, v6, 0x1

    goto :goto_129

    .line 1509
    .end local v6  # "j":I
    :cond_178
    add-int/lit8 v5, v5, 0x1

    goto :goto_120

    .line 1515
    .end local v5  # "i":I
    :cond_17b
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->buildCivilizationsRegions()V
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_180} :catch_181

    .line 1518
    .end local v3  # "tempScenarioGameData":Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;
    .end local v4  # "scenario_GameData_Province":Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Province2;
    goto :goto_182

    .line 1516
    :catch_181
    move-exception v2

    .line 1520
    :goto_182
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->disposeMinimapOfCivilizations()V

    .line 1521
    return-void
.end method

.method public final getScenarioAgeID(I)I
    .registers 3
    .param p1, "i"  # I

    .line 1609
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Age:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getScenarioAuthorID(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"  # I

    .line 1593
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Authors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getScenarioDay(I)I
    .registers 3
    .param p1, "i"  # I

    .line 1629
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Day:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getScenarioIDbyTag(Ljava/lang/String;)I
    .registers 4
    .param p1, "tag"  # Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 61
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 62
    return v0

    .line 60
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 66
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, -0x1

    return v0
.end method

.method public final getScenarioIsInternal(I)Z
    .registers 3
    .param p1, "i"  # I

    .line 1729
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->isInternal:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getScenarioMonth(I)I
    .registers 3
    .param p1, "i"  # I

    .line 1625
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Month:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getScenarioNameID(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"  # I

    .line 1577
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Names:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getScenarioNumOfCivs(I)I
    .registers 3
    .param p1, "i"  # I

    .line 1560
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_CivNum:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 1561
    :catch_d
    move-exception v0

    .line 1562
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1565
    .end local v0  # "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public final getScenarioTagID(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"  # I

    .line 1605
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getScenarioWiki(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"  # I

    .line 1589
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Wikis:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getScenarioYearID(I)I
    .registers 3
    .param p1, "i"  # I

    .line 1621
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Year:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getScenario_ActivePallet_TAG()Ljava/lang/String;
    .registers 2

    .line 1721
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->sScenario_ActivePallet_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public final getScenario_DiseasesDeathRate_Modifier()F
    .registers 2

    .line 1681
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_DiseasesDeathRate_Modifier:F

    return v0
.end method

.method public final getScenario_EconomyGrowthRate_Modifier()F
    .registers 2

    .line 1673
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_EconomyGrowthRate_Modifier:F

    return v0
.end method

.method public final getScenario_NeutralArmy()I
    .registers 2

    .line 1689
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_NeutralArmy:I

    return v0
.end method

.method public final getScenario_PopulationGrowthRate_Modifier()F
    .registers 2

    .line 1665
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_PopulationGrowthRate_Modifier:F

    return v0
.end method

.method public final getScenario_StartingArmyInCapitals()I
    .registers 2

    .line 1657
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_StartingArmyInCapitals:I

    return v0
.end method

.method public final getScenario_StartingEconomy()I
    .registers 2

    .line 1705
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_StartingEconomy:I

    return v0
.end method

.method public final getScenario_StartingMoney()I
    .registers 2

    .line 1713
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_StartingMoney:I

    return v0
.end method

.method public final getScenario_StartingPopulation()I
    .registers 2

    .line 1697
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_StartingPopulation:I

    return v0
.end method

.method public final loadArmiesData()V
    .registers 11

    .line 1227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_90

    .line 1228
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->resetArmiesNewGame(I)V

    .line 1230
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v1

    if-nez v1, :cond_8c

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v1

    if-gez v1, :cond_8c

    .line 1231
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v1

    if-nez v1, :cond_45

    .line 1232
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_NeutralArmy()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy4(I)V

    goto :goto_8c

    .line 1234
    :cond_45
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 1235
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CAN_BECOME_CIVILIZED:I

    if-ltz v1, :cond_7f

    .line 1236
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingArmyInCapitals()I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy4(I)V

    goto :goto_8c

    .line 1238
    :cond_7f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingArmyInCapitals()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy4(I)V

    .line 1227
    :cond_8c
    :goto_8c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1244
    .end local v0  # "i":I
    :cond_90
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_91
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v1

    if-ge v0, v1, :cond_a7

    .line 1245
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceVolunteerArmySent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1244
    add-int/lit8 v0, v0, 0x1

    goto :goto_91

    .line 1251
    .end local v0  # "i":I
    :cond_a7
    :try_start_a7
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->isInternal:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_b9
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_a7 .. :try_end_b9} :catch_329

    const-string v1, "_A"

    const-string v3, "/"

    const-string v4, "scenarios/"

    const-string v5, "map/"

    if-eqz v0, :cond_110

    .line 1252
    :try_start_c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_10e
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_c3 .. :try_end_10e} :catch_329

    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    goto/16 :goto_1ab

    .line 1256
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_110
    :try_start_110
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_15d} :catch_15e
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_110 .. :try_end_15d} :catch_329

    .line 1259
    .restart local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_1ab

    .line 1257
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :catch_15e
    move-exception v0

    .line 1258
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_15f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1
    :try_end_1aa
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_15f .. :try_end_1aa} :catch_329

    move-object v0, v1

    .line 1263
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_1ab
    :try_start_1ab
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;

    .line 1265
    .local v1, "scenario_GameData_Armies":Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4
    :try_end_1bc
    .catch Ljava/lang/Exception; {:try_start_1ab .. :try_end_1bc} :catch_327
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1ab .. :try_end_1bc} :catch_329

    .local v4, "iSize":I
    :goto_1bc
    if-ge v3, v4, :cond_325

    .line 1267
    :try_start_1be
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v5

    if-gez v5, :cond_31f

    .line 1268
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getCivID()I

    move-result v6

    if-eq v5, v6, :cond_2f2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    .line 1269
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v5

    if-nez v5, :cond_2f2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    .line 1270
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v5

    if-lez v5, :cond_26c

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v5

    const/4 v6, 0x1

    if-lez v5, :cond_245

    const/4 v5, 0x1

    goto :goto_246

    :cond_245
    const/4 v5, 0x0

    :goto_246
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAlliance()I

    move-result v7

    if-lez v7, :cond_269

    goto :goto_26a

    :cond_269
    const/4 v6, 0x0

    :goto_26a
    if-eq v5, v6, :cond_2f2

    :cond_26c
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    .line 1271
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getCivID()I

    move-result v6

    if-eq v5, v6, :cond_2f2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    .line 1272
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCiv()I

    move-result v6

    if-eq v5, v6, :cond_2f2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    .line 1273
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getCivID()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getMilitaryAccess(II)I

    move-result v5

    if-lez v5, :cond_31f

    .line 1275
    :cond_2f2
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getCivID()I

    move-result v6

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getArmy()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy4(II)V
    :try_end_31f
    .catch Ljava/lang/Exception; {:try_start_1be .. :try_end_31f} :catch_320
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1be .. :try_end_31f} :catch_329

    .line 1280
    :cond_31f
    goto :goto_321

    .line 1278
    :catch_320
    move-exception v5

    .line 1265
    :goto_321
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1bc

    .line 1283
    .end local v3  # "i":I
    .end local v4  # "iSize":I
    :cond_325
    nop

    .line 1286
    .end local v1  # "scenario_GameData_Armies":Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;
    goto :goto_328

    .line 1284
    :catch_327
    move-exception v1

    .line 1289
    :goto_328
    goto :goto_32a

    .line 1287
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :catch_329
    move-exception v0

    .line 1290
    :goto_32a
    return-void
.end method

.method public final loadCivilizations(Z)Ljava/util/List;
    .registers 20
    .param p1, "nEditor"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilization;",
            ">;"
        }
    .end annotation

    .line 787
    move-object/from16 v1, p0

    const/4 v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FILL_THE_MAP:Z

    .line 789
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioAgeID(I)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    .line 791
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 793
    .local v2, "lCivs":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Civilization;>;"
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getNeutralCivilization()Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivId(I)V

    .line 799
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->isInternal:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v3, "_PD"

    const-string v4, "/"

    const-string v5, "scenarios/"

    const-string v6, "map/"

    if-eqz v0, :cond_db

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 801
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    move-object v7, v0

    .local v3, "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    goto/16 :goto_207

    .line 805
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    :cond_db
    :try_start_db
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 806
    .restart local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_171} :catch_174

    .line 810
    .restart local v3  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    move-object v7, v0

    goto/16 :goto_207

    .line 807
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    :catch_174
    move-exception v0

    .line 808
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    .line 809
    .local v7, "file":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v8

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 814
    .end local v0  # "ex":Ljava/lang/Exception;
    .restart local v3  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    :goto_207
    :try_start_207
    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;

    .line 816
    .local v0, "tempScenarioGameData":Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getStartingArmyInCapitals()I

    move-result v4

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->setScenarioStartingArmyInCapitals(I)V

    .line 817
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getNeutralArmy()I

    move-result v4

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->setScenario_NeutralArmy(I)V

    .line 818
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getStartingPopulation()I

    move-result v4

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->setScenarioStartingPopulation(I)V

    .line 819
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getStartingEconomy()I

    move-result v4

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->setScenarioStartingEconomy(I)V

    .line 820
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getStartingMoney()I

    move-result v4

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->setScenarioStartingMoney(I)V

    .line 822
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getPopulationGrowthRate_Modifier()F

    move-result v4

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->setScenario_PopulationGrowthRate_Modifier(F)V

    .line 823
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getEconomyGrowthRate_Modifier()F

    move-result v4

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->setScenario_EconomyGrowthRate_Modifier(F)V

    .line 824
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getDiseasesDeathRate_Modifier()F

    move-result v4

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->setScenario_DiseasesDeathRate_Modifier(F)V

    .line 826
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getActivePalletOfColors_TAG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->setScenarioActivePallet_TAG(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getColonization()Z

    move-result v4

    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->ENABLE_COLONIZATION:Z

    .line 829
    iget-boolean v4, v0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    .line 830
    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->COLONIZATION_TECH_LEVEL:F

    sput v4, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->COLONIZATION_TECH_LEVEL:F

    .line 832
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25f
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getCivSize()I

    move-result v5

    if-ge v4, v5, :cond_33d

    .line 833
    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getCivTag(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadCivilization(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    move-result-object v5

    .line 835
    .local v5, "civData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getCivTag(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v10

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v11

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v12

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getCivCapital(I)I

    move-result v13

    add-int/lit8 v14, v4, 0x1

    iget v15, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iReligionID:I

    iget v8, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iGroupID:I

    const/16 v17, 0x0

    move/from16 v16, v8

    move-object v8, v6

    invoke-direct/range {v8 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Civilization;-><init>(Ljava/lang/String;IIIIIIIZ)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    add-int/lit8 v6, v4, 0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivId(I)V

    .line 837
    add-int/lit8 v6, v4, 0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getTechnologyLevel(I)F

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setTechLevel(F)V

    .line 838
    add-int/lit8 v6, v4, 0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getHappiness(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setHappiness(I)V

    .line 840
    const v6, -0xf423f

    if-eqz p1, :cond_2dc

    .line 841
    add-int/lit8 v8, v4, 0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getStartingMoneyCiv(I)I

    move-result v9

    if-ne v6, v9, :cond_2d3

    goto :goto_2d7

    :cond_2d3
    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getStartingMoneyCiv(I)I

    move-result v6

    :goto_2d7
    int-to-long v9, v6

    invoke-virtual {v8, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setGold(J)V

    goto :goto_314

    .line 843
    :cond_2dc
    add-int/lit8 v8, v4, 0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getStartingMoneyCiv(I)I

    move-result v9

    if-ne v6, v9, :cond_30c

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    add-int/lit8 v9, v4, 0x1

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v9

    invoke-virtual {v6, v9}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v6

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CAN_BECOME_CIVILIZED:I

    if-ltz v6, :cond_307

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getStartingMoney()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    goto :goto_310

    :cond_307
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getStartingMoney()I

    move-result v6

    goto :goto_310

    :cond_30c
    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getStartingMoneyCiv(I)I

    move-result v6

    :goto_310
    int-to-long v9, v6

    invoke-virtual {v8, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setGold(J)V

    .line 846
    :goto_314
    add-int/lit8 v6, v4, 0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v6

    if-ltz v6, :cond_339

    .line 847
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    add-int/lit8 v8, v4, 0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivId_LoadScenario(I)V

    .line 832
    .end local v5  # "civData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :cond_339
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_25f

    .line 851
    .end local v4  # "i":I
    :cond_33d
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->initCreateScenario_TechnologyLevelsByContinents_Civ()V

    .line 852
    const/4 v4, 0x0

    .restart local v4  # "i":I
    :goto_341
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getCivSize()I

    move-result v5

    if-ge v4, v5, :cond_351

    .line 853
    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getTechnologyByContinents(I)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->addCreateScenario_TechnologyLevelsByContinents_Civ(Ljava/util/List;)V

    .line 852
    add-int/lit8 v4, v4, 0x1

    goto :goto_341

    .line 856
    .end local v4  # "i":I
    :cond_351
    const/4 v4, 0x0

    .line 858
    .end local v0  # "tempScenarioGameData":Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;
    .local v4, "tempScenarioGameData":Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Province2;

    move-object v5, v0

    .line 860
    .local v5, "scenario_GameData_Province":Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Province2;
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Province2;->getProvinceOwners()Ljava/util/List;

    move-result-object v0
    :try_end_361
    .catch Ljava/lang/Exception; {:try_start_207 .. :try_end_361} :catch_38f

    if-eqz v0, :cond_38d

    .line 862
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_364
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Province2;->getProvinceOwners()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "iSize":I
    :goto_36c
    if-ge v0, v6, :cond_388

    .line 863
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Province2;->getProvinceOwners()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivId_LoadScenario(I)V
    :try_end_385
    .catch Ljava/lang/Exception; {:try_start_364 .. :try_end_385} :catch_389

    .line 862
    add-int/lit8 v0, v0, 0x1

    goto :goto_36c

    .line 867
    .end local v0  # "i":I
    .end local v6  # "iSize":I
    :cond_388
    goto :goto_38d

    .line 865
    :catch_389
    move-exception v0

    .line 866
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_38a
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_38d
    .catch Ljava/lang/Exception; {:try_start_38a .. :try_end_38d} :catch_38f

    .line 870
    .end local v0  # "ex":Ljava/lang/Exception;
    :cond_38d
    :goto_38d
    nop

    .line 873
    .end local v4  # "tempScenarioGameData":Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;
    .end local v5  # "scenario_GameData_Province":Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Province2;
    goto :goto_393

    .line 871
    :catch_38f
    move-exception v0

    .line 872
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 875
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_393
    if-nez p1, :cond_4b2

    .line 876
    const/4 v0, 0x0

    .line 878
    .local v0, "foundRandomCivilization":Z
    const/4 v4, 0x1

    .local v4, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "iSize":I
    :goto_39b
    const-string v6, "ran"

    if-ge v4, v5, :cond_3b5

    .line 879
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b2

    .line 880
    const/4 v0, 0x1

    .line 881
    move v4, v0

    goto :goto_3b6

    .line 878
    :cond_3b2
    add-int/lit8 v4, v4, 0x1

    goto :goto_39b

    :cond_3b5
    move v4, v0

    .line 885
    .end local v0  # "foundRandomCivilization":Z
    .end local v5  # "iSize":I
    .local v4, "foundRandomCivilization":Z
    :goto_3b6
    if-eqz v4, :cond_4ad

    .line 886
    const-string v0, "game/civilizations/Age_of_Civilizations"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    .line 887
    .local v5, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v8

    .line 888
    .local v8, "tempT":Ljava/lang/String;
    const-string v0, ";"

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 890
    .local v9, "tagsSPLITED":[Ljava/lang/String;
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    move-object v10, v0

    .line 892
    .local v10, "oR":Ljava/util/Random;
    const/4 v0, 0x1

    .local v0, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    move v12, v0

    .end local v0  # "i":I
    .local v11, "iSize":I
    .local v12, "i":I
    :goto_3d4
    if-ge v12, v11, :cond_4a8

    .line 893
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49c

    .line 895
    :goto_3e6
    array-length v0, v9

    invoke-virtual {v10, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    .line 897
    .local v13, "tempTagID":I
    aget-object v0, v9, v13

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f4

    .line 898
    goto :goto_3e6

    .line 901
    :cond_3f4
    aget-object v0, v9, v13

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInTheCivGameTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_496

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "game/civilizations/"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v14, v9, v13

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v14

    .line 905
    .local v14, "fileCiv":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_415
    invoke-virtual {v14}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    .line 907
    .local v0, "tempCivData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lage/of/civilizations2/jakowski/lukasz/Civilization;
    :try_end_425
    .catch Ljava/lang/ClassNotFoundException; {:try_start_415 .. :try_end_425} :catch_490
    .catch Ljava/io/IOException; {:try_start_415 .. :try_end_425} :catch_48a

    move-object/from16 v16, v3

    .end local v3  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .local v16, "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_427
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getCivTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivTag(Ljava/lang/String;)V

    .line 908
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;
    :try_end_436
    .catch Ljava/lang/ClassNotFoundException; {:try_start_427 .. :try_end_436} :catch_486
    .catch Ljava/io/IOException; {:try_start_427 .. :try_end_436} :catch_482

    move/from16 v17, v4

    .end local v4  # "foundRandomCivilization":Z
    .local v17, "foundRandomCivilization":Z
    :try_start_438
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getCivTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivName(Ljava/lang/String;)V

    .line 909
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setR(I)V

    .line 910
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setG(I)V

    .line 911
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setB(I)V

    .line 913
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->disposeFlag()V

    .line 914
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->loadFlag()Z
    :try_end_47c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_438 .. :try_end_47c} :catch_480
    .catch Ljava/io/IOException; {:try_start_438 .. :try_end_47c} :catch_47e

    .line 916
    nop

    .end local v0  # "tempCivData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    goto :goto_495

    .line 919
    :catch_47e
    move-exception v0

    goto :goto_48f

    .line 917
    :catch_480
    move-exception v0

    goto :goto_495

    .line 919
    .end local v17  # "foundRandomCivilization":Z
    .restart local v4  # "foundRandomCivilization":Z
    :catch_482
    move-exception v0

    move/from16 v17, v4

    .end local v4  # "foundRandomCivilization":Z
    .restart local v17  # "foundRandomCivilization":Z
    goto :goto_48f

    .line 917
    .end local v17  # "foundRandomCivilization":Z
    .restart local v4  # "foundRandomCivilization":Z
    :catch_486
    move-exception v0

    move/from16 v17, v4

    .end local v4  # "foundRandomCivilization":Z
    .restart local v17  # "foundRandomCivilization":Z
    goto :goto_495

    .line 919
    .end local v16  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .end local v17  # "foundRandomCivilization":Z
    .restart local v3  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v4  # "foundRandomCivilization":Z
    :catch_48a
    move-exception v0

    move-object/from16 v16, v3

    move/from16 v17, v4

    .line 923
    .end local v3  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4  # "foundRandomCivilization":Z
    .restart local v16  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v17  # "foundRandomCivilization":Z
    :goto_48f
    goto :goto_4a0

    .line 917
    .end local v16  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .end local v17  # "foundRandomCivilization":Z
    .restart local v3  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v4  # "foundRandomCivilization":Z
    :catch_490
    move-exception v0

    move-object/from16 v16, v3

    move/from16 v17, v4

    .line 921
    .end local v3  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4  # "foundRandomCivilization":Z
    .restart local v16  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v17  # "foundRandomCivilization":Z
    :goto_495
    goto :goto_4a0

    .line 901
    .end local v14  # "fileCiv":Lcom/badlogic/gdx/files/FileHandle;
    .end local v16  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .end local v17  # "foundRandomCivilization":Z
    .restart local v3  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v4  # "foundRandomCivilization":Z
    :cond_496
    move-object/from16 v16, v3

    move/from16 v17, v4

    .line 925
    .end local v3  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4  # "foundRandomCivilization":Z
    .end local v13  # "tempTagID":I
    .restart local v16  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v17  # "foundRandomCivilization":Z
    goto/16 :goto_3e6

    .line 893
    .end local v16  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .end local v17  # "foundRandomCivilization":Z
    .restart local v3  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v4  # "foundRandomCivilization":Z
    :cond_49c
    move-object/from16 v16, v3

    move/from16 v17, v4

    .line 892
    .end local v3  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4  # "foundRandomCivilization":Z
    .restart local v16  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v17  # "foundRandomCivilization":Z
    :goto_4a0
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, v16

    move/from16 v4, v17

    goto/16 :goto_3d4

    .end local v16  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .end local v17  # "foundRandomCivilization":Z
    .restart local v3  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v4  # "foundRandomCivilization":Z
    :cond_4a8
    move-object/from16 v16, v3

    move/from16 v17, v4

    .end local v3  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4  # "foundRandomCivilization":Z
    .restart local v16  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v17  # "foundRandomCivilization":Z
    goto :goto_4b4

    .line 885
    .end local v5  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v8  # "tempT":Ljava/lang/String;
    .end local v9  # "tagsSPLITED":[Ljava/lang/String;
    .end local v10  # "oR":Ljava/util/Random;
    .end local v11  # "iSize":I
    .end local v12  # "i":I
    .end local v16  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .end local v17  # "foundRandomCivilization":Z
    .restart local v3  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v4  # "foundRandomCivilization":Z
    :cond_4ad
    move-object/from16 v16, v3

    move/from16 v17, v4

    .end local v3  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4  # "foundRandomCivilization":Z
    .restart local v16  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v17  # "foundRandomCivilization":Z
    goto :goto_4b4

    .line 875
    .end local v16  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .end local v17  # "foundRandomCivilization":Z
    .restart local v3  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    :cond_4b2
    move-object/from16 v16, v3

    .line 931
    .end local v3  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v16  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    :goto_4b4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->disposeMinimapOfCivilizations()V

    .line 934
    :try_start_4bd
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioTagID(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->sActiveScenarioTag:Ljava/lang/String;
    :try_end_4c9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4bd .. :try_end_4c9} :catch_4ca

    .line 937
    goto :goto_4cf

    .line 935
    :catch_4ca
    move-exception v0

    .line 936
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, ""

    iput-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->sActiveScenarioTag:Ljava/lang/String;

    .line 939
    .end local v0  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_4cf
    return-object v2
.end method

.method public final loadCivilizationsLoadGame(Ljava/util/List;I)Ljava/util/List;
    .registers 10
    .param p2, "startCivID"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;",
            ">;I)",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilization;",
            ">;"
        }
    .end annotation

    .line 768
    .local p1, "nCivsData":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->updateAge(Z)V

    .line 770
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 772
    .local v1, "lCivs":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Civilization;>;"
    if-nez p2, :cond_1d

    .line 773
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getNeutralCivilization()Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivId(I)V

    .line 777
    :cond_1d
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3d

    .line 778
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;

    add-int v5, p2, v2

    if-nez p2, :cond_32

    const/4 v6, 0x1

    goto :goto_33

    :cond_32
    const/4 v6, 0x0

    :goto_33
    add-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;-><init>(Lage/of/civilizations2/jakowski/lukasz/Save/Save_Civ_GameData;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 781
    .end local v2  # "i":I
    :cond_3d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->disposeMinimapOfCivilizations()V

    .line 783
    return-object v1
.end method

.method public final loadCivilizations_RandomGame()Ljava/util/List;
    .registers 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilization;",
            ">;"
        }
    .end annotation

    .line 379
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    move-object v2, v0

    .line 381
    .local v2, "oR":Ljava/util/Random;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 383
    .local v3, "lCivs":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Civilization;>;"
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getNeutralCivilization()Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivId(I)V

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 388
    .local v5, "lRandomGameCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->RANDOM_PLACEMENT:Z

    const-string v6, "game/civilizations/Age_of_Civilizations"

    const-string v9, "game/civilizations_editor/Age_of_Civilizations"

    const-string v10, ";"

    if-eqz v0, :cond_2aa

    .line 390
    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    .line 391
    .local v6, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v11

    .line 392
    .local v11, "tempT":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 394
    .local v12, "tagsSPLITED":[Ljava/lang/String;
    new-array v4, v4, [Ljava/lang/String;

    .line 396
    .local v4, "tagsSPLITED_ED":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 398
    .local v0, "tempFileT_ED":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_40
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v13

    if-eqz v13, :cond_4e

    .line 399
    sget-object v13, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v13, v9}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    move-object v0, v9

    goto :goto_53

    .line 402
    :cond_4e
    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    move-object v0, v9

    .line 405
    :goto_53
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v9

    .line 406
    .local v9, "tempT_ED":Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10
    :try_end_5b
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_40 .. :try_end_5b} :catch_5d

    move-object v4, v10

    .line 409
    .end local v0  # "tempFileT_ED":Lcom/badlogic/gdx/files/FileHandle;
    .end local v9  # "tempT_ED":Ljava/lang/String;
    goto :goto_5e

    .line 407
    :catch_5d
    move-exception v0

    .line 411
    :goto_5e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 413
    .local v9, "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v10, v12

    .local v10, "iSize":I
    :goto_66
    if-ge v0, v10, :cond_7a

    .line 414
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    aget-object v14, v12, v0

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->isTagTaken(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_77

    .line 415
    aget-object v13, v12, v0

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    .line 419
    .end local v0  # "i":I
    .end local v10  # "iSize":I
    :cond_7a
    const/4 v0, 0x0

    .restart local v0  # "i":I
    array-length v10, v4

    .restart local v10  # "iSize":I
    :goto_7c
    if-ge v0, v10, :cond_90

    .line 420
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    aget-object v14, v4, v0

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->isTagTaken(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8d

    .line 421
    aget-object v13, v12, v0

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_8d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    .line 426
    .end local v0  # "i":I
    .end local v10  # "iSize":I
    :cond_90
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_91
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayersSize()I

    move-result v10

    if-ge v0, v10, :cond_ca

    .line 427
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getTag()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b3

    .line 428
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c7

    .line 431
    :cond_b3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    .line 433
    .local v10, "nR":I
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 426
    .end local v10  # "nR":I
    :goto_c7
    add-int/lit8 v0, v0, 0x1

    goto :goto_91

    .line 439
    .end local v0  # "i":I
    :cond_ca
    const/4 v0, 0x0

    .restart local v0  # "i":I
    const/4 v10, 0x0

    .restart local v10  # "nR":I
    :goto_cc
    :try_start_cc
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getCivilizationsSize()I

    move-result v13

    if-ge v0, v13, :cond_ec

    .line 440
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v2, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    move v10, v13

    .line 441
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_e9} :catch_ed

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_cc

    .line 446
    .end local v0  # "i":I
    .end local v10  # "nR":I
    :cond_ec
    goto :goto_ee

    .line 444
    :catch_ed
    move-exception v0

    .line 450
    :goto_ee
    const/4 v0, 0x0

    .line 451
    .local v0, "tempTag":Ljava/lang/String;
    const/4 v10, 0x1

    .line 453
    .local v10, "add":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :try_start_f1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    .local v14, "iSize":I
    :goto_f5
    if-ge v13, v14, :cond_295

    .line 457
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologiesSize()I

    move-result v15

    invoke-virtual {v2, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v15

    .line 459
    .local v15, "nRandIdeology":I
    const/16 v16, 0x0

    move/from16 v7, v16

    .line 461
    .local v7, "nNumOfTries":I
    :goto_105
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {v8, v15}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v8

    iget-boolean v8, v8, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_10d} :catch_29e

    if-nez v8, :cond_126

    :try_start_10f
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {v8, v15}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CAN_BECOME_CIVILIZED:I

    if-ltz v8, :cond_11a

    goto :goto_126

    :cond_11a
    move-object/from16 v17, v0

    goto :goto_13e

    .line 511
    .end local v0  # "tempTag":Ljava/lang/String;
    .end local v7  # "nNumOfTries":I
    .end local v10  # "add":Z
    .end local v13  # "i":I
    .end local v14  # "iSize":I
    .end local v15  # "nRandIdeology":I
    :catch_11d
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    goto/16 :goto_2a5

    .line 461
    .restart local v0  # "tempTag":Ljava/lang/String;
    .restart local v7  # "nNumOfTries":I
    .restart local v10  # "add":Z
    .restart local v13  # "i":I
    .restart local v14  # "iSize":I
    .restart local v15  # "nRandIdeology":I
    :cond_126
    :goto_126
    add-int/lit8 v8, v7, 0x1

    move-object/from16 v17, v0

    .end local v0  # "tempTag":Ljava/lang/String;
    .end local v7  # "nNumOfTries":I
    .local v8, "nNumOfTries":I
    .local v17, "tempTag":Ljava/lang/String;
    const/16 v0, 0x8

    if-ge v7, v0, :cond_13d

    .line 462
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologiesSize()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_138} :catch_11d

    move v15, v0

    move v7, v8

    move-object/from16 v0, v17

    goto :goto_105

    .line 461
    :cond_13d
    move v7, v8

    .line 465
    .end local v8  # "nNumOfTries":I
    .restart local v7  # "nNumOfTries":I
    :goto_13e
    const/4 v0, 0x1

    .line 466
    .end local v10  # "add":Z
    .local v0, "add":Z
    :try_start_13f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v0

    .end local v0  # "add":Z
    .local v19, "add":Z
    move-object/from16 v0, v18

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {v8, v15}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getExtraTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_16a} :catch_29e

    .line 468
    .end local v17  # "tempTag":Ljava/lang/String;
    .local v0, "tempTag":Ljava/lang/String;
    add-int/lit8 v8, v13, 0x1

    .local v8, "j":I
    :goto_16c
    if-ge v8, v14, :cond_17f

    .line 469
    :try_start_16e
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17c

    .line 470
    const/4 v10, 0x0

    .line 471
    .end local v19  # "add":Z
    .restart local v10  # "add":Z
    move/from16 v19, v10

    goto :goto_17f

    .line 468
    .end local v10  # "add":Z
    .restart local v19  # "add":Z
    :cond_17c
    add-int/lit8 v8, v8, 0x1

    goto :goto_16c

    .line 475
    .end local v8  # "j":I
    :cond_17f
    :goto_17f
    if-eqz v19, :cond_19d

    .line 476
    add-int/lit8 v8, v13, -0x1

    .restart local v8  # "j":I
    :goto_183
    if-ltz v8, :cond_195

    .line 477
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_192

    .line 478
    const/16 v19, 0x0

    .line 479
    goto :goto_195

    .line 476
    :cond_192
    add-int/lit8 v8, v8, -0x1

    goto :goto_183

    .line 483
    .end local v8  # "j":I
    :cond_195
    :goto_195
    if-eqz v19, :cond_19a

    .line 484
    invoke-interface {v5, v13, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_19a} :catch_11d

    .line 488
    :cond_19a
    move/from16 v10, v19

    goto :goto_19f

    .line 475
    :cond_19d
    move/from16 v10, v19

    .line 488
    .end local v19  # "add":Z
    .restart local v10  # "add":Z
    :goto_19f
    :try_start_19f
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadCivilization(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    move-result-object v8

    .line 490
    .local v8, "civData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    const/16 v17, 0x0

    .line 492
    .local v17, "tCapital":I
    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    move-object/from16 v19, v0

    .end local v0  # "tempTag":Ljava/lang/String;
    .local v19, "tempTag":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayersSize()I

    move-result v0
    :try_end_1b3
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_1b3} :catch_29e

    if-ge v13, v0, :cond_1cc

    :try_start_1b5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_1cc

    .line 493
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getCapitalProvinceID()I

    move-result v0
    :try_end_1cb
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_1cb} :catch_11d

    .end local v17  # "tCapital":I
    .local v0, "tCapital":I
    goto :goto_1cd

    .line 496
    .end local v0  # "tCapital":I
    .restart local v17  # "tCapital":I
    :cond_1cc
    const/4 v0, -0x1

    .line 499
    .end local v17  # "tCapital":I
    .restart local v0  # "tCapital":I
    :goto_1cd
    move-object/from16 v18, v4

    .end local v4  # "tagsSPLITED_ED":[Ljava/lang/String;
    .local v18, "tagsSPLITED_ED":[Ljava/lang/String;
    :try_start_1cf
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v21, v17

    check-cast v21, Ljava/lang/String;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v22

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v23

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v24
    :try_end_1e5
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_1e5} :catch_28f

    add-int/lit8 v26, v13, 0x1

    move-object/from16 v30, v5

    .end local v5  # "lRandomGameCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v30, "lRandomGameCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1e9
    iget v5, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iReligionID:I
    :try_end_1eb
    .catch Ljava/lang/Exception; {:try_start_1e9 .. :try_end_1eb} :catch_28b

    move-object/from16 v31, v6

    .end local v6  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .local v31, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_1ed
    iget v6, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iGroupID:I

    const/16 v29, 0x1

    move-object/from16 v20, v4

    move/from16 v25, v0

    move/from16 v27, v5

    move/from16 v28, v6

    invoke-direct/range {v20 .. v29}, Lage/of/civilizations2/jakowski/lukasz/Civilization;-><init>(Ljava/lang/String;IIIIIIIZ)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    add-int/lit8 v4, v13, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    add-int/lit8 v5, v13, 0x1

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivId(I)V

    .line 501
    add-int/lit8 v4, v13, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->RANDOM_GAME_TECHNOLOGY_MIN:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->RANDOM_GAME_TECHNOLOGY_PER_AGE:I

    sget v17, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    mul-int v6, v6, v17

    move/from16 v20, v7

    .end local v7  # "nNumOfTries":I
    .local v20, "nNumOfTries":I
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->RANDOM_GAME_TECHNOLOGY_PER_AGE_MAX:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v5, v6

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->RANDOM_GAME_TECHNOLOGY_RANDOM:I

    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x42c80000  # 100.0f

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setTechLevel(F)V

    .line 502
    add-int/lit8 v4, v13, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x44

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setHappiness(I)V

    .line 505
    if-ltz v0, :cond_267

    .line 506
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    add-int/lit8 v5, v13, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    add-int/lit8 v5, v13, 0x1

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivId_LoadScenario(I)V

    .line 509
    :cond_267
    add-int/lit8 v4, v13, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingMoney()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setGold(J)V
    :try_end_27d
    .catch Ljava/lang/Exception; {:try_start_1ed .. :try_end_27d} :catch_289

    .line 453
    .end local v0  # "tCapital":I
    .end local v8  # "civData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    .end local v15  # "nRandIdeology":I
    .end local v20  # "nNumOfTries":I
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, v18

    move-object/from16 v0, v19

    move-object/from16 v5, v30

    move-object/from16 v6, v31

    goto/16 :goto_f5

    .line 511
    .end local v10  # "add":Z
    .end local v13  # "i":I
    .end local v14  # "iSize":I
    .end local v19  # "tempTag":Ljava/lang/String;
    :catch_289
    move-exception v0

    goto :goto_2a5

    .end local v31  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v6  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :catch_28b
    move-exception v0

    move-object/from16 v31, v6

    .end local v6  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v31  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_2a5

    .end local v30  # "lRandomGameCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v5  # "lRandomGameCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :catch_28f
    move-exception v0

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    .end local v5  # "lRandomGameCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v30  # "lRandomGameCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v31  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_2a5

    .line 453
    .end local v18  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v30  # "lRandomGameCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .local v0, "tempTag":Ljava/lang/String;
    .restart local v4  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v5  # "lRandomGameCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v10  # "add":Z
    .restart local v13  # "i":I
    .restart local v14  # "iSize":I
    :cond_295
    move-object/from16 v17, v0

    move-object/from16 v18, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    .line 513
    .end local v0  # "tempTag":Ljava/lang/String;
    .end local v4  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v5  # "lRandomGameCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v10  # "add":Z
    .end local v13  # "i":I
    .end local v14  # "iSize":I
    .restart local v18  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v30  # "lRandomGameCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v31  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_2a8

    .line 511
    .end local v18  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v30  # "lRandomGameCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v4  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v5  # "lRandomGameCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :catch_29e
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    .line 512
    .end local v4  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v5  # "lRandomGameCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v30  # "lRandomGameCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v31  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :goto_2a5
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 514
    .end local v0  # "e":Ljava/lang/Exception;
    .end local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11  # "tempT":Ljava/lang/String;
    .end local v12  # "tagsSPLITED":[Ljava/lang/String;
    .end local v18  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v31  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :goto_2a8
    goto/16 :goto_897

    .line 517
    .end local v30  # "lRandomGameCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5  # "lRandomGameCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2aa
    move-object/from16 v30, v5

    .end local v5  # "lRandomGameCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30  # "lRandomGameCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    .line 518
    .local v5, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v6

    .line 519
    .local v6, "tempT":Ljava/lang/String;
    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 521
    .local v7, "tagsSPLITED":[Ljava/lang/String;
    new-array v8, v4, [Ljava/lang/String;

    .line 523
    .local v8, "tagsSPLITED_ED":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 525
    .local v0, "tempFileT_ED":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_2bb
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v11

    if-eqz v11, :cond_2c9

    .line 526
    sget-object v11, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v11, v9}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    move-object v0, v9

    goto :goto_2ce

    .line 529
    :cond_2c9
    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    move-object v0, v9

    .line 532
    :goto_2ce
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v9

    .line 533
    .local v9, "tempT_ED":Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11
    :try_end_2d6
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2bb .. :try_end_2d6} :catch_2d8

    move-object v8, v11

    .line 536
    .end local v0  # "tempFileT_ED":Lcom/badlogic/gdx/files/FileHandle;
    .end local v9  # "tempT_ED":Ljava/lang/String;
    goto :goto_2d9

    .line 534
    :catch_2d8
    move-exception v0

    .line 538
    :goto_2d9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 540
    .local v9, "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 542
    .local v11, "civsToAdd":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v12, v7

    .local v12, "iSize":I
    :goto_2e7
    if-ge v0, v12, :cond_2fb

    .line 543
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    aget-object v14, v7, v0

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->isTagTaken(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2f8

    .line 544
    aget-object v13, v7, v0

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_2f8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e7

    .line 548
    .end local v0  # "i":I
    .end local v12  # "iSize":I
    :cond_2fb
    const/4 v0, 0x0

    .restart local v0  # "i":I
    array-length v12, v8

    .restart local v12  # "iSize":I
    :goto_2fd
    if-ge v0, v12, :cond_311

    .line 549
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    aget-object v14, v8, v0

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->isTagTaken(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_30e

    .line 550
    aget-object v13, v7, v0

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_30e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2fd

    .line 555
    .end local v0  # "i":I
    .end local v12  # "iSize":I
    :cond_311
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_312
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayersSize()I

    move-result v12

    if-ge v0, v12, :cond_375

    .line 556
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getTag()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_343

    .line 557
    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    invoke-virtual {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getTag()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    invoke-virtual {v14, v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getCapitalProvinceID()I

    move-result v14

    invoke-direct {v12, v1, v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;-><init>(Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;Ljava/lang/String;I)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_372

    .line 559
    :cond_343
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getCapitalProvinceID()I

    move-result v12

    if-ltz v12, :cond_372

    .line 560
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v2, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    .line 562
    .local v12, "nR":I
    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    invoke-virtual {v15, v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getCapitalProvinceID()I

    move-result v15

    invoke-direct {v13, v1, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;-><init>(Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;Ljava/lang/String;I)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    invoke-interface {v9, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 555
    .end local v12  # "nR":I
    :cond_372
    :goto_372
    add-int/lit8 v0, v0, 0x1

    goto :goto_312

    .line 567
    .end local v0  # "i":I
    :cond_375
    const/4 v0, 0x0

    move v12, v0

    .local v12, "o":I
    :goto_377
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_43f

    .line 569
    :try_start_37d
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->sTag:Ljava/lang/String;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadCivilization(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    move-result-object v0

    .line 571
    .local v0, "civData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;

    iget v13, v13, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->iCapitalID:I

    .line 573
    .local v13, "tCapital":I
    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;

    iget-object v15, v15, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->sTag:Ljava/lang/String;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v19

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v20

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v21

    add-int/lit8 v23, v12, 0x1

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iReligionID:I
    :try_end_3ab
    .catch Ljava/lang/Exception; {:try_start_37d .. :try_end_3ab} :catch_435

    move-object/from16 v28, v5

    .end local v5  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .local v28, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_3ad
    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iGroupID:I

    const/16 v26, 0x1

    move-object/from16 v17, v14

    move-object/from16 v18, v15

    move/from16 v22, v13

    move/from16 v24, v4

    move/from16 v25, v5

    invoke-direct/range {v17 .. v26}, Lage/of/civilizations2/jakowski/lukasz/Civilization;-><init>(Ljava/lang/String;IIIIIIIZ)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    add-int/lit8 v4, v12, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    add-int/lit8 v5, v12, 0x1

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivId(I)V

    .line 575
    add-int/lit8 v4, v12, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    mul-int/lit8 v5, v5, 0x5

    const/16 v14, 0x19

    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    const/16 v14, 0xa

    invoke-virtual {v2, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    add-int/2addr v5, v14

    int-to-float v5, v5

    const/high16 v14, 0x42c80000  # 100.0f

    div-float/2addr v5, v14

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setTechLevel(F)V

    .line 576
    add-int/lit8 v4, v12, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x44

    invoke-virtual {v4, v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setHappiness(I)V

    .line 578
    if-ltz v13, :cond_41c

    .line 579
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    add-int/lit8 v5, v12, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    add-int/lit8 v5, v12, 0x1

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivId_LoadScenario(I)V

    .line 582
    :cond_41c
    add-int/lit8 v4, v12, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingMoney()I

    move-result v5

    int-to-long v14, v5

    invoke-virtual {v4, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setGold(J)V
    :try_end_432
    .catch Ljava/lang/Exception; {:try_start_3ad .. :try_end_432} :catch_433

    .line 585
    .end local v0  # "civData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    .end local v13  # "tCapital":I
    goto :goto_438

    .line 583
    :catch_433
    move-exception v0

    goto :goto_438

    .end local v28  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v5  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :catch_435
    move-exception v0

    move-object/from16 v28, v5

    .line 567
    .end local v5  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v28  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :goto_438
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v28

    const/4 v4, 0x0

    goto/16 :goto_377

    .end local v28  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v5  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :cond_43f
    move-object/from16 v28, v5

    .line 588
    .end local v5  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v12  # "o":I
    .restart local v28  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 590
    .local v4, "lPossibleCapitals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_448
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v5

    if-ge v0, v5, :cond_46b

    .line 591
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v5

    if-nez v5, :cond_467

    .line 592
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->setIsCapital(Z)V

    goto :goto_468

    .line 591
    :cond_467
    const/4 v12, 0x0

    .line 590
    :goto_468
    add-int/lit8 v0, v0, 0x1

    goto :goto_448

    .line 596
    .end local v0  # "i":I
    :cond_46b
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_46c
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayersSize()I

    move-result v5

    const/4 v12, 0x1

    if-ge v0, v5, :cond_497

    .line 597
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getCapitalProvinceID()I

    move-result v5

    if-ltz v5, :cond_494

    .line 598
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    invoke-virtual {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getCapitalProvinceID()I

    move-result v13

    invoke-virtual {v5, v13}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->setIsCapital(Z)V

    .line 596
    :cond_494
    add-int/lit8 v0, v0, 0x1

    goto :goto_46c

    .line 602
    .end local v0  # "i":I
    :cond_497
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_499
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v0

    const-string v13, "suggested_owners/"

    const-string v14, "map/"

    if-ge v5, v0, :cond_4fe

    .line 603
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v0

    if-nez v0, :cond_4fb

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v0

    if-gez v0, :cond_4fb

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v0

    if-nez v0, :cond_4fb

    .line 605
    :try_start_4c9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_4f9

    .line 606
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4f9
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4c9 .. :try_end_4f9} :catch_4fa

    .line 610
    :cond_4f9
    goto :goto_4fb

    .line 608
    :catch_4fa
    move-exception v0

    .line 602
    :cond_4fb
    :goto_4fb
    add-int/lit8 v5, v5, 0x1

    goto :goto_499

    .line 614
    .end local v5  # "i":I
    :cond_4fe
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/16 v5, 0x64

    if-ge v0, v5, :cond_547

    .line 615
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_507
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v5

    if-ge v0, v5, :cond_547

    .line 616
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProv()Z

    move-result v5

    if-nez v5, :cond_544

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v5

    if-gez v5, :cond_544

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v5

    if-nez v5, :cond_544

    .line 617
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_544

    .line 618
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    :cond_544
    add-int/lit8 v0, v0, 0x1

    goto :goto_507

    .line 625
    .end local v0  # "i":I
    :cond_547
    :try_start_547
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayersSize()I

    move-result v5

    sub-int v5, v0, v5

    .line 627
    .local v5, "extraToAddForPlayers":I
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_555
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getCivilizationsSize()I

    move-result v0

    add-int/2addr v0, v5

    if-ge v15, v0, :cond_880

    .line 628
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_562
    .catch Ljava/lang/Exception; {:try_start_547 .. :try_end_562} :catch_88b

    if-nez v0, :cond_875

    .line 630
    const/4 v0, 0x0

    .line 631
    .local v0, "tempCapitalID":I
    const/16 v17, 0x0

    .line 634
    .local v17, "iNumOfItterations":I
    :goto_567
    :try_start_567
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    move/from16 v19, v0

    .end local v0  # "tempCapitalID":I
    .local v19, "tempCapitalID":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v12, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    move v12, v0

    .line 635
    .local v12, "tRandID":I
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_57e
    .catch Ljava/lang/StackOverflowError; {:try_start_567 .. :try_end_57e} :catch_853
    .catch Ljava/lang/Exception; {:try_start_567 .. :try_end_57e} :catch_88b

    move/from16 v20, v0

    .line 637
    .end local v19  # "tempCapitalID":I
    .local v20, "tempCapitalID":I
    move/from16 v19, v5

    const/16 v18, 0x1

    .end local v5  # "extraToAddForPlayers":I
    .local v19, "extraToAddForPlayers":I
    add-int/lit8 v5, v17, 0x1

    .line 639
    .end local v17  # "iNumOfItterations":I
    .local v5, "iNumOfItterations":I
    :try_start_586
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;
    :try_end_588
    .catch Ljava/lang/StackOverflowError; {:try_start_586 .. :try_end_588} :catch_848
    .catch Ljava/lang/Exception; {:try_start_586 .. :try_end_588} :catch_88b

    move-object/from16 v17, v6

    move/from16 v6, v20

    .end local v20  # "tempCapitalID":I
    .local v6, "tempCapitalID":I
    .local v17, "tempT":Ljava/lang/String;
    :try_start_58c
    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isCapital()Z

    move-result v0
    :try_end_594
    .catch Ljava/lang/StackOverflowError; {:try_start_58c .. :try_end_594} :catch_83f
    .catch Ljava/lang/Exception; {:try_start_58c .. :try_end_594} :catch_836

    if-nez v0, :cond_812

    .line 640
    const/4 v0, 0x1

    .line 642
    .local v0, "found":Z
    const/16 v20, 0x0

    move/from16 v21, v0

    move/from16 v0, v20

    .local v0, "o":I
    .local v21, "found":Z
    :goto_59d
    move-object/from16 v20, v7

    .end local v7  # "tagsSPLITED":[Ljava/lang/String;
    .local v20, "tagsSPLITED":[Ljava/lang/String;
    :try_start_59f
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvincesSize()I

    move-result v7
    :try_end_5a9
    .catch Ljava/lang/StackOverflowError; {:try_start_59f .. :try_end_5a9} :catch_80b
    .catch Ljava/lang/Exception; {:try_start_59f .. :try_end_5a9} :catch_804

    if-ge v0, v7, :cond_5e7

    .line 643
    :try_start_5ab
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;
    :try_end_5ad
    .catch Ljava/lang/StackOverflowError; {:try_start_5ab .. :try_end_5ad} :catch_5df
    .catch Ljava/lang/Exception; {:try_start_5ab .. :try_end_5ad} :catch_5d8

    move-object/from16 v22, v8

    .end local v8  # "tagsSPLITED_ED":[Ljava/lang/String;
    .local v22, "tagsSPLITED_ED":[Ljava/lang/String;
    :try_start_5af
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital_Just()Z

    move-result v7
    :try_end_5c1
    .catch Ljava/lang/StackOverflowError; {:try_start_5af .. :try_end_5c1} :catch_5d2
    .catch Ljava/lang/Exception; {:try_start_5af .. :try_end_5c1} :catch_5cd

    if-eqz v7, :cond_5c6

    .line 644
    const/4 v7, 0x0

    .line 645
    .end local v21  # "found":Z
    .local v7, "found":Z
    move v0, v7

    goto :goto_5eb

    .line 642
    .end local v7  # "found":Z
    .restart local v21  # "found":Z
    :cond_5c6
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v7, v20

    move-object/from16 v8, v22

    goto :goto_59d

    .line 741
    .end local v0  # "o":I
    .end local v5  # "iNumOfItterations":I
    .end local v6  # "tempCapitalID":I
    .end local v12  # "tRandID":I
    .end local v15  # "i":I
    .end local v19  # "extraToAddForPlayers":I
    .end local v21  # "found":Z
    :catch_5cd
    move-exception v0

    move-object/from16 v27, v9

    goto/16 :goto_894

    .line 732
    .restart local v15  # "i":I
    .restart local v19  # "extraToAddForPlayers":I
    :catch_5d2
    move-exception v0

    move-object/from16 v27, v9

    const/4 v9, 0x1

    goto/16 :goto_85f

    .line 741
    .end local v15  # "i":I
    .end local v19  # "extraToAddForPlayers":I
    .end local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v8  # "tagsSPLITED_ED":[Ljava/lang/String;
    :catch_5d8
    move-exception v0

    move-object/from16 v22, v8

    move-object/from16 v27, v9

    .end local v8  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    goto/16 :goto_894

    .line 732
    .end local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v8  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v15  # "i":I
    .restart local v19  # "extraToAddForPlayers":I
    :catch_5df
    move-exception v0

    move-object/from16 v22, v8

    move-object/from16 v27, v9

    const/4 v9, 0x1

    .end local v8  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    goto/16 :goto_85f

    .line 642
    .end local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v0  # "o":I
    .restart local v5  # "iNumOfItterations":I
    .restart local v6  # "tempCapitalID":I
    .restart local v8  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v12  # "tRandID":I
    .restart local v21  # "found":Z
    :cond_5e7
    move-object/from16 v22, v8

    .end local v8  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    move/from16 v0, v21

    .line 649
    .end local v21  # "found":Z
    .local v0, "found":Z
    :goto_5eb
    if-nez v0, :cond_5fc

    const/16 v7, 0x12

    if-le v5, v7, :cond_5f2

    goto :goto_5fc

    .line 726
    .end local v0  # "found":Z
    :cond_5f2
    nop

    .line 731
    .end local v12  # "tRandID":I
    move/from16 v23, v5

    move/from16 v24, v6

    move-object/from16 v27, v9

    const/4 v9, 0x1

    goto/16 :goto_821

    .line 650
    .restart local v0  # "found":Z
    .restart local v12  # "tRandID":I
    :cond_5fc
    :goto_5fc
    const/4 v7, 0x0

    .line 651
    .end local v0  # "found":Z
    .restart local v7  # "found":Z
    :try_start_5fd
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_602
    .catch Ljava/lang/StackOverflowError; {:try_start_5fd .. :try_end_602} :catch_7fe
    .catch Ljava/lang/Exception; {:try_start_5fd .. :try_end_602} :catch_7f9

    move-object v8, v0

    .line 655
    .local v8, "lPossibleCapitals_Tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;
    :try_end_60e
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_603 .. :try_end_60e} :catch_7eb
    .catch Ljava/lang/StackOverflowError; {:try_start_603 .. :try_end_60e} :catch_7fe
    .catch Ljava/lang/Exception; {:try_start_603 .. :try_end_60e} :catch_7f9

    move/from16 v23, v5

    .end local v5  # "iNumOfItterations":I
    .local v23, "iNumOfItterations":I
    :try_start_610
    invoke-virtual/range {v21 .. v21}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 656
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v5

    .line 658
    .local v5, "sOwners":Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21
    :try_end_634
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_610 .. :try_end_634} :catch_7e2
    .catch Ljava/lang/StackOverflowError; {:try_start_610 .. :try_end_634} :catch_7fe
    .catch Ljava/lang/Exception; {:try_start_610 .. :try_end_634} :catch_7f9

    move-object/from16 v24, v21

    .line 660
    .local v24, "sRes":[Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v25, v0

    move/from16 v0, v21

    .local v0, "j":I
    .local v25, "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_63c
    move-object/from16 v21, v5

    move-object/from16 v5, v24

    move/from16 v24, v6

    .end local v6  # "tempCapitalID":I
    .local v5, "sRes":[Ljava/lang/String;
    .local v21, "sOwners":Ljava/lang/String;
    .local v24, "tempCapitalID":I
    :try_start_642
    array-length v6, v5
    :try_end_643
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_642 .. :try_end_643} :catch_7db
    .catch Ljava/lang/StackOverflowError; {:try_start_642 .. :try_end_643} :catch_7fe
    .catch Ljava/lang/Exception; {:try_start_642 .. :try_end_643} :catch_7f9

    if-ge v0, v6, :cond_687

    .line 661
    :try_start_645
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;
    :try_end_647
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_645 .. :try_end_647} :catch_67f
    .catch Ljava/lang/StackOverflowError; {:try_start_645 .. :try_end_647} :catch_5d2
    .catch Ljava/lang/Exception; {:try_start_645 .. :try_end_647} :catch_5cd

    move/from16 v26, v7

    .end local v7  # "found":Z
    .local v26, "found":Z
    :try_start_649
    aget-object v7, v5, v0

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(Ljava/lang/String;)I

    move-result v6

    .line 663
    .local v6, "nIdeology":I
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v7

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CAN_BECOME_CIVILIZED:I

    if-ltz v7, :cond_667

    .line 664
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    move/from16 v27, v6

    .end local v6  # "nIdeology":I
    .local v27, "nIdeology":I
    aget-object v6, v5, v0

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_66e

    .line 667
    .end local v27  # "nIdeology":I
    .restart local v6  # "nIdeology":I
    :cond_667
    move/from16 v27, v6

    .end local v6  # "nIdeology":I
    .restart local v27  # "nIdeology":I
    aget-object v6, v5, v0

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_66e
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_649 .. :try_end_66e} :catch_679
    .catch Ljava/lang/StackOverflowError; {:try_start_649 .. :try_end_66e} :catch_5d2
    .catch Ljava/lang/Exception; {:try_start_649 .. :try_end_66e} :catch_5cd

    .line 660
    .end local v27  # "nIdeology":I
    :goto_66e
    add-int/lit8 v0, v0, 0x2

    move/from16 v6, v24

    move/from16 v7, v26

    move-object/from16 v24, v5

    move-object/from16 v5, v21

    goto :goto_63c

    .line 687
    .end local v0  # "j":I
    .end local v5  # "sRes":[Ljava/lang/String;
    .end local v21  # "sOwners":Ljava/lang/String;
    .end local v25  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :catch_679
    move-exception v0

    move-object/from16 v27, v9

    const/4 v9, 0x1

    goto/16 :goto_7f5

    .end local v26  # "found":Z
    .restart local v7  # "found":Z
    :catch_67f
    move-exception v0

    move/from16 v26, v7

    move-object/from16 v27, v9

    const/4 v9, 0x1

    .end local v7  # "found":Z
    .restart local v26  # "found":Z
    goto/16 :goto_7f5

    .line 660
    .end local v26  # "found":Z
    .restart local v0  # "j":I
    .restart local v5  # "sRes":[Ljava/lang/String;
    .restart local v7  # "found":Z
    .restart local v21  # "sOwners":Ljava/lang/String;
    .restart local v25  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_687
    move/from16 v26, v7

    .line 671
    .end local v0  # "j":I
    .end local v7  # "found":Z
    .restart local v26  # "found":Z
    :try_start_689
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0
    :try_end_68d
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_689 .. :try_end_68d} :catch_7d6
    .catch Ljava/lang/StackOverflowError; {:try_start_689 .. :try_end_68d} :catch_7fe
    .catch Ljava/lang/Exception; {:try_start_689 .. :try_end_68d} :catch_7f9

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    .restart local v0  # "j":I
    :goto_68f
    if-ltz v0, :cond_6bd

    .line 672
    :try_start_691
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    .local v7, "k":I
    :goto_696
    if-ltz v7, :cond_6b5

    .line 673
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->sTag:Ljava/lang/String;

    move-object/from16 v27, v5

    .end local v5  # "sRes":[Ljava/lang/String;
    .local v27, "sRes":[Ljava/lang/String;
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b0

    .line 674
    invoke-interface {v8, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_6af
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_691 .. :try_end_6af} :catch_679
    .catch Ljava/lang/StackOverflowError; {:try_start_691 .. :try_end_6af} :catch_5d2
    .catch Ljava/lang/Exception; {:try_start_691 .. :try_end_6af} :catch_5cd

    .line 675
    goto :goto_6b7

    .line 672
    :cond_6b0
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v5, v27

    goto :goto_696

    .end local v27  # "sRes":[Ljava/lang/String;
    .restart local v5  # "sRes":[Ljava/lang/String;
    :cond_6b5
    move-object/from16 v27, v5

    .line 671
    .end local v5  # "sRes":[Ljava/lang/String;
    .end local v7  # "k":I
    .restart local v27  # "sRes":[Ljava/lang/String;
    :goto_6b7
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v5, v27

    const/4 v6, 0x1

    goto :goto_68f

    .end local v27  # "sRes":[Ljava/lang/String;
    .restart local v5  # "sRes":[Ljava/lang/String;
    :cond_6bd
    move-object/from16 v27, v5

    .line 680
    .end local v0  # "j":I
    .end local v5  # "sRes":[Ljava/lang/String;
    .restart local v27  # "sRes":[Ljava/lang/String;
    :try_start_6bf
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0
    :try_end_6c3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_6bf .. :try_end_6c3} :catch_7d6
    .catch Ljava/lang/StackOverflowError; {:try_start_6bf .. :try_end_6c3} :catch_7fe
    .catch Ljava/lang/Exception; {:try_start_6bf .. :try_end_6c3} :catch_7f9

    if-nez v0, :cond_6cd

    .line 681
    :try_start_6c5
    invoke-interface {v4, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_6c8
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_6c5 .. :try_end_6c8} :catch_679
    .catch Ljava/lang/StackOverflowError; {:try_start_6c5 .. :try_end_6c8} :catch_5d2
    .catch Ljava/lang/Exception; {:try_start_6c5 .. :try_end_6c8} :catch_5cd

    .line 682
    move-object/from16 v27, v9

    const/4 v9, 0x1

    goto/16 :goto_821

    .line 685
    :cond_6cd
    const/4 v5, 0x1

    .line 690
    .end local v21  # "sOwners":Ljava/lang/String;
    .end local v25  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v26  # "found":Z
    .end local v27  # "sRes":[Ljava/lang/String;
    .local v5, "found":Z
    nop

    .line 693
    if-eqz v5, :cond_7cf

    .line 695
    :try_start_6d1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 697
    .local v0, "nTagIDToAdd":I
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->loadCivilization(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    move-result-object v6

    .line 699
    .local v6, "civData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_6ef
    .catch Ljava/lang/Exception; {:try_start_6d1 .. :try_end_6ef} :catch_7c5
    .catch Ljava/lang/StackOverflowError; {:try_start_6d1 .. :try_end_6ef} :catch_7fe

    .line 701
    .local v7, "tCapital":I
    move/from16 v21, v5

    .end local v5  # "found":Z
    .local v21, "found":Z
    :try_start_6f1
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25
    :try_end_6f7
    .catch Ljava/lang/Exception; {:try_start_6f1 .. :try_end_6f7} :catch_7c0
    .catch Ljava/lang/StackOverflowError; {:try_start_6f1 .. :try_end_6f7} :catch_7fe

    move-object/from16 v27, v9

    .end local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v27, "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_6f9
    move-object/from16 v9, v25

    check-cast v9, Ljava/lang/String;

    invoke-direct {v5, v1, v9, v7}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;-><init>(Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;Ljava/lang/String;I)V

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 705
    .local v5, "tCivID":I
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v32, v25

    check-cast v32, Ljava/lang/String;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v33

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v34

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v35

    move/from16 v25, v0

    .end local v0  # "nTagIDToAdd":I
    .local v25, "nTagIDToAdd":I
    iget v0, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iReligionID:I

    iget v1, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iGroupID:I

    const/16 v40, 0x1

    move-object/from16 v31, v9

    move/from16 v36, v7

    move/from16 v37, v5

    move/from16 v38, v0

    move/from16 v39, v1

    invoke-direct/range {v31 .. v40}, Lage/of/civilizations2/jakowski/lukasz/Civilization;-><init>(Ljava/lang/String;IIIIIIIZ)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivId(I)V

    .line 707
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->RANDOM_GAME_TECHNOLOGY_MIN:I

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->RANDOM_GAME_TECHNOLOGY_PER_AGE:I

    sget v26, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    mul-int v9, v9, v26

    move-object/from16 v26, v6

    .end local v6  # "civData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    .local v26, "civData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->RANDOM_GAME_TECHNOLOGY_PER_AGE_MAX:I

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v1, v6

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->RANDOM_GAME_TECHNOLOGY_RANDOM:I

    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v1, v6

    int-to-float v1, v1

    const/high16 v6, 0x42c80000  # 100.0f

    div-float/2addr v1, v6

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setTechLevel(F)V

    .line 708
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    const/16 v1, 0x10

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x44

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setHappiness(I)V

    .line 710
    if-ltz v7, :cond_79c

    .line 711
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v9

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivId_LoadScenario(I)V

    .line 712
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0
    :try_end_797
    .catch Ljava/lang/Exception; {:try_start_6f9 .. :try_end_797} :catch_7bd
    .catch Ljava/lang/StackOverflowError; {:try_start_6f9 .. :try_end_797} :catch_7b9

    const/4 v9, 0x1

    :try_start_798
    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->setIsCapital(Z)V

    goto :goto_79d

    .line 710
    :cond_79c
    const/4 v9, 0x1

    .line 715
    :goto_79d
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingMoney()I

    move-result v1

    move/from16 v16, v7

    .end local v7  # "tCapital":I
    .local v16, "tCapital":I
    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setGold(J)V

    .line 717
    invoke-interface {v4, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_7b6
    .catch Ljava/lang/Exception; {:try_start_798 .. :try_end_7b6} :catch_7b7
    .catch Ljava/lang/StackOverflowError; {:try_start_798 .. :try_end_7b6} :catch_834

    .line 721
    .end local v5  # "tCivID":I
    .end local v16  # "tCapital":I
    .end local v25  # "nTagIDToAdd":I
    .end local v26  # "civData":Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    goto :goto_7d4

    .line 718
    :catch_7b7
    move-exception v0

    goto :goto_7cb

    .line 732
    .end local v8  # "lPossibleCapitals_Tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12  # "tRandID":I
    .end local v21  # "found":Z
    .end local v23  # "iNumOfItterations":I
    .end local v24  # "tempCapitalID":I
    :catch_7b9
    move-exception v0

    const/4 v9, 0x1

    goto/16 :goto_85f

    .line 718
    .restart local v8  # "lPossibleCapitals_Tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12  # "tRandID":I
    .restart local v21  # "found":Z
    .restart local v23  # "iNumOfItterations":I
    .restart local v24  # "tempCapitalID":I
    :catch_7bd
    move-exception v0

    const/4 v9, 0x1

    goto :goto_7cb

    .end local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_7c0
    move-exception v0

    move-object/from16 v27, v9

    const/4 v9, 0x1

    .end local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_7cb

    .end local v21  # "found":Z
    .end local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "found":Z
    .restart local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_7c5
    move-exception v0

    move/from16 v21, v5

    move-object/from16 v27, v9

    const/4 v9, 0x1

    .line 719
    .end local v5  # "found":Z
    .end local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v21  # "found":Z
    .restart local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_7cb
    :try_start_7cb
    invoke-interface {v4, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 720
    goto :goto_821

    .line 693
    .end local v0  # "e":Ljava/lang/Exception;
    .end local v21  # "found":Z
    .end local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5  # "found":Z
    .restart local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7cf
    move/from16 v21, v5

    move-object/from16 v27, v9

    const/4 v9, 0x1

    .line 734
    .end local v5  # "found":Z
    .end local v8  # "lPossibleCapitals_Tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12  # "tRandID":I
    .end local v23  # "iNumOfItterations":I
    .end local v24  # "tempCapitalID":I
    .restart local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_7d4
    goto/16 :goto_862

    .line 687
    .end local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8  # "lPossibleCapitals_Tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12  # "tRandID":I
    .restart local v23  # "iNumOfItterations":I
    .restart local v24  # "tempCapitalID":I
    .local v26, "found":Z
    :catch_7d6
    move-exception v0

    move-object/from16 v27, v9

    const/4 v9, 0x1

    .end local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_7f5

    .end local v26  # "found":Z
    .end local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v7, "found":Z
    .restart local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_7db
    move-exception v0

    move/from16 v26, v7

    move-object/from16 v27, v9

    const/4 v9, 0x1

    .end local v7  # "found":Z
    .end local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26  # "found":Z
    .restart local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_7f5

    .end local v24  # "tempCapitalID":I
    .end local v26  # "found":Z
    .end local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v6, "tempCapitalID":I
    .restart local v7  # "found":Z
    .restart local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_7e2
    move-exception v0

    move/from16 v24, v6

    move/from16 v26, v7

    move-object/from16 v27, v9

    const/4 v9, 0x1

    .end local v6  # "tempCapitalID":I
    .end local v7  # "found":Z
    .end local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24  # "tempCapitalID":I
    .restart local v26  # "found":Z
    .restart local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_7f5

    .end local v23  # "iNumOfItterations":I
    .end local v24  # "tempCapitalID":I
    .end local v26  # "found":Z
    .end local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "iNumOfItterations":I
    .restart local v6  # "tempCapitalID":I
    .restart local v7  # "found":Z
    .restart local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_7eb
    move-exception v0

    move/from16 v23, v5

    move/from16 v24, v6

    move/from16 v26, v7

    move-object/from16 v27, v9

    const/4 v9, 0x1

    .line 688
    .end local v5  # "iNumOfItterations":I
    .end local v6  # "tempCapitalID":I
    .end local v7  # "found":Z
    .end local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v23  # "iNumOfItterations":I
    .restart local v24  # "tempCapitalID":I
    .restart local v26  # "found":Z
    .restart local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_7f5
    invoke-interface {v4, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 689
    goto :goto_821

    .line 741
    .end local v0  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v8  # "lPossibleCapitals_Tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12  # "tRandID":I
    .end local v15  # "i":I
    .end local v19  # "extraToAddForPlayers":I
    .end local v23  # "iNumOfItterations":I
    .end local v24  # "tempCapitalID":I
    .end local v26  # "found":Z
    .end local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_7f9
    move-exception v0

    move-object/from16 v27, v9

    .end local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_894

    .line 732
    .end local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15  # "i":I
    .restart local v19  # "extraToAddForPlayers":I
    :catch_7fe
    move-exception v0

    move-object/from16 v27, v9

    const/4 v9, 0x1

    .end local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_85f

    .line 741
    .end local v15  # "i":I
    .end local v19  # "extraToAddForPlayers":I
    .end local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v8, "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_804
    move-exception v0

    move-object/from16 v22, v8

    move-object/from16 v27, v9

    .end local v8  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_894

    .line 732
    .end local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15  # "i":I
    .restart local v19  # "extraToAddForPlayers":I
    :catch_80b
    move-exception v0

    move-object/from16 v22, v8

    move-object/from16 v27, v9

    const/4 v9, 0x1

    .end local v8  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_85f

    .line 728
    .end local v20  # "tagsSPLITED":[Ljava/lang/String;
    .end local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5  # "iNumOfItterations":I
    .restart local v6  # "tempCapitalID":I
    .local v7, "tagsSPLITED":[Ljava/lang/String;
    .restart local v8  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12  # "tRandID":I
    :cond_812
    move/from16 v23, v5

    move/from16 v24, v6

    move-object/from16 v20, v7

    move-object/from16 v22, v8

    move-object/from16 v27, v9

    const/4 v9, 0x1

    .end local v5  # "iNumOfItterations":I
    .end local v6  # "tempCapitalID":I
    .end local v7  # "tagsSPLITED":[Ljava/lang/String;
    .end local v8  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20  # "tagsSPLITED":[Ljava/lang/String;
    .restart local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v23  # "iNumOfItterations":I
    .restart local v24  # "tempCapitalID":I
    .restart local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_820
    .catch Ljava/lang/StackOverflowError; {:try_start_7cb .. :try_end_820} :catch_834
    .catch Ljava/lang/Exception; {:try_start_7cb .. :try_end_820} :catch_873

    .line 729
    nop

    .line 634
    .end local v12  # "tRandID":I
    :goto_821
    move-object/from16 v1, p0

    move-object/from16 v6, v17

    move/from16 v5, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v22

    move/from16 v17, v23

    move/from16 v0, v24

    move-object/from16 v9, v27

    const/4 v12, 0x1

    goto/16 :goto_567

    .line 732
    .end local v23  # "iNumOfItterations":I
    .end local v24  # "tempCapitalID":I
    :catch_834
    move-exception v0

    goto :goto_85f

    .line 741
    .end local v15  # "i":I
    .end local v19  # "extraToAddForPlayers":I
    .end local v20  # "tagsSPLITED":[Ljava/lang/String;
    .end local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7  # "tagsSPLITED":[Ljava/lang/String;
    .restart local v8  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_836
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v22, v8

    move-object/from16 v27, v9

    .end local v7  # "tagsSPLITED":[Ljava/lang/String;
    .end local v8  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20  # "tagsSPLITED":[Ljava/lang/String;
    .restart local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_894

    .line 732
    .end local v20  # "tagsSPLITED":[Ljava/lang/String;
    .end local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7  # "tagsSPLITED":[Ljava/lang/String;
    .restart local v8  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15  # "i":I
    .restart local v19  # "extraToAddForPlayers":I
    :catch_83f
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v22, v8

    move-object/from16 v27, v9

    const/4 v9, 0x1

    .end local v7  # "tagsSPLITED":[Ljava/lang/String;
    .end local v8  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20  # "tagsSPLITED":[Ljava/lang/String;
    .restart local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_85f

    .end local v17  # "tempT":Ljava/lang/String;
    .end local v20  # "tagsSPLITED":[Ljava/lang/String;
    .end local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v6, "tempT":Ljava/lang/String;
    .restart local v7  # "tagsSPLITED":[Ljava/lang/String;
    .restart local v8  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_848
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v20, v7

    move-object/from16 v22, v8

    move-object/from16 v27, v9

    const/4 v9, 0x1

    .end local v6  # "tempT":Ljava/lang/String;
    .end local v7  # "tagsSPLITED":[Ljava/lang/String;
    .end local v8  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17  # "tempT":Ljava/lang/String;
    .restart local v20  # "tagsSPLITED":[Ljava/lang/String;
    .restart local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_85f

    .end local v17  # "tempT":Ljava/lang/String;
    .end local v19  # "extraToAddForPlayers":I
    .end local v20  # "tagsSPLITED":[Ljava/lang/String;
    .end local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "extraToAddForPlayers":I
    .restart local v6  # "tempT":Ljava/lang/String;
    .restart local v7  # "tagsSPLITED":[Ljava/lang/String;
    .restart local v8  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_853
    move-exception v0

    move/from16 v19, v5

    move-object/from16 v17, v6

    move-object/from16 v20, v7

    move-object/from16 v22, v8

    move-object/from16 v27, v9

    const/4 v9, 0x1

    .line 733
    .end local v5  # "extraToAddForPlayers":I
    .end local v6  # "tempT":Ljava/lang/String;
    .end local v7  # "tagsSPLITED":[Ljava/lang/String;
    .end local v8  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "ex":Ljava/lang/StackOverflowError;
    .restart local v17  # "tempT":Ljava/lang/String;
    .restart local v19  # "extraToAddForPlayers":I
    .restart local v20  # "tagsSPLITED":[Ljava/lang/String;
    .restart local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_85f
    :try_start_85f
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_862
    .catch Ljava/lang/Exception; {:try_start_85f .. :try_end_862} :catch_873

    .line 627
    .end local v0  # "ex":Ljava/lang/StackOverflowError;
    :goto_862
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move-object/from16 v6, v17

    move/from16 v5, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v22

    move-object/from16 v9, v27

    const/4 v12, 0x1

    goto/16 :goto_555

    .line 741
    .end local v15  # "i":I
    .end local v19  # "extraToAddForPlayers":I
    :catch_873
    move-exception v0

    goto :goto_894

    .line 628
    .end local v17  # "tempT":Ljava/lang/String;
    .end local v20  # "tagsSPLITED":[Ljava/lang/String;
    .end local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5  # "extraToAddForPlayers":I
    .restart local v6  # "tempT":Ljava/lang/String;
    .restart local v7  # "tagsSPLITED":[Ljava/lang/String;
    .restart local v8  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15  # "i":I
    :cond_875
    move/from16 v19, v5

    move-object/from16 v17, v6

    move-object/from16 v20, v7

    move-object/from16 v22, v8

    move-object/from16 v27, v9

    .end local v5  # "extraToAddForPlayers":I
    .end local v6  # "tempT":Ljava/lang/String;
    .end local v7  # "tagsSPLITED":[Ljava/lang/String;
    .end local v8  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17  # "tempT":Ljava/lang/String;
    .restart local v19  # "extraToAddForPlayers":I
    .restart local v20  # "tagsSPLITED":[Ljava/lang/String;
    .restart local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_88a

    .line 627
    .end local v17  # "tempT":Ljava/lang/String;
    .end local v19  # "extraToAddForPlayers":I
    .end local v20  # "tagsSPLITED":[Ljava/lang/String;
    .end local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5  # "extraToAddForPlayers":I
    .restart local v6  # "tempT":Ljava/lang/String;
    .restart local v7  # "tagsSPLITED":[Ljava/lang/String;
    .restart local v8  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_880
    move/from16 v19, v5

    move-object/from16 v17, v6

    move-object/from16 v20, v7

    move-object/from16 v22, v8

    move-object/from16 v27, v9

    .line 743
    .end local v5  # "extraToAddForPlayers":I
    .end local v6  # "tempT":Ljava/lang/String;
    .end local v7  # "tagsSPLITED":[Ljava/lang/String;
    .end local v8  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15  # "i":I
    .restart local v17  # "tempT":Ljava/lang/String;
    .restart local v20  # "tagsSPLITED":[Ljava/lang/String;
    .restart local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_88a
    goto :goto_897

    .line 741
    .end local v17  # "tempT":Ljava/lang/String;
    .end local v20  # "tagsSPLITED":[Ljava/lang/String;
    .end local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6  # "tempT":Ljava/lang/String;
    .restart local v7  # "tagsSPLITED":[Ljava/lang/String;
    .restart local v8  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_88b
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v20, v7

    move-object/from16 v22, v8

    move-object/from16 v27, v9

    .line 742
    .end local v6  # "tempT":Ljava/lang/String;
    .end local v7  # "tagsSPLITED":[Ljava/lang/String;
    .end local v8  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v9  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v17  # "tempT":Ljava/lang/String;
    .restart local v20  # "tagsSPLITED":[Ljava/lang/String;
    .restart local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    .restart local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_894
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 746
    .end local v0  # "ex":Ljava/lang/Exception;
    .end local v4  # "lPossibleCapitals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11  # "civsToAdd":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;>;"
    .end local v17  # "tempT":Ljava/lang/String;
    .end local v20  # "tagsSPLITED":[Ljava/lang/String;
    .end local v22  # "tagsSPLITED_ED":[Ljava/lang/String;
    .end local v27  # "nCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :goto_897
    return-object v3
.end method

.method public final loadCoresData()V
    .registers 9

    .line 1021
    const-string v0, "/"

    const-string v1, "scenarios/"

    const-string v2, "map/"

    :try_start_6
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->isInternal:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_18
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_6 .. :try_end_18} :catch_11a

    const-string v4, "_C"

    if-eqz v3, :cond_69

    .line 1022
    :try_start_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3
    :try_end_67
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1c .. :try_end_67} :catch_11a

    .local v3, "file":Lcom/badlogic/gdx/files/FileHandle;
    goto/16 :goto_104

    .line 1026
    .end local v3  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_69
    :try_start_69
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_b6} :catch_b7
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_69 .. :try_end_b6} :catch_11a

    .line 1029
    .restart local v3  # "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_104

    .line 1027
    .end local v3  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :catch_b7
    move-exception v3

    .line 1028
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_b8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4
    :try_end_103
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_b8 .. :try_end_103} :catch_11a

    move-object v3, v4

    .line 1033
    .local v3, "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_104
    :try_start_104
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    sput-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_CoresGD:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_110} :catch_111
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_104 .. :try_end_110} :catch_11a

    .line 1036
    goto :goto_119

    .line 1034
    :catch_111
    move-exception v4

    .line 1035
    .local v4, "e":Ljava/lang/Exception;
    :try_start_112
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    invoke-direct {v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;-><init>()V

    sput-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_CoresGD:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;
    :try_end_119
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_112 .. :try_end_119} :catch_11a

    .line 1039
    .end local v3  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4  # "e":Ljava/lang/Exception;
    :goto_119
    goto :goto_122

    .line 1037
    :catch_11a
    move-exception v3

    .line 1038
    .local v3, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    invoke-direct {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;-><init>()V

    sput-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_CoresGD:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    .line 1043
    .end local v3  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_122
    :try_start_122
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->isInternal:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_134} :catch_27d

    const-string v4, "_O"

    if-eqz v3, :cond_185

    .line 1044
    :try_start_138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_183} :catch_27d

    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    goto/16 :goto_21f

    .line 1048
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_185
    :try_start_185
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_1d2
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_1d2} :catch_1d3

    .line 1051
    .restart local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_21f

    .line 1049
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :catch_1d3
    move-exception v3

    .line 1050
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_1d4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1054
    .end local v3  # "ex":Ljava/lang/Exception;
    .restart local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_21f
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_GameData_Occupied;

    .line 1056
    .local v1, "occupied":Lage/of/civilizations2/jakowski/lukasz/Province_GameData_Occupied;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22a
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Province_GameData_Occupied;->provinceID:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27c

    .line 1057
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Province_GameData_Occupied;->provinceID:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Province_GameData_Occupied;->civID:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->setTrueOwnerOfProv(I)V

    .line 1058
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Province_GameData_Occupied;->provinceID:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCores()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v3

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Province_GameData_Occupied;->civID:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->addNewCore(II)V
    :try_end_279
    .catch Ljava/lang/Exception; {:try_start_1d4 .. :try_end_279} :catch_27d

    .line 1056
    add-int/lit8 v2, v2, 0x1

    goto :goto_22a

    .line 1062
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1  # "occupied":Lage/of/civilizations2/jakowski/lukasz/Province_GameData_Occupied;
    .end local v2  # "i":I
    :cond_27c
    goto :goto_27e

    .line 1060
    :catch_27d
    move-exception v0

    .line 1063
    :goto_27e
    return-void
.end method

.method public final loadCoresDataEditor()V
    .registers 10

    .line 1069
    const-string v0, "/"

    const-string v1, "scenarios/"

    const-string v2, "map/"

    :try_start_6
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->isInternal:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_18
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_6 .. :try_end_18} :catch_182

    const-string v4, "_C"

    if-eqz v3, :cond_69

    .line 1070
    :try_start_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3
    :try_end_67
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1c .. :try_end_67} :catch_182

    .local v3, "file":Lcom/badlogic/gdx/files/FileHandle;
    goto/16 :goto_104

    .line 1074
    .end local v3  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_69
    :try_start_69
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_b6} :catch_b7
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_69 .. :try_end_b6} :catch_182

    .line 1077
    .restart local v3  # "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_104

    .line 1075
    .end local v3  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :catch_b7
    move-exception v3

    .line 1076
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_b8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4
    :try_end_103
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_b8 .. :try_end_103} :catch_182

    move-object v3, v4

    .line 1081
    .local v3, "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_104
    :try_start_104
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    sput-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_CoresGD:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_110} :catch_111
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_104 .. :try_end_110} :catch_182

    .line 1084
    goto :goto_119

    .line 1082
    :catch_111
    move-exception v4

    .line 1083
    .local v4, "e":Ljava/lang/Exception;
    :try_start_112
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    invoke-direct {v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;-><init>()V

    sput-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_CoresGD:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;
    :try_end_119
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_112 .. :try_end_119} :catch_182

    .line 1087
    .end local v4  # "e":Ljava/lang/Exception;
    :goto_119
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11a
    :try_start_11a
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_CoresGD:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->getProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_17f

    .line 1088
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_CoresGD:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->iProvinceID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->buildProvinceCore()V

    .line 1090
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_138
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_CoresGD:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_17c

    .line 1091
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_CoresGD:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->iProvinceID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCores()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_CoresGD:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->iCivID:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    invoke-virtual {v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->addNewCore(II)V
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_179} :catch_180
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_11a .. :try_end_179} :catch_182

    .line 1090
    add-int/lit8 v5, v5, 0x1

    goto :goto_138

    .line 1087
    .end local v5  # "j":I
    :cond_17c
    add-int/lit8 v4, v4, 0x1

    goto :goto_11a

    .line 1096
    .end local v4  # "i":I
    :cond_17f
    goto :goto_181

    .line 1094
    :catch_180
    move-exception v4

    .line 1099
    .end local v3  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_181
    goto :goto_18a

    .line 1097
    :catch_182
    move-exception v3

    .line 1098
    .local v3, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    invoke-direct {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;-><init>()V

    sput-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_CoresGD:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    .line 1103
    .end local v3  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_18a
    :try_start_18a
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->isInternal:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_19c} :catch_2bf

    const-string v4, "_O"

    if-eqz v3, :cond_1ed

    .line 1104
    :try_start_1a0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_1eb
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1eb} :catch_2bf

    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    goto/16 :goto_287

    .line 1108
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_1ed
    :try_start_1ed
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_23a
    .catch Ljava/lang/Exception; {:try_start_1ed .. :try_end_23a} :catch_23b

    .line 1111
    .restart local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_287

    .line 1109
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :catch_23b
    move-exception v3

    .line 1110
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_23c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1114
    .end local v3  # "ex":Ljava/lang/Exception;
    .restart local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_287
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_GameData_Occupied;

    .line 1116
    .local v1, "occupied":Lage/of/civilizations2/jakowski/lukasz/Province_GameData_Occupied;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_292
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Province_GameData_Occupied;->provinceID:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2be

    .line 1117
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Province_GameData_Occupied;->provinceID:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Province_GameData_Occupied;->civID:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->setTrueOwnerOfProv(I)V
    :try_end_2bb
    .catch Ljava/lang/Exception; {:try_start_23c .. :try_end_2bb} :catch_2bf

    .line 1116
    add-int/lit8 v2, v2, 0x1

    goto :goto_292

    .line 1121
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1  # "occupied":Lage/of/civilizations2/jakowski/lukasz/Province_GameData_Occupied;
    .end local v2  # "i":I
    :cond_2be
    goto :goto_2c0

    .line 1119
    :catch_2bf
    move-exception v0

    .line 1122
    :goto_2c0
    return-void
.end method

.method public final loadDiplomacyData(Z)V
    .registers 10
    .param p1, "editor"  # Z

    .line 1134
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->buildDiplomacy()V

    .line 1138
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->isInternal:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "_D"

    const-string v2, "/"

    const-string v3, "scenarios/"

    const-string v4, "map/"

    if-eqz v0, :cond_6c

    .line 1139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    goto/16 :goto_107

    .line 1143
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_6c
    :try_start_6c
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_b9} :catch_ba

    .line 1146
    .restart local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_107

    .line 1144
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :catch_ba
    move-exception v0

    .line 1145
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    move-object v0, v1

    .line 1150
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_107
    :try_start_107
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;

    .line 1152
    .local v1, "scenario_GameData_Diplomacy":Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_112
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getVassals()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_15a

    .line 1153
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getVassals()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;->getCivLordID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v4

    if-ge v3, v4, :cond_157

    .line 1154
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getVassals()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getVassals()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;->getCivLordID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setPuppetOfCivId(I)V

    .line 1152
    :cond_157
    add-int/lit8 v2, v2, 0x1

    goto :goto_112

    .line 1158
    .end local v2  # "i":I
    :cond_15a
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_15b
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getAlliances()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_220

    .line 1160
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getAlliances()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->addAlliance(Ljava/lang/String;)V

    .line 1162
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_179
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getAlliances()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->getCivs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1d6

    .line 1163
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v4

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getAlliances()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->getCivs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->addCivilization(I)V

    .line 1164
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getAlliances()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->getCivs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setAlliance(I)V

    .line 1162
    add-int/lit8 v3, v3, 0x1

    goto :goto_179

    .line 1167
    .end local v3  # "j":I
    :cond_1d6
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v3

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getAlliances()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v5

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getAlliances()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v6

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getAlliances()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;-><init>(FFF)V

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->setColorOfAlliance(Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V

    .line 1158
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_15b

    .line 1170
    .end local v2  # "i":I
    :cond_220
    if-eqz p1, :cond_262

    .line 1171
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_223
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getRelations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_260

    .line 1172
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getRelations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivA()I

    move-result v4

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getRelations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivB()I

    move-result v5

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getRelations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getValue()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setCivRelationOfCivB(IIF)V

    .line 1171
    add-int/lit8 v2, v2, 0x1

    goto :goto_223

    .end local v2  # "i":I
    :cond_260
    goto/16 :goto_2fd

    .line 1175
    :cond_262
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_263
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getRelations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a0

    .line 1176
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getRelations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivA()I

    move-result v4

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getRelations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivB()I

    move-result v5

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getRelations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getValue()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setCivRelationOfCivB(IIF)V

    .line 1175
    add-int/lit8 v2, v2, 0x1

    goto :goto_263

    .line 1179
    .end local v2  # "i":I
    :cond_2a0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;->NEW_GAME_SET_RANDOM_RELATIONS:Z

    if-eqz v2, :cond_2fd

    .line 1180
    const/4 v2, 0x1

    .restart local v2  # "i":I
    :goto_2a7
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2fd

    .line 1181
    add-int/lit8 v3, v2, 0x1

    .restart local v3  # "j":I
    :goto_2b3
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v4

    if-ge v3, v4, :cond_2fa

    .line 1182
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivRelationOfCivB(II)F

    move-result v4

    float-to-int v4, v4

    if-nez v4, :cond_2d9

    .line 1183
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;->NEW_GAME_RANDOM_RELATIONS_RANDOM:I

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;->NEW_GAME_RANDOM_RELATIONS_BASE_MINUS:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v2, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setCivRelationOfCivB(IIF)V

    .line 1186
    :cond_2d9
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivRelationOfCivB(II)F

    move-result v4

    float-to-int v4, v4

    if-nez v4, :cond_2f7

    .line 1187
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;->NEW_GAME_RANDOM_RELATIONS_RANDOM:I

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvDiplomacy:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Diplomacy;->NEW_GAME_RANDOM_RELATIONS_BASE_MINUS:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v3, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setCivRelationOfCivB(IIF)V

    .line 1181
    :cond_2f7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b3

    .line 1180
    .end local v3  # "j":I
    :cond_2fa
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a7

    .line 1194
    .end local v2  # "i":I
    :cond_2fd
    :goto_2fd
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_2fe
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getMilitaryAccess()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_33a

    .line 1195
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getMilitaryAccess()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivA()I

    move-result v4

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getMilitaryAccess()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivB()I

    move-result v5

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getMilitaryAccess()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getValue()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setMilitaryAccess(III)Z

    .line 1194
    add-int/lit8 v2, v2, 0x1

    goto :goto_2fe

    .line 1198
    .end local v2  # "i":I
    :cond_33a
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_33b
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getGuarantee()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_377

    .line 1199
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getGuarantee()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivA()I

    move-result v4

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getGuarantee()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivB()I

    move-result v5

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getGuarantee()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getValue()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setGuarantee(III)Z

    .line 1198
    add-int/lit8 v2, v2, 0x1

    goto :goto_33b

    .line 1202
    .end local v2  # "i":I
    :cond_377
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_378
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getPacts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3b4

    .line 1203
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getPacts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivA()I

    move-result v4

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getPacts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivB()I

    move-result v5

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getPacts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getValue()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setCivNonAggressionPact(III)Z

    .line 1202
    add-int/lit8 v2, v2, 0x1

    goto :goto_378

    .line 1206
    .end local v2  # "i":I
    :cond_3b4
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_3b5
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getDefensivePacts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3f1

    .line 1207
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getDefensivePacts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivA()I

    move-result v4

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getDefensivePacts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivB()I

    move-result v5

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getDefensivePacts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getValue()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setDefensivePact(III)Z

    .line 1206
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b5

    .line 1210
    .end local v2  # "i":I
    :cond_3f1
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_3f2
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getTruces()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_42e

    .line 1211
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getTruces()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivA()I

    move-result v4

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getTruces()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivB()I

    move-result v5

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getTruces()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getValue()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setCivTruce(III)Z
    :try_end_42b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_107 .. :try_end_42b} :catch_434
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_42b} :catch_432
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_42b} :catch_430

    .line 1210
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f2

    .line 1214
    .end local v2  # "i":I
    :cond_42e
    nop

    .end local v1  # "scenario_GameData_Diplomacy":Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;
    goto :goto_43c

    .line 1219
    :catch_430
    move-exception v1

    goto :goto_43d

    .line 1217
    :catch_432
    move-exception v1

    goto :goto_43c

    .line 1215
    :catch_434
    move-exception v1

    .line 1216
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const-string v3, "Error - Diplomacy Data"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;)V

    .line 1221
    .end local v1  # "e":Ljava/lang/ClassNotFoundException;
    :goto_43c
    nop

    .line 1223
    :goto_43d
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/GameManager;->buildFriendlyCivs()V

    .line 1224
    return-void
.end method

.method public final loadEventsData()V
    .registers 11

    .line 973
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;-><init>()V

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->events:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    .line 975
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Menu_InitGame;->DJE:Z

    if-nez v0, :cond_1a

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/EventsJ;->loadEventsJ()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 976
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->FXABF()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_16e

    goto/16 :goto_16d

    .line 981
    :cond_1a
    const/4 v0, 0x0

    .line 984
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_1b
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->isInternal:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2d} :catch_130

    const-string v2, "_E"

    const-string v3, "events/"

    const-string v4, "/"

    const-string v5, "scenarios/"

    const-string v6, "map/"

    if-eqz v1, :cond_8b

    .line 985
    :try_start_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_88} :catch_130

    move-object v0, v1

    goto/16 :goto_12f

    .line 989
    :cond_8b
    :try_start_8b
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_dc} :catch_de

    move-object v0, v1

    .line 992
    goto :goto_12f

    .line 990
    :catch_de
    move-exception v1

    .line 991
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_df
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_12e} :catch_130

    move-object v0, v2

    .line 996
    .end local v1  # "ex":Ljava/lang/Exception;
    :goto_12f
    goto :goto_134

    .line 994
    :catch_130
    move-exception v1

    .line 995
    .restart local v1  # "ex":Ljava/lang/Exception;
    :try_start_131
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_134} :catch_15b

    .line 999
    .end local v1  # "ex":Ljava/lang/Exception;
    :goto_134
    :try_start_134
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iput-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->events:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    .line 1000
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->FXABF()V
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_147} :catch_148

    .line 1005
    goto :goto_15a

    .line 1001
    :catch_148
    move-exception v1

    .line 1002
    .local v1, "e":Ljava/lang/Exception;
    :try_start_149
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    invoke-direct {v3}, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;-><init>()V

    iput-object v3, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->events:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    .line 1003
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->FXABF()V

    .line 1004
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_15a} :catch_15b

    .line 1010
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_15a
    goto :goto_16d

    .line 1006
    :catch_15b
    move-exception v0

    .line 1007
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_15c
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;-><init>()V

    iput-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->events:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    .line 1008
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->FXABF()V

    .line 1009
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_16d} :catch_16e

    .line 1014
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_16d
    goto :goto_172

    .line 1012
    :catch_16e
    move-exception v0

    .line 1013
    .restart local v0  # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1015
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_172
    return-void
.end method

.method public final loadGame_Scenarios(Z)V
    .registers 33
    .param p1, "initMap"  # Z

    .line 72
    move-object/from16 v1, p0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->SCENARIOS_SIZE:I

    if-gtz v0, :cond_e

    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 73
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->disposeScenarios()V

    .line 76
    :cond_11
    const/4 v2, 0x0

    .line 78
    .local v2, "defaultScenario":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 80
    .local v3, "scenarioTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v0

    const-string v4, ";"

    const-string v5, "Age_of_Civilizations"

    const-string v6, "scenarios/"

    const-string v7, "map/"

    const/4 v8, 0x1

    if-eqz v0, :cond_b2

    .line 81
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->IS_MAC:Z

    if-eqz v0, :cond_64

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 83
    .local v0, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v9

    .line 84
    .local v9, "tempT":Ljava/lang/String;
    invoke-virtual {v9, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 86
    .local v10, "tagsSPLITED":[Ljava/lang/String;
    array-length v11, v10

    sub-int/2addr v11, v8

    .local v11, "i":I
    :goto_58
    if-ltz v11, :cond_62

    .line 87
    aget-object v12, v10, v11

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v11, v11, -0x1

    goto :goto_58

    .line 89
    .end local v0  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v9  # "tempT":Ljava/lang/String;
    .end local v10  # "tagsSPLITED":[Ljava/lang/String;
    .end local v11  # "i":I
    :cond_62
    goto/16 :goto_137

    .line 91
    :cond_64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getFileNames_O_Classic(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 93
    .local v0, "tempFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .local v10, "iSize":I
    :goto_88
    if-ge v9, v10, :cond_9d

    .line 94
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9a

    .line 95
    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 96
    goto :goto_9d

    .line 93
    :cond_9a
    add-int/lit8 v9, v9, 0x1

    goto :goto_88

    .line 100
    .end local v9  # "i":I
    .end local v10  # "iSize":I
    :cond_9d
    :goto_9d
    const/4 v9, 0x0

    .restart local v9  # "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .restart local v10  # "iSize":I
    :goto_a2
    if-ge v9, v10, :cond_b0

    .line 101
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v9, v9, 0x1

    goto :goto_a2

    .line 103
    .end local v0  # "tempFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9  # "i":I
    .end local v10  # "iSize":I
    :cond_b0
    goto/16 :goto_137

    .line 106
    :cond_b2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    .line 107
    .local v9, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v10

    .line 108
    .local v10, "tempT":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 110
    .local v11, "tagsSPLITED":[Ljava/lang/String;
    array-length v0, v11

    sub-int/2addr v0, v8

    .local v0, "i":I
    :goto_df
    if-ltz v0, :cond_f1

    .line 111
    aget-object v12, v11, v0

    invoke-interface {v3, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_ee

    .line 112
    aget-object v12, v11, v0

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_ee
    add-int/lit8 v0, v0, -0x1

    goto :goto_df

    .line 117
    .end local v0  # "i":I
    :cond_f1
    :try_start_f1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 118
    .local v0, "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v12

    .line 119
    .local v12, "tempT2":Ljava/lang/String;
    invoke-virtual {v12, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 121
    .local v13, "tagsSPLITED2":[Ljava/lang/String;
    array-length v14, v13

    sub-int/2addr v14, v8

    .local v14, "i":I
    :goto_120
    if-ltz v14, :cond_132

    .line 122
    aget-object v15, v13, v14

    invoke-interface {v3, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_12f

    .line 123
    aget-object v15, v13, v14

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_12f} :catch_133

    .line 121
    :cond_12f
    add-int/lit8 v14, v14, -0x1

    goto :goto_120

    .line 128
    .end local v0  # "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v12  # "tempT2":Ljava/lang/String;
    .end local v13  # "tagsSPLITED2":[Ljava/lang/String;
    .end local v14  # "i":I
    :cond_132
    goto :goto_137

    .line 126
    :catch_133
    move-exception v0

    .line 127
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 131
    .end local v0  # "ex":Ljava/lang/Exception;
    .end local v9  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v10  # "tempT":Ljava/lang/String;
    .end local v11  # "tagsSPLITED":[Ljava/lang/String;
    :goto_137
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_138
    sget v9, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUFS:I

    if-ge v0, v9, :cond_187

    .line 132
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getFileNames_O(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 134
    .local v9, "tempFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    .local v11, "iSize":I
    :goto_16c
    if-ge v10, v11, :cond_184

    .line 135
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_181

    .line 136
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_181
    add-int/lit8 v10, v10, 0x1

    goto :goto_16c

    .line 131
    .end local v9  # "tempFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10  # "i":I
    .end local v11  # "iSize":I
    :cond_184
    add-int/lit8 v0, v0, 0x1

    goto :goto_138

    .line 142
    .end local v0  # "a":I
    :cond_187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_188
    sget v9, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUFS:I

    if-ge v0, v9, :cond_211

    .line 143
    sget-boolean v9, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->IS_MAC:Z

    if-eqz v9, :cond_1c2

    .line 144
    sget-object v9, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    .local v9, "files":[Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_1f3

    .line 146
    .end local v9  # "files":[Lcom/badlogic/gdx/files/FileHandle;
    :cond_1c2
    sget-object v9, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    .line 149
    .restart local v9  # "files":[Lcom/badlogic/gdx/files/FileHandle;
    :goto_1f3
    array-length v11, v9

    const/4 v10, 0x0

    :goto_1f5
    if-ge v10, v11, :cond_20d

    aget-object v12, v9, v10

    .line 150
    .local v12, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_20a

    .line 151
    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v12  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_20a
    add-int/lit8 v10, v10, 0x1

    goto :goto_1f5

    .line 142
    :cond_20d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_188

    .line 156
    .end local v0  # "i":I
    .end local v9  # "files":[Lcom/badlogic/gdx/files/FileHandle;
    :cond_211
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_212
    sget v9, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUIIS:I

    const-string v11, "/"

    if-ge v0, v9, :cond_26b

    .line 157
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v12}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getFileNames_Absolute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 159
    .local v9, "tempFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    .local v12, "iSize":I
    :goto_250
    if-ge v11, v12, :cond_268

    .line 160
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_265

    .line 161
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_265
    add-int/lit8 v11, v11, 0x1

    goto :goto_250

    .line 156
    .end local v9  # "tempFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11  # "i":I
    .end local v12  # "iSize":I
    :cond_268
    add-int/lit8 v0, v0, 0x1

    goto :goto_212

    .line 166
    .end local v0  # "a":I
    :cond_26b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_26c
    sget v9, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUIIS:I

    if-ge v0, v9, :cond_2c6

    .line 167
    sget-object v9, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v13}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    .line 169
    .local v9, "files":[Lcom/badlogic/gdx/files/FileHandle;
    array-length v12, v9

    const/4 v13, 0x0

    :goto_2ab
    if-ge v13, v12, :cond_2c3

    aget-object v14, v9, v13

    .line 170
    .local v14, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v14}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2c0

    .line 171
    invoke-virtual {v14}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v14  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_2c0
    add-int/lit8 v13, v13, 0x1

    goto :goto_2ab

    .line 166
    :cond_2c3
    add-int/lit8 v0, v0, 0x1

    goto :goto_26c

    .line 176
    .end local v0  # "i":I
    .end local v9  # "files":[Lcom/badlogic/gdx/files/FileHandle;
    :cond_2c6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 177
    .local v9, "tempScenarios_TagsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 179
    .local v12, "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 180
    .local v13, "tempScenarios_Names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 181
    .local v14, "tempScenarios_CivNum":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 182
    .local v15, "tempScenarios_Authors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v0

    .line 183
    .local v16, "tempScenarios_Age":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v0

    .line 184
    .local v17, "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v0

    .line 185
    .local v18, "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v0

    .line 186
    .local v19, "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v0

    .line 189
    .local v20, "tempScenarios_Wikis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .restart local v0  # "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    .local v10, "iSize":I
    :goto_30c
    if-ge v0, v10, :cond_338

    .line 190
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v8, v21

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_330

    .line 191
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    move-object/from16 v21, v2

    const/4 v8, 0x1

    .end local v2  # "defaultScenario":Ljava/lang/String;
    .local v21, "defaultScenario":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_333

    .line 190
    .end local v21  # "defaultScenario":Ljava/lang/String;
    .restart local v2  # "defaultScenario":Ljava/lang/String;
    :cond_330
    move-object/from16 v21, v2

    const/4 v8, 0x1

    .line 189
    .end local v2  # "defaultScenario":Ljava/lang/String;
    .restart local v21  # "defaultScenario":Ljava/lang/String;
    :goto_333
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v21

    goto :goto_30c

    .end local v21  # "defaultScenario":Ljava/lang/String;
    .restart local v2  # "defaultScenario":Ljava/lang/String;
    :cond_338
    move-object/from16 v21, v2

    .line 196
    .end local v0  # "i":I
    .end local v2  # "defaultScenario":Ljava/lang/String;
    .end local v10  # "iSize":I
    .restart local v21  # "defaultScenario":Ljava/lang/String;
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_33c
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    const-string v8, ".json"

    const-string v10, "_INFO"

    move-object/from16 v22, v3

    .end local v3  # "scenarioTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v22, "scenarioTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "Data_Scenario_Info"

    if-ge v2, v0, :cond_4b2

    .line 198
    :try_start_34a
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;-><init>()V

    .line 199
    .local v0, "data":Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;
    new-instance v23, Lcom/badlogic/gdx/utils/Json;

    invoke-direct/range {v23 .. v23}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    move-object/from16 v24, v23

    .line 200
    .local v24, "json":Lcom/badlogic/gdx/utils/Json;
    move-object/from16 v23, v0

    .end local v0  # "data":Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;
    .local v23, "data":Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;
    const-class v0, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;

    const-class v1, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;
    :try_end_35c
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_34a .. :try_end_35c} :catch_453

    move-object/from16 v25, v12

    move-object/from16 v12, v24

    .end local v24  # "json":Lcom/badlogic/gdx/utils/Json;
    .local v12, "json":Lcom/badlogic/gdx/utils/Json;
    .local v25, "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    :try_start_360
    invoke-virtual {v12, v0, v3, v1}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 202
    const-class v0, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    const-string v3, "UTF8"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;

    .line 204
    .end local v23  # "data":Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;
    .restart local v0  # "data":Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;->Data_Scenario_Info:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_436

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 205
    .local v1, "e":Ljava/lang/Object;
    move-object v3, v1

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;

    .line 207
    .local v3, "tempData":Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;
    iget v8, v3, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Civs:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v8, v3, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Name:Ljava/lang/String;

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v8, v3, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Author:Ljava/lang/String;

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v8, v3, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Wiki:Ljava/lang/String;
    :try_end_3d8
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_360 .. :try_end_3d8} :catch_445

    move-object/from16 v10, v20

    .end local v20  # "tempScenarios_Wikis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v10, "tempScenarios_Wikis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_3da
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget v8, v3, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Age:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_3e3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3da .. :try_end_3e3} :catch_42a

    move-object/from16 v20, v1

    move-object/from16 v1, v16

    .end local v16  # "tempScenarios_Age":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v1, "tempScenarios_Age":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v20, "e":Ljava/lang/Object;
    :try_start_3e7
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget v8, v3, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Year:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_3f0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3e7 .. :try_end_3f0} :catch_420

    move-object/from16 v16, v12

    move-object/from16 v12, v17

    .end local v17  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v16, "json":Lcom/badlogic/gdx/utils/Json;
    :try_start_3f4
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget v8, v3, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Month:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_3fd
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3f4 .. :try_end_3fd} :catch_418

    move-object/from16 v17, v11

    move-object/from16 v11, v18

    .end local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v11, "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_401
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget v8, v3, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Day:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_40a
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_401 .. :try_end_40a} :catch_414

    move-object/from16 v18, v3

    move-object/from16 v3, v19

    .end local v19  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v3, "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v18, "tempData":Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;
    :try_start_40e
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_411
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_40e .. :try_end_411} :catch_412

    .line 215
    goto :goto_444

    .line 217
    .end local v0  # "data":Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;
    .end local v16  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v18  # "tempData":Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;
    .end local v20  # "e":Ljava/lang/Object;
    :catch_412
    move-exception v0

    goto :goto_462

    .end local v3  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v19  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_414
    move-exception v0

    move-object/from16 v3, v19

    .end local v19  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_462

    .end local v3  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v18, "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v19  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_418
    move-exception v0

    move-object/from16 v17, v11

    move-object/from16 v11, v18

    move-object/from16 v3, v19

    .end local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v19  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_462

    .end local v3  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v17  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v19  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_420
    move-exception v0

    move-object/from16 v12, v17

    move-object/from16 v3, v19

    move-object/from16 v17, v11

    move-object/from16 v11, v18

    .end local v17  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v19  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_462

    .end local v1  # "tempScenarios_Age":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v16, "tempScenarios_Age":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v17  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v19  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_42a
    move-exception v0

    move-object/from16 v1, v16

    move-object/from16 v12, v17

    move-object/from16 v3, v19

    move-object/from16 v17, v11

    move-object/from16 v11, v18

    .end local v16  # "tempScenarios_Age":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v19  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v1  # "tempScenarios_Age":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_462

    .line 204
    .end local v1  # "tempScenarios_Age":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10  # "tempScenarios_Wikis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v0  # "data":Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;
    .local v12, "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v16  # "tempScenarios_Age":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v17  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v19  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v20, "tempScenarios_Wikis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_436
    move-object/from16 v1, v16

    move-object/from16 v3, v19

    move-object/from16 v10, v20

    move-object/from16 v16, v12

    move-object/from16 v12, v17

    move-object/from16 v17, v11

    move-object/from16 v11, v18

    .line 230
    .end local v0  # "data":Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;
    .end local v16  # "tempScenarios_Age":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v19  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v20  # "tempScenarios_Wikis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1  # "tempScenarios_Age":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10  # "tempScenarios_Wikis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_444
    goto :goto_49c

    .line 217
    .end local v1  # "tempScenarios_Age":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10  # "tempScenarios_Wikis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v16  # "tempScenarios_Age":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v17  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v19  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v20  # "tempScenarios_Wikis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_445
    move-exception v0

    move-object/from16 v1, v16

    move-object/from16 v12, v17

    move-object/from16 v3, v19

    move-object/from16 v10, v20

    move-object/from16 v17, v11

    move-object/from16 v11, v18

    .end local v16  # "tempScenarios_Age":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v19  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v20  # "tempScenarios_Wikis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1  # "tempScenarios_Age":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10  # "tempScenarios_Wikis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_462

    .end local v1  # "tempScenarios_Age":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10  # "tempScenarios_Wikis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v25  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .local v12, "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v16  # "tempScenarios_Age":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v17  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v19  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v20  # "tempScenarios_Wikis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_453
    move-exception v0

    move-object/from16 v25, v12

    move-object/from16 v1, v16

    move-object/from16 v12, v17

    move-object/from16 v3, v19

    move-object/from16 v10, v20

    move-object/from16 v17, v11

    move-object/from16 v11, v18

    .line 218
    .end local v16  # "tempScenarios_Age":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v19  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v20  # "tempScenarios_Wikis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .restart local v1  # "tempScenarios_Age":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10  # "tempScenarios_Wikis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v25  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    :goto_462
    sget-boolean v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v8, :cond_469

    .line 219
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 222
    :cond_469
    move-object/from16 v16, v0

    const/4 v8, 0x0

    .end local v0  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .local v16, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    const-string v0, "ERROR"

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    const-string v0, ""

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    .end local v16  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_49c
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v16, v1

    move-object/from16 v19, v3

    move-object/from16 v20, v10

    move-object/from16 v18, v11

    move-object/from16 v11, v17

    move-object/from16 v3, v22

    move-object/from16 v1, p0

    move-object/from16 v17, v12

    move-object/from16 v12, v25

    goto/16 :goto_33c

    .end local v1  # "tempScenarios_Age":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10  # "tempScenarios_Wikis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v25  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .local v12, "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .local v16, "tempScenarios_Age":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v17  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v19  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v20  # "tempScenarios_Wikis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4b2
    move-object v0, v3

    move-object/from16 v25, v12

    move-object/from16 v1, v16

    move-object/from16 v12, v17

    move-object/from16 v3, v19

    move/from16 v16, v2

    move-object/from16 v17, v11

    move-object/from16 v11, v18

    move-object/from16 v2, v20

    .line 234
    .end local v16  # "tempScenarios_Age":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v19  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v20  # "tempScenarios_Wikis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1  # "tempScenarios_Age":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v2, "tempScenarios_Wikis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v25  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->readLocalFiles()Z

    move-result v16

    if-eqz v16, :cond_681

    .line 236
    move-object/from16 v16, v3

    .end local v3  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v16, "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_4cb
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;
    :try_end_4cd
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4cb .. :try_end_4cd} :catch_679

    move-object/from16 v18, v11

    .end local v11  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_4cf
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;
    :try_end_4da
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4cf .. :try_end_4da} :catch_670

    move-object/from16 v20, v12

    .end local v12  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v20, "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_4dc
    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 237
    .local v3, "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v5

    .line 238
    .local v5, "tempT2":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, "tagsSPLITED2":[Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    .line 242
    .local v11, "nStart":I
    const/4 v12, 0x0

    move-object/from16 v19, v3

    .end local v3  # "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    .local v12, "i":I
    .local v19, "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    array-length v3, v4
    :try_end_504
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4dc .. :try_end_504} :catch_666

    .local v3, "iSize":I
    :goto_504
    if-ge v12, v3, :cond_543

    .line 243
    move/from16 v23, v3

    .end local v3  # "iSize":I
    .local v23, "iSize":I
    :try_start_508
    aget-object v3, v4, v12

    invoke-interface {v9, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52b

    .line 244
    aget-object v3, v4, v12

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    move-object/from16 v24, v4

    const/4 v3, 0x0

    .end local v4  # "tagsSPLITED2":[Ljava/lang/String;
    .local v24, "tagsSPLITED2":[Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4
    :try_end_51c
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_508 .. :try_end_51c} :catch_538

    move-object/from16 v3, v25

    .end local v25  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .local v3, "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    :try_start_51e
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_521
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_51e .. :try_end_521} :catch_522

    goto :goto_52f

    .line 274
    .end local v5  # "tempT2":Ljava/lang/String;
    .end local v11  # "nStart":I
    .end local v12  # "i":I
    .end local v19  # "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v23  # "iSize":I
    .end local v24  # "tagsSPLITED2":[Ljava/lang/String;
    :catch_522
    move-exception v0

    move-object/from16 v8, v16

    move-object/from16 v7, v18

    move-object/from16 v6, v20

    goto/16 :goto_686

    .line 243
    .end local v3  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v4  # "tagsSPLITED2":[Ljava/lang/String;
    .restart local v5  # "tempT2":Ljava/lang/String;
    .restart local v11  # "nStart":I
    .restart local v12  # "i":I
    .restart local v19  # "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v23  # "iSize":I
    .restart local v25  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    :cond_52b
    move-object/from16 v24, v4

    move-object/from16 v3, v25

    .line 242
    .end local v4  # "tagsSPLITED2":[Ljava/lang/String;
    .end local v25  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v3  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v24  # "tagsSPLITED2":[Ljava/lang/String;
    :goto_52f
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v25, v3

    move/from16 v3, v23

    move-object/from16 v4, v24

    goto :goto_504

    .line 274
    .end local v3  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .end local v5  # "tempT2":Ljava/lang/String;
    .end local v11  # "nStart":I
    .end local v12  # "i":I
    .end local v19  # "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v23  # "iSize":I
    .end local v24  # "tagsSPLITED2":[Ljava/lang/String;
    .restart local v25  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    :catch_538
    move-exception v0

    move-object/from16 v3, v25

    move-object/from16 v8, v16

    move-object/from16 v7, v18

    move-object/from16 v6, v20

    .end local v25  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v3  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    goto/16 :goto_686

    .line 242
    .local v3, "iSize":I
    .restart local v4  # "tagsSPLITED2":[Ljava/lang/String;
    .restart local v5  # "tempT2":Ljava/lang/String;
    .restart local v11  # "nStart":I
    .restart local v12  # "i":I
    .restart local v19  # "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v25  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    :cond_543
    move/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v3, v25

    .line 249
    .end local v4  # "tagsSPLITED2":[Ljava/lang/String;
    .end local v12  # "i":I
    .end local v25  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .local v3, "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v24  # "tagsSPLITED2":[Ljava/lang/String;
    move v4, v11

    .local v4, "i":I
    :goto_54a
    :try_start_54a
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_655

    .line 250
    sget-object v12, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    move-object/from16 v23, v5

    .end local v5  # "tempT2":Ljava/lang/String;
    .local v23, "tempT2":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v25, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    move-object/from16 v26, v7

    invoke-virtual/range {v25 .. v25}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v7, v17

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v25, v6

    move-object/from16 v6, v17

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    .line 252
    .local v5, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, "fileContent":Ljava/lang/String;
    new-instance v12, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v12}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 256
    .local v12, "json":Lcom/badlogic/gdx/utils/Json;
    move-object/from16 v17, v5

    .end local v5  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .local v17, "file":Lcom/badlogic/gdx/files/FileHandle;
    const-class v5, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;

    move-object/from16 v27, v7

    const-class v7, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;

    invoke-virtual {v12, v5, v0, v7}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 257
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;

    invoke-direct {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;-><init>()V

    .line 258
    .local v5, "data":Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;
    const-class v7, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;

    invoke-virtual {v12, v7, v6}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;

    move-object v5, v7

    .line 260
    iget-object v7, v5, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;->Data_Scenario_Info:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_631

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 261
    .local v7, "e":Ljava/lang/Object;
    move-object/from16 v28, v7

    check-cast v28, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;

    move-object/from16 v29, v28

    .line 263
    .local v29, "tempData":Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;
    move-object/from16 v28, v0

    move-object/from16 v0, v29

    move-object/from16 v29, v5

    .end local v5  # "data":Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;
    .local v0, "tempData":Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;
    .local v29, "data":Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;
    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Civs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Name:Ljava/lang/String;

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Author:Ljava/lang/String;

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Wiki:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Age:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Year:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_600
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_54a .. :try_end_600} :catch_65e

    move-object/from16 v30, v6

    move-object/from16 v6, v20

    .end local v20  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v6, "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v30, "fileContent":Ljava/lang/String;
    :try_start_604
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Month:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_60d
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_604 .. :try_end_60d} :catch_62a

    move-object/from16 v20, v7

    move-object/from16 v7, v18

    .end local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v7, "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v20, "e":Ljava/lang/Object;
    :try_start_611
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Day:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_61a
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_611 .. :try_end_61a} :catch_625

    move-object/from16 v18, v8

    move-object/from16 v8, v16

    .end local v16  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v8, "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_61e
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_621
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_61e .. :try_end_621} :catch_622

    .line 271
    goto :goto_63f

    .line 274
    .end local v0  # "tempData":Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;
    .end local v4  # "i":I
    .end local v11  # "nStart":I
    .end local v12  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v17  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v19  # "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v20  # "e":Ljava/lang/Object;
    .end local v23  # "tempT2":Ljava/lang/String;
    .end local v24  # "tagsSPLITED2":[Ljava/lang/String;
    .end local v29  # "data":Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;
    .end local v30  # "fileContent":Ljava/lang/String;
    :catch_622
    move-exception v0

    goto/16 :goto_686

    .end local v8  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v16  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_625
    move-exception v0

    move-object/from16 v8, v16

    .end local v16  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto/16 :goto_686

    .end local v7  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v16  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_62a
    move-exception v0

    move-object/from16 v8, v16

    move-object/from16 v7, v18

    .end local v16  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto/16 :goto_686

    .line 260
    .end local v7  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v4  # "i":I
    .restart local v5  # "data":Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;
    .local v6, "fileContent":Ljava/lang/String;
    .restart local v11  # "nStart":I
    .restart local v12  # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v16  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v17  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v19  # "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    .local v20, "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v23  # "tempT2":Ljava/lang/String;
    .restart local v24  # "tagsSPLITED2":[Ljava/lang/String;
    :cond_631
    move-object/from16 v28, v0

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v7, v18

    move-object/from16 v6, v20

    move-object/from16 v18, v8

    move-object/from16 v8, v16

    .line 249
    .end local v5  # "data":Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;
    .end local v12  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v16  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v20  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v6, "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_63f
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v20, v6

    move-object/from16 v16, v8

    move-object/from16 v8, v18

    move-object/from16 v5, v23

    move-object/from16 v6, v25

    move-object/from16 v17, v27

    move-object/from16 v0, v28

    move-object/from16 v18, v7

    move-object/from16 v7, v26

    goto/16 :goto_54a

    .end local v6  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v23  # "tempT2":Ljava/lang/String;
    .local v5, "tempT2":Ljava/lang/String;
    .restart local v16  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v20  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_655
    move-object/from16 v23, v5

    move-object/from16 v8, v16

    move-object/from16 v7, v18

    move-object/from16 v6, v20

    .line 276
    .end local v4  # "i":I
    .end local v5  # "tempT2":Ljava/lang/String;
    .end local v11  # "nStart":I
    .end local v16  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v19  # "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v20  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v24  # "tagsSPLITED2":[Ljava/lang/String;
    .restart local v6  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_686

    .line 274
    .end local v6  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v16  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v20  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_65e
    move-exception v0

    move-object/from16 v8, v16

    move-object/from16 v7, v18

    move-object/from16 v6, v20

    .end local v16  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v20  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_686

    .end local v3  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .end local v6  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v16  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v20  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v25  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    :catch_666
    move-exception v0

    move-object/from16 v8, v16

    move-object/from16 v7, v18

    move-object/from16 v6, v20

    move-object/from16 v3, v25

    .end local v16  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v20  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v25  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v3  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v6  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_686

    .end local v3  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .end local v6  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v16  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v25  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    :catch_670
    move-exception v0

    move-object v6, v12

    move-object/from16 v8, v16

    move-object/from16 v7, v18

    move-object/from16 v3, v25

    .end local v12  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v25  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v3  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v6  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_686

    .end local v3  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .end local v6  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v11, "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v16  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v25  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    :catch_679
    move-exception v0

    move-object v7, v11

    move-object v6, v12

    move-object/from16 v8, v16

    move-object/from16 v3, v25

    .end local v11  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v25  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v3  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v6  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_686

    .line 234
    .end local v6  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v3, "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v25  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    :cond_681
    move-object v8, v3

    move-object v7, v11

    move-object v6, v12

    move-object/from16 v3, v25

    .line 279
    .end local v11  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v25  # "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .local v3, "tempIsInternal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v6  # "tempScenarios_Year":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7  # "tempScenarios_Month":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8  # "tempScenarios_Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_686
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_69c

    .line 280
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 281
    .end local v21  # "defaultScenario":Ljava/lang/String;
    .local v0, "defaultScenario":Ljava/lang/String;
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setScenarioID(I)V

    goto :goto_69e

    .line 279
    .end local v0  # "defaultScenario":Ljava/lang/String;
    .restart local v21  # "defaultScenario":Ljava/lang/String;
    :cond_69c
    move-object/from16 v0, v21

    .line 285
    .end local v21  # "defaultScenario":Ljava/lang/String;
    .restart local v0  # "defaultScenario":Ljava/lang/String;
    :goto_69e
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_756

    .line 286
    const/4 v4, 0x0

    .line 288
    .local v4, "nAdd":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_6a6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_6c6

    .line 289
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ge v10, v11, :cond_6c3

    .line 290
    move v4, v5

    .line 288
    :cond_6c3
    add-int/lit8 v5, v5, 0x1

    goto :goto_6a6

    .line 294
    .end local v5  # "i":I
    :cond_6c6
    move-object/from16 v5, p0

    iget-object v10, v5, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-interface {v9, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 297
    iget-object v10, v5, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->isInternal:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 300
    iget-object v10, v5, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_CivNum:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-interface {v14, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 303
    iget-object v10, v5, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Names:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-interface {v13, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 306
    iget-object v10, v5, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Authors:Ljava/util/List;

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-interface {v15, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 309
    iget-object v10, v5, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Wikis:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 312
    iget-object v10, v5, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Age:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 315
    iget-object v10, v5, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Year:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-interface {v6, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 318
    iget-object v10, v5, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Month:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-interface {v7, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 321
    iget-object v10, v5, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Day:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-interface {v8, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 323
    .end local v4  # "nAdd":I
    goto/16 :goto_69e

    .line 325
    :cond_756
    move-object/from16 v5, p0

    if-eqz v0, :cond_778

    .line 326
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_75b
    iget-object v10, v5, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_778

    .line 327
    iget-object v10, v5, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_775

    .line 328
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v10, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setScenarioID(I)V

    .line 329
    goto :goto_778

    .line 326
    :cond_775
    add-int/lit8 v4, v4, 0x1

    goto :goto_75b

    .line 334
    .end local v4  # "i":I
    :cond_778
    :goto_778
    iget-object v4, v5, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sput v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->SCENARIOS_SIZE:I

    .line 337
    if-eqz p1, :cond_787

    .line 338
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->updateDaultScenarioID_ForMap()V

    .line 340
    :cond_787
    return-void
.end method

.method public final loadProvincesData(Z)V
    .registers 10
    .param p1, "nEditor"  # Z

    .line 945
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->isInternal:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "_W"

    const-string v2, "/"

    const-string v3, "scenarios/"

    const-string v4, "map/"

    if-eqz v0, :cond_69

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    goto/16 :goto_104

    .line 950
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_69
    :try_start_69
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_b6} :catch_b7

    .line 953
    .restart local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_104

    .line 951
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :catch_b7
    move-exception v0

    .line 952
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    move-object v0, v1

    .line 957
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_104
    :try_start_104
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_WastelandProvinces_GameData;

    .line 959
    .local v1, "scenario_WastelandProvinces_GameData":Lage/of/civilizations2/jakowski/lukasz/Scenario_WastelandProvinces_GameData;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_WastelandProvinces_GameData;->getWastelandProvincesSize()I

    move-result v3

    .local v3, "iSize":I
    :goto_113
    if-ge v2, v3, :cond_126

    .line 960
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Scenario_WastelandProvinces_GameData;->getWastelandProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->setWastelandLvl(I)V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_123} :catch_128

    .line 959
    add-int/lit8 v2, v2, 0x1

    goto :goto_113

    .line 963
    .end local v2  # "i":I
    .end local v3  # "iSize":I
    :cond_126
    nop

    .line 966
    .end local v1  # "scenario_WastelandProvinces_GameData":Lage/of/civilizations2/jakowski/lukasz/Scenario_WastelandProvinces_GameData;
    goto :goto_129

    .line 964
    :catch_128
    move-exception v1

    .line 968
    :goto_129
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->buildProvincePopulationAndEconomy(ZZ)V

    .line 969
    return-void
.end method

.method public final setNumOfCivs(II)V
    .registers 5
    .param p1, "i"  # I
    .param p2, "nNumCivs"  # I

    .line 1570
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_CivNum:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1573
    goto :goto_b

    .line 1571
    :catch_a
    move-exception v0

    .line 1574
    :goto_b
    return-void
.end method

.method public setScenarioActivePallet_TAG(Ljava/lang/String;)V
    .registers 2
    .param p1, "sScenario_ActivePallet_TAG"  # Ljava/lang/String;

    .line 1725
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->sScenario_ActivePallet_TAG:Ljava/lang/String;

    .line 1726
    return-void
.end method

.method public final setScenarioAge(II)V
    .registers 5
    .param p1, "i"  # I
    .param p2, "nAge"  # I

    .line 1614
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Age:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1617
    goto :goto_b

    .line 1615
    :catch_a
    move-exception v0

    .line 1618
    :goto_b
    return-void
.end method

.method public final setScenarioAuthor(ILjava/lang/String;)V
    .registers 4
    .param p1, "i"  # I
    .param p2, "nAuthor"  # Ljava/lang/String;

    .line 1598
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Authors:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1601
    goto :goto_7

    .line 1599
    :catch_6
    move-exception v0

    .line 1602
    :goto_7
    return-void
.end method

.method public final setScenarioDay(II)V
    .registers 5
    .param p1, "i"  # I
    .param p2, "nDay"  # I

    .line 1634
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Day:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1637
    goto :goto_b

    .line 1635
    :catch_a
    move-exception v0

    .line 1638
    :goto_b
    return-void
.end method

.method public final setScenarioMonth(II)V
    .registers 5
    .param p1, "i"  # I
    .param p2, "nMonth"  # I

    .line 1642
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Month:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1645
    goto :goto_b

    .line 1643
    :catch_a
    move-exception v0

    .line 1646
    :goto_b
    return-void
.end method

.method public final setScenarioName(ILjava/lang/String;)V
    .registers 4
    .param p1, "i"  # I
    .param p2, "nName"  # Ljava/lang/String;

    .line 1582
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Names:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1585
    goto :goto_7

    .line 1583
    :catch_6
    move-exception v0

    .line 1586
    :goto_7
    return-void
.end method

.method public final setScenarioStartingArmyInCapitals(I)V
    .registers 2
    .param p1, "iScenario_StartingArmyInCapitals"  # I

    .line 1661
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_StartingArmyInCapitals:I

    .line 1662
    return-void
.end method

.method public final setScenarioStartingEconomy(I)V
    .registers 2
    .param p1, "iScenario_StartingEconomy"  # I

    .line 1709
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_StartingEconomy:I

    .line 1710
    return-void
.end method

.method public final setScenarioStartingMoney(I)V
    .registers 2
    .param p1, "iScenario_StartingMoney"  # I

    .line 1717
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_StartingMoney:I

    .line 1718
    return-void
.end method

.method public final setScenarioStartingPopulation(I)V
    .registers 2
    .param p1, "iScenario_StartingPopulation"  # I

    .line 1701
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_StartingPopulation:I

    .line 1702
    return-void
.end method

.method public final setScenarioYear(II)V
    .registers 5
    .param p1, "i"  # I
    .param p2, "nYear"  # I

    .line 1650
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Year:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1653
    goto :goto_b

    .line 1651
    :catch_a
    move-exception v0

    .line 1654
    :goto_b
    return-void
.end method

.method public final setScenario_DiseasesDeathRate_Modifier(F)V
    .registers 2
    .param p1, "iScenario_DiseasesDeathRate_Modifier"  # F

    .line 1685
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_DiseasesDeathRate_Modifier:F

    .line 1686
    return-void
.end method

.method public final setScenario_EconomyGrowthRate_Modifier(F)V
    .registers 2
    .param p1, "iScenario_EconomyGrowthRate_Modifier"  # F

    .line 1677
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_EconomyGrowthRate_Modifier:F

    .line 1678
    return-void
.end method

.method public final setScenario_NeutralArmy(I)V
    .registers 2
    .param p1, "iScenario_NeutralArmy"  # I

    .line 1693
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_NeutralArmy:I

    .line 1694
    return-void
.end method

.method public final setScenario_PopulationGrowthRate_Modifier(F)V
    .registers 2
    .param p1, "iScenario_PopulationGrowthRate_Modifier"  # F

    .line 1669
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_PopulationGrowthRate_Modifier:F

    .line 1670
    return-void
.end method
