.class public Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;
.super Ljava/lang/Object;
.source "Save_GameData_1.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public AGE_OF_CHAOS_MODE:Z

.field public AGE_OF_CHAOS_TURNS:I

.field public AI_CONQUER_OWN_VASSALS_IF_OVER:I

.field public AI_CONQUER_VASSALS:Z

.field public AI_PLUNDER_ENABLED:Z

.field public AI_UNIONS_ENABLED:Z

.field public AI_VASSALS_CAN_DECLARE_WARS:Z

.field public ARMY_RETREAT:F

.field public ASSIMILATION_COST:F

.field public ASSIMILATION_SPEED_MODIFIER:F

.field public BUILD_NUKES_EXTRA_COST:I

.field public CAPITULATION:F

.field public COLONIZATION_AUTO_EXPAND_CHANCE:I

.field public COLONIZATION_TECH_LEVEL:F

.field public DIFFICULTY:I

.field public DIPLOMACY_POINTS_EXTRA:I

.field public DISEASES_DEATH_RATE_MODIFIER:F

.field public ECONOMY_GROWTH_RATE:F

.field public ECONOMY_GROWTH_RATE_MODIFIER:F

.field public ENABLE_COLONIZATION:Z

.field public ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

.field public ENABLE_NUKES:Z

.field public FOG_OF_WAR:I

.field public GAME_SPEED:F

.field public GET_SPY_MESSAGE_ABOUT_AI_PREPARING_FOR_WAR_CHANCE_1000:I

.field public LEADERS_CAN_DIE:Z

.field public MAX_PROVINCES_FOR_ALLIANCE_PROPOSAL:I

.field public MIN_ARMY_REQUIRED_TO_ATTACK:I

.field public MOVEMENT_POINTS_EXTRA:I

.field public MOVEMENT_POINTS_MAX_MODIFIER:F

.field public NUKES_MIN_YEAR_ENABLED:Z

.field public NUKES_REQUIRED_TECH_LVL:F

.field public PEACE_TREATY_VICTORY_POINTS_MODIFIER:F

.field public PLUNDER_MODIFIER:F

.field public POPULATION_GROWTH_RATE:F

.field public POPULATION_GROWTH_RATE_MODIFIER:F

.field public PROPOSE_ALLIANCE_CHANCE_100:I

.field public REBELS_POWER:F

.field public SANDBOX_MODE:Z

.field public SANDBOX_MODE_AI:Z

.field public SPECTATOR_MODE:Z

.field public STARTING_ECONOMY:I

.field public STARTING_POPULATION:I

.field public TECHNOLOGY_LEVEL_BONUS_ARMY_ATTACK:I

.field public TECHNOLOGY_LEVEL_BONUS_ARMY_DEFENSE:I

.field public TURNS_SINCE_LAST_WAR:I

.field public USE_NEW_DECLARE_WAR_SYSTEM:Z

.field public USE_OLD_DECLARE_WAR_CHANGE_100:I

.field public VASSALS_CAN_DECLARE_INDEPENDENCE:Z

.field public VICTORY_CONTROL_PROVINCES_PERC:I

.field public VICTORY_LIMIT_OF_TURNS:I

.field public VICTORY_TECHNOLOGY:F

.field public WAR_CANT_BE_DECLARED_IN_FIRST_X_TURNS:I

.field public civNamesChanged:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public civNamesChangedID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public iDay:I

.field public iMonth:I

.field public iTurnID:I

.field public iYear:I

