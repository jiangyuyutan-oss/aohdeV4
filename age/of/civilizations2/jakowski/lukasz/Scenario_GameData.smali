.class public Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;
.super Ljava/lang/Object;
.source "Scenario_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private ACTIVE_PALLET_OF_COLORS_TAG:Ljava/lang/String;

.field private COLONIZATION:Z

.field public COLONIZATION_TECH_LEVEL:F

.field public ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

.field private iDiseasesDeathRate_Modifier:F

.field private iEconomyGrowthRate_Modifier:F

.field private iNeutralArmy:I

.field private iPopulationGrowthRate_Modifier:F

.field private iStartingArmyInCapitals:I

.field private iStartingEconomy:I

.field private iStartingMoney:I

.field private iStartingPopulation:I

.field public isPartOfCampaign:Z

.field public lCampaingCivsIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lCivsCapitals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lCivsTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lHappiness:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lStartingMoney:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lTechnologyByContinents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;",
            ">;>;"
        }
    .end annotation
.end field

.field private lTechnologyLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x1f4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingArmyInCapitals:I

    .line 28
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iNeutralArmy:I

    .line 29
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingPopulation:I

    .line 30
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingEconomy:I

    .line 31
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingMoney:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iPopulationGrowthRate_Modifier:F

    .line 34
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iEconomyGrowthRate_Modifier:F

    .line 35
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iDiseasesDeathRate_Modifier:F

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->COLONIZATION:Z

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    .line 39
    const v1, 0x3f4ccccd  # 0.8f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->COLONIZATION_TECH_LEVEL:F

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->ACTIVE_PALLET_OF_COLORS_TAG:Ljava/lang/String;

    .line 43
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->isPartOfCampaign:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lCampaingCivsIDs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addCampaingCivsIDs(I)V
    .registers 4
    .param p1, "nID"  # I

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lCampaingCivsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 205
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lCampaingCivsIDs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_18

    .line 206
    return-void

    .line 204
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    .end local v0  # "i":I
    :cond_1b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lCampaingCivsIDs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method public final buildData()V
    .registers 8

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lCivsTags:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lCivsCapitals:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lTechnologyLevels:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lStartingMoney:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lHappiness:Ljava/util/List;

    .line 55
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_24
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_8b

    .line 56
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lCivsTags:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lCivsCapitals:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lTechnologyLevels:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechLevel()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lStartingMoney:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getGold()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lHappiness:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getHappiness()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 63
    .end local v0  # "i":I
    :cond_8b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lTechnologyByContinents:Ljava/util/List;

    .line 64
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_93
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_TechnologyBContinents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_12f

    .line 65
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_TechnologyBContinents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_126

    .line 66
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_ab
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_TechnologyBContinents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_118

    .line 67
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_TechnologyBContinents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;->getPercentage()I

    move-result v3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_115

    .line 68
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lTechnologyByContinents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v0, :cond_e1

    .line 69
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lTechnologyByContinents:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_e1
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lTechnologyByContinents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_TechnologyBContinents:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;->getContinentID()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_TechnologyBContinents:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;->getPercentage()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_115
    add-int/lit8 v1, v1, 0x1

    goto :goto_ab

    .line 78
    .end local v1  # "j":I
    :cond_118
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lTechnologyByContinents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_12b

    .line 79
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lTechnologyByContinents:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12b

    .line 83
    :cond_126
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lTechnologyByContinents:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_12b
    :goto_12b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_93

    .line 87
    .end local v0  # "i":I
    :cond_12f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingArmyInCapitals()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingArmyInCapitals:I

    .line 88
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_NeutralArmy()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iNeutralArmy:I

    .line 89
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingPopulation:I

    .line 90
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingEconomy()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingEconomy:I

    .line 91
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingMoney()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingMoney:I

    .line 93
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_PopulationGrowthRate_Modifier()F

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iPopulationGrowthRate_Modifier:F

    .line 94
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_EconomyGrowthRate_Modifier()F

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iEconomyGrowthRate_Modifier:F

    .line 95
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_DiseasesDeathRate_Modifier()F

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iDiseasesDeathRate_Modifier:F

    .line 97
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->ENABLE_COLONIZATION:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->COLONIZATION:Z

    .line 98
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    .line 99
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->COLONIZATION_TECH_LEVEL:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->COLONIZATION_TECH_LEVEL:F

    .line 101
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->palletManager:Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->getActivePalletID()I

    move-result v0

    if-nez v0, :cond_1a4

    goto :goto_1b2

    :cond_1a4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->palletManager:Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->palletManager:Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->getActivePalletID()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->getPalletTag(I)Ljava/lang/String;

    move-result-object v2

    :goto_1b2
    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->ACTIVE_PALLET_OF_COLORS_TAG:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public final getActivePalletOfColors_TAG()Ljava/lang/String;
    .registers 2

    .line 164
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->ACTIVE_PALLET_OF_COLORS_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public final getCivCapital(I)I
    .registers 3
    .param p1, "i"  # I

    .line 116
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lCivsCapitals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getCivSize()I
    .registers 2

    .line 108
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lCivsTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getCivTag(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"  # I

    .line 112
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lCivsTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getColonization()Z
    .registers 2

    .line 172
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->COLONIZATION:Z

    return v0
.end method

.method public final getDiseasesDeathRate_Modifier()F
    .registers 2

    .line 200
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iDiseasesDeathRate_Modifier:F

    return v0
.end method

.method public final getEconomyGrowthRate_Modifier()F
    .registers 2

    .line 196
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iEconomyGrowthRate_Modifier:F

    return v0
.end method

.method public final getHappiness(I)I
    .registers 3
    .param p1, "i"  # I

    .line 124
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lHappiness:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getNeutralArmy()I
    .registers 2

    .line 184
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iNeutralArmy:I

    return v0
.end method

.method public final getPopulationGrowthRate_Modifier()F
    .registers 2

    .line 192
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iPopulationGrowthRate_Modifier:F

    return v0
.end method

.method public final getStartingArmyInCapitals()I
    .registers 2

    .line 132
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingArmyInCapitals:I

    return v0
.end method

.method public final getStartingEconomy()I
    .registers 2

    .line 148
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingEconomy:I

    return v0
.end method

.method public final getStartingMoney()I
    .registers 2

    .line 156
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingMoney:I

    return v0
.end method

.method public final getStartingMoneyCiv(I)I
    .registers 3
    .param p1, "i"  # I

    .line 128
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lStartingMoney:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getStartingPopulation()I
    .registers 2

    .line 140
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingPopulation:I

    return v0
.end method

.method public final getTechnologyByContinents(I)Ljava/util/List;
    .registers 3
    .param p1, "i"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lTechnologyByContinents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getTechnologyLevel(I)F
    .registers 3
    .param p1, "i"  # I

    .line 120
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lTechnologyLevels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final setActivePalletOfColors_TAG(Ljava/lang/String;)V
    .registers 2
    .param p1, "aCTIVE_PALLET_OF_COLORS_TAG"  # Ljava/lang/String;

    .line 168
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->ACTIVE_PALLET_OF_COLORS_TAG:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public final setColonization(Z)V
    .registers 2
    .param p1, "COLONIZATION"  # Z

    .line 176
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->COLONIZATION:Z

    .line 177
    return-void
.end method

.method public final setNeutralArmy(I)V
    .registers 2
    .param p1, "iNeutralArmy"  # I

    .line 188
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iNeutralArmy:I

    .line 189
    return-void
.end method

.method public final setStartingArmyInCapitals(I)V
    .registers 2
    .param p1, "iStartingArmyInCapitals"  # I

    .line 136
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingArmyInCapitals:I

    .line 137
    return-void
.end method

.method public final setStartingEconomy(I)V
    .registers 2
    .param p1, "iStartingEconomy"  # I

    .line 152
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingEconomy:I

    .line 153
    return-void
.end method

.method public final setStartingMoney(I)V
    .registers 2
    .param p1, "iStartingMoney"  # I

    .line 160
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingMoney:I

    .line 161
    return-void
.end method

.method public final setStartingPopulation(I)V
    .registers 2
    .param p1, "iStartingPopulation"  # I

    .line 144
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingPopulation:I

    .line 145
    return-void
.end method