.field public provinceNamesChanged:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public provinceNamesChangedID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public sActiveScenarioTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->BUILD_NUKES_EXTRA_COST:I

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->NUKES_REQUIRED_TECH_LVL:F

    .line 70
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->PLUNDER_MODIFIER:F

    .line 76
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    .line 77
    const v0, 0x3f4ccccd  # 0.8f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->COLONIZATION_TECH_LEVEL:F

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->sActiveScenarioTag:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->provinceNamesChangedID:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->provinceNamesChanged:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->civNamesChangedID:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->civNamesChanged:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final buildData()V
    .registers 4

    .line 103
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->iTurnID:I

    .line 104
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNS_SINCE_LAST_WAR:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->TURNS_SINCE_LAST_WAR:I

    .line 105
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->currDay:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->iDay:I

    .line 106
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->currMonth:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->iMonth:I

    .line 107
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->currYear:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->iYear:I

    .line 109
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->GAME_SPEED:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->GAME_SPEED:F

    .line 110
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SANDBOX_MODE:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->SANDBOX_MODE:Z

    .line 112
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->ENABLE_COLONIZATION:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->ENABLE_COLONIZATION:Z

    .line 113
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    .line 114
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->COLONIZATION_TECH_LEVEL:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->COLONIZATION_TECH_LEVEL:F

    .line 116
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->STARTING_POPULATION:I

    .line 117
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingEconomy()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->STARTING_ECONOMY:I

    .line 119
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_PopulationGrowthRate_Modifier()F

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->POPULATION_GROWTH_RATE_MODIFIER:F

    .line 120
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_EconomyGrowthRate_Modifier()F

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->ECONOMY_GROWTH_RATE_MODIFIER:F

    .line 121
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_DiseasesDeathRate_Modifier()F

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->DISEASES_DEATH_RATE_MODIFIER:F

    .line 123
    sget v0, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->VICTORY_CONTROL_PROVINCES_PERC:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->VICTORY_CONTROL_PROVINCES_PERC:I

    .line 124
    sget v0, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->VICTORY_LIMIT_OF_TURNS:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->VICTORY_LIMIT_OF_TURNS:I

    .line 125
    sget v0, Lage/of/civilizations2/jakowski/lukasz/VictoryManager;->VICTORY_TECHNOLOGY:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->VICTORY_TECHNOLOGY:F

    .line 127
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->FOG_OF_WAR:I

    .line 128
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->SPECTATOR_MODE:Z

    .line 129
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->AGE_OF_CHAOS_MODE:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->AGE_OF_CHAOS_MODE:Z

    .line 130
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->AGE_OF_CHAOS_TURNS:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->AGE_OF_CHAOS_TURNS:I

    .line 131
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LEADERS_CAN_DIE:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->LEADERS_CAN_DIE:Z

    .line 132
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ENABLE_NUKES:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->ENABLE_NUKES:Z

    .line 133
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MIN_ARMY_REQUIRED_TO_ATTACK:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->MIN_ARMY_REQUIRED_TO_ATTACK:I

    .line 134
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->USE_NEW_DECLARE_WAR_SYSTEM:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->USE_NEW_DECLARE_WAR_SYSTEM:Z

    .line 135
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->USE_OLD_DECLARE_WAR_CHANGE_100:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->USE_OLD_DECLARE_WAR_CHANGE_100:I

    .line 136
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->REBELS_POWER:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->REBELS_POWER:F

    .line 137
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MAX_PROVINCES_FOR_ALLIANCE_PROPOSAL:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->MAX_PROVINCES_FOR_ALLIANCE_PROPOSAL:I

    .line 138
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROPOSE_ALLIANCE_CHANCE_100:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->PROPOSE_ALLIANCE_CHANCE_100:I

    .line 140
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_RETREAT:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->ARMY_RETREAT:F

    .line 141
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CAPITULATION:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->CAPITULATION:F

    .line 142
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLONIZATION_AUTO_EXPAND_CHANCE:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->COLONIZATION_AUTO_EXPAND_CHANCE:I

    .line 143
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUKES_MIN_YEAR_ENABLED:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->NUKES_MIN_YEAR_ENABLED:Z

    .line 144
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->VASSALS_CAN_DECLARE_INDEPENDENCE:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->VASSALS_CAN_DECLARE_INDEPENDENCE:Z

    .line 145
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ASSIMILATION_COST_MODIFIER:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->ASSIMILATION_COST:F

    .line 146
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ASSIMILATION_SPEED_MODIFIER:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->ASSIMILATION_SPEED_MODIFIER:F

    .line 147
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MOVEMENT_POINTS_EXTRA:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->MOVEMENT_POINTS_EXTRA:I

    .line 148
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MOVEMENT_POINTS_MAX_MODIFIER:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->MOVEMENT_POINTS_MAX_MODIFIER:F

    .line 149
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->DIPLOMACY_POINTS_EXTRA:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->DIPLOMACY_POINTS_EXTRA:I

    .line 150
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->POPULATION_GROWTH_RATE:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->POPULATION_GROWTH_RATE:F

    .line 151
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ECONOMY_GROWTH_RATE:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->ECONOMY_GROWTH_RATE:F

    .line 152
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TECHNOLOGY_LEVEL_BONUS_ARMY_DEFENSE:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->TECHNOLOGY_LEVEL_BONUS_ARMY_DEFENSE:I

    .line 153
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TECHNOLOGY_LEVEL_BONUS_ARMY_ATTACK:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->TECHNOLOGY_LEVEL_BONUS_ARMY_ATTACK:I

    .line 154
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->AI_UNIONS_ENABLED:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->AI_UNIONS_ENABLED:Z

    .line 155
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->AI_CONQUER_VASSALS:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->AI_CONQUER_VASSALS:Z

    .line 156
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->AI_VASSALS_CAN_DECLARE_WARS:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->AI_VASSALS_CAN_DECLARE_WARS:Z

    .line 157
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->AI_CONQUER_OWN_VASSALS_IF_OVER:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->AI_CONQUER_OWN_VASSALS_IF_OVER:I

    .line 158
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUILD_NUKES_EXTRA_COST:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->BUILD_NUKES_EXTRA_COST:I

    .line 159
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUKES_REQUIRED_TECH_LVL:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->NUKES_REQUIRED_TECH_LVL:F

    .line 160
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLUNDER_MODIFIER:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->PLUNDER_MODIFIER:F

    .line 161
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->AI_PLUNDER_ENABLED:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->AI_PLUNDER_ENABLED:Z

    .line 162
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->WAR_CANT_BE_DECLARED_IN_FIRST_X_TURNS:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->WAR_CANT_BE_DECLARED_IN_FIRST_X_TURNS:I

    .line 163
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PEACE_TREATY_VICTORY_POINTS_MODIFIER:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->PEACE_TREATY_VICTORY_POINTS_MODIFIER:F

    .line 164
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GET_SPY_MESSAGE_ABOUT_AI_PREPARING_FOR_WAR_CHANCE_1000:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->GET_SPY_MESSAGE_ABOUT_AI_PREPARING_FOR_WAR_CHANCE_1000:I

    .line 166
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SANDBOX_MODE_AI:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->SANDBOX_MODE_AI:Z

    .line 168
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->DIFFICULTY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->DIFFICULTY:I

    .line 170
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->sActiveScenarioTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_14d

    .line 171
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->sActiveScenarioTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_143

    .line 173
    :try_start_122
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getScenarioID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioTagID(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->sActiveScenarioTag:Ljava/lang/String;
    :try_end_13a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_122 .. :try_end_13a} :catch_13b

    .line 178
    goto :goto_143

    .line 174
    :catch_13b
    move-exception v0

    .line 175
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v1, :cond_143

    .line 176
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 181
    .end local v0  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_143
    :goto_143
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->sActiveScenarioTag:Ljava/lang/String;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->sActiveScenarioTag:Ljava/lang/String;

    .line 185
    :cond_14d
    :try_start_14d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->SAVE_CHANGED_PROVINCE_NAMES:Z

    if-eqz v0, :cond_18d

    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_154
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->pNCI:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_18d

    .line 187
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->pNCI:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v2

    if-ge v1, v2, :cond_18a

    .line 188
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->provinceNamesChangedID:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->pNCI:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->provinceNamesChanged:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->pNC:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_18a
    add-int/lit8 v0, v0, 0x1

    goto :goto_154

    .line 194
    .end local v0  # "i":I
    :cond_18d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->SAVE_CHANGED_CIV_NAMES:Z

    if-eqz v0, :cond_1cd

    .line 195
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_194
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->cNCI:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1cd

    .line 196
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->cNCI:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_1ca

    .line 197
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->civNamesChangedID:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->cNCI:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameData/Save_GameData_1;->civNamesChanged:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->cNC:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1ca
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_1ca} :catch_1ce

    .line 195
    :cond_1ca
    add-int/lit8 v0, v0, 0x1

    goto :goto_194

    .line 204
    .end local v0  # "i":I
    :cond_1cd
    goto :goto_1d2

    .line 202
    :catch_1ce
    move-exception v0

    .line 203
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 205
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_1d2
    return-void
.end method
